# UniformSpace.toCompletelyRegularSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5aad6dde1b9d2e91047f9bb6739a720b3a42e540d9ea9766e169d109e0de392a",
  "kind": "instance",
  "lexical_name": "UniformSpace.toCompletelyRegularSpace",
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
  "slug": "uniformspace-tocompletelyregularspace--10abf1a1cdd2c84dd3979427",
  "source": {
    "blob": "79a198cf7a93dbffb6fd6dfb034cd5380c0f86cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10abf1a1cdd2c84dd397942783f0ffd6044fa318479ee9eb9e87a080a76c961b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5aad6dde1b9d2e91047f9bb6739a720b3a42e540d9ea9766e169d109e0de392a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance UniformSpace.toCompletelyRegularSpace : CompletelyRegularSpace X where
  completely_regular x K hK hx :=
    have ⟨O, hOu, hOo, hbO⟩ := isOpen_iff_isOpen_ball_subset.mp hK.isOpen_compl x hx
    have ⟨(u3 : SetRel X X), hu3u, _, hu3O⟩ := comp_comp_symm_mem_uniformity_sets hOu
    have hu3O := ((comp_subset_comp_left (comp_subset_comp_right interior_subset))).trans hu3O
    let c : Urysohns.CU IsThickening :=
    { C := closure (ball x (interior u3))
      U := ball x O
      closed_C := isClosed_closure
      open_U := isOpen_ball x hOo
      subset := closure_ball_subset.trans <| (ball_mono · x) <| by
        simp_rw [closure_eq_inter_uniformity, ← comp_assoc]
        exact (iInter₂_subset u3 hu3u).trans hu3O
      hP _ IsThickeningcu _ _ := urysohns_main IsThickeningcu
      P_C_U := ⟨x, interior u3, u3,
        isOpen_interior, interior_mem_uniformity hu3u, rfl, ball_mono hu3O x, hu3u⟩ }
    ⟨fun x ↦ ⟨c.lim x, c.lim_mem_Icc x⟩, c.continuous_lim.subtype_mk c.lim_mem_Icc,
      Subtype.ext (c.lim_of_mem_C x <| subset_closure (refl_mem_uniformity <|
        interior_mem_uniformity hu3u)), fun y hy ↦ Subtype.ext (c.lim_of_notMem_U y (hbO · hy))⟩

end UniformSpace

section TopologicalSpace
variable [t : TopologicalSpace X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a198cf7a93dbffb6fd6dfb034cd5380c0f86cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
