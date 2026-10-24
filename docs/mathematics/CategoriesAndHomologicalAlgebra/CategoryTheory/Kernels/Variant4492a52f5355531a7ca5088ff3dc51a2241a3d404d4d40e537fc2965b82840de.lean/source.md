# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caebdbe22fa16ae321ede4d6fbb8a8a53b6283ec` · SHA-256 `bbdc324c5996759b680dd703314541b27af0b1e559b0a10ddb6b2e9d57fec372`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasKernels.Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasKernels.Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/Kernels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasKernels.Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427

#align_import category_theory.limits.shapes.kernels from "leanprover-community/mathlib"@"956af7c76589f444f2e1313911bad16366ea476d"

/-!
# Kernels and cokernels

In a category with zero morphisms, the kernel of a morphism `f : X ⟶ Y` is
the equalizer of `f` and `0 : X ⟶ Y`. (Similarly the cokernel is the coequalizer.)

The basic definitions are
* `kernel : (X ⟶ Y) → C`

* `kernel.ι : kernel f ⟶ X`
* `kernel.condition : kernel.ι f ≫ f = 0` and
* `kernel.lift (k : W ⟶ X) (h : k ≫ f = 0) : W ⟶ kernel f` (as well as the dual versions)

## Main statements

Besides the definition and lifts, we prove
* `kernel.ιZeroIsIso`: a kernel map of a zero morphism is an isomorphism
* `kernel.eq_zero_of_epi_kernel`: if `kernel.ι f` is an epimorphism, then `f = 0`
* `kernel.ofMono`: the kernel of a monomorphism is the zero object
* `kernel.liftMono`: the lift of a monomorphism `k : W ⟶ X` such that `k ≫ f = 0`
  is still a monomorphism
* `kernel.isLimitConeZeroCone`: if our category has a zero object, then the map from the zero
  object is a kernel map of any monomorphism
* `kernel.ιOfZero`: `kernel.ι (0 : X ⟶ Y)` is an isomorphism

and the corresponding dual statements.

## Future work
* TODO: connect this with existing work in the group theory and ring theory libraries.

## Implementation notes
As with the other special shapes in the limits library, all the definitions here are given as
`abbreviation`s of the general statements for limits, so all the `simp` lemmas and theorems about
general limits can be used.

## References

* [F. Borceux, *Handbook of Categorical Algebra 2*][borceux-vol2]
-/


noncomputable section

universe v v₂ u u' u₂

open CategoryTheory

open CategoryTheory.Limits.WalkingParallelPair

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]

variable [HasZeroMorphisms C]

/-- A morphism `f` has a kernel if the functor `ParallelPair f 0` has a limit. -/
abbrev HasKernel {X Y : C} (f : X ⟶ Y) : Prop :=
  HasLimit (parallelPair f 0)
#align category_theory.limits.has_kernel CategoryTheory.Limits.HasKernel

/-- A morphism `f` has a cokernel if the functor `ParallelPair f 0` has a colimit. -/
abbrev HasCokernel {X Y : C} (f : X ⟶ Y) : Prop :=
  HasColimit (parallelPair f 0)
#align category_theory.limits.has_cokernel CategoryTheory.Limits.HasCokernel

variable {X Y : C} (f : X ⟶ Y)

section

/-- A kernel fork is just a fork where the second morphism is a zero morphism. -/
abbrev KernelFork :=
  Fork f 0
#align category_theory.limits.kernel_fork CategoryTheory.Limits.KernelFork

variable {f}

@[reassoc (attr := simp)]
theorem KernelFork.condition (s : KernelFork f) : Fork.ι s ≫ f = 0 := by
  erw [Fork.condition, HasZeroMorphisms.comp_zero]
#align category_theory.limits.kernel_fork.condition CategoryTheory.Limits.KernelFork.condition

-- Porting note: simp can prove this, removed simp tag
theorem KernelFork.app_one (s : KernelFork f) : s.π.app one = 0 := by
  simp [Fork.app_one_eq_ι_comp_right]
#align category_theory.limits.kernel_fork.app_one CategoryTheory.Limits.KernelFork.app_one

/-- A morphism `ι` satisfying `ι ≫ f = 0` determines a kernel fork over `f`. -/
abbrev KernelFork.ofι {Z : C} (ι : Z ⟶ X) (w : ι ≫ f = 0) : KernelFork f :=
  Fork.ofι ι <| by rw [w, HasZeroMorphisms.comp_zero]
#align category_theory.limits.kernel_fork.of_ι CategoryTheory.Limits.KernelFork.ofι

@[simp]
theorem KernelFork.ι_ofι {X Y P : C} (f : X ⟶ Y) (ι : P ⟶ X) (w : ι ≫ f = 0) :
    Fork.ι (KernelFork.ofι ι w) = ι := rfl
#align category_theory.limits.kernel_fork.ι_of_ι CategoryTheory.Limits.KernelFork.ι_ofι

section

-- attribute [local tidy] tactic.case_bash Porting note: no tidy nor case_bash

/-- Every kernel fork `s` is isomorphic (actually, equal) to `fork.ofι (fork.ι s) _`. -/
def isoOfι (s : Fork f 0) : s ≅ Fork.ofι (Fork.ι s) (Fork.condition s) :=
  Cones.ext (Iso.refl _) <| by rintro ⟨j⟩ <;> simp
#align category_theory.limits.iso_of_ι CategoryTheory.Limits.isoOfι

/-- If `ι = ι'`, then `fork.ofι ι _` and `fork.ofι ι' _` are isomorphic. -/
def ofιCongr {P : C} {ι ι' : P ⟶ X} {w : ι ≫ f = 0} (h : ι = ι') :
    KernelFork.ofι ι w ≅ KernelFork.ofι ι' (by rw [← h, w]) :=
  Cones.ext (Iso.refl _)
#align category_theory.limits.of_ι_congr CategoryTheory.Limits.ofιCongr

/-- If `F` is an equivalence, then applying `F` to a diagram indexing a (co)kernel of `f` yields
    the diagram indexing the (co)kernel of `F.map f`. -/
