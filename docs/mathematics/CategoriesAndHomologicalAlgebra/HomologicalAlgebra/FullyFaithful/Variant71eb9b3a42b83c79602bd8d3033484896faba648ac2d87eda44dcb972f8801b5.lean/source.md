# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.FullyFaithful.Variant71eb9b3a42b83c79602bd8d3033484896faba648ac2d87eda44dcb972f8801b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `876924b04458252d1f62b3e51e5a7b82e1cb80a3` · SHA-256 `3db907c42cd73fb99789541f1ab49facdc2d47c1dc7149fd7b960b0e34b0a2ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SingleFunctorCompHomologyFunctorIso.Variant357e37b16fedce238870393967b91922539bef6772b38dbadaa98f5d2853f3de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"357e37b16fedce238870393967b91922539bef6772b38dbadaa98f5d2853f3de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.SingleFunctorCompHomologyFunctorIso.Variant357e37b16fedce238870393967b91922539bef6772b38dbadaa98f5d2853f3de","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"357e37b16fedce238870393967b91922539bef6772b38dbadaa98f5d2853f3de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/DerivedCategory/FullyFaithful.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.DerivedCategory.Fractions
import Mathlib.Algebra.Homology.SingleHomology

/-! # The fully faithful embedding of the abelian category in its derived category

In this file, we show that for any `n : ℤ`, the functor
`singleFunctor C n : C ⥤ DerivedCategory C` is fully faithful.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SingleFunctorCompHomologyFunctorIso.Variant357e37b16fedce238870393967b91922539bef6772b38dbadaa98f5d2853f3de

universe w v u

open CategoryTheory

namespace DerivedCategory

variable (C : Type u) [Category.{v} C] [Abelian C] [HasDerivedCategory.{w} C]

/-- The canonical isomorphism
`DerivedCateogry.singleFunctor C n ⋙ DerivedCateogry.homologyFunctor C n ≅ 𝟭 C` -/
noncomputable def singleFunctorCompHomologyFunctorIso (n : ℤ) :
    singleFunctor C n ⋙ homologyFunctor C n ≅ 𝟭 C :=
  isoWhiskerRight ((SingleFunctors.evaluation _ _ n).mapIso
    (singleFunctorsPostcompQIso C)) _ ≪≫ Functor.associator _ _ _ ≪≫
    isoWhiskerLeft _ (homologyFunctorFactors C n) ≪≫
      (HomologicalComplex.homologyFunctorSingleIso _ _ _)

instance (n : ℤ) : (singleFunctor C n).Faithful where
  map_injective {_ _ f₁ f₂} h := by
    have eq₁ := NatIso.naturality_1 (singleFunctorCompHomologyFunctorIso C n) f₁
    have eq₂ := NatIso.naturality_1 (singleFunctorCompHomologyFunctorIso C n) f₂
    dsimp at eq₁ eq₂
    rw [← eq₁, ← eq₂, h]

instance (n : ℤ) : (singleFunctor C n).Full where
  map_surjective {A B} f := by
    change Q.obj ((CochainComplex.singleFunctor C n).obj A) ⟶
      Q.obj ((CochainComplex.singleFunctor C n).obj B) at f
    suffices ∃ f', f = Q.map f' by
      obtain ⟨f', rfl⟩ := this
      obtain ⟨g, rfl⟩ := (CochainComplex.singleFunctor C n).map_surjective f'
      exact ⟨g, rfl⟩
    obtain ⟨X, _, _, s, _, g, rfl⟩ := right_fac_of_isStrictlyLE_of_isStrictlyGE n n f
    obtain ⟨A₀, ⟨e⟩⟩ := X.exists_iso_single n
    have ⟨φ, hφ⟩ := (CochainComplex.singleFunctor C n).map_surjective (e.inv ≫ s)
    have : IsIso ((singleFunctor C n).map φ) := by
      change IsIso (Q.map ((CochainComplex.singleFunctor C n).map φ))
      rw [hφ, Functor.map_comp]
      infer_instance
    have : IsIso φ := (NatIso.isIso_map_iff (singleFunctorCompHomologyFunctorIso C n) φ).1
        (by dsimp; infer_instance)
    have : IsIso (e.inv ≫ s) := by rw [← hφ]; infer_instance
    have : IsIso s := IsIso.of_isIso_comp_left e.inv s
    exact ⟨inv s ≫ g, by simp⟩

end DerivedCategory
```
