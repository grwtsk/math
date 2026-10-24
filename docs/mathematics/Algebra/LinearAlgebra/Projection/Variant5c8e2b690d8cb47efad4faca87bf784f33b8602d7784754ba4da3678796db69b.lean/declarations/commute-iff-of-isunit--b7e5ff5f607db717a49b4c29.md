# commute_iff_of_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b2833f9f5a66cc8997e70174bbca0935269ce23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 780,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45577345-f431-68c2-805b-4a475e63ae2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c09d7fb-1a1a-3dc1-b24c-a0d056588871",
  "kind": "theorem",
  "lexical_name": "commute_iff_of_isUnit",
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
  "slug": "commute-iff-of-isunit--b7e5ff5f607db717a49b4c29",
  "source": {
    "blob": "7b2833f9f5a66cc8997e70174bbca0935269ce23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 780,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e5ff5f607db717a49b4c29ee8d1671729b299406b8302a327b9a96c64e75e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c09d7fb-1a1a-3dc1-b24c-a0d056588871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_iff_of_isUnit (hT : IsUnit T) (hf : IsIdempotentElem f) :
    Commute f T ↔ (range f).map T = range f ∧ (ker f).map T = ker f := by
  lift T to GeneralLinearGroup R E using hT
  simp_rw [← GeneralLinearGroup.generalLinearEquiv_to_linearMap, le_antisymm_iff,
    ← Module.End.mem_invtSubmodule_iff_map_le, ← Module.End.mem_invtSubmodule_symm_iff_le_map,
    and_and_and_comm (c := (ker f ∈ _)), ← hf.commute_iff,
    GeneralLinearGroup.generalLinearEquiv_to_linearMap, iff_self_and]
  exact Commute.units_inv_right

end LinearMap.IsIdempotentElem

/-! ## Deprecated -/

namespace Submodule

@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl := projectionOnto
@[deprecated (since := "2026-05-04")] alias IsCompl.projection := projection
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_apply := projection_apply
@[deprecated (since := "2026-05-04")] alias coe_linearProjOfIsCompl_apply :=
  coe_projectionOnto_apply
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_apply_mem := projection_apply_mem
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_apply_left :=
  projectionOnto_apply_left
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_apply_left := projection_apply_left
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_range := range_projectionOnto
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_range := range_projection
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_surjective :=
  projectionOnto_surjective
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_apply_eq_zero_iff :=
  projectionOnto_apply_eq_zero_iff
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_apply_eq_zero_iff :=
  projection_apply_eq_zero_iff
@[deprecated (since := "2026-05-05")] alias linearProjOfIsCompl_apply_of_mem_right :=
  projectionOnto_apply_of_mem_right
@[deprecated (since := "2026-04-27")] alias linearProjOfIsCompl_apply_right' :=
  projectionOnto_apply_of_mem_right
@[deprecated (since := "2026-05-05")] alias IsCompl.projection_apply_of_mem_right :=
  projection_apply_of_mem_right
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_apply_right :=
  projectionOnto_apply_right
@[deprecated (since := "2026-05-05")] alias IsCompl.projection_apply_right :=
  projection_apply_right
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_ker := ker_projectionOnto
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_ker := ker_projection
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_comp_subtype :=
  projectionOnto_comp_subtype
@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_isCompl_projection :=
  projectionOnto_projection
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_isIdempotentElem :=
  isIdempotentElem_projection
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_add_projection_eq_self :=
  projection_add_projection_eq_self
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_add_projection_eq_id :=
  projection_add_projection_eq_id
@[deprecated (since := "2026-05-05")] alias IsCompl.projection_eq_self_sub_projection :=
  projection_eq_self_sub_projection
@[deprecated (since := "2026-05-05")] alias IsCompl.projection_eq_id_sub_projection :=
  projection_eq_id_sub_projection
@[deprecated (since := "2026-05-04")] alias IsCompl.projection_eq_self_iff := projection_eq_self_iff

end Submodule

namespace LinearMap

@[deprecated (since := "2026-05-04")] alias linearProjOfIsCompl_of_proj := projectionOnto_of_proj
@[deprecated (since := "2026-05-04")] alias IsIdempotentElem.eq_isCompl_projection :=
  IsIdempotentElem.eq_projection
@[deprecated (since := "2026-05-04")] alias surjective_comp_linearProjOfIsCompl :=
  surjective_comp_projectionOnto
@[deprecated (since := "2026-05-04")] alias isIdempotentElem_iff_eq_isCompl_projection_range_ker :=
  isIdempotentElem_iff_eq_projection_range_ker
@[deprecated (since := "2026-05-16")] alias ofIsCompl_left_apply := ofIsCompl_apply_left
@[deprecated (since := "2026-05-16")] alias ofIsCompl_right_apply := ofIsCompl_apply_right

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2833f9f5a66cc8997e70174bbca0935269ce23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
