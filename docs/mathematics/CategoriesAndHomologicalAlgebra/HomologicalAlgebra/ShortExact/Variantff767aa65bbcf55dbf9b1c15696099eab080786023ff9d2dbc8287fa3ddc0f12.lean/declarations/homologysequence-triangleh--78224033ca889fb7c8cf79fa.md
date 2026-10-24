# homologySequenceδ_triangleh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d4a96f9-c22b-6546-d2ac-5a72b64076ce",
  "kind": "lemma",
  "lexical_name": "homologySequenceδ_triangleh",
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
  "slug": "homologysequence-triangleh--78224033ca889fb7c8cf79fa",
  "source": {
    "blob": "140d3b80fdc3b90e81363f353554a4c67fc22d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78224033ca889fb7c8cf79fae5ac7db00c1604c041539e19eb6bfa75a9292682",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d4a96f9-c22b-6546-d2ac-5a72b64076ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologySequenceδ_triangleh (n₀ : ℤ) (n₁ : ℤ) (h : n₀ + 1 = n₁) :
    (homologyFunctor C (up ℤ) 0).homologySequenceδ (triangleh S.f) n₀ n₁ h =
      (homologyFunctorFactors C (up ℤ) n₀).hom.app _ ≫
        HomologicalComplex.homologyMap (descShortComplex S) n₀ ≫ hS.δ n₀ n₁ h ≫
          (homologyFunctorFactors C (up ℤ) n₁).inv.app _ := by
  /- We proceed by diagram chase. We test the identity on
     cocycles `x' : A' ⟶ (mappingCone S.f).X n₀` -/
  dsimp
  rw [← cancel_mono ((homologyFunctorFactors C (up ℤ) n₁).hom.app _),
    assoc, assoc, assoc, Iso.inv_hom_id_app,
    ← cancel_epi ((homologyFunctorFactors C (up ℤ) n₀).inv.app _), Iso.inv_hom_id_app_assoc]
  apply yoneda.map_injective
  ext ⟨A⟩ (x : A ⟶ _)
  obtain ⟨A', π, _, x', w, hx'⟩ :=
    (mappingCone S.f).eq_liftCycles_homologyπ_up_to_refinements x n₁ (by simpa using h)
  erw [homologySequenceδ_quotient_mapTriangle_obj_assoc _ _ _ h]
  dsimp
  rw [comp_id, Iso.inv_hom_id_app_assoc, Iso.inv_hom_id_app]
  erw [comp_id]
  rw [← cancel_epi π, reassoc_of% hx', reassoc_of% hx',
    HomologicalComplex.homologyπ_naturality_assoc,
    HomologicalComplex.liftCycles_comp_cyclesMap_assoc]
  /- We decompose the cocycle `x'` into two morphisms `a : A' ⟶ S.X₁.X n₁`
     and `b : A' ⟶ S.X₂.X n₀` satisfying certain relations. -/
  obtain ⟨a, b, hab⟩ := decomp_to _ x' n₁ h
  rw [hab, ext_to_iff _ n₁ (n₁ + 1) rfl, add_comp, assoc, assoc, inr_f_d, add_comp, assoc,
    assoc, assoc, assoc, inr_f_fst_v, comp_zero, comp_zero, add_zero, zero_comp,
    d_fst_v _ _ _ _ h, comp_neg, inl_v_fst_v_assoc, comp_neg, neg_eq_zero,
    add_comp, assoc, assoc, assoc, assoc, inr_f_snd_v, comp_id, zero_comp,
    d_snd_v _ _ _ h, comp_add, inl_v_fst_v_assoc, inl_v_snd_v_assoc, zero_comp, add_zero] at w
  /- We simplify the RHS. -/
  conv_rhs => simp only [hab, add_comp, assoc, inr_f_descShortComplex_f,
    inl_v_descShortComplex_f, comp_zero, zero_add]
  rw [hS.δ_eq n₀ n₁ (by simpa using h) (b ≫ S.g.f n₀) _ b rfl (-a)
    (by simp only [neg_comp, neg_eq_iff_add_eq_zero, w.2]) (n₁ + 1) (by simp)]
  /- We simplify the LHS. -/
  dsimp [Functor.shiftMap, homologyFunctor_shift]
  rw [HomologicalComplex.homologyπ_naturality_assoc,
    HomologicalComplex.liftCycles_comp_cyclesMap_assoc,
    S.X₁.liftCycles_shift_homologyπ_assoc _ _ _ _ n₁ (by omega) (n₁ + 1) (by simp),
    Iso.inv_hom_id_app]
  dsimp [homologyFunctor_shift]
  simp only [hab, add_comp, assoc, inl_v_triangle_mor₃_f_assoc,
    shiftFunctorObjXIso, neg_comp, Iso.inv_hom_id, comp_neg, comp_id,
    inr_f_triangle_mor₃_f_assoc, zero_comp, comp_zero, add_zero]

open ComposableArrows

set_option simprocs false

include hS in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140d3b80fdc3b90e81363f353554a4c67fc22d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
