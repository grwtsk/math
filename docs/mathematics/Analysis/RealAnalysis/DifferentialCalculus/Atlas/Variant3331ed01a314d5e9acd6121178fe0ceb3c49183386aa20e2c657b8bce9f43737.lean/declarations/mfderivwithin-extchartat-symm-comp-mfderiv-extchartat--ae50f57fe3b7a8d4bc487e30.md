# mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eadd3ac0-cdcd-1c48-898c-f302d8771e0f",
  "kind": "lemma",
  "lexical_name": "mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt",
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
  "slug": "mfderivwithin-extchartat-symm-comp-mfderiv-extchartat--ae50f57fe3b7a8d4bc487e30",
  "source": {
    "blob": "6c0cf7439cedd3ef86a6a263cf614421fc394f63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 305,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae50f57fe3b7a8d4bc487e302c4d660543238a726868f031809b5ba3266fcd2d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eadd3ac0-cdcd-1c48-898c-f302d8771e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt
    {y : E} (hy : y ∈ (extChartAt I x).target) :
    (mfderivWithin 𝓘(𝕜, E) I (extChartAt I x).symm (range I) y) ∘L
      (mfderiv I 𝓘(𝕜, E) (extChartAt I x) ((extChartAt I x).symm y))
      = ContinuousLinearMap.id _ _ := by
  have h'y : (extChartAt I x).symm y ∈ (extChartAt I x).source := (extChartAt I x).map_target hy
  have h''y : (extChartAt I x).symm y ∈ (chartAt H x).source := by
    rwa [← extChartAt_source (I := I)]
  have U' : UniqueMDiffWithinAt I (extChartAt I x).source ((extChartAt I x).symm y) :=
    (isOpen_extChartAt_source x).uniqueMDiffWithinAt h'y
  have : mfderiv I 𝓘(𝕜, E) (extChartAt I x) ((extChartAt I x).symm y)
      = mfderivWithin I 𝓘(𝕜, E) (extChartAt I x) (extChartAt I x).source
      ((extChartAt I x).symm y) := by
    rw [mfderivWithin_eq_mfderiv U']
    exact mdifferentiableAt_extChartAt h''y
  rw [this, ← mfderivWithin_comp_of_eq]; rotate_left
  · exact mdifferentiableWithinAt_extChartAt_symm hy
  · exact (mdifferentiableAt_extChartAt h''y).mdifferentiableWithinAt
  · intro z hz
    apply extChartAt_target_subset_range x
    exact PartialEquiv.map_source (extChartAt I x) hz
  · exact U'
  · exact PartialEquiv.right_inv (extChartAt I x) hy
  rw [← mfderivWithin_id U']
  apply Filter.EventuallyEq.mfderivWithin_eq U'
  · filter_upwards [extChartAt_source_mem_nhdsWithin' h'y] with z hz
    simp only [Function.comp_def, PartialEquiv.left_inv (extChartAt I x) hz, id_eq]
  · simp only [Function.comp_def, PartialEquiv.right_inv (extChartAt I x) hy, id_eq]

/-- The composition of the derivative of the inverse of `extChartAt` with the derivative of
`extChartAt` gives the identity.
Version where the basepoint belongs to `(extChartAt I x).source`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variant3331ed01a314d5e9acd6121178fe0ceb3c49183386aa20e2c657b8bce9f43737.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0cf7439cedd3ef86a6a263cf614421fc394f63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
