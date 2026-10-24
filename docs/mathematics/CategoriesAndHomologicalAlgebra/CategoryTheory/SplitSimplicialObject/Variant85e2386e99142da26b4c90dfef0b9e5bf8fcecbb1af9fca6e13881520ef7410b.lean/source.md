# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitSimplicialObject.Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ab1fe0382dc81635f80d72d986a98f7bfc0df99` · SHA-256 `6b44477780a6e3a70f74ce2cbb77277eb440ae031848deda7ea657eb02c13b02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DecompositionId.Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DecompositionId.Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicTopology/DoldKan/SplitSimplicialObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SplitSimplicialObject
import Mathlib.AlgebraicTopology.DoldKan.Degeneracies
import Mathlib.AlgebraicTopology.DoldKan.FunctorN


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DecompositionId.Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1

#align_import algebraic_topology.dold_kan.split_simplicial_object from "leanprover-community/mathlib"@"32a7e535287f9c73f2e4d2aef306a39190f0b504"

/-!

# Split simplicial objects in preadditive categories

In this file we define a functor `nondegComplex : SimplicialObject.Split C ⥤ ChainComplex C ℕ`
when `C` is a preadditive category with finite coproducts, and get an isomorphism
`toKaroubiNondegComplexFunctorIsoN₁ : nondegComplex ⋙ toKaroubi _ ≅ forget C ⋙ DoldKan.N₁`.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


open CategoryTheory CategoryTheory.Limits CategoryTheory.Category CategoryTheory.Preadditive
  CategoryTheory.Idempotents Opposite AlgebraicTopology AlgebraicTopology.DoldKan
  BigOperators Simplicial DoldKan

namespace SimplicialObject

namespace Splitting

variable {C : Type*} [Category C] [HasFiniteCoproducts C] {X : SimplicialObject C}
  (s : Splitting X)

/-- The projection on a summand of the coproduct decomposition given
by a splitting of a simplicial object. -/
noncomputable def πSummand [HasZeroMorphisms C] {Δ : SimplexCategoryᵒᵖ} (A : IndexSet Δ) :
    X.obj Δ ⟶ s.N A.1.unop.len := by
  refine' (s.iso Δ).inv ≫ Sigma.desc fun B => _
  by_cases B = A
  · exact eqToHom (by subst h; rfl)
  · exact 0
#align simplicial_object.splitting.π_summand SimplicialObject.Splitting.πSummand

@[reassoc (attr := simp)]
theorem ι_πSummand_eq_id [HasZeroMorphisms C] {Δ : SimplexCategoryᵒᵖ} (A : IndexSet Δ) :
    s.ιSummand A ≫ s.πSummand A = 𝟙 _ := by
  dsimp only [ιSummand, iso_hom, πSummand, iso_inv, summand]
  simp only [summand, assoc, IsIso.hom_inv_id_assoc]
  erw [colimit.ι_desc, Cofan.mk_ι_app]
  dsimp
  simp only [dite_eq_ite, ite_true]
#align simplicial_object.splitting.ι_π_summand_eq_id SimplicialObject.Splitting.ι_πSummand_eq_id

@[reassoc (attr := simp)]
theorem ι_πSummand_eq_zero [HasZeroMorphisms C] {Δ : SimplexCategoryᵒᵖ} (A B : IndexSet Δ)
    (h : B ≠ A) : s.ιSummand A ≫ s.πSummand B = 0 := by
  dsimp only [ιSummand, iso_hom, πSummand, iso_inv, summand]
  simp only [summand, assoc, IsIso.hom_inv_id_assoc]
  erw [colimit.ι_desc, Cofan.mk_ι_app]
  exact dif_neg h.symm
#align simplicial_object.splitting.ι_π_summand_eq_zero SimplicialObject.Splitting.ι_πSummand_eq_zero

variable [Preadditive C]

theorem decomposition_id (Δ : SimplexCategoryᵒᵖ) :
    𝟙 (X.obj Δ) = ∑ A : IndexSet Δ, s.πSummand A ≫ s.ιSummand A := by
  apply s.hom_ext'
  intro A
  rw [comp_id, comp_sum, Finset.sum_eq_single A, ι_πSummand_eq_id_assoc]
  · intro B _ h₂
    rw [s.ι_πSummand_eq_zero_assoc _ _ h₂, zero_comp]
  · simp only [Finset.mem_univ, not_true, IsEmpty.forall_iff]
