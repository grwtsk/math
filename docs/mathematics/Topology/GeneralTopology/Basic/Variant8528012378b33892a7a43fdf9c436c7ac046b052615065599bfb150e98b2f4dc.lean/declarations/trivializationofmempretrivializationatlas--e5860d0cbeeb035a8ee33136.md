# trivializationOfMemPretrivializationAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a30cc490f27e3edbb8cdc1832c07ec70a24d09c9a9ad3d2edc26c98401085b5",
  "kind": "def",
  "lexical_name": "trivializationOfMemPretrivializationAtlas",
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
  "slug": "trivializationofmempretrivializationatlas--e5860d0cbeeb035a8ee33136",
  "source": {
    "blob": "4d099ad1fd51f6fe75a4ee2befe3e2579ad497c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 793,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5860d0cbeeb035a8ee33136d86bcbb1af95a9e1fdb6c157c05ec9be764200ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a30cc490f27e3edbb8cdc1832c07ec70a24d09c9a9ad3d2edc26c98401085b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 793–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trivializationOfMemPretrivializationAtlas (he : e ∈ a.pretrivializationAtlas) :
    @Trivialization B F _ _ _ a.totalSpaceTopology (π F E) :=
  let _ := a.totalSpaceTopology
  { e with
    open_source := a.isOpen_source e,
    continuousOn_toFun := by
      refine continuousOn_iff'.mpr fun s hs => ⟨e ⁻¹' s ∩ e.source,
        isOpen_iSup_iff.mpr fun e' => ?_, by rw [inter_assoc, inter_self]; rfl⟩
      refine isOpen_iSup_iff.mpr fun he' => ?_
      rw [isOpen_coinduced, isOpen_induced_iff]
      obtain ⟨u, hu1, hu2⟩ := continuousOn_iff'.mp (a.continuous_trivChange _ he _ he') s hs
      have hu3 := congr_arg (fun s => (fun x : e'.target => (x : B × F)) ⁻¹' s) hu2
      simp only [Subtype.coe_preimage_self, preimage_inter, univ_inter] at hu3
      refine ⟨u ∩ e'.toPartialEquiv.target ∩ e'.toPartialEquiv.symm ⁻¹' e.source, ?_, by
        simp only [preimage_inter, inter_univ, Subtype.coe_preimage_self, hu3.symm]; rfl⟩
      rw [inter_assoc]
      exact hu1.inter (a.isOpen_target_of_mem_pretrivializationAtlas_inter e e' he')
    continuousOn_invFun := a.continuous_symm_of_mem_pretrivializationAtlas he }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean#L793).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d099ad1fd51f6fe75a4ee2befe3e2579ad497c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
