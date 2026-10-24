# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d332b1c9c3f5d12ce3b417cabb860f09e0f4b603` · SHA-256 `b7809ca53df9e81a5d84b2073a17cda6c0367b5a9f2d1d392be380105a3a5659`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaPresheaf.Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.YonedaPresheaf.Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/Yoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.Preserves.Finite
import Mathlib.CategoryTheory.Limits.Opposites
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products
import Mathlib.CategoryTheory.Limits.Types.Shapes
import Mathlib.Topology.Category.TopCat.Limits.Products

/-!

# Yoneda presheaves on topologically concrete categories

This file develops some API for "topologically concrete" categories, defining universe polymorphic
"Yoneda presheaves" on such categories.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaPresheaf.Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d

universe w w' v u

open CategoryTheory Opposite Limits

variable {C : Type u} [Category.{v} C] (F : C ⥤ TopCat.{w}) (Y : Type w') [TopologicalSpace Y]

namespace ContinuousMap

/--
A universe polymorphic "Yoneda presheaf" on `C` given by continuous maps into a topoological space
`Y`.
-/
@[simps]
def yonedaPresheaf : Cᵒᵖ ⥤ Type (max w w') where
  obj X := C(F.obj (unop X), Y)
  map f g := ContinuousMap.comp g (F.map f.unop).hom

/--
A universe polymorphic Yoneda presheaf on `TopCat` given by continuous maps into a topoological
space `Y`.
-/
@[simps]
def yonedaPresheaf' : TopCat.{w}ᵒᵖ ⥤ Type (max w w') where
  obj X := C((unop X).1, Y)
  map f g := ContinuousMap.comp g f.unop.hom

theorem comp_yonedaPresheaf' : yonedaPresheaf F Y = F.op ⋙ yonedaPresheaf' Y := rfl

theorem piComparison_fac {α : Type} (X : α → TopCat) :
    piComparison (yonedaPresheaf'.{w, w'} Y) (fun x ↦ op (X x)) =
    (yonedaPresheaf' Y).map ((opCoproductIsoProduct X).inv ≫ (TopCat.sigmaIsoSigma X).inv.op) ≫
    (equivEquivIso (sigmaEquiv Y (fun x ↦ (X x).1))).inv ≫ (Types.productIso _).inv := by
  rw [← Category.assoc, Iso.eq_comp_inv]
  ext
  simp only [yonedaPresheaf', unop_op, piComparison, types_comp_apply,
    Types.productIso_hom_comp_eval_apply, Types.pi_lift_π_apply, comp_apply, TopCat.coe_of,
    unop_comp, Quiver.Hom.unop_op, sigmaEquiv, equivEquivIso_hom, Equiv.toIso_inv,
    Equiv.coe_fn_symm_mk, comp_assoc, sigmaMk_apply, ← opCoproductIsoProduct_inv_comp_ι]
  rfl

/-- The universe polymorphic Yoneda presheaf on `TopCat` preserves finite products. -/
noncomputable instance : PreservesFiniteProducts (yonedaPresheaf'.{w, w'} Y) where
  preserves _ :=
    { preservesLimit := fun {K} =>
      have : ∀ {α : Type} (X : α → TopCat), PreservesLimit (Discrete.functor (fun x ↦ op (X x)))
          (yonedaPresheaf'.{w, w'} Y) := fun X => @PreservesProduct.of_iso_comparison _ _ _ _
          (yonedaPresheaf' Y) _ (fun x ↦ op (X x)) _ _ (by rw [piComparison_fac]; infer_instance)
      let i : K ≅ Discrete.functor (fun i ↦ op (unop (K.obj ⟨i⟩))) := Discrete.natIsoFunctor
      preservesLimit_of_iso_diagram _ i.symm }

end ContinuousMap
```