#align simplicial_object.splitting.decomposition_id SimplicialObject.Splitting.decomposition_id

@[reassoc (attr := simp)]
theorem σ_comp_πSummand_id_eq_zero {n : ℕ} (i : Fin (n + 1)) :
    X.σ i ≫ s.πSummand (IndexSet.id (op [n + 1])) = 0 := by
  apply s.hom_ext'
  intro A
  dsimp only [SimplicialObject.σ]
  rw [comp_zero, s.ιSummand_epi_naturality_assoc A (SimplexCategory.σ i).op, ι_πSummand_eq_zero]
  rw [ne_comm]
  change ¬(A.epiComp (SimplexCategory.σ i).op).EqId
  rw [IndexSet.eqId_iff_len_eq]
  have h := SimplexCategory.len_le_of_epi (inferInstance : Epi A.e)
  dsimp at h ⊢
  linarith
#align simplicial_object.splitting.σ_comp_π_summand_id_eq_zero SimplicialObject.Splitting.σ_comp_πSummand_id_eq_zero

/-- If a simplicial object `X` in an additive category is split,
then `PInfty` vanishes on all the summands of `X _[n]` which do
not correspond to the identity of `[n]`. -/
theorem ιSummand_comp_PInfty_eq_zero {X : SimplicialObject C} (s : SimplicialObject.Splitting X)
    {n : ℕ} (A : SimplicialObject.Splitting.IndexSet (op [n])) (hA : ¬A.EqId) :
    s.ιSummand A ≫ PInfty.f n = 0 := by
  rw [SimplicialObject.Splitting.IndexSet.eqId_iff_mono] at hA
  rw [SimplicialObject.Splitting.ιSummand_eq, assoc, degeneracy_comp_PInfty X n A.e hA, comp_zero]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.ι_summand_comp_P_infty_eq_zero SimplicialObject.Splitting.ιSummand_comp_PInfty_eq_zero

theorem comp_PInfty_eq_zero_iff {Z : C} {n : ℕ} (f : Z ⟶ X _[n]) :
    f ≫ PInfty.f n = 0 ↔ f ≫ s.πSummand (IndexSet.id (op [n])) = 0 := by
  constructor
  · intro h
    rcases n with _|n
    · dsimp at h
      rw [comp_id] at h
      rw [h, zero_comp]
    · have h' := f ≫= PInfty_f_add_QInfty_f (n + 1)
      dsimp at h'
      rw [comp_id, comp_add, h, zero_add] at h'
      rw [← h', assoc, QInfty_f, decomposition_Q, Preadditive.sum_comp, Preadditive.comp_sum,
        Finset.sum_eq_zero]
      intro i _
      simp only [assoc, σ_comp_πSummand_id_eq_zero, comp_zero]
  · intro h
    rw [← comp_id f, assoc, s.decomposition_id, Preadditive.sum_comp, Preadditive.comp_sum,
      Fintype.sum_eq_zero]
    intro A
    by_cases hA : A.EqId
    · dsimp at hA
      subst hA
      rw [assoc, reassoc_of% h, zero_comp]
    · simp only [assoc, s.ιSummand_comp_PInfty_eq_zero A hA, comp_zero]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.comp_P_infty_eq_zero_iff SimplicialObject.Splitting.comp_PInfty_eq_zero_iff

@[reassoc (attr := simp)]
theorem PInfty_comp_πSummand_id (n : ℕ) :
    PInfty.f n ≫ s.πSummand (IndexSet.id (op [n])) = s.πSummand (IndexSet.id (op [n])) := by
  conv_rhs => rw [← id_comp (s.πSummand _)]
  symm
  rw [← sub_eq_zero, ← sub_comp, ← comp_PInfty_eq_zero_iff, sub_comp, id_comp, PInfty_f_idem,
    sub_self]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.P_infty_comp_π_summand_id SimplicialObject.Splitting.PInfty_comp_πSummand_id

