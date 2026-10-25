# verifyUpperBound_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11d5498b-66c2-4d28-a6b3-115afd691b06",
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
  "slug": "verifyupperbound-correct--c10ddd2ee082bd5017fd5203",
  "source": {
    "blob": "063041f9a13dbbb802987ada3c7e9e9a13976777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10ddd2ee082bd5017fd520354fcfe10e9e36e91da727f812bd0112dc9c8de58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11d5498b-66c2-4d28-a6b3-115afd691b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–290.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `063041f9a13dbbb802987ada3c7e9e9a13976777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
