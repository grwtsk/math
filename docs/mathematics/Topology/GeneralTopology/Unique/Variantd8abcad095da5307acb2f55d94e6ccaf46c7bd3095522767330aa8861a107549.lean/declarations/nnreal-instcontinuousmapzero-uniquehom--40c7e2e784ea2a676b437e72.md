# NNReal.instContinuousMapZero.UniqueHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:640573aa10305631e389d987334e3cdbf8a26048f7857c1cb1d509971934cc64",
  "kind": "instance",
  "lexical_name": "NNReal.instContinuousMapZero.UniqueHom",
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
  "slug": "nnreal-instcontinuousmapzero-uniquehom--40c7e2e784ea2a676b437e72",
  "source": {
    "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 362,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40c7e2e784ea2a676b437e7200ef02fc4f8d2a80a43320699dc3c6ad7b4442c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:640573aa10305631e389d987334e3cdbf8a26048f7857c1cb1d509971934cc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.instContinuousMapZero.UniqueHom
    [TopologicalSpace A] [IsSemitopologicalRing A] [IsScalarTower ℝ A A] [SMulCommClass ℝ A A]
    [T2Space A] :
    ContinuousMapZero.UniqueHom ℝ≥0 A where
  eq_of_continuous_of_map_id s hs h0 φ ψ hφ hψ h := by
    let s' : Set ℝ := (↑) '' s
    let e : s ≃ₜ s' := NNReal.isEmbedding_coe.homeomorphImage s
    have : Fact (0 ∈ s') := ⟨0, Fact.out, coe_zero⟩
    have e0 : e 0 = 0 := rfl
    have e0' : e.symm 0 = 0 := e.symm_apply_eq.mpr e0
    have (ξ : C(s, ℝ≥0)₀ →⋆ₙₐ[ℝ≥0] A) (hξ : Continuous ξ) :
        (let ξ' := ξ.realContinuousMapZeroOfNNReal.comp <|
          ContinuousMapZero.nonUnitalStarAlgHom_precomp ℝ ⟨e, e0⟩;
          Continuous ξ' ∧ ξ' (.id s') = ξ (.id s)) := by
      intro ξ'
      refine ⟨ξ.continuous_realContinuousMapZeroOfNNReal hξ |>.comp <| ?_, ?_⟩
      · rw [continuous_induced_rng]
        exact ContinuousMap.continuous_precomp _ |>.comp continuous_induced_dom
      · exact ξ.realContinuousMapZeroOfNNReal_apply_comp_toReal (.id _)
    obtain ⟨hφ', hφ_id⟩ := this φ hφ
    obtain ⟨hψ', hψ_id⟩ := this ψ hψ
    have hs' : CompactSpace s' := e.compactSpace
    have : ContinuousMapZero.UniqueHom ℝ A := inferInstance
    have h' := ContinuousMapZero.UniqueHom.eq_of_continuous_of_map_id
      s' _ _ hφ' hψ' (hφ_id ▸ hψ_id ▸ h)
    have h'' := congr($(h').comp <|
      ContinuousMapZero.nonUnitalStarAlgHom_precomp ℝ ⟨(e.symm : C(s', s)), e0'⟩)
    have : (ContinuousMapZero.nonUnitalStarAlgHom_precomp ℝ ⟨(e : C(s, s')), e0⟩).comp
        (ContinuousMapZero.nonUnitalStarAlgHom_precomp ℝ ⟨(e.symm : C(s', s)), e0'⟩) =
        NonUnitalStarAlgHom.id _ _ := by
      ext; simp
    simp only [NonUnitalStarAlgHom.comp_assoc, this, NonUnitalStarAlgHom.comp_id] at h''
    exact NonUnitalStarAlgHom.realContinuousMapZeroOfNNReal_injective h''

end NNReal

end UniqueNonUnital

section NonUnitalStarAlgHom

open scoped ContinuousMapZero NonUnitalContinuousFunctionalCalculus

variable {F R S A B : Type*} {p : A → Prop} {q : B → Prop}
  [CommSemiring R] [Nontrivial R] [StarRing R] [MetricSpace R] [IsTopologicalSemiring R]
  [ContinuousStar R] [CommRing S] [Algebra R S]
  [NonUnitalRing A] [StarRing A] [TopologicalSpace A] [Module R A]
  [IsScalarTower R A A] [SMulCommClass R A A]
  [NonUnitalRing B] [StarRing B] [TopologicalSpace B] [Module R B]
  [IsScalarTower R B B] [SMulCommClass R B B]
  [Module S A] [Module S B] [IsScalarTower R S A] [IsScalarTower R S B]
  [NonUnitalContinuousFunctionalCalculus R A p] [NonUnitalContinuousFunctionalCalculus R B q]
  [ContinuousMapZero.UniqueHom R B] [FunLike F A B] [NonUnitalAlgHomClass F S A B]
  [StarHomClass F A B]

set_option backward.isDefEq.respectTransparency false in
include S in
/-- Non-unital star algebra homomorphisms commute with the non-unital continuous functional
calculus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