@[reassoc (attr := simp)]
theorem πSummand_comp_ιSummand_comp_PInfty_eq_PInfty (n : ℕ) :
    s.πSummand (IndexSet.id (op [n])) ≫ s.ιSummand (IndexSet.id (op [n])) ≫ PInfty.f n =
      PInfty.f n := by
  conv_rhs => rw [← id_comp (PInfty.f n)]
  erw [s.decomposition_id, Preadditive.sum_comp]
  rw [Fintype.sum_eq_single (IndexSet.id (op [n])), assoc]
  rintro A (hA : ¬A.EqId)
  rw [assoc, s.ιSummand_comp_PInfty_eq_zero A hA, comp_zero]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.π_summand_comp_ι_summand_comp_P_infty_eq_P_infty SimplicialObject.Splitting.πSummand_comp_ιSummand_comp_PInfty_eq_PInfty

/-- The differentials `s.d i j : s.N i ⟶ s.N j` on nondegenerate simplices of a split
simplicial object are induced by the differentials on the alternating face map complex. -/
@[simp]
noncomputable def d (i j : ℕ) : s.N i ⟶ s.N j :=
  s.ιSummand (IndexSet.id (op [i])) ≫ K[X].d i j ≫ s.πSummand (IndexSet.id (op [j]))
#align simplicial_object.splitting.d SimplicialObject.Splitting.d

theorem ιSummand_comp_d_comp_πSummand_eq_zero (j k : ℕ) (A : IndexSet (op [j])) (hA : ¬A.EqId) :
    s.ιSummand A ≫ K[X].d j k ≫ s.πSummand (IndexSet.id (op [k])) = 0 := by
  rw [A.eqId_iff_mono] at hA
  rw [← assoc, ← s.comp_PInfty_eq_zero_iff, assoc, ← PInfty.comm j k, s.ιSummand_eq, assoc,
    degeneracy_comp_PInfty_assoc X j A.e hA, zero_comp, comp_zero]
#align simplicial_object.splitting.ι_summand_comp_d_comp_π_summand_eq_zero SimplicialObject.Splitting.ιSummand_comp_d_comp_πSummand_eq_zero

/-- If `s` is a splitting of a simplicial object `X` in a preadditive category,
`s.nondeg_complex` is a chain complex which is given in degree `n` by
the nondegenerate `n`-simplices of `X`. -/
@[simps]
noncomputable def nondegComplex : ChainComplex C ℕ where
  X := s.N
  d := s.d
  shape i j hij := by simp only [d, K[X].shape i j hij, zero_comp, comp_zero]
  d_comp_d' i j k _ _ := by
    simp only [d, assoc]
    have eq : K[X].d i j ≫ 𝟙 (X.obj (op [j])) ≫ K[X].d j k ≫
        s.πSummand (IndexSet.id (op [k])) = 0 := by
      erw [id_comp, HomologicalComplex.d_comp_d_assoc, zero_comp]
    rw [s.decomposition_id] at eq
    classical
    rw [Fintype.sum_eq_add_sum_compl (IndexSet.id (op [j])), add_comp, comp_add, assoc,
      Preadditive.sum_comp, Preadditive.comp_sum, Finset.sum_eq_zero, add_zero] at eq
    swap
    · intro A hA
      simp only [Finset.mem_compl, Finset.mem_singleton] at hA
      simp only [assoc, ιSummand_comp_d_comp_πSummand_eq_zero _ _ _ _ hA, comp_zero]
    rw [eq, comp_zero]
#align simplicial_object.splitting.nondeg_complex SimplicialObject.Splitting.nondegComplex

