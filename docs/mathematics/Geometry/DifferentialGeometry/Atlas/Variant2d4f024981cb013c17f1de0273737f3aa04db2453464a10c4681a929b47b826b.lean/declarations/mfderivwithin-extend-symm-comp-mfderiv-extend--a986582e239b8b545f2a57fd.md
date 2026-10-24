# mfderivWithin_extend_symm_comp_mfderiv_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:322ce6f3-d30a-14d3-1bb5-f5e729cca8fe",
  "kind": "lemma",
  "lexical_name": "mfderivWithin_extend_symm_comp_mfderiv_extend",
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
  "slug": "mfderivwithin-extend-symm-comp-mfderiv-extend--a986582e239b8b545f2a57fd",
  "source": {
    "blob": "d38d4d41db9040c3a7a5f7d2ca252b9eee9cbf0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 287,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a986582e239b8b545f2a57fdcaa3896988bfab4387c2d6abecc778d7d01ee363",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322ce6f3-d30a-14d3-1bb5-f5e729cca8fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mfderivWithin_extend_symm_comp_mfderiv_extend
    {y : E} (he : e ∈ maximalAtlas I 1 M) (hy : y ∈ (e.extend I).target) :
    (mfderiv[range I] (e.extend I).symm y) ∘L
      (mfderiv% (e.extend I) ((e.extend I).symm y))
      = ContinuousLinearMap.id _ _ := by
  have h'y : (e.extend I).symm y ∈ e.source := by simp_all
  have U' : UniqueMDiffAt[(e.extend I).source] ((e.extend I).symm y) := by
    rw [e.extend_source]
    exact e.open_source.uniqueMDiffWithinAt h'y
  have : mfderiv% (e.extend I) ((e.extend I).symm y)
      = mfderiv[(e.extend I).source] (e.extend I) ((e.extend I).symm y) := by
    rw [mfderivWithin_eq_mfderiv U']
    exact e.mdifferentiableAt_extend he h'y
  rw [this, ← mfderivWithin_comp_of_eq]; rotate_left
  · exact mdifferentiableWithinAt_extend_symm he hy
  · exact (e.mdifferentiableAt_extend he h'y).mdifferentiableWithinAt
  · intro z hz
    exact e.extend_target_subset_range ((e.extend I).map_source hz)
  · exact U'
  · exact (e.extend I).right_inv hy
  rw [← mfderivWithin_id U']
  apply Filter.EventuallyEq.mfderivWithin_eq
  · filter_upwards [e.extend_source_mem_nhdsWithin (I := I) h'y] with z hz
    simp only [Function.comp_def, PartialEquiv.left_inv (e.extend I) hz, id_eq]
  · simp only [Function.comp_def, PartialEquiv.right_inv (e.extend I) hy, id_eq]

/-- The composition of the derivative of the inverse of an extended chart `e.extend I` with the
derivative of `e.extend I` gives the identity.
Version where the basepoint belongs to `e.source`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38d4d41db9040c3a7a5f7d2ca252b9eee9cbf0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
