-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PreKernelMk.Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PreKernelMk.Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Hilbert/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Hilbert.Null
import Mathlib.LinearAlgebra.Quotient.Basic

/-!
# Kernel-null quotient

`PreKernelSpace` is literally the complex-module quotient of the raw
finitely supported span by its kernel radical.  The descended form is proved
positive definite before any `InnerProductSpace` instance is installed.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PreKernelMk.Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406

noncomputable section

namespace Mathematics.Hilbert

open Mathematics.Kernel

universe u

variable {Index : Type u} (kernel : Kernel.PositiveKernel Index)

/-- The nondegenerate pre-Hilbert space obtained by quotienting null raw
vectors. -/
@[reducible] def PreKernelSpace :=
  (Raw kernel) ⧸ kernelNullSubmodule kernel

/-- Canonical quotient map from raw finite combinations. -/
def preKernelMk (f : Raw kernel) : PreKernelSpace kernel :=
  Submodule.Quotient.mk f

/-- The raw kernel form is invariant under changing either representative by
a member of the radical. -/
private theorem rawInner_respects_quotient
    (left right left' right' : Raw kernel)
    (leftRelated :
      (kernelNullSubmodule kernel).quotientRel left left')
    (rightRelated :
      (kernelNullSubmodule kernel).quotientRel right right') :
    Raw.inner kernel left right = Raw.inner kernel left' right' := by
  have leftDifference :
      left - left' ∈ kernelNullSubmodule kernel :=
    (Submodule.quotientRel_def _).mp leftRelated
  have rightDifference :
      right - right' ∈ kernelNullSubmodule kernel :=
    (Submodule.quotientRel_def _).mp rightRelated
  exact (rawInner_eq_of_sub_mem_left kernel leftDifference right).trans
    (rawInner_eq_of_sub_mem_right kernel left' rightDifference)

/-- The kernel form descended to the radical quotient. -/
def preKernelInner
    (left right : PreKernelSpace kernel) : ℂ :=
  Quotient.liftOn₂' left right (Raw.inner kernel)
    (rawInner_respects_quotient kernel)

/-- The descended form is represented by the raw kernel form and is therefore
independent of the selected representatives. -/
@[simp]
theorem preKernelInner_wellDefined (f g : Raw kernel) :
    preKernelInner kernel (preKernelMk kernel f)
      (preKernelMk kernel g) = Raw.inner kernel f g :=
  rfl

/-- The descended sesquilinear form before its quotient definiteness field is
bundled. -/
@[reducible]
private def preKernelPreCore :
    PreInnerProductSpace.Core ℂ (PreKernelSpace kernel) where
  inner := preKernelInner kernel
  conj_inner_symm := by
    intro left right
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    change star (Raw.inner kernel g f) = Raw.inner kernel f g
    exact (Raw.inner_conj_symm kernel f g).symm
  re_inner_nonneg := by
    intro point
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) point ?_
    intro f
    change 0 ≤ (Raw.inner kernel f f).re
    exact Raw.inner_self_nonneg kernel f
  add_left := by
    intro left right third
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) third ?_
    intro h
    change Raw.inner kernel (f + g) h =
      Raw.inner kernel f h + Raw.inner kernel g h
    exact Raw.add_left kernel f g h
  smul_left := by
    intro left right scalar
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    change Raw.inner kernel (scalar • f) g =
      star scalar * Raw.inner kernel f g
    exact Raw.conjugate_linear_left kernel scalar f g

/-- Positive-definite inner-product core on the explicit radical quotient. -/
@[reducible]
def preKernelCore :
    InnerProductSpace.Core ℂ (PreKernelSpace kernel) where
  __ := preKernelPreCore kernel
  definite := by
    intro point
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) point ?_
    intro f energyZero
    exact (Submodule.Quotient.mk_eq_zero
      (kernelNullSubmodule kernel)).mpr energyZero

/-- The quotient norm is generated only after the radical has been removed. -/
instance instPreKernelNormedAddCommGroup :
    NormedAddCommGroup (PreKernelSpace kernel) :=
  @InnerProductSpace.Core.toNormedAddCommGroup
    ℂ (PreKernelSpace kernel) _ _ _ (preKernelCore kernel)

/-- The quotient, unlike the raw semidefinite span, is a genuine complex
inner-product space. -/
instance instPreKernelInnerProductSpace :
    InnerProductSpace ℂ (PreKernelSpace kernel) :=
  InnerProductSpace.ofCore (preKernelPreCore kernel)

/-- The descended inner product is positive definite. -/
theorem preKernel_inner_self_eq_zero_iff
    (f : PreKernelSpace kernel) :
  preKernelInner kernel f f = 0 ↔ f = 0 := by
  change inner ℂ f f = 0 ↔ f = 0
  exact inner_self_eq_zero (𝕜 := ℂ) (x := f)

/-- A raw vector becomes zero in the quotient exactly when it belongs to the
kernel radical. -/
theorem preKernelMk_eq_zero_iff
    (f : Raw kernel) :
    preKernelMk kernel f = 0 ↔
      f ∈ kernelNullSubmodule kernel :=
  by
    unfold preKernelMk PreKernelSpace
    exact Submodule.Quotient.mk_eq_zero (kernelNullSubmodule kernel)

@[simp]
theorem preKernelInner_basisVector
    (i j : Index) :
    preKernelInner kernel
        (preKernelMk kernel (Raw.basisVector kernel i))
        (preKernelMk kernel (Raw.basisVector kernel j)) =
      kernel i j := by
  rw [preKernelInner_wellDefined]
  exact Raw.inner_basisVector_basisVector kernel i j

end Mathematics.Hilbert
