# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d035bf48a8cad1ee5185b81aab459ff2b21e09c` · SHA-256 `30960b7b340899472a6ea3f6801f5b96decd1dd0aaf4ffd04539aae730a82fb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Image.Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
import Mathlib.CategoryTheory.Limits.Shapes.Kernels

/-!
# The abelian image and coimage.

In an abelian category we usually want the image of a morphism `f` to be defined as
`kernel (cokernel.π f)`, and the coimage to be defined as `cokernel (kernel.ι f)`.

We make these definitions here, as `Abelian.image f` and `Abelian.coimage f`
(without assuming the category is actually abelian),
and later relate these to the usual categorical notions when in an abelian category.

There is a canonical morphism `coimageImageComparison : Abelian.coimage f ⟶ Abelian.image f`.
Later we show that this is always an isomorphism in an abelian category,
and conversely a category with (co)kernels and finite products in which this morphism
is always an isomorphism is an abelian category.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c

noncomputable section

universe v u

open CategoryTheory

open CategoryTheory.Limits

namespace CategoryTheory.Abelian

variable {C : Type u} [Category.{v} C] [HasZeroMorphisms C] [HasKernels C] [HasCokernels C]
variable {P Q : C} (f : P ⟶ Q)

section Image

/-- The kernel of the cokernel of `f` is called the (abelian) image of `f`. -/
protected abbrev image : C :=
  kernel (cokernel.π f)

/-- The inclusion of the image into the codomain. -/
protected abbrev image.ι : Abelian.image f ⟶ Q :=
  kernel.ι (cokernel.π f)

/-- There is a canonical epimorphism `p : P ⟶ image f` for every `f`. -/
protected abbrev factorThruImage : P ⟶ Abelian.image f :=
  kernel.lift (cokernel.π f) f <| cokernel.condition f

/-- `f` factors through its image via the canonical morphism `p`. -/
protected theorem image.fac : Abelian.factorThruImage f ≫ image.ι f = f :=
  kernel.lift_ι _ _ _

instance mono_factorThruImage [Mono f] : Mono (Abelian.factorThruImage f) :=
  mono_of_mono_fac <| image.fac f

end Image

section Coimage

/-- The cokernel of the kernel of `f` is called the (abelian) coimage of `f`. -/
protected abbrev coimage : C :=
  cokernel (kernel.ι f)

/-- The projection onto the coimage. -/
protected abbrev coimage.π : P ⟶ Abelian.coimage f :=
  cokernel.π (kernel.ι f)

/-- There is a canonical monomorphism `i : coimage f ⟶ Q`. -/
protected abbrev factorThruCoimage : Abelian.coimage f ⟶ Q :=
  cokernel.desc (kernel.ι f) f <| kernel.condition f

/-- `f` factors through its coimage via the canonical morphism `p`. -/
protected theorem coimage.fac : coimage.π f ≫ Abelian.factorThruCoimage f = f :=
  cokernel.π_desc _ _ _

instance epi_factorThruCoimage [Epi f] : Epi (Abelian.factorThruCoimage f) :=
  epi_of_epi_fac <| coimage.fac f

end Coimage

/-- The canonical map from the abelian coimage to the abelian image.
In any abelian category this is an isomorphism.

Conversely, any additive category with kernels and cokernels and
in which this is always an isomorphism, is abelian. -/
@[stacks 0107]
def coimageImageComparison : Abelian.coimage f ⟶ Abelian.image f :=
  cokernel.desc (kernel.ι f) (kernel.lift (cokernel.π f) f (by simp)) (by ext; simp)

/-- An alternative formulation of the canonical map from the abelian coimage to the abelian image.
-/
def coimageImageComparison' : Abelian.coimage f ⟶ Abelian.image f :=
  kernel.lift (cokernel.π f) (cokernel.desc (kernel.ι f) f (by simp)) (by ext; simp)

theorem coimageImageComparison_eq_coimageImageComparison' :
    coimageImageComparison f = coimageImageComparison' f := by
  ext
  simp [coimageImageComparison, coimageImageComparison']

@[reassoc (attr := simp)]
theorem coimage_image_factorisation : coimage.π f ≫ coimageImageComparison f ≫ image.ι f = f := by
  simp [coimageImageComparison]

/-- The coimage-image comparison morphism is functorial. -/
@[simps! obj map]
def coimageImageComparisonFunctor : Arrow C ⥤ Arrow C where
  obj f := Arrow.mk (coimageImageComparison f.hom)
  map {f g} η := Arrow.homMk
    (cokernel.map _ _ (kernel.map _ _ η.left η.right (by simp)) η.left (by simp))
    (kernel.map _ _ η.right (cokernel.map _ _ η.left η.right (by simp)) (by simp)) (by aesop_cat)

end CategoryTheory.Abelian
```
