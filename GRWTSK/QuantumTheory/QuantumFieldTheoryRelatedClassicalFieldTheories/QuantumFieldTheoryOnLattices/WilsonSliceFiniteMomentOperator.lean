/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib orthogonal projection and finite Gram operators retain upstream
attribution and the Apache-2.0 license. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteGramCompression
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceFiniteMomentEnergy
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceTaylorRemainder

/-!
# The actual finite-rank invariant Wilson moment operator and matrix

Each feature is the actual orthogonal projection of the weighted word L2
class, scaled by the square root of its exact coefficient. Empty words and
repetitions remain in the finite sigma inventory. No pointwise invariant
representative, linear independence, spectral gap or finite-rank exactness
is assumed. The operator's quadratic is the previously defined WHOLE energy.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentOperator
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentEnergy
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression

variable (L : ℕ) [NeZero L]

abbrev WordIndex (m : ℕ) := Σ n : Fin m, Fin n.val → SliceCoordinate L

def coefficient (β : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-β * (spatialLinkCount L : ℝ)) * ((β / 2) ^ n / (n.factorial : ℝ))

theorem coefficient_nonnegative {β : ℝ} (hβ : 0 ≤ β) (n : ℕ) :
    0 ≤ coefficient L β n := by unfold coefficient; positivity

def ambientWord (β : ℝ) {n : ℕ} (w : Fin n → SliceCoordinate L) : RealSliceL2 L :=
  ContinuousMap.toLp 2 (sliceHaar L) ℝ (weightedWord L β w)

def projectedWord (β : ℝ) {n : ℕ} (w : Fin n → SliceCoordinate L) : gaugeInvariantSpace L :=
  (gaugeInvariantSpace L).orthogonalProjectionOnto (ambientWord L β w)

theorem inner_projectedWord (β : ℝ) {n : ℕ} (w : Fin n → SliceCoordinate L)
    (h : gaugeInvariantSpace L) : inner ℝ h (projectedWord L β w) = wordMoment L β w h :=
  Submodule.inner_orthogonalProjectionOnto_eq_of_mem_left h _

def feature (β : ℝ) (m : ℕ) (i : WordIndex L m) : gaugeInvariantSpace L :=
  Real.sqrt (coefficient L β i.1.val) • projectedWord L β i.2

def finiteOperator (β : ℝ) (m : ℕ) : gaugeInvariantSpace L →L[ℝ] gaugeInvariantSpace L :=
  gramOperator (feature L β m)

def finiteMatrix (β : ℝ) (m : ℕ) : Matrix (WordIndex L m) (WordIndex L m) ℝ :=
  gramMatrix (feature L β m)

def finiteSynthesis (β : ℝ) (m : ℕ) (a : WordIndex L m → ℝ) : gaugeInvariantSpace L :=
  synthesis (feature L β m) a

/-- The matrix is made from the actual projected word vectors, not a surrogate source. -/
theorem finiteMatrix_symmetric (β : ℝ) (m : ℕ) (i j : WordIndex L m) :
    finiteMatrix L β m i j = finiteMatrix L β m j i :=
  gramMatrix_symmetric _ i j

theorem finiteOperator_matrix_transport (β : ℝ) (m : ℕ) (a : WordIndex L m → ℝ) :
    finiteOperator L β m (finiteSynthesis L β m a) =
      finiteSynthesis L β m ((finiteMatrix L β m).mulVec a) :=
  operator_synthesis _ a

theorem finiteOperator_range_le (β : ℝ) (m : ℕ) :
    LinearMap.range (finiteOperator L β m).toLinearMap ≤
      Submodule.span ℝ (Set.range (feature L β m)) := gramOperator_range_le _

theorem finiteOperator_isSymmetric (β : ℝ) (m : ℕ) :
    (finiteOperator L β m).toLinearMap.IsSymmetric := gramOperator_isSymmetric _

/-- The complete quadratic agrees with the existing definition, including normalization. -/
theorem finiteOperator_quadratic (β : ℝ) (hβ : 0 ≤ β) (m : ℕ) (h : gaugeInvariantSpace L) :
    inner ℝ h (finiteOperator L β m h) = finiteMomentEnergy L β m h := by
  rw [finiteOperator, gramOperator_quadratic]
  simp only [Fintype.sum_sigma, feature, inner_smul_right, inner_projectedWord, mul_pow]
  simp_rw [Real.sq_sqrt (coefficient_nonnegative L hβ _)]
  simp only [coefficient, mul_assoc]
  simp_rw [← Finset.mul_sum]
  rw [Fin.sum_univ_eq_sum_range]
  rfl

/-- The omitted operator is positive in the actual invariant quadratic order. -/
theorem remainder_quadratic_nonnegative (β : ℝ) (hβ : 0 < β) (m : ℕ)
    (h : gaugeInvariantSpace L) :
    0 ≤ inner ℝ h ((invariantOperator L β hβ.le - finiteOperator L β m) h) := by
  rw [ContinuousLinearMap.sub_apply, inner_sub_right, finiteOperator_quadratic L β hβ.le]
  exact sub_nonneg.mpr (finiteMomentEnergy_le L β hβ m h)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentOperator
