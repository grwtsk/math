# iteratedDerivWithin_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9986bd00-b11f-fd40-b747-ad083d6f6623",
  "kind": "theorem",
  "lexical_name": "iteratedDerivWithin_succ",
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
  "slug": "iteratedderivwithin-succ--5b882bcbeca83aada4686dc5",
  "source": {
    "blob": "8aea979733809ca2cfcb33ff332f2d624cb98da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b882bcbeca83aada4686dc5432aa47b27de27e2f8fbd830359e61aab6c618bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9986bd00-b11f-fd40-b747-ad083d6f6623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDerivWithin_succ :
    iteratedDerivWithin (n + 1) f s = derivWithin (iteratedDerivWithin n f s) s := by
  ext x
  by_cases hxs : AccPt x (𝓟 s)
  · rw [iteratedDerivWithin_eq_iteratedFDerivWithin, iteratedFDerivWithin_succ_apply_left,
      iteratedFDerivWithin_eq_equiv_comp,
      LinearIsometryEquiv.comp_fderivWithin _ hxs.uniqueDiffWithinAt, derivWithin]
    change ((ContinuousMultilinearMap.mkPiRing 𝕜 (Fin n) ((fderivWithin 𝕜
      (iteratedDerivWithin n f s) s x : 𝕜 → F) 1) : (Fin n → 𝕜) → F) fun _ : Fin n => 1) =
      (fderivWithin 𝕜 (iteratedDerivWithin n f s) s x : 𝕜 → F) 1
    simp
  · simp [derivWithin_zero_of_not_accPt hxs, iteratedDerivWithin, iteratedFDerivWithin,
      fderivWithin_zero_of_not_accPt hxs]

/-- The `n`-th iterated derivative within a set with unique derivatives can be obtained by
iterating `n` times the differentiation operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aea979733809ca2cfcb33ff332f2d624cb98da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
