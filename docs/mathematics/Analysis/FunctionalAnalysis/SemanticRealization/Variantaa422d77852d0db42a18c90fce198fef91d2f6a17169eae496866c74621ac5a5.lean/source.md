# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealization.Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af7b40521d0282deb04ca1dd27c465b37cf2dca0` · SHA-256 `aa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.BanachCompletion
import Mathematics.Hilbert.FeatureMap
import Mathlib.Analysis.Normed.Operator.Extend

/-!
# Bounded semantic realization in a kernel Hilbert space

A positive-semidefinite kernel supplies a Hilbert target only after quotienting
its radical.  A semantic Banach carrier maps into that target when every
declared semantic equation is kernel-null and the raw feature map is bounded
by the selected semantic seminorm.

The upper estimate gives a unique continuous realization.  It does not give
injectivity.  Injectivity is exposed only by the separate lower coercive
estimate.
-/

noncomputable section

namespace Mathematics.Hilbert

open Mathematics.Kernel

universe u

/--
Compatibility data required to extend raw semantic combinations continuously
into a completed kernel space.
-/
structure KernelCompatibility
    {Atom : Type u}
    (data : Concept.QuotientNormData Atom)
    (kernel : Kernel.PositiveKernel Atom) where
  relations_are_kernel_null :
    data.relations ≤ kernelNullSubmodule kernel
  upperConstant : ℝ
  upperConstant_nonnegative : 0 ≤ upperConstant
  bounded_on_raw :
    ∀ combination : Concept.SemanticCombination Atom,
      ‖rawToKernelSpace kernel combination‖ ≤
        upperConstant * data.semanticSeminorm combination

namespace KernelCompatibility

variable
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}

/-- Every proof-selected semantic relation vanishes in the kernel quotient. -/
theorem relation_maps_to_zero
    (compatibility : KernelCompatibility data kernel)
    {combination : Concept.SemanticCombination Atom}
    (relationMember : combination ∈ data.relations) :
    rawToKernelSpace kernel combination = 0 := by
  have nullMember :
      combination ∈ kernelNullSubmodule kernel :=
    compatibility.relations_are_kernel_null relationMember
  change
    completePreKernel kernel
        (preKernelMk kernel combination) = 0
  have quotientZero :
      preKernelMk kernel combination = 0 :=
    (preKernelMk_eq_zero_iff kernel combination).mpr nullMember
  rw [quotientZero]
  exact map_zero
    (UniformSpace.Completion.toComplL :
      PreKernelSpace kernel →L[ℂ] KernelSpace kernel)

end KernelCompatibility

/--
The unique bounded extension of the raw kernel feature map to the completed
semantic Banach carrier.
-/
def banachToHilbert
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (_compatibility : KernelCompatibility data kernel) :
    Concept.BanachCarrier data →L[ℂ] KernelSpace kernel :=
  (rawToKernelSpace kernel).extendOfNorm
    (Concept.rawToBanach data)

/-- The extension agrees exactly with the raw feature map on finite states. -/
@[simp] theorem banachToHilbert_raw
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : KernelCompatibility data kernel)
    (combination : Concept.SemanticCombination Atom) :
    banachToHilbert compatibility
        (Concept.rawToBanach data combination) =
      rawToKernelSpace kernel combination := by
  exact LinearMap.extendOfNorm_eq
    (Concept.rawToBanach_denseRange data)
    ⟨compatibility.upperConstant, by
      intro raw
      simpa only [Concept.norm_rawToBanach] using
        compatibility.bounded_on_raw raw⟩
    combination

/-- A semantic atom is realized by its canonical kernel feature vector. -/
@[simp] theorem banachToHilbert_atom
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : KernelCompatibility data kernel)
    (atom : Atom) :
    banachToHilbert compatibility (Concept.atomState data atom) =
      kernelVector kernel atom := by
  rw [Concept.atomState, banachToHilbert_raw]
  simpa [Raw.basisVector] using
    rawToKernelSpace_basisVector kernel atom

