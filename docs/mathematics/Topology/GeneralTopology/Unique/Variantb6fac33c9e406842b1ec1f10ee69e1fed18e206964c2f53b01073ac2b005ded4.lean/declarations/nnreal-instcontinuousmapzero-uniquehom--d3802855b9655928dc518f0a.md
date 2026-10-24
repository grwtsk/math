# NNReal.instContinuousMapZero.UniqueHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0af80574c9d7ad878faec014fcdd5c20f26cb08547aba267acf067c5767e005",
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
  "slug": "nnreal-instcontinuousmapzero-uniquehom--d3802855b9655928dc518f0a",
  "source": {
    "blob": "308e0ac542c4dfd28e7a09452f03f1499653d46c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3802855b9655928dc518f0ae02a230754fc378948b4250d4f5106ea5c7b63f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0af80574c9d7ad878faec014fcdd5c20f26cb08547aba267acf067c5767e005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.instContinuousMapZero.UniqueHom
    [TopologicalSpace A] [IsTopologicalRing A] [IsScalarTower ℝ A A] [SMulCommClass ℝ A A]
    [T2Space A] :
    ContinuousMapZero.UniqueHom ℝ≥0 A where
  eq_of_continuous_of_map_id s hs _inst h0 φ ψ hφ hψ h := by
    let s' : Set ℝ := (↑) '' s
    let e : s ≃ₜ s' :=
      { toFun := Subtype.map (↑) (by simp [s'])
        invFun := Subtype.map Real.toNNReal (by simp [s'])
        left_inv := fun _ ↦ by ext; simp
        right_inv := fun x ↦ by
          ext
          obtain ⟨y, -, hy⟩ := x.2
          simpa using hy ▸ NNReal.coe_nonneg y
        continuous_toFun := continuous_coe.subtype_map (by simp [s'])
        continuous_invFun := continuous_real_toNNReal.subtype_map (by simp [s']) }
    let _inst₁ : Zero s' := ⟨0, ⟨0, h0 ▸ Subtype.property (0 : s), coe_zero⟩⟩
    have h0' : ((0 : s') : ℝ) = 0 := rfl
    have e0 : e 0 = 0 := by ext; simp [e, h0, h0']
    have e0' : e.symm 0 = 0 := by
      simpa only [Homeomorph.symm_apply_apply] using congr(e.symm $(e0)).symm
    have (ξ : C(s, ℝ≥0)₀ →⋆ₙₐ[ℝ≥0] A) (hξ : Continuous ξ) :
        (let ξ' := ξ.realContinuousMapZeroOfNNReal.comp <|
          ContinuousMapZero.nonUnitalStarAlgHom_precomp ℝ ⟨e, e0⟩;
          Continuous ξ' ∧ ξ' (ContinuousMapZero.id h0') = ξ (ContinuousMapZero.id h0)) := by
      intro ξ'
      refine ⟨ξ.continuous_realContinuousMapZeroOfNNReal hξ |>.comp <| ?_, ?_⟩
      · rw [continuous_induced_rng]
        exact ContinuousMap.continuous_precomp _ |>.comp continuous_induced_dom
      · exact ξ.realContinuousMapZeroOfNNReal_apply_comp_toReal (.id h0)
    obtain ⟨hφ', hφ_id⟩ := this φ hφ
    obtain ⟨hψ', hψ_id⟩ := this ψ hψ
    have hs' : CompactSpace s' := e.compactSpace
    have : ContinuousMapZero.UniqueHom ℝ A := inferInstance
    have h' := ContinuousMapZero.UniqueHom.eq_of_continuous_of_map_id
      s' h0' _ _ hφ' hψ' (hφ_id ▸ hψ_id ▸ h)
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

include S in
/-- Non-unital star algebra homomorphisms commute with the non-unital continuous functional
calculus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308e0ac542c4dfd28e7a09452f03f1499653d46c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
