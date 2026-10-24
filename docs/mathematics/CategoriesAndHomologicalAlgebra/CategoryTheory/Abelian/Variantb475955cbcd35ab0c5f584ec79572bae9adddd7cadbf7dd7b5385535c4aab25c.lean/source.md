# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2ff988abf37c1caee54df49146607b1be853f30` · SHA-256 `938e26afd0167303fb6a6e0843416296af5aeb8a657bf2a2662b1056bb28238a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImageToKernel.Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AbelianImageToKernel.Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/ShortComplex/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Homology.ShortComplex.Homology
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# Abelian categories have homology

In this file, it is shown that all short complexes `S` in abelian
categories have terms of type `S.HomologyData`.

The strategy of the proof is to study the morphism
`kernel.ι S.g ≫ cokernel.π S.f`. We show that there is a
`LeftHomologyData` for `S` for which the `H` field consists
of the coimage of `kernel.ι S.g ≫ cokernel.π S.f`, while
there is a `RightHomologyData` for which the `H` is the
image of `kernel.ι S.g ≫ cokernel.π S.f`. The fact that
these left and right homology data are compatible (i.e.
provide a `HomologyData`) is obtained by using the
coimage-image isomorphism in abelian categories.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImageToKernel.Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4

universe v u

namespace CategoryTheory

open Category Limits

variable {C : Type u} [Category.{v} C] [Abelian C] (S : ShortComplex C)

namespace ShortComplex

/-- The canonical morphism `Abelian.image S.f ⟶ kernel S.g` for a short complex `S`
in an abelian category. -/
noncomputable def abelianImageToKernel : Abelian.image S.f ⟶ kernel S.g :=
  kernel.lift S.g (Abelian.image.ι S.f)
    (by simp only [← cancel_epi (Abelian.factorThruImage S.f),
      kernel.lift_ι_assoc, zero, comp_zero])

@[reassoc (attr := simp)]
lemma abelianImageToKernel_comp_kernel_ι :
    S.abelianImageToKernel ≫ kernel.ι S.g = Abelian.image.ι S.f :=
  kernel.lift_ι _ _ _

instance : Mono S.abelianImageToKernel :=
  mono_of_mono_fac S.abelianImageToKernel_comp_kernel_ι

@[reassoc]
lemma abelianImageToKernel_comp_kernel_ι_comp_cokernel_π :
    S.abelianImageToKernel ≫ kernel.ι S.g ≫ cokernel.π S.f = 0 := by
  simp

/-- `Abelian.image S.f` is the kernel of `kernel.ι S.g ≫ cokernel.π S.f` -/
noncomputable def abelianImageToKernelIsKernel :
    IsLimit (KernelFork.ofι S.abelianImageToKernel
      S.abelianImageToKernel_comp_kernel_ι_comp_cokernel_π) :=
  KernelFork.IsLimit.ofι _ _
    (fun k hk => kernel.lift _ (k ≫ kernel.ι S.g) (by rw [assoc, hk]))
    (fun k hk => by simp only [← cancel_mono (kernel.ι S.g), assoc,
      abelianImageToKernel_comp_kernel_ι, kernel.lift_ι])
    (fun k hk b hb => by simp only [← cancel_mono S.abelianImageToKernel,
      ← cancel_mono (kernel.ι S.g), hb, assoc, abelianImageToKernel_comp_kernel_ι, kernel.lift_ι])

namespace LeftHomologyData

