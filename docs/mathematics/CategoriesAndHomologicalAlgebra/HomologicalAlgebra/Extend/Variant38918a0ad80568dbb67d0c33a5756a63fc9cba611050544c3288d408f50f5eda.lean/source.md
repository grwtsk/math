# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Extend.Variant38918a0ad80568dbb67d0c33a5756a63fc9cba611050544c3288d408f50f5eda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `134ace588ed460e4c0730b78a7a4d87a7d197d93` · SHA-256 `665ba8d6085535afc98f9633417572817fcefb44dffd0c485bf98e5ca092e595`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant05e0958275d0b01fd97173ce503a6bfe5dc67c4e342fe1c66fc48753decec954","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05e0958275d0b01fd97173ce503a6bfe5dc67c4e342fe1c66fc48753decec954","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.CochainComplex.Variant05e0958275d0b01fd97173ce503a6bfe5dc67c4e342fe1c66fc48753decec954","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"05e0958275d0b01fd97173ce503a6bfe5dc67c4e342fe1c66fc48753decec954","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Abelian/Injective/Extend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.Embedding.CochainComplex
public import Mathlib.CategoryTheory.Preadditive.Injective.Resolution

/-!
# Injective resolutions as cochain complexes indexed by the integers

Given an injective resolution `R` of an object `X` in an abelian category `C`,
we define `R.cochainComplex : CochainComplex C ℤ`, which is the extension
of `R.cocomplex : CochainComplex C ℕ`, and the quasi-isomorphism
`R.ι' : (CochainComplex.singleFunctor C 0).obj X ⟶ R.cochainComplex`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant05e0958275d0b01fd97173ce503a6bfe5dc67c4e342fe1c66fc48753decec954

@[expose] public section

universe v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

namespace InjectiveResolution

section

variable [HasZeroObject C] [Preadditive C] {X : C}
  (R : InjectiveResolution X)

/-- If `R : InjectiveResolution X`, this is the cochain complex indexed by `ℤ`
obtained by extending by zero the cochain complex `R.cocomplex` indexed by `ℕ`. -/
noncomputable def cochainComplex : CochainComplex C ℤ :=
  R.cocomplex.extend ComplexShape.embeddingUpNat

instance : R.cochainComplex.IsStrictlyGE 0 := by
  dsimp [cochainComplex]
  infer_instance

/-- If `R : InjectiveResolution X`, then `R.cochainComplex.X n` (with `n : ℕ`)
is isomorphic to `R.cocomplex.X k` (with `k : ℕ`) when `k = n`. -/
noncomputable def cochainComplexXIso (n : ℤ) (k : ℕ) (h : k = n) :
    R.cochainComplex.X n ≅ R.cocomplex.X k :=
  HomologicalComplex.extendXIso _ _ h

@[reassoc]
lemma cochainComplex_d (n₁ n₂ : ℤ) (k₁ k₂ : ℕ) (h₁ : k₁ = n₁) (h₂ : k₂ = n₂) :
    R.cochainComplex.d n₁ n₂ = (cochainComplexXIso _ _ _ h₁).hom ≫
      R.cocomplex.d k₁ k₂ ≫ (cochainComplexXIso _ _ _ h₂).inv :=
  HomologicalComplex.extend_d_eq _ _ h₁ h₂

instance : R.cochainComplex.IsStrictlyGE 0 := by
  dsimp [cochainComplex]
  infer_instance

instance (n : ℤ) : Injective (R.cochainComplex.X n) := by
  by_cases hn : 0 ≤ n
  · obtain ⟨k, rfl⟩ := Int.eq_ofNat_of_zero_le hn
    exact Injective.of_iso (R.cochainComplexXIso _ _ rfl).symm inferInstance
  · exact IsZero.injective (CochainComplex.isZero_of_isStrictlyGE _ 0 _ (by lia))

/-- The quasi-isomorphism `(CochainComplex.singleFunctor C 0).obj X ⟶ R.cochainComplex`
in `CochainComplex C ℤ` when `R` is an injective resolution of `X`. -/
noncomputable def ι' : (CochainComplex.singleFunctor C 0).obj X ⟶ R.cochainComplex :=
  (HomologicalComplex.extendSingleIso _ _ _ _ (by simp)).inv ≫
    (ComplexShape.embeddingUpNat.extendFunctor C).map R.ι

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc]
lemma ι'_f_zero :
    R.ι'.f 0 = (HomologicalComplex.singleObjXSelf (.up ℤ) 0 X).hom ≫ R.ι.f 0 ≫
      (R.cochainComplexXIso _ _ (by simp)).inv := by
  dsimp [ι']
  rw [HomologicalComplex.extendMap_f _ _ (i := 0) (by simp),
    HomologicalComplex.extendSingleIso_inv_f]
  cat_disch

end

variable [Abelian C] {X : C} (R : InjectiveResolution X)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
instance : QuasiIso R.ι' := by dsimp [ι']; infer_instance

instance : R.cochainComplex.IsLE 0 := by
  simp only [← HomologicalComplex.isSupported_iff_of_quasiIso R.ι']
  infer_instance

namespace Hom

variable {R} {X' : C} {R' : InjectiveResolution X'} {f : X ⟶ X'}
  (φ : Hom R R' f)

/-- The morphism on cochain complexes indexed by `ℤ` that is induced by
an (heterogeneous) morphism of injective resolutions. -/
noncomputable def hom' : R.cochainComplex ⟶ R'.cochainComplex :=
  HomologicalComplex.extendMap φ.hom _

set_option backward.isDefEq.respectTransparency false in
@[reassoc]
lemma hom'_f (n : ℤ) (m : ℕ) (h : m = n) :
    φ.hom'.f n =
    (R.cochainComplexXIso n m h).hom ≫ φ.hom.f m ≫ (R'.cochainComplexXIso n m h).inv := by
  simp [hom',
    HomologicalComplex.extendMap_f _ ComplexShape.embeddingUpNat (i := m) (i' := n) (by simpa),
    cochainComplexXIso]

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
lemma ι'_comp_hom' :
    R.ι' ≫ φ.hom' = (CochainComplex.singleFunctor C 0).map f ≫ R'.ι' :=
  HomologicalComplex.from_single_hom_ext (by
    simp [hom'_f _ 0 0 rfl, ι'_f_zero, CochainComplex.singleFunctor,
      HomologicalComplex.single, HomologicalComplex.singleObjXSelf,
      HomologicalComplex.singleObjXIsoOfEq])

end Hom

end InjectiveResolution

end CategoryTheory
```
