# verifyUpperBound_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ede094bcb71d9523c71a6ebd3aa759132ae31bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a497e5b-ea53-03ff-95b5-64658c015246",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:203fecc2-89b2-0cc8-a16e-b0a7b8fb15f2",
  "kind": "theorem",
  "lexical_name": "verifyUpperBound_correct",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "verifyupperbound-correct--acb26da7ee329ebd729d4eb4",
  "source": {
    "blob": "7ede094bcb71d9523c71a6ebd3aa759132ae31bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acb26da7ee329ebd729d4eb40a1733752e1e727038d5ee1c59ad72a3e3924e19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:203fecc2-89b2-0cc8-a16e-b0a7b8fb15f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verifyUpperBound_correct (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (bound : ℚ) (cfg : BoundVerifyConfig)
    (hverify : (globalMaximize e B cfg.toGlobalOptConfig).bound.hi ≤ bound) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) →
      Expr.eval ρ e ≤ bound := by
  intro ρ hρ hzero
  -- globalMaximize returns -globalMinimize(-e), so hi = -lo of minimization
  -- We have: for all ρ, globalMinimize(-e).lo ≤ -eval ρ e
  -- Therefore: eval ρ e ≤ -globalMinimize(-e).lo = globalMaximize(e).hi
  have hmax := globalMinimize_lo_correct (Expr.neg e) (ExprSupported.neg hsupp) B cfg.toGlobalOptConfig ρ hρ hzero
  simp only [Expr.eval_neg] at hmax ⊢
  -- hmax : (globalMinimize (Expr.neg e) B cfg.toGlobalOptConfig).bound.lo ≤ -Expr.eval ρ e
  -- Goal : Expr.eval ρ e ≤ bound
  -- We have: globalMaximize.hi = -(globalMinimize (neg e)).lo
  have hhi_eq : (globalMaximize e B cfg.toGlobalOptConfig).bound.hi =
      -(globalMinimize (Expr.neg e) B cfg.toGlobalOptConfig).bound.lo := by
    simp only [globalMaximize]
  rw [hhi_eq] at hverify
  -- hverify : -(globalMinimize (Expr.neg e) ...).bound.lo ≤ bound
  -- hmax : (globalMinimize (Expr.neg e) ...).bound.lo ≤ -Expr.eval ρ e
  have h1 : Expr.eval ρ e ≤ -(globalMinimize (Expr.neg e) B cfg.toGlobalOptConfig).bound.lo := by
    linarith [hmax]
  calc Expr.eval ρ e
    ≤ -(globalMinimize (Expr.neg e) B cfg.toGlobalOptConfig).bound.lo := h1
    _ ≤ bound := by exact_mod_cast hverify

/-- If verifyLowerBound succeeds, the lower bound holds for all points in the box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ede094bcb71d9523c71a6ebd3aa759132ae31bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
