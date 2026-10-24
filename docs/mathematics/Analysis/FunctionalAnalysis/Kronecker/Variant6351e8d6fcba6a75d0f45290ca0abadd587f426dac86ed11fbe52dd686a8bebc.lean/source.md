# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Kronecker.Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88aad76501255337703dc921fdc8466326cf0f7e` · SHA-256 `6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Hilbert.FeatureMap
import MathDiscovery.Kernel.Kronecker
import Mathlib.Analysis.InnerProductSpace.l2Space

/-!
# Identity preservation and the Kronecker profile

Strictly positive kernels separate indices in the completed feature space.
For the zero semantic channel with unit identity regularization, the kernel is
the Kronecker kernel.  Its canonical features form a total orthonormal family,
yielding an explicit linear isometric equivalence with ordinary `ℓ²`.
-/

noncomputable section

namespace MathDiscovery.Hilbert

open MathDiscovery.Kernel

open scoped ComplexInnerProductSpace ComplexOrder lp

universe u

variable {Index : Type u}

/-- Positive definiteness removes every raw null vector. -/
theorem raw_eq_zero_of_posDef
    (kernel : Kernel.PositiveKernel Index)
    (positiveDefinite : kernel.matrix.PosDef)
    {f : Raw kernel}
    (energyZero : Raw.inner kernel f f = 0) :
    f = 0 := by
  by_contra nonzero
  have positiveEnergy := positiveDefinite.2 nonzero
  change 0 < Raw.inner kernel f f at positiveEnergy
  rw [energyZero] at positiveEnergy
  exact (lt_irrefl (0 : ℂ)) positiveEnergy

/-- A positive-definite kernel has an injective canonical feature map. -/
theorem kernelVector_injective_of_posDef
    (kernel : Kernel.PositiveKernel Index)
    (positiveDefinite : kernel.matrix.PosDef) :
    Function.Injective (kernelVector kernel) := by
  intro left right vectorsEqual
  let difference : Raw kernel :=
    Raw.basisVector kernel left - Raw.basisVector kernel right
  have mappedDifferenceZero :
      rawToKernelSpace kernel difference = 0 := by
    dsimp only [difference]
    rw [map_sub, rawToKernelSpace_basisVector,
      rawToKernelSpace_basisVector, vectorsEqual, sub_self]
  have energyZero : Raw.inner kernel difference difference = 0 := by
    rw [← inner_rawToKernelSpace]
    simp [mappedDifferenceZero]
  have differenceZero :=
    raw_eq_zero_of_posDef kernel positiveDefinite energyZero
  have basisEqual :
      Raw.basisVector kernel left = Raw.basisVector kernel right :=
    sub_eq_zero.mp differenceZero
  exact Finsupp.single_left_injective (one_ne_zero : (1 : ℂ) ≠ 0)
    basisEqual

/-- Identity regularization makes the completed feature map injective. -/
theorem kernelVector_injective
    [DecidableEq Index]
    (semantic : Kernel.PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) :
    Function.Injective
      (kernelVector
        (regularizedKernel semantic epsilon epsilonPositive)) :=
  kernelVector_injective_of_posDef _ <|
    regularizedKernel_posDef semantic epsilon epsilonPositive

section Kronecker

variable [DecidableEq Index]

/-- The Hilbert construction uses the exact kernel-layer Kronecker profile. -/
@[simp]
theorem kernelKronecker_apply (left right : Index) :
    Kernel.kroneckerKernel left right =
      if left = right then (1 : ℂ) else 0 :=
  Kernel.kroneckerKernel_apply left right

/-- Kronecker feature vectors form an orthonormal family. -/
theorem kronecker_kernelVector_orthonormal :
    Orthonormal ℂ (kernelVector (Kernel.kroneckerKernel (Index := Index))) := by
  rw [orthonormal_iff_ite]
  intro left right
  rw [inner_kernelVector, kernelKronecker_apply]

/-- The Kronecker feature family is total. -/
theorem kronecker_kernelVector_total :
    (Submodule.span ℂ
      (Set.range (kernelVector
        (Kernel.kroneckerKernel (Index := Index))))).topologicalClosure = ⊤ := by
  exact kernelVector_denseSpan (Kernel.kroneckerKernel (Index := Index))

/-- The total Kronecker feature family bundled as a Hilbert basis. -/
def kroneckerHilbertBasis :
    HilbertBasis Index ℂ
      (KernelSpace (Kernel.kroneckerKernel (Index := Index))) :=
  HilbertBasis.mk
    (kronecker_kernelVector_orthonormal (Index := Index)) <| by
      exact (kronecker_kernelVector_total (Index := Index)).ge

@[simp]
theorem kroneckerHilbertBasis_apply (index : Index) :
    kroneckerHilbertBasis (Index := Index) index =
      kernelVector (Kernel.kroneckerKernel (Index := Index)) index := by
  rw [kroneckerHilbertBasis, HilbertBasis.coe_mk]

/-- Kernel-checked compatibility bridge from the completed unit Kronecker
profile to ordinary `ℓ²(Index, ℂ)`. -/
def kroneckerCompletionEquivL2 :
    KernelSpace (Kernel.kroneckerKernel (Index := Index)) ≃ₗᵢ[ℂ]
      ℓ²(Index, ℂ) :=
  (kroneckerHilbertBasis (Index := Index)).repr

/-- The compatibility bridge sends each canonical kernel vector to the
ordinary coordinate unit vector. -/
@[simp]
theorem kroneckerCompletionEquivL2_kernelVector (index : Index) :
    kroneckerCompletionEquivL2
        (kernelVector (Kernel.kroneckerKernel (Index := Index)) index) =
      lp.single 2 index (1 : ℂ) := by
  change (kroneckerHilbertBasis (Index := Index)).repr
    (kernelVector (Kernel.kroneckerKernel (Index := Index)) index) = _
  rw [← kroneckerHilbertBasis_apply]
  exact (kroneckerHilbertBasis (Index := Index)).repr_self index

end Kronecker

end MathDiscovery.Hilbert
```
