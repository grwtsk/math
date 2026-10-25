# verifyLowerBound_correct

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
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62b50cbe-7eea-0752-d8fa-b7415f422f92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62346ba9-d85d-7729-8d1a-ff9b8c18ee91",
  "kind": "theorem",
  "lexical_name": "verifyLowerBound_correct",
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
  "slug": "verifylowerbound-correct--1ce99e3cfb44435a61ecf59d",
  "source": {
    "blob": "7ede094bcb71d9523c71a6ebd3aa759132ae31bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce99e3cfb44435a61ecf59d7c451023698922d0ec4e1fbafc332978b153342f",
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

Occurrence: `result:62346ba9-d85d-7729-8d1a-ff9b8c18ee91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verifyLowerBound_correct (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (bound : ℚ) (cfg : BoundVerifyConfig)
    (hverify : (globalMinimize e B cfg.toGlobalOptConfig).bound.lo ≥ bound) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) →
      bound ≤ Expr.eval ρ e := by
  intro ρ hρ hzero
  have hmin := globalMinimize_lo_correct e hsupp B cfg.toGlobalOptConfig ρ hρ hzero
  calc (bound : ℝ)
    ≤ (globalMinimize e B cfg.toGlobalOptConfig).bound.lo := by exact_mod_cast hverify
    _ ≤ Expr.eval ρ e := hmin

/-! ### Expression uses only var 0 -/

/-- Predicate: expression only uses variable index 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ede094bcb71d9523c71a6ebd3aa759132ae31bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