/-- The raw upper estimate extends to every completed semantic state. -/
theorem norm_banachToHilbert_le
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : KernelCompatibility data kernel)
    (state : Concept.BanachCarrier data) :
    ‖banachToHilbert compatibility state‖ ≤
      compatibility.upperConstant * ‖state‖ := by
  exact LinearMap.norm_extendOfNorm_apply_le
    (Concept.rawToBanach_denseRange data)
    compatibility.upperConstant
    (by
      intro raw
      simpa only [Concept.norm_rawToBanach] using
        compatibility.bounded_on_raw raw)
    state

/--
Any continuous linear realization agreeing with the raw kernel feature map is
the canonical extension.
-/
theorem banachToHilbert_unique
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : KernelCompatibility data kernel)
    (candidate :
      Concept.BanachCarrier data →L[ℂ] KernelSpace kernel)
    (agrees_on_raw :
      candidate.toLinearMap.comp (Concept.rawToBanach data) =
        rawToKernelSpace kernel) :
    banachToHilbert compatibility = candidate := by
  exact LinearMap.extendOfNorm_unique
    (Concept.rawToBanach_denseRange data)
    compatibility.upperConstant
    (by
      intro raw
      simpa only [Concept.norm_rawToBanach] using
        compatibility.bounded_on_raw raw)
    candidate
    agrees_on_raw

/--
A lower estimate is additional mathematical data.  It is not derivable from
positive semidefiniteness or from the upper boundedness certificate.
-/
structure CoerciveKernelCompatibility
    {Atom : Type u}
    (data : Concept.QuotientNormData Atom)
    (kernel : Kernel.PositiveKernel Atom)
    extends KernelCompatibility data kernel where
  lowerConstant : ℝ
  lowerConstant_positive : 0 < lowerConstant
  lower_bound_on_raw :
    ∀ combination : Concept.SemanticCombination Atom,
      lowerConstant * data.semanticSeminorm combination ≤
        ‖rawToKernelSpace kernel combination‖

/-- Coercivity on the dense raw carrier extends to the Banach completion. -/
theorem CoerciveKernelCompatibility.lower_bound
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : CoerciveKernelCompatibility data kernel)
    (state : Concept.BanachCarrier data) :
    compatibility.lowerConstant * ‖state‖ ≤
      ‖banachToHilbert compatibility.toKernelCompatibility state‖ := by
  refine (Concept.rawToBanach_denseRange data).induction ?_
    (isClosed_le (by fun_prop) (by fun_prop)) state
  rintro _ ⟨combination, rfl⟩
  rw [banachToHilbert_raw, Concept.norm_rawToBanach]
  exact compatibility.lower_bound_on_raw combination

/-- The Hilbert realization is injective only after coercivity is supplied. -/
theorem CoerciveKernelCompatibility.injective
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : CoerciveKernelCompatibility data kernel) :
    Function.Injective
      (banachToHilbert compatibility.toKernelCompatibility) := by
  intro left right mappedEqual
  apply sub_eq_zero.mp
  apply norm_eq_zero.mp
  have mappedDifference :
      banachToHilbert compatibility.toKernelCompatibility
          (left - right) = 0 := by
    rw [map_sub, mappedEqual, sub_self]
  have lowerEstimate :=
    compatibility.lower_bound (left - right)
  have productNonpositive :
      compatibility.lowerConstant * ‖left - right‖ ≤ 0 := by
    simpa [mappedDifference] using lowerEstimate
  have productZero :
      compatibility.lowerConstant * ‖left - right‖ = 0 :=
    le_antisymm productNonpositive
      (mul_nonneg
        (le_of_lt compatibility.lowerConstant_positive)
        (norm_nonneg (left - right)))
  exact
    (mul_eq_zero.mp productZero).resolve_left
      (ne_of_gt compatibility.lowerConstant_positive)

end Mathematics.Hilbert
```