/-- The canonical `LeftHomologyData` of a short complex `S` in an abelian category, for
which the `H` field is `Abelian.coimage (kernel.ι S.g ≫ cokernel.π S.f)`. -/
@[simps]
noncomputable def ofAbelian : S.LeftHomologyData := by
  let γ := kernel.ι S.g ≫ cokernel.π S.f
  let f' := kernel.lift S.g S.f S.zero
  have hf' : f' = kernel.lift γ f' (by simp [γ, f']) ≫ kernel.ι γ := by rw [kernel.lift_ι]
  have wπ : f' ≫ cokernel.π (kernel.ι γ) = 0 := by
    rw [hf']
    simp only [assoc, cokernel.condition, comp_zero]
  let e : Abelian.image S.f ≅ kernel γ :=
    IsLimit.conePointUniqueUpToIso S.abelianImageToKernelIsKernel (limit.isLimit _)
  have he : e.hom ≫ kernel.ι γ = S.abelianImageToKernel :=
    IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingParallelPair.zero
  have fac : f' = Abelian.factorThruImage S.f ≫ e.hom ≫ kernel.ι γ := by
    rw [hf', he]
    simp only [γ, f', kernel.lift_ι, abelianImageToKernel, ← cancel_mono (kernel.ι S.g),
      assoc]
  have hπ : IsColimit (CokernelCofork.ofπ _ wπ) :=
    CokernelCofork.IsColimit.ofπ _ _
    (fun x hx => cokernel.desc _ x (by
      simpa only [← cancel_epi e.hom, ← cancel_epi (Abelian.factorThruImage S.f),
        comp_zero, fac, assoc] using hx))
    (fun x hx => cokernel.π_desc _ _ _)
    (fun x hx b hb => coequalizer.hom_ext (by simp only [hb, cokernel.π_desc]))
  exact
    { K := kernel S.g,
      H := Abelian.coimage (kernel.ι S.g ≫ cokernel.π S.f)
      i := kernel.ι _,
      π := cokernel.π _
      wi := kernel.condition _
      hi := kernelIsKernel _
      wπ := wπ
      hπ := hπ }

end LeftHomologyData

/-- The canonical morphism `cokernel S.f ⟶ Abelian.coimage S.g` for a short complex `S`
in an abelian category. -/
noncomputable def cokernelToAbelianCoimage : cokernel S.f ⟶ Abelian.coimage S.g :=
  cokernel.desc S.f (Abelian.coimage.π S.g) (by
    simp only [← cancel_mono (Abelian.factorThruCoimage S.g), assoc,
      cokernel.π_desc, zero, zero_comp])

@[reassoc (attr := simp)]
lemma cokernel_π_comp_cokernelToAbelianCoimage :
    cokernel.π S.f ≫ S.cokernelToAbelianCoimage = Abelian.coimage.π S.g :=
  cokernel.π_desc _ _ _

instance : Epi S.cokernelToAbelianCoimage :=
  epi_of_epi_fac S.cokernel_π_comp_cokernelToAbelianCoimage

lemma kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage :
    (kernel.ι S.g ≫ cokernel.π S.f) ≫ S.cokernelToAbelianCoimage = 0 := by simp

/-- `Abelian.coimage S.g` is the cokernel of `kernel.ι S.g ≫ cokernel.π S.f` -/
noncomputable def cokernelToAbelianCoimageIsCokernel :
    IsColimit (CokernelCofork.ofπ S.cokernelToAbelianCoimage
      S.kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage) :=
  CokernelCofork.IsColimit.ofπ _ _
    (fun k hk => cokernel.desc _ (cokernel.π S.f ≫ k) (by simpa only [assoc] using hk))
    (fun k hk => by simp only [← cancel_epi (cokernel.π S.f),
        cokernel_π_comp_cokernelToAbelianCoimage_assoc, cokernel.π_desc])
    (fun k hk b hb => by
      simp only [← cancel_epi S.cokernelToAbelianCoimage, ← cancel_epi (cokernel.π S.f), hb,
        cokernel_π_comp_cokernelToAbelianCoimage_assoc, cokernel.π_desc])

namespace RightHomologyData

/-- The canonical `RightHomologyData` of a short complex `S` in an abelian category, for
which the `H` field is `Abelian.image (kernel.ι S.g ≫ cokernel.π S.f)`. -/
@[simps]
noncomputable def ofAbelian : S.RightHomologyData := by
  let γ := kernel.ι S.g ≫ cokernel.π S.f
  let g' := cokernel.desc S.f S.g S.zero
  have hg' : g' = cokernel.π γ ≫ cokernel.desc γ g' (by simp [γ, g']) := by rw [cokernel.π_desc]
  have wι : kernel.ι (cokernel.π γ) ≫ g' = 0 := by rw [hg', kernel.condition_assoc, zero_comp]
  let e : cokernel γ ≅ Abelian.coimage S.g :=
    IsColimit.coconePointUniqueUpToIso (colimit.isColimit _) S.cokernelToAbelianCoimageIsCokernel
  have he : cokernel.π γ ≫ e.hom = S.cokernelToAbelianCoimage :=
    IsColimit.comp_coconePointUniqueUpToIso_hom _ _ WalkingParallelPair.one
  have fac : g' = cokernel.π γ ≫ e.hom ≫ Abelian.factorThruCoimage S.g := by
    rw [hg', reassoc_of% he]
    simp only [γ, g', cokernel.π_desc, ← cancel_epi (cokernel.π S.f),
      cokernel_π_comp_cokernelToAbelianCoimage_assoc]
  have hι : IsLimit (KernelFork.ofι _ wι) :=
    KernelFork.IsLimit.ofι _ _
      (fun x hx => kernel.lift _ x (by
        simpa only [← cancel_mono e.hom, ← cancel_mono (Abelian.factorThruCoimage S.g), assoc,
          zero_comp, fac] using hx))
      (fun x hx => kernel.lift_ι _ _ _)
      (fun x hx b hb => equalizer.hom_ext (by simp only [hb, kernel.lift_ι]))
  exact
    { Q := cokernel S.f,
      H := Abelian.image (kernel.ι S.g ≫ cokernel.π S.f)
      p := cokernel.π _
      ι := kernel.ι _
      wp := cokernel.condition _
      hp := cokernelIsCokernel _
      wι := wι
      hι := hι }

end RightHomologyData

/-- The canonical `HomologyData` of a short complex `S` in an abelian category. -/
noncomputable def HomologyData.ofAbelian : S.HomologyData where
  left := LeftHomologyData.ofAbelian S
  right := RightHomologyData.ofAbelian S
  iso := Abelian.coimageIsoImage (kernel.ι S.g ≫ cokernel.π S.f)

instance _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImageToKernel.Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.CategoryTheory.categoryWithHomology_of_abelian :
    CategoryWithHomology C where
  hasHomology S := HasHomology.mk' (HomologyData.ofAbelian S)

end ShortComplex

end CategoryTheory
```
