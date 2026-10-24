# mfderivWithin_extend_symm_comp_mfderiv_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9c5c178-3b78-915b-223d-2f65b89a5541",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abb6dc10-3808-9e60-c213-842f5eaf4f38",
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
  "slug": "mfderivwithin-extend-symm-comp-mfderiv-extend--a80d9456dd68aa1a5ba2623e",
  "source": {
    "blob": "5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 279,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a80d9456dd68aa1a5ba2623e0b3a23cb8d9891a74d52fbf3e5657b9ddf1272b8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abb6dc10-3808-9e60-c213-842f5eaf4f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–307.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
