import DAF.Rhetorical.FeatureMap
import DAF.Rhetorical.Kernel.Regularization
import Mathlib.Analysis.InnerProductSpace.l2Space

/-!
# Identity preservation and the Kronecker profile

Strictly positive kernels separate indices in the completed feature space.
For the zero semantic channel with unit identity regularization, the kernel is
the Kronecker kernel.  Its canonical features form a total orthonormal family,
yielding an explicit linear isometric equivalence with ordinary `ℓ²`.
-/

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexInnerProductSpace ComplexOrder lp

universe u

variable {Index : Type u}

/-- Positive definiteness removes every raw null vector. -/
theorem raw_eq_zero_of_posDef
    (kernel : PositiveKernel Index)
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
theorem rhetoricalVector_injective_of_posDef
    (kernel : PositiveKernel Index)
    (positiveDefinite : kernel.matrix.PosDef) :
    Function.Injective (rhetoricalVector kernel) := by
  intro left right vectorsEqual
  let difference : Raw kernel :=
    Raw.basisVector kernel left - Raw.basisVector kernel right
  have mappedDifferenceZero :
      rawToRhetorical kernel difference = 0 := by
    dsimp only [difference]
    rw [map_sub, rawToRhetorical_basisVector,
      rawToRhetorical_basisVector, vectorsEqual, sub_self]
  have energyZero : Raw.inner kernel difference difference = 0 := by
    rw [← inner_rawToRhetorical]
    simp [mappedDifferenceZero]
  have differenceZero :=
    raw_eq_zero_of_posDef kernel positiveDefinite energyZero
  have basisEqual :
      Raw.basisVector kernel left = Raw.basisVector kernel right :=
    sub_eq_zero.mp differenceZero
  exact Finsupp.single_left_injective (one_ne_zero : (1 : ℂ) ≠ 0)
    basisEqual

/-- Identity regularization makes the completed feature map injective. -/
theorem rhetoricalVector_injective
    [DecidableEq Index]
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) :
    Function.Injective
      (rhetoricalVector
        (regularizedKernel semantic epsilon epsilonPositive)) :=
  rhetoricalVector_injective_of_posDef _ <|
    regularizedKernel_posDef semantic epsilon epsilonPositive

section Kronecker

variable [DecidableEq Index]

/-- The exact Kronecker kernel: zero semantic channel plus unit identity
regularization. -/
def kroneckerKernel : PositiveKernel Index :=
  regularizedKernel (zeroSemanticKernel (Index := Index)) 1 (by norm_num)

@[simp]
theorem kroneckerKernel_apply (left right : Index) :
    kroneckerKernel left right =
      if left = right then (1 : ℂ) else 0 := by
  simp [kroneckerKernel, regularizedKernel_apply, zeroSemanticKernel]

/-- Kronecker feature vectors form an orthonormal family. -/
theorem kronecker_rhetoricalVector_orthonormal :
    Orthonormal ℂ (rhetoricalVector (kroneckerKernel (Index := Index))) := by
  rw [orthonormal_iff_ite]
  intro left right
  rw [inner_rhetoricalVector, kroneckerKernel_apply]

/-- The Kronecker feature family is total. -/
theorem kronecker_rhetoricalVector_total :
    (Submodule.span ℂ
      (Set.range (rhetoricalVector
        (kroneckerKernel (Index := Index))))).topologicalClosure = ⊤ := by
  exact rhetoricalVector_denseSpan (kroneckerKernel (Index := Index))

/-- The total Kronecker feature family bundled as a Hilbert basis. -/
def kroneckerHilbertBasis :
    HilbertBasis Index ℂ
      (RhetoricalSpace (kroneckerKernel (Index := Index))) :=
  HilbertBasis.mk
    (kronecker_rhetoricalVector_orthonormal (Index := Index)) <| by
      exact (kronecker_rhetoricalVector_total (Index := Index)).ge

@[simp]
theorem kroneckerHilbertBasis_apply (index : Index) :
    kroneckerHilbertBasis (Index := Index) index =
      rhetoricalVector (kroneckerKernel (Index := Index)) index := by
  rw [kroneckerHilbertBasis, HilbertBasis.coe_mk]

/-- Kernel-checked compatibility bridge from the completed unit Kronecker
profile to ordinary `ℓ²(Index, ℂ)`. -/
def kroneckerCompletionEquivL2 :
    RhetoricalSpace (kroneckerKernel (Index := Index)) ≃ₗᵢ[ℂ]
      ℓ²(Index, ℂ) :=
  (kroneckerHilbertBasis (Index := Index)).repr

/-- The compatibility bridge sends each canonical rhetorical vector to the
ordinary coordinate unit vector. -/
@[simp]
theorem kroneckerCompletionEquivL2_rhetoricalVector (index : Index) :
    kroneckerCompletionEquivL2
        (rhetoricalVector (kroneckerKernel (Index := Index)) index) =
      lp.single 2 index (1 : ℂ) := by
  change (kroneckerHilbertBasis (Index := Index)).repr
    (rhetoricalVector (kroneckerKernel (Index := Index)) index) = _
  rw [← kroneckerHilbertBasis_apply]
  exact (kroneckerHilbertBasis (Index := Index)).repr_self index

end Kronecker

end DAF.Rhetorical