def compNatIso {D : Type u'} [Category.{v} D] [HasZeroMorphisms D] (F : C ⥤ D) [IsEquivalence F] :
    parallelPair f 0 ⋙ F ≅ parallelPair (F.map f) 0 :=
  let app (j :WalkingParallelPair) :
      (parallelPair f 0 ⋙ F).obj j ≅ (parallelPair (F.map f) 0).obj j :=
    match j with
    | zero => Iso.refl _
    | one => Iso.refl _
  NatIso.ofComponents app <| by rintro ⟨i⟩ ⟨j⟩ <;> intro g <;> cases g <;> simp
#align category_theory.limits.comp_nat_iso CategoryTheory.Limits.compNatIso

end

/-- If `s` is a limit kernel fork and `k : W ⟶ X` satisfies `k ≫ f = 0`, then there is some
    `l : W ⟶ s.X` such that `l ≫ fork.ι s = k`. -/
def KernelFork.IsLimit.lift' {s : KernelFork f} (hs : IsLimit s) {W : C} (k : W ⟶ X)
    (h : k ≫ f = 0) : { l : W ⟶ s.pt // l ≫ Fork.ι s = k } :=
  ⟨hs.lift <| KernelFork.ofι _ h, hs.fac _ _⟩
#align category_theory.limits.kernel_fork.is_limit.lift' CategoryTheory.Limits.KernelFork.IsLimit.lift'

/-- This is a slightly more convenient method to verify that a kernel fork is a limit cone. It
    only asks for a proof of facts that carry any mathematical content -/
def isLimitAux (t : KernelFork f) (lift : ∀ s : KernelFork f, s.pt ⟶ t.pt)
    (fac : ∀ s : KernelFork f, lift s ≫ t.ι = s.ι)
    (uniq : ∀ (s : KernelFork f) (m : s.pt ⟶ t.pt) (_ : m ≫ t.ι = s.ι), m = lift s) : IsLimit t :=
  { lift
    fac := fun s j => by
      cases j
      · exact fac s
      · simp
    uniq := fun s m w => uniq s m (w Limits.WalkingParallelPair.zero) }
#align category_theory.limits.is_limit_aux CategoryTheory.Limits.isLimitAux

/-- This is a more convenient formulation to show that a `KernelFork` constructed using
`KernelFork.ofι` is a limit cone.
-/
def KernelFork.IsLimit.ofι {W : C} (g : W ⟶ X) (eq : g ≫ f = 0)
    (lift : ∀ {W' : C} (g' : W' ⟶ X) (_ : g' ≫ f = 0), W' ⟶ W)
    (fac : ∀ {W' : C} (g' : W' ⟶ X) (eq' : g' ≫ f = 0), lift g' eq' ≫ g = g')
    (uniq :
      ∀ {W' : C} (g' : W' ⟶ X) (eq' : g' ≫ f = 0) (m : W' ⟶ W) (_ : m ≫ g = g'), m = lift g' eq') :
    IsLimit (KernelFork.ofι g eq) :=
  isLimitAux _ (fun s => lift s.ι s.condition) (fun s => fac s.ι s.condition) fun s =>
    uniq s.ι s.condition
#align category_theory.limits.kernel_fork.is_limit.of_ι CategoryTheory.Limits.KernelFork.IsLimit.ofι

/-- Every kernel of `f` induces a kernel of `f ≫ g` if `g` is mono. -/
def isKernelCompMono {c : KernelFork f} (i : IsLimit c) {Z} (g : Y ⟶ Z) [hg : Mono g] {h : X ⟶ Z}
    (hh : h = f ≫ g) : IsLimit (KernelFork.ofι c.ι (by simp [hh]) : KernelFork h) :=
  Fork.IsLimit.mk' _ fun s =>
    let s' : KernelFork f := Fork.ofι s.ι (by rw [← cancel_mono g]; simp [← hh, s.condition])
    let l := KernelFork.IsLimit.lift' i s'.ι s'.condition
    ⟨l.1, l.2, fun hm => by
      apply Fork.IsLimit.hom_ext i; rw [Fork.ι_ofι] at hm; rw [hm]; exact l.2.symm⟩
#align category_theory.limits.is_kernel_comp_mono CategoryTheory.Limits.isKernelCompMono

theorem isKernelCompMono_lift {c : KernelFork f} (i : IsLimit c) {Z} (g : Y ⟶ Z) [hg : Mono g]
    {h : X ⟶ Z} (hh : h = f ≫ g) (s : KernelFork h) :
    (isKernelCompMono i g hh).lift s = i.lift (Fork.ofι s.ι (by
      rw [← cancel_mono g, Category.assoc, ← hh]
      simp)) := rfl
#align category_theory.limits.is_kernel_comp_mono_lift CategoryTheory.Limits.isKernelCompMono_lift

/-- Every kernel of `f ≫ g` is also a kernel of `f`, as long as `c.ι ≫ f` vanishes. -/
def isKernelOfComp {W : C} (g : Y ⟶ W) (h : X ⟶ W) {c : KernelFork h} (i : IsLimit c)
    (hf : c.ι ≫ f = 0) (hfg : f ≫ g = h) : IsLimit (KernelFork.ofι c.ι hf) :=
  Fork.IsLimit.mk _ (fun s => i.lift (KernelFork.ofι s.ι (by simp [← hfg])))
    (fun s => by simp only [KernelFork.ι_ofι, Fork.IsLimit.lift_ι]) fun s m h => by
    apply Fork.IsLimit.hom_ext i; simpa using h
#align category_theory.limits.is_kernel_of_comp CategoryTheory.Limits.isKernelOfComp

/-- `X` identifies to the kernel of a zero map `X ⟶ Y`. -/
def KernelFork.IsLimit.ofId {X Y : C} (f : X ⟶ Y) (hf : f = 0) :
    IsLimit (KernelFork.ofι (𝟙 X) (show 𝟙 X ≫ f = 0 by rw [hf, comp_zero])) :=
  KernelFork.IsLimit.ofι _ _ (fun x _ => x) (fun _ _ => Category.comp_id _)
    (fun _ _ _ hb => by simp only [← hb, Category.comp_id])

/-- Any zero object identifies to the kernel of a given monomorphisms. -/
def KernelFork.IsLimit.ofMonoOfIsZero {X Y : C} {f : X ⟶ Y} (c : KernelFork f)
    (hf : Mono f) (h : IsZero c.pt) : IsLimit c :=
  isLimitAux _ (fun s => 0) (fun s => by rw [zero_comp, ← cancel_mono f, zero_comp, s.condition])
    (fun _ _ _ => h.eq_of_tgt _ _)

lemma KernelFork.IsLimit.isIso_ι {X Y : C} {f : X ⟶ Y} (c : KernelFork f)
    (hc : IsLimit c) (hf : f = 0) : IsIso c.ι := by
  let e : c.pt ≅ X := IsLimit.conePointUniqueUpToIso hc
    (KernelFork.IsLimit.ofId (f : X ⟶ Y) hf)
  have eq : e.inv ≫ c.ι = 𝟙 X := Fork.IsLimit.lift_ι hc
  haveI : IsIso (e.inv ≫ c.ι) := by
    rw [eq]
    infer_instance
  exact IsIso.of_isIso_comp_left e.inv c.ι

end

section

variable [HasKernel f]

/-- The kernel of a morphism, expressed as the equalizer with the 0 morphism. -/
abbrev kernel (f : X ⟶ Y) [HasKernel f] : C :=
  equalizer f 0
#align category_theory.limits.kernel CategoryTheory.Limits.kernel

/-- The map from `kernel f` into the source of `f`. -/
abbrev kernel.ι : kernel f ⟶ X :=
  equalizer.ι f 0
#align category_theory.limits.kernel.ι CategoryTheory.Limits.kernel.ι

@[simp]
theorem equalizer_as_kernel : equalizer.ι f 0 = kernel.ι f := rfl
#align category_theory.limits.equalizer_as_kernel CategoryTheory.Limits.equalizer_as_kernel

@[reassoc (attr := simp)]
theorem kernel.condition : kernel.ι f ≫ f = 0 :=
  KernelFork.condition _
#align category_theory.limits.kernel.condition CategoryTheory.Limits.kernel.condition

/-- The kernel built from `kernel.ι f` is limiting. -/
def kernelIsKernel : IsLimit (Fork.ofι (kernel.ι f) ((kernel.condition f).trans comp_zero.symm)) :=
  IsLimit.ofIsoLimit (limit.isLimit _) (Fork.ext (Iso.refl _) (by aesop_cat))
#align category_theory.limits.kernel_is_kernel CategoryTheory.Limits.kernelIsKernel

/-- Given any morphism `k : W ⟶ X` satisfying `k ≫ f = 0`, `k` factors through `kernel.ι f`
    via `kernel.lift : W ⟶ kernel f`. -/
abbrev kernel.lift {W : C} (k : W ⟶ X) (h : k ≫ f = 0) : W ⟶ kernel f :=
  (kernelIsKernel f).lift (KernelFork.ofι k h)
#align category_theory.limits.kernel.lift CategoryTheory.Limits.kernel.lift

@[reassoc (attr := simp)]
theorem kernel.lift_ι {W : C} (k : W ⟶ X) (h : k ≫ f = 0) : kernel.lift f k h ≫ kernel.ι f = k :=
  (kernelIsKernel f).fac (KernelFork.ofι k h) WalkingParallelPair.zero
#align category_theory.limits.kernel.lift_ι CategoryTheory.Limits.kernel.lift_ι

@[simp]
theorem kernel.lift_zero {W : C} {h} : kernel.lift f (0 : W ⟶ X) h = 0 := by
  ext; simp
#align category_theory.limits.kernel.lift_zero CategoryTheory.Limits.kernel.lift_zero

instance kernel.lift_mono {W : C} (k : W ⟶ X) (h : k ≫ f = 0) [Mono k] : Mono (kernel.lift f k h) :=
  ⟨fun {Z} g g' w => by
    replace w := w =≫ kernel.ι f
    simp only [Category.assoc, kernel.lift_ι] at w
    exact (cancel_mono k).1 w⟩
#align category_theory.limits.kernel.lift_mono CategoryTheory.Limits.kernel.lift_mono

/-- Any morphism `k : W ⟶ X` satisfying `k ≫ f = 0` induces a morphism `l : W ⟶ kernel f` such that
    `l ≫ kernel.ι f = k`. -/
def kernel.lift' {W : C} (k : W ⟶ X) (h : k ≫ f = 0) : { l : W ⟶ kernel f // l ≫ kernel.ι f = k } :=
  ⟨kernel.lift f k h, kernel.lift_ι _ _ _⟩
#align category_theory.limits.kernel.lift' CategoryTheory.Limits.kernel.lift'

/-- A commuting square induces a morphism of kernels. -/
abbrev kernel.map {X' Y' : C} (f' : X' ⟶ Y') [HasKernel f'] (p : X ⟶ X') (q : Y ⟶ Y')
    (w : f ≫ q = p ≫ f') : kernel f ⟶ kernel f' :=
  kernel.lift f' (kernel.ι f ≫ p) (by simp [← w])
#align category_theory.limits.kernel.map CategoryTheory.Limits.kernel.map

/-- Given a commutative diagram
    X --f--> Y --g--> Z
    |        |        |
    |        |        |
    v        v        v
    X' -f'-> Y' -g'-> Z'
with horizontal arrows composing to zero,
then we obtain a commutative square
   X ---> kernel g
   |         |
   |         | kernel.map
   |         |
   v         v
   X' --> kernel g'
-/
theorem kernel.lift_map {X Y Z X' Y' Z' : C} (f : X ⟶ Y) (g : Y ⟶ Z) [HasKernel g] (w : f ≫ g = 0)
    (f' : X' ⟶ Y') (g' : Y' ⟶ Z') [HasKernel g'] (w' : f' ≫ g' = 0) (p : X ⟶ X') (q : Y ⟶ Y')
    (r : Z ⟶ Z') (h₁ : f ≫ q = p ≫ f') (h₂ : g ≫ r = q ≫ g') :
    kernel.lift g f w ≫ kernel.map g g' q r h₂ = p ≫ kernel.lift g' f' w' := by
  ext; simp [h₁]
#align category_theory.limits.kernel.lift_map CategoryTheory.Limits.kernel.lift_map

/-- A commuting square of isomorphisms induces an isomorphism of kernels. -/
@[simps]
def kernel.mapIso {X' Y' : C} (f' : X' ⟶ Y') [HasKernel f'] (p : X ≅ X') (q : Y ≅ Y')
    (w : f ≫ q.hom = p.hom ≫ f') : kernel f ≅ kernel f' where
  hom := kernel.map f f' p.hom q.hom w
  inv :=
    kernel.map f' f p.inv q.inv
      (by
        refine' (cancel_mono q.hom).1 _
        simp [w])
#align category_theory.limits.kernel.map_iso CategoryTheory.Limits.kernel.mapIso

/-- Every kernel of the zero morphism is an isomorphism -/
instance kernel.ι_zero_isIso : IsIso (kernel.ι (0 : X ⟶ Y)) :=
  equalizer.ι_of_self _
#align category_theory.limits.kernel.ι_zero_is_iso CategoryTheory.Limits.kernel.ι_zero_isIso

theorem eq_zero_of_epi_kernel [Epi (kernel.ι f)] : f = 0 :=
  (cancel_epi (kernel.ι f)).1 (by simp)
#align category_theory.limits.eq_zero_of_epi_kernel CategoryTheory.Limits.eq_zero_of_epi_kernel

/-- The kernel of a zero morphism is isomorphic to the source. -/
def kernelZeroIsoSource : kernel (0 : X ⟶ Y) ≅ X :=
  equalizer.isoSourceOfSelf 0
#align category_theory.limits.kernel_zero_iso_source CategoryTheory.Limits.kernelZeroIsoSource

@[simp]
theorem kernelZeroIsoSource_hom : kernelZeroIsoSource.hom = kernel.ι (0 : X ⟶ Y) := rfl
#align category_theory.limits.kernel_zero_iso_source_hom CategoryTheory.Limits.kernelZeroIsoSource_hom

@[simp]
theorem kernelZeroIsoSource_inv :
    kernelZeroIsoSource.inv = kernel.lift (0 : X ⟶ Y) (𝟙 X) (by simp) := by
  ext
  simp [kernelZeroIsoSource]
#align category_theory.limits.kernel_zero_iso_source_inv CategoryTheory.Limits.kernelZeroIsoSource_inv

/-- If two morphisms are known to be equal, then their kernels are isomorphic. -/
def kernelIsoOfEq {f g : X ⟶ Y} [HasKernel f] [HasKernel g] (h : f = g) : kernel f ≅ kernel g :=
  HasLimit.isoOfNatIso (by rw [h])
#align category_theory.limits.kernel_iso_of_eq CategoryTheory.Limits.kernelIsoOfEq

@[simp]
theorem kernelIsoOfEq_refl {h : f = f} : kernelIsoOfEq h = Iso.refl (kernel f) := by
  ext
  simp [kernelIsoOfEq]
#align category_theory.limits.kernel_iso_of_eq_refl CategoryTheory.Limits.kernelIsoOfEq_refl

/- Porting note: induction on Eq is trying instantiate another g...-/
@[reassoc (attr := simp)]
theorem kernelIsoOfEq_hom_comp_ι {f g : X ⟶ Y} [HasKernel f] [HasKernel g] (h : f = g) :
    (kernelIsoOfEq h).hom ≫ kernel.ι g = kernel.ι f := by
  cases h; simp
#align category_theory.limits.kernel_iso_of_eq_hom_comp_ι CategoryTheory.Limits.kernelIsoOfEq_hom_comp_ι

@[reassoc (attr := simp)]
theorem kernelIsoOfEq_inv_comp_ι {f g : X ⟶ Y} [HasKernel f] [HasKernel g] (h : f = g) :
    (kernelIsoOfEq h).inv ≫ kernel.ι _ = kernel.ι _ := by
  cases h; simp
#align category_theory.limits.kernel_iso_of_eq_inv_comp_ι CategoryTheory.Limits.kernelIsoOfEq_inv_comp_ι

@[reassoc (attr := simp)]
theorem lift_comp_kernelIsoOfEq_hom {Z} {f g : X ⟶ Y} [HasKernel f] [HasKernel g] (h : f = g)
    (e : Z ⟶ X) (he) :
    kernel.lift _ e he ≫ (kernelIsoOfEq h).hom = kernel.lift _ e (by simp [← h, he]) := by
  cases h; simp
#align category_theory.limits.lift_comp_kernel_iso_of_eq_hom CategoryTheory.Limits.lift_comp_kernelIsoOfEq_hom

@[reassoc (attr := simp)]
theorem lift_comp_kernelIsoOfEq_inv {Z} {f g : X ⟶ Y} [HasKernel f] [HasKernel g] (h : f = g)
    (e : Z ⟶ X) (he) :
    kernel.lift _ e he ≫ (kernelIsoOfEq h).inv = kernel.lift _ e (by simp [h, he]) := by
  cases h; simp
#align category_theory.limits.lift_comp_kernel_iso_of_eq_inv CategoryTheory.Limits.lift_comp_kernelIsoOfEq_inv

@[simp]
theorem kernelIsoOfEq_trans {f g h : X ⟶ Y} [HasKernel f] [HasKernel g] [HasKernel h] (w₁ : f = g)
    (w₂ : g = h) : kernelIsoOfEq w₁ ≪≫ kernelIsoOfEq w₂ = kernelIsoOfEq (w₁.trans w₂) := by
  cases w₁; cases w₂; ext; simp [kernelIsoOfEq]
#align category_theory.limits.kernel_iso_of_eq_trans CategoryTheory.Limits.kernelIsoOfEq_trans

variable {f}

theorem kernel_not_epi_of_nonzero (w : f ≠ 0) : ¬Epi (kernel.ι f) := fun _ =>
  w (eq_zero_of_epi_kernel f)
#align category_theory.limits.kernel_not_epi_of_nonzero CategoryTheory.Limits.kernel_not_epi_of_nonzero

theorem kernel_not_iso_of_nonzero (w : f ≠ 0) : IsIso (kernel.ι f) → False := fun I =>
  kernel_not_epi_of_nonzero w <| by
    skip
    infer_instance
#align category_theory.limits.kernel_not_iso_of_nonzero CategoryTheory.Limits.kernel_not_iso_of_nonzero

instance hasKernel_comp_mono {X Y Z : C} (f : X ⟶ Y) [HasKernel f] (g : Y ⟶ Z) [Mono g] :
    HasKernel (f ≫ g) :=
  ⟨⟨{   cone := _
        isLimit := isKernelCompMono (limit.isLimit _) g rfl }⟩⟩
#align category_theory.limits.has_kernel_comp_mono CategoryTheory.Limits.hasKernel_comp_mono

/-- When `g` is a monomorphism, the kernel of `f ≫ g` is isomorphic to the kernel of `f`.
-/
@[simps]
def kernelCompMono {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [HasKernel f] [Mono g] :
    kernel (f ≫ g) ≅ kernel f where
  hom :=
    kernel.lift _ (kernel.ι _)
      (by
        rw [← cancel_mono g]
        simp)
  inv := kernel.lift _ (kernel.ι _) (by simp)
#align category_theory.limits.kernel_comp_mono CategoryTheory.Limits.kernelCompMono

instance hasKernel_iso_comp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso f] [HasKernel g] :
    HasKernel (f ≫ g) where
  exists_limit :=
    ⟨{  cone := KernelFork.ofι (kernel.ι g ≫ inv f) (by simp)
        isLimit := isLimitAux _ (fun s => kernel.lift _ (s.ι ≫ f) (by aesop_cat))
            (by aesop_cat) fun s m w => by
          simp_rw [← w]
          apply equalizer.hom_ext
          simp }⟩
#align category_theory.limits.has_kernel_iso_comp CategoryTheory.Limits.hasKernel_iso_comp

/-- When `f` is an isomorphism, the kernel of `f ≫ g` is isomorphic to the kernel of `g`.
-/
@[simps]
def kernelIsIsoComp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso f] [HasKernel g] :
    kernel (f ≫ g) ≅ kernel g where
  hom := kernel.lift _ (kernel.ι _ ≫ f) (by simp)
  inv := kernel.lift _ (kernel.ι _ ≫ inv f) (by simp)
#align category_theory.limits.kernel_is_iso_comp CategoryTheory.Limits.kernelIsIsoComp

end

section HasZeroObject

variable [HasZeroObject C]

open ZeroObject

/-- The morphism from the zero object determines a cone on a kernel diagram -/
def kernel.zeroKernelFork : KernelFork f where
  pt := 0
  π := { app := fun j => 0 }
#align category_theory.limits.kernel.zero_kernel_fork CategoryTheory.Limits.kernel.zeroKernelFork

/-- The map from the zero object is a kernel of a monomorphism -/
def kernel.isLimitConeZeroCone [Mono f] : IsLimit (kernel.zeroKernelFork f) :=
  Fork.IsLimit.mk _ (fun s => 0)
    (fun s => by
      erw [zero_comp]
      refine (zero_of_comp_mono f ?_).symm
      exact KernelFork.condition _)
    fun _ _ _ => zero_of_to_zero _
#align category_theory.limits.kernel.is_limit_cone_zero_cone CategoryTheory.Limits.kernel.isLimitConeZeroCone

/-- The kernel of a monomorphism is isomorphic to the zero object -/
def kernel.ofMono [HasKernel f] [Mono f] : kernel f ≅ 0 :=
  Functor.mapIso (Cones.forget _) <|
    IsLimit.uniqueUpToIso (limit.isLimit (parallelPair f 0)) (kernel.isLimitConeZeroCone f)
#align category_theory.limits.kernel.of_mono CategoryTheory.Limits.kernel.ofMono

/-- The kernel morphism of a monomorphism is a zero morphism -/
theorem kernel.ι_of_mono [HasKernel f] [Mono f] : kernel.ι f = 0 :=
  zero_of_source_iso_zero _ (kernel.ofMono f)
#align category_theory.limits.kernel.ι_of_mono CategoryTheory.Limits.kernel.ι_of_mono

/-- If `g ≫ f = 0` implies `g = 0` for all `g`, then `0 : 0 ⟶ X` is a kernel of `f`. -/
def zeroKernelOfCancelZero {X Y : C} (f : X ⟶ Y)
    (hf : ∀ (Z : C) (g : Z ⟶ X) (_ : g ≫ f = 0), g = 0) :
    IsLimit (KernelFork.ofι (0 : 0 ⟶ X) (show 0 ≫ f = 0 by simp)) :=
  Fork.IsLimit.mk _ (fun s => 0) (fun s => by rw [hf _ _ (KernelFork.condition s), zero_comp])
    fun s m _ => by dsimp; apply HasZeroObject.to_zero_ext
#align category_theory.limits.zero_kernel_of_cancel_zero CategoryTheory.Limits.zeroKernelOfCancelZero

end HasZeroObject

section Transport

/-- If `i` is an isomorphism such that `l ≫ i.hom = f`, then any kernel of `f` is a kernel of `l`.-/
def IsKernel.ofCompIso {Z : C} (l : X ⟶ Z) (i : Z ≅ Y) (h : l ≫ i.hom = f) {s : KernelFork f}
    (hs : IsLimit s) :
    IsLimit
      (KernelFork.ofι (Fork.ι s) <| show Fork.ι s ≫ l = 0 by simp [← i.comp_inv_eq.2 h.symm]) :=
  Fork.IsLimit.mk _ (fun s => hs.lift <| KernelFork.ofι (Fork.ι s) <| by simp [← h])
    (fun s => by simp) fun s m h => by
      apply Fork.IsLimit.hom_ext hs
      simpa using h
#align category_theory.limits.is_kernel.of_comp_iso CategoryTheory.Limits.IsKernel.ofCompIso

/-- If `i` is an isomorphism such that `l ≫ i.hom = f`, then the kernel of `f` is a kernel of `l`.-/
def kernel.ofCompIso [HasKernel f] {Z : C} (l : X ⟶ Z) (i : Z ≅ Y) (h : l ≫ i.hom = f) :
    IsLimit
      (KernelFork.ofι (kernel.ι f) <| show kernel.ι f ≫ l = 0 by simp [← i.comp_inv_eq.2 h.symm]) :=
  IsKernel.ofCompIso f l i h <| limit.isLimit _
#align category_theory.limits.kernel.of_comp_iso CategoryTheory.Limits.kernel.ofCompIso

/-- If `s` is any limit kernel cone over `f` and if `i` is an isomorphism such that
    `i.hom ≫ s.ι = l`, then `l` is a kernel of `f`. -/
def IsKernel.isoKernel {Z : C} (l : Z ⟶ X) {s : KernelFork f} (hs : IsLimit s) (i : Z ≅ s.pt)
    (h : i.hom ≫ Fork.ι s = l) : IsLimit (KernelFork.ofι l <| show l ≫ f = 0 by simp [← h]) :=
  IsLimit.ofIsoLimit hs <|
    Cones.ext i.symm fun j => by
      cases j
      · exact (Iso.eq_inv_comp i).2 h
      · dsimp; rw[←h]; simp
#align category_theory.limits.is_kernel.iso_kernel CategoryTheory.Limits.IsKernel.isoKernel

/-- If `i` is an isomorphism such that `i.hom ≫ kernel.ι f = l`, then `l` is a kernel of `f`. -/
def kernel.isoKernel [HasKernel f] {Z : C} (l : Z ⟶ X) (i : Z ≅ kernel f)
    (h : i.hom ≫ kernel.ι f = l) :
    IsLimit (@KernelFork.ofι _ _ _ _ _ f _ l <| by simp [← h]) :=
  IsKernel.isoKernel f l (limit.isLimit _) i h
#align category_theory.limits.kernel.iso_kernel CategoryTheory.Limits.kernel.isoKernel

end Transport

section

variable (X Y)

/-- The kernel morphism of a zero morphism is an isomorphism -/
theorem kernel.ι_of_zero : IsIso (kernel.ι (0 : X ⟶ Y)) :=
  equalizer.ι_of_self _
#align category_theory.limits.kernel.ι_of_zero CategoryTheory.Limits.kernel.ι_of_zero

end

section

/-- A cokernel cofork is just a cofork where the second morphism is a zero morphism. -/
abbrev CokernelCofork :=
  Cofork f 0
#align category_theory.limits.cokernel_cofork CategoryTheory.Limits.CokernelCofork

variable {f}

@[reassoc (attr := simp)]
theorem CokernelCofork.condition (s : CokernelCofork f) : f ≫ s.π = 0 := by
  rw [Cofork.condition, zero_comp]
#align category_theory.limits.cokernel_cofork.condition CategoryTheory.Limits.CokernelCofork.condition

-- Porting note: simp can prove this, removed simp tag
theorem CokernelCofork.π_eq_zero (s : CokernelCofork f) : s.ι.app zero = 0 := by
  simp [Cofork.app_zero_eq_comp_π_right]
#align category_theory.limits.cokernel_cofork.π_eq_zero CategoryTheory.Limits.CokernelCofork.π_eq_zero

/-- A morphism `π` satisfying `f ≫ π = 0` determines a cokernel cofork on `f`. -/
abbrev CokernelCofork.ofπ {Z : C} (π : Y ⟶ Z) (w : f ≫ π = 0) : CokernelCofork f :=
  Cofork.ofπ π <| by rw [w, zero_comp]
#align category_theory.limits.cokernel_cofork.of_π CategoryTheory.Limits.CokernelCofork.ofπ

@[simp]
theorem CokernelCofork.π_ofπ {X Y P : C} (f : X ⟶ Y) (π : Y ⟶ P) (w : f ≫ π = 0) :
    Cofork.π (CokernelCofork.ofπ π w) = π :=
  rfl
#align category_theory.limits.cokernel_cofork.π_of_π CategoryTheory.Limits.CokernelCofork.π_ofπ

/-- Every cokernel cofork `s` is isomorphic (actually, equal) to `cofork.ofπ (cofork.π s) _`. -/
def isoOfπ (s : Cofork f 0) : s ≅ Cofork.ofπ (Cofork.π s) (Cofork.condition s) :=
  Cocones.ext (Iso.refl _) fun j => by cases j <;> aesop_cat
#align category_theory.limits.iso_of_π CategoryTheory.Limits.isoOfπ

/-- If `π = π'`, then `CokernelCofork.of_π π _` and `CokernelCofork.of_π π' _` are isomorphic. -/
def ofπCongr {P : C} {π π' : Y ⟶ P} {w : f ≫ π = 0} (h : π = π') :
    CokernelCofork.ofπ π w ≅ CokernelCofork.ofπ π' (by rw [← h, w]) :=
  Cocones.ext (Iso.refl _) fun j => by cases j <;> aesop_cat
#align category_theory.limits.of_π_congr CategoryTheory.Limits.ofπCongr

/-- If `s` is a colimit cokernel cofork, then every `k : Y ⟶ W` satisfying `f ≫ k = 0` induces
    `l : s.X ⟶ W` such that `cofork.π s ≫ l = k`. -/
def CokernelCofork.IsColimit.desc' {s : CokernelCofork f} (hs : IsColimit s) {W : C} (k : Y ⟶ W)
    (h : f ≫ k = 0) : { l : s.pt ⟶ W // Cofork.π s ≫ l = k } :=
  ⟨hs.desc <| CokernelCofork.ofπ _ h, hs.fac _ _⟩
#align category_theory.limits.cokernel_cofork.is_colimit.desc' CategoryTheory.Limits.CokernelCofork.IsColimit.desc'

/-- This is a slightly more convenient method to verify that a cokernel cofork is a colimit cocone.
It only asks for a proof of facts that carry any mathematical content -/
def isColimitAux (t : CokernelCofork f) (desc : ∀ s : CokernelCofork f, t.pt ⟶ s.pt)
    (fac : ∀ s : CokernelCofork f, t.π ≫ desc s = s.π)
    (uniq : ∀ (s : CokernelCofork f) (m : t.pt ⟶ s.pt) (_ : t.π ≫ m = s.π), m = desc s) :
    IsColimit t :=
  { desc
    fac := fun s j => by
      cases j
      · simp
      · exact fac s
    uniq := fun s m w => uniq s m (w Limits.WalkingParallelPair.one) }
#align category_theory.limits.is_colimit_aux CategoryTheory.Limits.isColimitAux

/-- This is a more convenient formulation to show that a `CokernelCofork` constructed using
`CokernelCofork.ofπ` is a limit cone.
-/
def CokernelCofork.IsColimit.ofπ {Z : C} (g : Y ⟶ Z) (eq : f ≫ g = 0)
    (desc : ∀ {Z' : C} (g' : Y ⟶ Z') (_ : f ≫ g' = 0), Z ⟶ Z')
    (fac : ∀ {Z' : C} (g' : Y ⟶ Z') (eq' : f ≫ g' = 0), g ≫ desc g' eq' = g')
    (uniq :
      ∀ {Z' : C} (g' : Y ⟶ Z') (eq' : f ≫ g' = 0) (m : Z ⟶ Z') (_ : g ≫ m = g'), m = desc g' eq') :
    IsColimit (CokernelCofork.ofπ g eq) :=
  isColimitAux _ (fun s => desc s.π s.condition) (fun s => fac s.π s.condition) fun s =>
    uniq s.π s.condition
#align category_theory.limits.cokernel_cofork.is_colimit.of_π CategoryTheory.Limits.CokernelCofork.IsColimit.ofπ

/-- Every cokernel of `f` induces a cokernel of `g ≫ f` if `g` is epi. -/
def isCokernelEpiComp {c : CokernelCofork f} (i : IsColimit c) {W} (g : W ⟶ X) [hg : Epi g]
    {h : W ⟶ Y} (hh : h = g ≫ f) :
    IsColimit (CokernelCofork.ofπ c.π (by rw [hh]; simp) : CokernelCofork h) :=
  Cofork.IsColimit.mk' _ fun s =>
    let s' : CokernelCofork f :=
      Cofork.ofπ s.π
        (by
          apply hg.left_cancellation
          rw [← Category.assoc, ← hh, s.condition]
          simp)
    let l := CokernelCofork.IsColimit.desc' i s'.π s'.condition
    ⟨l.1, l.2, fun hm => by
      apply Cofork.IsColimit.hom_ext i; rw [Cofork.π_ofπ] at hm; rw [hm]; exact l.2.symm⟩
#align category_theory.limits.is_cokernel_epi_comp CategoryTheory.Limits.isCokernelEpiComp

@[simp]
theorem isCokernelEpiComp_desc {c : CokernelCofork f} (i : IsColimit c) {W} (g : W ⟶ X) [hg : Epi g]
    {h : W ⟶ Y} (hh : h = g ≫ f) (s : CokernelCofork h) :
    (isCokernelEpiComp i g hh).desc s =
      i.desc
        (Cofork.ofπ s.π
          (by
            rw [← cancel_epi g, ← Category.assoc, ← hh]
            simp)) :=
  rfl
#align category_theory.limits.is_cokernel_epi_comp_desc CategoryTheory.Limits.isCokernelEpiComp_desc

/-- Every cokernel of `g ≫ f` is also a cokernel of `f`, as long as `f ≫ c.π` vanishes. -/
def isCokernelOfComp {W : C} (g : W ⟶ X) (h : W ⟶ Y) {c : CokernelCofork h} (i : IsColimit c)
    (hf : f ≫ c.π = 0) (hfg : g ≫ f = h) : IsColimit (CokernelCofork.ofπ c.π hf) :=
  Cofork.IsColimit.mk _ (fun s => i.desc (CokernelCofork.ofπ s.π (by simp [← hfg])))
    (fun s => by simp only [CokernelCofork.π_ofπ, Cofork.IsColimit.π_desc]) fun s m h => by
      apply Cofork.IsColimit.hom_ext i
      simpa using h
#align category_theory.limits.is_cokernel_of_comp CategoryTheory.Limits.isCokernelOfComp

/-- `Y` identifies to the cokernel of a zero map `X ⟶ Y`. -/
def CokernelCofork.IsColimit.ofId {X Y : C} (f : X ⟶ Y) (hf : f = 0) :
    IsColimit (CokernelCofork.ofπ (𝟙 Y) (show f ≫ 𝟙 Y = 0 by rw [hf, zero_comp])) :=
  CokernelCofork.IsColimit.ofπ _ _ (fun x _ => x) (fun _ _ => Category.id_comp _)
    (fun _ _ _ hb => by simp only [← hb, Category.id_comp])

/-- Any zero object identifies to the cokernel of a given epimorphisms. -/
def CokernelCofork.IsColimit.ofEpiOfIsZero {X Y : C} {f : X ⟶ Y} (c : CokernelCofork f)
    (hf : Epi f) (h : IsZero c.pt) : IsColimit c :=
  isColimitAux _ (fun s => 0) (fun s => by rw [comp_zero, ← cancel_epi f, comp_zero, s.condition])
    (fun _ _ _ => h.eq_of_src _ _)

lemma CokernelCofork.IsColimit.isIso_π {X Y : C} {f : X ⟶ Y} (c : CokernelCofork f)
    (hc : IsColimit c) (hf : f = 0) : IsIso c.π := by
  let e : c.pt ≅ Y := IsColimit.coconePointUniqueUpToIso hc
    (CokernelCofork.IsColimit.ofId (f : X ⟶ Y) hf)
  have eq : c.π ≫ e.hom = 𝟙 Y := Cofork.IsColimit.π_desc hc
  haveI : IsIso (c.π ≫ e.hom) := by
    rw [eq]
    dsimp
    infer_instance
  exact IsIso.of_isIso_comp_right c.π e.hom

end

section

variable [HasCokernel f]

/-- The cokernel of a morphism, expressed as the coequalizer with the 0 morphism. -/
abbrev cokernel : C :=
  coequalizer f 0
#align category_theory.limits.cokernel CategoryTheory.Limits.cokernel

/-- The map from the target of `f` to `cokernel f`. -/
abbrev cokernel.π : Y ⟶ cokernel f :=
  coequalizer.π f 0
#align category_theory.limits.cokernel.π CategoryTheory.Limits.cokernel.π

@[simp]
theorem coequalizer_as_cokernel : coequalizer.π f 0 = cokernel.π f :=
  rfl
#align category_theory.limits.coequalizer_as_cokernel CategoryTheory.Limits.coequalizer_as_cokernel

@[reassoc (attr := simp)]
theorem cokernel.condition : f ≫ cokernel.π f = 0 :=
  CokernelCofork.condition _
#align category_theory.limits.cokernel.condition CategoryTheory.Limits.cokernel.condition

/-- The cokernel built from `cokernel.π f` is colimiting. -/
def cokernelIsCokernel :
    IsColimit (Cofork.ofπ (cokernel.π f) ((cokernel.condition f).trans zero_comp.symm)) :=
  IsColimit.ofIsoColimit (colimit.isColimit _) (Cofork.ext (Iso.refl _))
#align category_theory.limits.cokernel_is_cokernel CategoryTheory.Limits.cokernelIsCokernel

/-- Given any morphism `k : Y ⟶ W` such that `f ≫ k = 0`, `k` factors through `cokernel.π f`
    via `cokernel.desc : cokernel f ⟶ W`. -/
abbrev cokernel.desc {W : C} (k : Y ⟶ W) (h : f ≫ k = 0) : cokernel f ⟶ W :=
  (cokernelIsCokernel f).desc (CokernelCofork.ofπ k h)
#align category_theory.limits.cokernel.desc CategoryTheory.Limits.cokernel.desc

@[reassoc (attr := simp)]
theorem cokernel.π_desc {W : C} (k : Y ⟶ W) (h : f ≫ k = 0) :
    cokernel.π f ≫ cokernel.desc f k h = k :=
  (cokernelIsCokernel f).fac (CokernelCofork.ofπ k h) WalkingParallelPair.one
#align category_theory.limits.cokernel.π_desc CategoryTheory.Limits.cokernel.π_desc

-- porting note: added to ease the port of `Abelian.Exact`
@[reassoc (attr := simp)]
lemma colimit_ι_zero_cokernel_desc {C : Type*} [Category C]
    [HasZeroMorphisms C] {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (h : f ≫ g = 0) [HasCokernel f]:
    colimit.ι (parallelPair f 0) WalkingParallelPair.zero ≫ cokernel.desc f g h = 0 := by
  rw [(colimit.w (parallelPair f 0) WalkingParallelPairHom.left).symm]
  aesop_cat

@[simp]
theorem cokernel.desc_zero {W : C} {h} : cokernel.desc f (0 : Y ⟶ W) h = 0 := by
  ext; simp
#align category_theory.limits.cokernel.desc_zero CategoryTheory.Limits.cokernel.desc_zero

instance cokernel.desc_epi {W : C} (k : Y ⟶ W) (h : f ≫ k = 0) [Epi k] :
    Epi (cokernel.desc f k h) :=
  ⟨fun {Z} g g' w => by
    replace w := cokernel.π f ≫= w
    simp only [cokernel.π_desc_assoc] at w
    exact (cancel_epi k).1 w⟩
#align category_theory.limits.cokernel.desc_epi CategoryTheory.Limits.cokernel.desc_epi

/-- Any morphism `k : Y ⟶ W` satisfying `f ≫ k = 0` induces `l : cokernel f ⟶ W` such that
    `cokernel.π f ≫ l = k`. -/
def cokernel.desc' {W : C} (k : Y ⟶ W) (h : f ≫ k = 0) :
    { l : cokernel f ⟶ W // cokernel.π f ≫ l = k } :=
  ⟨cokernel.desc f k h, cokernel.π_desc _ _ _⟩
#align category_theory.limits.cokernel.desc' CategoryTheory.Limits.cokernel.desc'

/-- A commuting square induces a morphism of cokernels. -/
abbrev cokernel.map {X' Y' : C} (f' : X' ⟶ Y') [HasCokernel f'] (p : X ⟶ X') (q : Y ⟶ Y')
    (w : f ≫ q = p ≫ f') : cokernel f ⟶ cokernel f' :=
  cokernel.desc f (q ≫ cokernel.π f') (by
    have : f ≫ q ≫ π f' = p ≫ f' ≫ π f' := by
      simp only [←Category.assoc]
      apply congrArg (· ≫ π f') w
    simp [this])
#align category_theory.limits.cokernel.map CategoryTheory.Limits.cokernel.map

/-- Given a commutative diagram
    X --f--> Y --g--> Z
    |        |        |
    |        |        |
    v        v        v
    X' -f'-> Y' -g'-> Z'
with horizontal arrows composing to zero,
then we obtain a commutative square
   cokernel f ---> Z
   |               |
   | cokernel.map  |
   |               |
   v               v
   cokernel f' --> Z'
-/
theorem cokernel.map_desc {X Y Z X' Y' Z' : C} (f : X ⟶ Y) [HasCokernel f] (g : Y ⟶ Z)
    (w : f ≫ g = 0) (f' : X' ⟶ Y') [HasCokernel f'] (g' : Y' ⟶ Z') (w' : f' ≫ g' = 0) (p : X ⟶ X')
    (q : Y ⟶ Y') (r : Z ⟶ Z') (h₁ : f ≫ q = p ≫ f') (h₂ : g ≫ r = q ≫ g') :
    cokernel.map f f' p q h₁ ≫ cokernel.desc f' g' w' = cokernel.desc f g w ≫ r := by
  ext; simp [h₂]
#align category_theory.limits.cokernel.map_desc CategoryTheory.Limits.cokernel.map_desc

/-- A commuting square of isomorphisms induces an isomorphism of cokernels. -/
@[simps]
def cokernel.mapIso {X' Y' : C} (f' : X' ⟶ Y') [HasCokernel f'] (p : X ≅ X') (q : Y ≅ Y')
    (w : f ≫ q.hom = p.hom ≫ f') : cokernel f ≅ cokernel f' where
  hom := cokernel.map f f' p.hom q.hom w
  inv := cokernel.map f' f p.inv q.inv (by
          refine' (cancel_mono q.hom).1 _
          simp [w])
#align category_theory.limits.cokernel.map_iso CategoryTheory.Limits.cokernel.mapIso

/-- The cokernel of the zero morphism is an isomorphism -/
instance cokernel.π_zero_isIso : IsIso (cokernel.π (0 : X ⟶ Y)) :=
  coequalizer.π_of_self _
#align category_theory.limits.cokernel.π_zero_is_iso CategoryTheory.Limits.cokernel.π_zero_isIso

theorem eq_zero_of_mono_cokernel [Mono (cokernel.π f)] : f = 0 :=
  (cancel_mono (cokernel.π f)).1 (by simp)
#align category_theory.limits.eq_zero_of_mono_cokernel CategoryTheory.Limits.eq_zero_of_mono_cokernel

/-- The cokernel of a zero morphism is isomorphic to the target. -/
def cokernelZeroIsoTarget : cokernel (0 : X ⟶ Y) ≅ Y :=
  coequalizer.isoTargetOfSelf 0
#align category_theory.limits.cokernel_zero_iso_target CategoryTheory.Limits.cokernelZeroIsoTarget

@[simp]
theorem cokernelZeroIsoTarget_hom :
    cokernelZeroIsoTarget.hom = cokernel.desc (0 : X ⟶ Y) (𝟙 Y) (by simp) := by
  ext; simp [cokernelZeroIsoTarget]
#align category_theory.limits.cokernel_zero_iso_target_hom CategoryTheory.Limits.cokernelZeroIsoTarget_hom

@[simp]
theorem cokernelZeroIsoTarget_inv : cokernelZeroIsoTarget.inv = cokernel.π (0 : X ⟶ Y) :=
  rfl
#align category_theory.limits.cokernel_zero_iso_target_inv CategoryTheory.Limits.cokernelZeroIsoTarget_inv

/-- If two morphisms are known to be equal, then their cokernels are isomorphic. -/
def cokernelIsoOfEq {f g : X ⟶ Y} [HasCokernel f] [HasCokernel g] (h : f = g) :
    cokernel f ≅ cokernel g :=
  HasColimit.isoOfNatIso (by simp [h]; rfl)
#align category_theory.limits.cokernel_iso_of_eq CategoryTheory.Limits.cokernelIsoOfEq

@[simp]
theorem cokernelIsoOfEq_refl {h : f = f} : cokernelIsoOfEq h = Iso.refl (cokernel f) := by
  ext; simp [cokernelIsoOfEq]
#align category_theory.limits.cokernel_iso_of_eq_refl CategoryTheory.Limits.cokernelIsoOfEq_refl

@[reassoc (attr := simp)]
theorem π_comp_cokernelIsoOfEq_hom {f g : X ⟶ Y} [HasCokernel f] [HasCokernel g] (h : f = g) :
    cokernel.π f ≫ (cokernelIsoOfEq h).hom = cokernel.π g := by
  cases h; simp
#align category_theory.limits.π_comp_cokernel_iso_of_eq_hom CategoryTheory.Limits.π_comp_cokernelIsoOfEq_hom

@[reassoc (attr := simp)]
theorem π_comp_cokernelIsoOfEq_inv {f g : X ⟶ Y} [HasCokernel f] [HasCokernel g] (h : f = g) :
    cokernel.π _ ≫ (cokernelIsoOfEq h).inv = cokernel.π _ := by
  cases h; simp
#align category_theory.limits.π_comp_cokernel_iso_of_eq_inv CategoryTheory.Limits.π_comp_cokernelIsoOfEq_inv

@[reassoc (attr := simp)]
theorem cokernelIsoOfEq_hom_comp_desc {Z} {f g : X ⟶ Y} [HasCokernel f] [HasCokernel g] (h : f = g)
    (e : Y ⟶ Z) (he) :
    (cokernelIsoOfEq h).hom ≫ cokernel.desc _ e he = cokernel.desc _ e (by simp [h, he]) := by
  cases h; simp
#align category_theory.limits.cokernel_iso_of_eq_hom_comp_desc CategoryTheory.Limits.cokernelIsoOfEq_hom_comp_desc

@[reassoc (attr := simp)]
theorem cokernelIsoOfEq_inv_comp_desc {Z} {f g : X ⟶ Y} [HasCokernel f] [HasCokernel g] (h : f = g)
    (e : Y ⟶ Z) (he) :
    (cokernelIsoOfEq h).inv ≫ cokernel.desc _ e he = cokernel.desc _ e (by simp [← h, he]) := by
  cases h; simp
#align category_theory.limits.cokernel_iso_of_eq_inv_comp_desc CategoryTheory.Limits.cokernelIsoOfEq_inv_comp_desc

@[simp]
theorem cokernelIsoOfEq_trans {f g h : X ⟶ Y} [HasCokernel f] [HasCokernel g] [HasCokernel h]
    (w₁ : f = g) (w₂ : g = h) :
    cokernelIsoOfEq w₁ ≪≫ cokernelIsoOfEq w₂ = cokernelIsoOfEq (w₁.trans w₂) := by
  cases w₁; cases w₂; ext; simp [cokernelIsoOfEq]
#align category_theory.limits.cokernel_iso_of_eq_trans CategoryTheory.Limits.cokernelIsoOfEq_trans

variable {f}

theorem cokernel_not_mono_of_nonzero (w : f ≠ 0) : ¬Mono (cokernel.π f) := fun _ =>
  w (eq_zero_of_mono_cokernel f)
#align category_theory.limits.cokernel_not_mono_of_nonzero CategoryTheory.Limits.cokernel_not_mono_of_nonzero

theorem cokernel_not_iso_of_nonzero (w : f ≠ 0) : IsIso (cokernel.π f) → False := fun I =>
  cokernel_not_mono_of_nonzero w <| by
    skip
    infer_instance
#align category_theory.limits.cokernel_not_iso_of_nonzero CategoryTheory.Limits.cokernel_not_iso_of_nonzero

-- TODO the remainder of this section has obvious generalizations to `HasCoequalizer f g`.
instance hasCokernel_comp_iso {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [HasCokernel f] [IsIso g] :
    HasCokernel (f ≫ g) where
  exists_colimit :=
    ⟨{  cocone := CokernelCofork.ofπ (inv g ≫ cokernel.π f) (by simp)
        isColimit :=
          isColimitAux _
            (fun s =>
              cokernel.desc _ (g ≫ s.π) (by rw [← Category.assoc, CokernelCofork.condition]))
            (by aesop_cat) fun s m w => by
            simp_rw [← w]
            apply coequalizer.hom_ext
            simp }⟩
#align category_theory.limits.has_cokernel_comp_iso CategoryTheory.Limits.hasCokernel_comp_iso

/-- When `g` is an isomorphism, the cokernel of `f ≫ g` is isomorphic to the cokernel of `f`.
-/
@[simps]
def cokernelCompIsIso {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [HasCokernel f] [IsIso g] :
    cokernel (f ≫ g) ≅ cokernel f where
  hom := cokernel.desc _ (inv g ≫ cokernel.π f) (by simp)
  inv := cokernel.desc _ (g ≫ cokernel.π (f ≫ g)) (by rw [← Category.assoc, cokernel.condition])
#align category_theory.limits.cokernel_comp_is_iso CategoryTheory.Limits.cokernelCompIsIso

instance hasCokernel_epi_comp {X Y : C} (f : X ⟶ Y) [HasCokernel f] {W} (g : W ⟶ X) [Epi g] :
    HasCokernel (g ≫ f) :=
  ⟨⟨{   cocone := _
        isColimit := isCokernelEpiComp (colimit.isColimit _) g rfl }⟩⟩
#align category_theory.limits.has_cokernel_epi_comp CategoryTheory.Limits.hasCokernel_epi_comp

/-- When `f` is an epimorphism, the cokernel of `f ≫ g` is isomorphic to the cokernel of `g`.
-/
@[simps]
def cokernelEpiComp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [Epi f] [HasCokernel g] :
    cokernel (f ≫ g) ≅ cokernel g where
  hom := cokernel.desc _ (cokernel.π g) (by simp)
  inv :=
    cokernel.desc _ (cokernel.π (f ≫ g))
      (by
        rw [← cancel_epi f, ← Category.assoc]
        simp)
#align category_theory.limits.cokernel_epi_comp CategoryTheory.Limits.cokernelEpiComp

end

section HasZeroObject

variable [HasZeroObject C]

open ZeroObject

/-- The morphism to the zero object determines a cocone on a cokernel diagram -/
def cokernel.zeroCokernelCofork : CokernelCofork f
    where
  pt := 0
  ι := { app := fun j => 0 }
#align category_theory.limits.cokernel.zero_cokernel_cofork CategoryTheory.Limits.cokernel.zeroCokernelCofork

/-- The morphism to the zero object is a cokernel of an epimorphism -/
def cokernel.isColimitCoconeZeroCocone [Epi f] : IsColimit (cokernel.zeroCokernelCofork f) :=
  Cofork.IsColimit.mk _ (fun s => 0)
    (fun s => by
      erw [zero_comp]
      refine (zero_of_epi_comp f ?_).symm
      exact CokernelCofork.condition _)
    fun _ _ _ => zero_of_from_zero _
#align category_theory.limits.cokernel.is_colimit_cocone_zero_cocone CategoryTheory.Limits.cokernel.isColimitCoconeZeroCocone

/-- The cokernel of an epimorphism is isomorphic to the zero object -/
def cokernel.ofEpi [HasCokernel f] [Epi f] : cokernel f ≅ 0 :=
  Functor.mapIso (Cocones.forget _) <|
    IsColimit.uniqueUpToIso (colimit.isColimit (parallelPair f 0))
      (cokernel.isColimitCoconeZeroCocone f)
#align category_theory.limits.cokernel.of_epi CategoryTheory.Limits.cokernel.ofEpi

/-- The cokernel morphism of an epimorphism is a zero morphism -/
theorem cokernel.π_of_epi [HasCokernel f] [Epi f] : cokernel.π f = 0 :=
  zero_of_target_iso_zero _ (cokernel.ofEpi f)
#align category_theory.limits.cokernel.π_of_epi CategoryTheory.Limits.cokernel.π_of_epi

end HasZeroObject

section MonoFactorisation

variable {f}

@[simp]
theorem MonoFactorisation.kernel_ι_comp [HasKernel f] (F : MonoFactorisation f) :
    kernel.ι f ≫ F.e = 0 := by
  rw [← cancel_mono F.m, zero_comp, Category.assoc, F.fac, kernel.condition]
#align category_theory.limits.mono_factorisation.kernel_ι_comp CategoryTheory.Limits.MonoFactorisation.kernel_ι_comp

end MonoFactorisation

section HasImage

/-- The cokernel of the image inclusion of a morphism `f` is isomorphic to the cokernel of `f`.

(This result requires that the factorisation through the image is an epimorphism.
This holds in any category with equalizers.)
-/
@[simps]
def cokernelImageι {X Y : C} (f : X ⟶ Y) [HasImage f] [HasCokernel (image.ι f)] [HasCokernel f]
    [Epi (factorThruImage f)] : cokernel (image.ι f) ≅ cokernel f where
  hom :=
    cokernel.desc _ (cokernel.π f)
      (by
        have w := cokernel.condition f
        conv at w =>
          lhs
          congr
          rw [← image.fac f]
        rw [← HasZeroMorphisms.comp_zero (Limits.factorThruImage f), Category.assoc,
          cancel_epi] at w
        exact w)
  inv :=
    cokernel.desc _ (cokernel.π _)
      (by
        conv =>
          lhs
          congr
          rw [← image.fac f]
        rw [Category.assoc, cokernel.condition, HasZeroMorphisms.comp_zero])
#align category_theory.limits.cokernel_image_ι CategoryTheory.Limits.cokernelImageι

end HasImage

section

variable (X Y)

/-- The cokernel of a zero morphism is an isomorphism -/
theorem cokernel.π_of_zero : IsIso (cokernel.π (0 : X ⟶ Y)) :=
  coequalizer.π_of_self _
#align category_theory.limits.cokernel.π_of_zero CategoryTheory.Limits.cokernel.π_of_zero

end

section HasZeroObject

variable [HasZeroObject C]

open ZeroObject

/-- The kernel of the cokernel of an epimorphism is an isomorphism -/
instance kernel.of_cokernel_of_epi [HasCokernel f] [HasKernel (cokernel.π f)] [Epi f] :
    IsIso (kernel.ι (cokernel.π f)) :=
  equalizer.ι_of_eq <| cokernel.π_of_epi f
#align category_theory.limits.kernel.of_cokernel_of_epi CategoryTheory.Limits.kernel.of_cokernel_of_epi

/-- The cokernel of the kernel of a monomorphism is an isomorphism -/
instance cokernel.of_kernel_of_mono [HasKernel f] [HasCokernel (kernel.ι f)] [Mono f] :
    IsIso (cokernel.π (kernel.ι f)) :=
  coequalizer.π_of_eq <| kernel.ι_of_mono f
#align category_theory.limits.cokernel.of_kernel_of_mono CategoryTheory.Limits.cokernel.of_kernel_of_mono

/-- If `f ≫ g = 0` implies `g = 0` for all `g`, then `0 : Y ⟶ 0` is a cokernel of `f`. -/
def zeroCokernelOfZeroCancel {X Y : C} (f : X ⟶ Y)
    (hf : ∀ (Z : C) (g : Y ⟶ Z) (_ : f ≫ g = 0), g = 0) :
    IsColimit (CokernelCofork.ofπ (0 : Y ⟶ 0) (show f ≫ 0 = 0 by simp)) :=
  Cofork.IsColimit.mk _ (fun s => 0)
    (fun s => by rw [hf _ _ (CokernelCofork.condition s), comp_zero]) fun s m _ => by
      apply HasZeroObject.from_zero_ext
#align category_theory.limits.zero_cokernel_of_zero_cancel CategoryTheory.Limits.zeroCokernelOfZeroCancel

end HasZeroObject

section Transport

/-- If `i` is an isomorphism such that `i.hom ≫ l = f`, then any cokernel of `f` is a cokernel of
    `l`. -/
def IsCokernel.ofIsoComp {Z : C} (l : Z ⟶ Y) (i : X ≅ Z) (h : i.hom ≫ l = f) {s : CokernelCofork f}
    (hs : IsColimit s) :
    IsColimit
      (CokernelCofork.ofπ (Cofork.π s) <| show l ≫ Cofork.π s = 0 by simp [i.eq_inv_comp.2 h]) :=
  Cofork.IsColimit.mk _ (fun s => hs.desc <| CokernelCofork.ofπ (Cofork.π s) <| by simp [← h])
    (fun s => by simp) fun s m h => by
      apply Cofork.IsColimit.hom_ext hs
      simpa using h
#align category_theory.limits.is_cokernel.of_iso_comp CategoryTheory.Limits.IsCokernel.ofIsoComp

/-- If `i` is an isomorphism such that `i.hom ≫ l = f`, then the cokernel of `f` is a cokernel of
    `l`. -/
def cokernel.ofIsoComp [HasCokernel f] {Z : C} (l : Z ⟶ Y) (i : X ≅ Z) (h : i.hom ≫ l = f) :
    IsColimit
      (CokernelCofork.ofπ (cokernel.π f) <|
        show l ≫ cokernel.π f = 0 by simp [i.eq_inv_comp.2 h]) :=
  IsCokernel.ofIsoComp f l i h <| colimit.isColimit _
#align category_theory.limits.cokernel.of_iso_comp CategoryTheory.Limits.cokernel.ofIsoComp

/-- If `s` is any colimit cokernel cocone over `f` and `i` is an isomorphism such that
    `s.π ≫ i.hom = l`, then `l` is a cokernel of `f`. -/
def IsCokernel.cokernelIso {Z : C} (l : Y ⟶ Z) {s : CokernelCofork f} (hs : IsColimit s)
    (i : s.pt ≅ Z) (h : Cofork.π s ≫ i.hom = l) :
    IsColimit (CokernelCofork.ofπ l <| show f ≫ l = 0 by simp [← h]) :=
  IsColimit.ofIsoColimit hs <|
    Cocones.ext i fun j => by
      cases j
      · dsimp; rw [←h]; simp
      · exact h
#align category_theory.limits.is_cokernel.cokernel_iso CategoryTheory.Limits.IsCokernel.cokernelIso

/-- If `i` is an isomorphism such that `cokernel.π f ≫ i.hom = l`, then `l` is a cokernel of `f`. -/
def cokernel.cokernelIso [HasCokernel f] {Z : C} (l : Y ⟶ Z) (i : cokernel f ≅ Z)
    (h : cokernel.π f ≫ i.hom = l) :
    IsColimit (@CokernelCofork.ofπ _ _ _ _ _ f _ l <| by simp [← h]) :=
  IsCokernel.cokernelIso f l (colimit.isColimit _) i h
#align category_theory.limits.cokernel.cokernel_iso CategoryTheory.Limits.cokernel.cokernelIso

end Transport

section Comparison

variable {D : Type u₂} [Category.{v₂} D] [HasZeroMorphisms D]

variable (G : C ⥤ D) [Functor.PreservesZeroMorphisms G]

/-- The comparison morphism for the kernel of `f`.
This is an isomorphism iff `G` preserves the kernel of `f`; see
`CategoryTheory/Limits/Preserves/Shapes/Kernels.lean`
-/
def kernelComparison [HasKernel f] [HasKernel (G.map f)] : G.obj (kernel f) ⟶ kernel (G.map f) :=
  kernel.lift _ (G.map (kernel.ι f))
    (by simp only [← G.map_comp, kernel.condition, Functor.map_zero])
#align category_theory.limits.kernel_comparison CategoryTheory.Limits.kernelComparison

@[reassoc (attr := simp)]
theorem kernelComparison_comp_ι [HasKernel f] [HasKernel (G.map f)] :
    kernelComparison f G ≫ kernel.ι (G.map f) = G.map (kernel.ι f) :=
  kernel.lift_ι _ _ _
#align category_theory.limits.kernel_comparison_comp_ι CategoryTheory.Limits.kernelComparison_comp_ι

@[reassoc (attr := simp)]
theorem map_lift_kernelComparison [HasKernel f] [HasKernel (G.map f)] {Z : C} {h : Z ⟶ X}
    (w : h ≫ f = 0) :
    G.map (kernel.lift _ h w) ≫ kernelComparison f G =
      kernel.lift _ (G.map h) (by simp only [← G.map_comp, w, Functor.map_zero]) := by
  ext; simp [← G.map_comp]
#align category_theory.limits.map_lift_kernel_comparison CategoryTheory.Limits.map_lift_kernelComparison

@[reassoc]
theorem kernelComparison_comp_kernel_map {X' Y' : C} [HasKernel f] [HasKernel (G.map f)]
    (g : X' ⟶ Y') [HasKernel g] [HasKernel (G.map g)] (p : X ⟶ X') (q : Y ⟶ Y')
    (hpq : f ≫ q = p ≫ g) :
    kernelComparison f G ≫
        kernel.map (G.map f) (G.map g) (G.map p) (G.map q) (by rw [← G.map_comp, hpq, G.map_comp]) =
      G.map (kernel.map f g p q hpq) ≫ kernelComparison g G :=
  kernel.lift_map _ _ (by rw [← G.map_comp, kernel.condition, G.map_zero]) _ _
    (by rw [← G.map_comp, kernel.condition, G.map_zero]) _ _ _
    (by simp only [← G.map_comp]; exact G.congr_map (kernel.lift_ι _ _ _).symm) _
#align category_theory.limits.kernel_comparison_comp_kernel_map CategoryTheory.Limits.kernelComparison_comp_kernel_map

/-- The comparison morphism for the cokernel of `f`. -/
def cokernelComparison [HasCokernel f] [HasCokernel (G.map f)] :
    cokernel (G.map f) ⟶ G.obj (cokernel f) :=
  cokernel.desc _ (G.map (coequalizer.π _ _))
    (by simp only [← G.map_comp, cokernel.condition, Functor.map_zero])
#align category_theory.limits.cokernel_comparison CategoryTheory.Limits.cokernelComparison

@[reassoc (attr := simp)]
theorem π_comp_cokernelComparison [HasCokernel f] [HasCokernel (G.map f)] :
    cokernel.π (G.map f) ≫ cokernelComparison f G = G.map (cokernel.π _) :=
  cokernel.π_desc _ _ _
#align category_theory.limits.π_comp_cokernel_comparison CategoryTheory.Limits.π_comp_cokernelComparison

@[reassoc (attr := simp)]
theorem cokernelComparison_map_desc [HasCokernel f] [HasCokernel (G.map f)] {Z : C} {h : Y ⟶ Z}
    (w : f ≫ h = 0) :
    cokernelComparison f G ≫ G.map (cokernel.desc _ h w) =
      cokernel.desc _ (G.map h) (by simp only [← G.map_comp, w, Functor.map_zero]) := by
  ext; simp [← G.map_comp]
#align category_theory.limits.cokernel_comparison_map_desc CategoryTheory.Limits.cokernelComparison_map_desc

@[reassoc]
theorem cokernel_map_comp_cokernelComparison {X' Y' : C} [HasCokernel f] [HasCokernel (G.map f)]
    (g : X' ⟶ Y') [HasCokernel g] [HasCokernel (G.map g)] (p : X ⟶ X') (q : Y ⟶ Y')
    (hpq : f ≫ q = p ≫ g) :
    cokernel.map (G.map f) (G.map g) (G.map p) (G.map q) (by rw [← G.map_comp, hpq, G.map_comp]) ≫
        cokernelComparison _ G =
      cokernelComparison _ G ≫ G.map (cokernel.map f g p q hpq) :=
  cokernel.map_desc _ _ (by rw [← G.map_comp, cokernel.condition, G.map_zero]) _ _
    (by rw [← G.map_comp, cokernel.condition, G.map_zero]) _ _ _ _
    (by simp only [← G.map_comp]; exact G.congr_map (cokernel.π_desc _ _ _))
#align category_theory.limits.cokernel_map_comp_cokernel_comparison CategoryTheory.Limits.cokernel_map_comp_cokernelComparison

end Comparison

end CategoryTheory.Limits

namespace CategoryTheory.Limits

variable (C : Type u) [Category.{v} C]

variable [HasZeroMorphisms C]

/-- `HasKernels` represents the existence of kernels for every morphism. -/
class HasKernels : Prop where
  has_limit : ∀ {X Y : C} (f : X ⟶ Y), HasKernel f := by infer_instance
#align category_theory.limits.has_kernels CategoryTheory.Limits.HasKernels

/-- `HasCokernels` represents the existence of cokernels for every morphism. -/
class HasCokernels : Prop where
  has_colimit : ∀ {X Y : C} (f : X ⟶ Y), HasCokernel f := by infer_instance
#align category_theory.limits.has_cokernels CategoryTheory.Limits.HasCokernels

attribute [instance 100] HasKernels.has_limit HasCokernels.has_colimit

instance (priority := 100) hasKernels_of_hasEqualizers [HasEqualizers C] : HasKernels C where
#align category_theory.limits.has_kernels_of_has_equalizers CategoryTheory.Limits.hasKernels_of_hasEqualizers

instance (priority := 100) hasCokernels_of_hasCoequalizers [HasCoequalizers C] : HasCokernels C
    where
#align category_theory.limits.has_cokernels_of_has_coequalizers CategoryTheory.Limits.hasCokernels_of_hasCoequalizers

end CategoryTheory.Limits
```
