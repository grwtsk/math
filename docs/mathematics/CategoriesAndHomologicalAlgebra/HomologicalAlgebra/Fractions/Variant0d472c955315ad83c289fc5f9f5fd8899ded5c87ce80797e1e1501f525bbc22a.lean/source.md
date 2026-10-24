# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Fractions.Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdeecc4d17a8ccd2b038bb7bf13c1e1ebd681cbb` · SHA-256 `60588d982bd20b17e86392142d3a7b0d27ba7ec2a3d968e9d8afd4efaeed17d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.RightFac.Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.RightFac.Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/DerivedCategory/Fractions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.DerivedCategory.HomologySequence
import Mathlib.Algebra.Homology.Embedding.CochainComplex

/-! # Calculus of fractions in the derived category

We obtain various consequences of the calculus of left and right fractions
for `HomotopyCategory.quasiIso C (ComplexShape.up ℤ)` as lemmas about
factorizations of morphisms `f : Q.obj X ⟶ Q.obj Y` (where `X` and `Y`
are cochain complexes). These `f` can be factored as
a right fraction `inv (Q.map s) ≫ Q.map g` or as a left fraction
`Q.map g ≫ inv (Q.map s)`, with `s` a quasi-isomorphism (to `X` or from `Y`).
When strict bounds are known on `X` or `Y`, certain bounds may also be ensured
on the auxiliary object appearing in the fraction.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.RightFac.Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55

universe w v u

open CategoryTheory Category Limits

namespace DerivedCategory

variable {C : Type u} [Category.{v} C] [Abelian C] [HasDerivedCategory.{w} C]

instance : (HomotopyCategory.quasiIso C (ComplexShape.up ℤ)).HasLeftCalculusOfFractions := by
  rw [HomotopyCategory.quasiIso_eq_subcategoryAcyclic_W]
  infer_instance