/-- The chain complex `s.nondegComplex` attached to a splitting of a simplicial object `X`
becomes isomorphic to the normalized Moore complex `N₁.obj X` defined as a formal direct
factor in the category `Karoubi (ChainComplex C ℕ)`. -/
@[simps]
noncomputable def toKaroubiNondegComplexIsoN₁ :
    (toKaroubi _).obj s.nondegComplex ≅ N₁.obj X where
  hom :=
    { f :=
        { f := fun n => s.ιSummand (IndexSet.id (op [n])) ≫ PInfty.f n
          comm' := fun i j _ => by
            dsimp
            rw [assoc, assoc, assoc, πSummand_comp_ιSummand_comp_PInfty_eq_PInfty,
              HomologicalComplex.Hom.comm] }
      comm := by
        ext n
        dsimp
        rw [id_comp, assoc, PInfty_f_idem] }
  inv :=
    { f :=
        { f := fun n => s.πSummand (IndexSet.id (op [n]))
          comm' := fun i j _ => by
            dsimp
            slice_rhs 1 1 => rw [← id_comp (K[X].d i j)]
            erw [s.decomposition_id]
            rw [sum_comp, sum_comp, Finset.sum_eq_single (IndexSet.id (op [i])), assoc, assoc]
            · intro A _ hA
              simp only [assoc, s.ιSummand_comp_d_comp_πSummand_eq_zero _ _ _ hA, comp_zero]
            · simp only [Finset.mem_univ, not_true, IsEmpty.forall_iff] }
      comm := by
        ext n
        dsimp
        simp only [comp_id, PInfty_comp_πSummand_id] }
  hom_inv_id := by
    ext n
    simp only [assoc, PInfty_comp_πSummand_id, Karoubi.comp_f, HomologicalComplex.comp_f,
      ι_πSummand_eq_id]
    rfl
  inv_hom_id := by
    ext n
    simp only [πSummand_comp_ιSummand_comp_PInfty_eq_PInfty, Karoubi.comp_f,
      HomologicalComplex.comp_f, N₁_obj_p, Karoubi.id_eq]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.to_karoubi_nondeg_complex_iso_N₁ SimplicialObject.Splitting.toKaroubiNondegComplexIsoN₁

end Splitting

namespace Split

variable {C : Type*} [Category C] [Preadditive C] [HasFiniteCoproducts C]

/-- The functor which sends a split simplicial object in a preadditive category to
the chain complex which consists of nondegenerate simplices. -/
@[simps]
noncomputable def nondegComplexFunctor : Split C ⥤ ChainComplex C ℕ where
  obj S := S.s.nondegComplex
  map {S₁ S₂} Φ :=
    { f := Φ.f
      comm' := fun i j _ => by
        dsimp
        erw [← ιSummand_naturality_symm_assoc Φ (Splitting.IndexSet.id (op [i])),
          ((alternatingFaceMapComplex C).map Φ.F).comm_assoc i j]
        simp only [assoc]
        congr 2
        apply S₁.s.hom_ext'
        intro A
        dsimp [alternatingFaceMapComplex]
        erw [ιSummand_naturality_symm_assoc Φ A]
        by_cases A.EqId
        · dsimp at h
          subst h
          simp only [Splitting.ι_πSummand_eq_id, comp_id, Splitting.ι_πSummand_eq_id_assoc]
          rfl
        · have h' : Splitting.IndexSet.id (op [j]) ≠ A := by
            rw [ne_comm]
            exact h
          rw [S₁.s.ι_πSummand_eq_zero_assoc _ _ h', S₂.s.ι_πSummand_eq_zero _ _ h', zero_comp,
            comp_zero] }
#align simplicial_object.split.nondeg_complex_functor SimplicialObject.Split.nondegComplexFunctor

/-- The natural isomorphism (in `Karoubi (ChainComplex C ℕ)`) between the chain complex
of nondegenerate simplices of a split simplicial object and the normalized Moore complex
defined as a formal direct factor of the alternating face map complex. -/
@[simps!]
noncomputable def toKaroubiNondegComplexFunctorIsoN₁ :
    nondegComplexFunctor ⋙ toKaroubi (ChainComplex C ℕ) ≅ forget C ⋙ DoldKan.N₁ :=
  NatIso.ofComponents (fun S => S.s.toKaroubiNondegComplexIsoN₁) fun Φ => by
    ext n
    dsimp
    simp only [Karoubi.comp_f, toKaroubi_map_f, HomologicalComplex.comp_f,
      nondegComplexFunctor_map_f, Splitting.toKaroubiNondegComplexIsoN₁_hom_f_f, N₁_map_f,
      AlternatingFaceMapComplex.map_f, assoc, PInfty_f_idem_assoc]
    erw [← Split.ιSummand_naturality_symm_assoc Φ (Splitting.IndexSet.id (op [n]))]
    rw [PInfty_f_naturality]
set_option linter.uppercaseLean3 false in
#align simplicial_object.split.to_karoubi_nondeg_complex_functor_iso_N₁ SimplicialObject.Split.toKaroubiNondegComplexFunctorIsoN₁

end Split

end SimplicialObject
```