instance : (HomotopyCategory.quasiIso C (ComplexShape.up ℤ)).HasRightCalculusOfFractions := by
  rw [HomotopyCategory.quasiIso_eq_subcategoryAcyclic_W]
  infer_instance

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category can be written
as `f = inv (Q.map s) ≫ Q.map g` with `s : X' ⟶ X` a quasi-isomorphism and `g : X' ⟶ Y`. -/
lemma right_fac {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) :
    ∃ (X' : CochainComplex C ℤ) (s : X' ⟶ X) (_ : IsIso (Q.map s)) (g : X' ⟶ Y),
      f = inv (Q.map s) ≫ Q.map g := by
  have ⟨φ, hφ⟩ := Localization.exists_rightFraction Qh (HomotopyCategory.quasiIso C _) f
  obtain ⟨X', s, hs, g, rfl⟩ := φ.cases
  obtain ⟨X', rfl⟩ := HomotopyCategory.quotient_obj_surjective X'
  obtain ⟨s, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective s
  obtain ⟨g, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective g
  rw [← isIso_Qh_map_iff] at hs
  exact ⟨X', s, hs, g, hφ⟩

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category can be written
as `f = Q.map g ≫ inv (Q.map s)` with `g : X ⟶ Y'` and `s : Y ⟶ Y'` a quasi-isomorphism. -/
lemma left_fac {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) :
    ∃ (Y' : CochainComplex C ℤ) (g : X ⟶ Y') (s : Y ⟶ Y') (_ : IsIso (Q.map s)),
      f = Q.map g ≫ inv (Q.map s) := by
  have ⟨φ, hφ⟩ := Localization.exists_leftFraction Qh (HomotopyCategory.quasiIso C _) f
  obtain ⟨X', g, s, hs, rfl⟩ := φ.cases
  obtain ⟨X', rfl⟩ := HomotopyCategory.quotient_obj_surjective X'
  obtain ⟨s, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective s
  obtain ⟨g, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective g
  rw [← isIso_Qh_map_iff] at hs
  exact ⟨X', g, s, hs, hφ⟩

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category with `X` strictly `≤ n`
can be written as `f = inv (Q.map s) ≫ Q.map g` with `s : X' ⟶ X` a quasi-isomorphism with
`X'` strictly `≤ n` and `g : X' ⟶ Y`. -/
lemma right_fac_of_isStrictlyLE {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) (n : ℤ)
    [X.IsStrictlyLE n] :
    ∃ (X' : CochainComplex C ℤ) (_ : X'.IsStrictlyLE n) (s : X' ⟶ X) (_ : IsIso (Q.map s))
      (g : X' ⟶ Y), f = inv (Q.map s) ≫ Q.map g := by
  obtain ⟨X', s, hs, g, rfl⟩ := right_fac f
  have : IsIso (Q.map (CochainComplex.truncLEMap s n)) := by
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncLEMap_iff]
    rw [isIso_Q_map_iff_quasiIso] at hs
    infer_instance
  refine ⟨X'.truncLE n, inferInstance, CochainComplex.truncLEMap s n ≫ X.ιTruncLE n, ?_,
      CochainComplex.truncLEMap g n ≫ Y.ιTruncLE n, ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · have eq := Q.congr_map (CochainComplex.ιTruncLE_naturality s n)
    have eq' := Q.congr_map (CochainComplex.ιTruncLE_naturality g n)
    simp only [Functor.map_comp] at eq eq'
    simp only [Functor.map_comp, ← cancel_epi (Q.map (CochainComplex.truncLEMap s n) ≫
      Q.map (CochainComplex.ιTruncLE X n)), IsIso.hom_inv_id_assoc, assoc, reassoc_of% eq, eq']

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category with `Y` strictly `≥ n`
can be written as `f = Q.map g ≫ inv (Q.map s)` with `g : X ⟶ Y'` and `s : Y ⟶ Y'`
a quasi-isomorphism with `Y'` strictly `≥ n`. -/
lemma left_fac_of_isStrictlyGE {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) (n : ℤ)
    [Y.IsStrictlyGE n] :
    ∃ (Y' : CochainComplex C ℤ) (_ : Y'.IsStrictlyGE n) (g : X ⟶ Y') (s : Y ⟶ Y')
      (_ : IsIso (Q.map s)), f = Q.map g ≫ inv (Q.map s) := by
  obtain ⟨Y', g, s, hs, rfl⟩ := left_fac f
  have : IsIso (Q.map (CochainComplex.truncGEMap s n)) := by
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncGEMap_iff]
    rw [isIso_Q_map_iff_quasiIso] at hs
    infer_instance
  refine ⟨Y'.truncGE n, inferInstance, X.πTruncGE n ≫ CochainComplex.truncGEMap g n,
    Y.πTruncGE n ≫ CochainComplex.truncGEMap s n, ?_, ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · have eq := Q.congr_map (CochainComplex.πTruncGE_naturality s n)
    have eq' := Q.congr_map (CochainComplex.πTruncGE_naturality g n)
    simp only [Functor.map_comp] at eq eq'
    simp only [Functor.map_comp, ← cancel_mono (Q.map (CochainComplex.πTruncGE Y n)
      ≫ Q.map (CochainComplex.truncGEMap s n)), assoc, IsIso.inv_hom_id, comp_id]
    simp only [eq, IsIso.inv_hom_id_assoc, eq']

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category
with `X` strictly `≥ a` and `≤ b`, and `Y` strictly `≥ a`
can be written as `f = inv (Q.map s) ≫ Q.map g` with `s : X' ⟶ X`
a quasi-isomorphism with `X'` strictly `≥ a` and `≤ b`, and `g : X' ⟶ Y`. -/
lemma right_fac_of_isStrictlyLE_of_isStrictlyGE
    {X Y : CochainComplex C ℤ} (a b : ℤ) [X.IsStrictlyGE a] [X.IsStrictlyLE b]
    [Y.IsStrictlyGE a] (f : Q.obj X ⟶ Q.obj Y) :
    ∃ (X' : CochainComplex C ℤ) ( _ : X'.IsStrictlyGE a) (_ : X'.IsStrictlyLE b)
    (s : X' ⟶ X) (_ : IsIso (Q.map s)) (g : X' ⟶ Y), f = inv (Q.map s) ≫ Q.map g := by
  obtain ⟨X', hX', s, hs, g, fac⟩ := right_fac_of_isStrictlyLE f b
  have : IsIso (Q.map (CochainComplex.truncGEMap s a)) := by
    rw [isIso_Q_map_iff_quasiIso] at hs
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncGEMap_iff]
    infer_instance
  refine ⟨X'.truncGE a, inferInstance, inferInstance,
    CochainComplex.truncGEMap s a ≫ inv (X.πTruncGE a), ?_,
      CochainComplex.truncGEMap g a ≫ inv (Y.πTruncGE a), ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · simp only [Functor.map_comp, Functor.map_inv, IsIso.inv_comp, IsIso.inv_inv, assoc, fac,
      ← cancel_epi (Q.map s), IsIso.hom_inv_id_assoc]
    rw [← Functor.map_comp_assoc, ← CochainComplex.πTruncGE_naturality s a,
      Functor.map_comp, assoc, IsIso.hom_inv_id_assoc,
      ← Functor.map_comp_assoc, CochainComplex.πTruncGE_naturality g a,
      Functor.map_comp, assoc, IsIso.hom_inv_id, comp_id]

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category
with `X` strictly `≤ b`, and `Y` strictly `≥ a` and `≤ b`
can be written as `f = Q.map g ≫ inv (Q.map s)` with `g : X ⟶ Y'` and
`s : Y ⟶ Y'` a quasi-isomorphism with `Y'` strictly `≥ a` and `≤ b`. -/
lemma left_fac_of_isStrictlyLE_of_isStrictlyGE
    {X Y : CochainComplex C ℤ} (a b : ℤ)
    [X.IsStrictlyLE b] [Y.IsStrictlyGE a] [Y.IsStrictlyLE b] (f : Q.obj X ⟶ Q.obj Y) :
    ∃ (Y' : CochainComplex C ℤ) ( _ : Y'.IsStrictlyGE a) (_ : Y'.IsStrictlyLE b)
    (g : X ⟶ Y') (s : Y ⟶ Y') (_ : IsIso (Q.map s)) , f = Q.map g ≫ inv (Q.map s) := by
  obtain ⟨Y', hY', g, s, hs, fac⟩ := left_fac_of_isStrictlyGE f a
  have : IsIso (Q.map (CochainComplex.truncLEMap s b)) := by
    rw [isIso_Q_map_iff_quasiIso] at hs
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncLEMap_iff]
    infer_instance
  refine ⟨Y'.truncLE b, inferInstance, inferInstance,
    inv (X.ιTruncLE b) ≫ CochainComplex.truncLEMap g b,
    inv (Y.ιTruncLE b) ≫ CochainComplex.truncLEMap s b, ?_, ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · simp only [Functor.map_comp, Functor.map_inv, IsIso.inv_comp, IsIso.inv_inv, assoc, fac,
      ← cancel_mono (Q.map s), IsIso.inv_hom_id, comp_id]
    rw [← Functor.map_comp, ← CochainComplex.ιTruncLE_naturality s b,
      Functor.map_comp, IsIso.inv_hom_id_assoc,
      ← Functor.map_comp, CochainComplex.ιTruncLE_naturality g b,
      Functor.map_comp, IsIso.inv_hom_id_assoc]

lemma subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE (X Y : CochainComplex C ℤ)
    (a b : ℤ) (h : a < b) [X.IsStrictlyLE a] [Y.IsStrictlyGE b] :
    Subsingleton (Q.obj X ⟶ Q.obj Y) := by
  suffices ∀ (f : Q.obj X ⟶ Q.obj Y), f = 0 from ⟨by simp [this]⟩
  intro f
  obtain ⟨X', _, s, _, g, rfl⟩ := right_fac_of_isStrictlyLE f a
  have : g = 0 := by
    ext i
    by_cases hi : a < i
    · apply (X'.isZero_of_isStrictlyLE a i hi).eq_of_src
    · apply (Y.isZero_of_isStrictlyGE b i (by omega)).eq_of_tgt
  rw [this, Q.map_zero, comp_zero]

end DerivedCategory
```
