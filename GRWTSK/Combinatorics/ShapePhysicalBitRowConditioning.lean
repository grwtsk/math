/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitPairSampling
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact row conditioning optimizes original signed Möbius pair sampling

This source reuses the EXACT endpointIndex T, originalSignedPair and
PositiveWindowLaw from ShapePhysicalBitPairSampling. In place of two
sampled integer indices, condition on the first index and sum the
second index exactly before taking the stochastic second moment.

For a positive law w, original signed kernel K_T, and product pair
estimator Z(m,n) = K_T(m,n)/(w(m)*w(n)), its conditional estimator is

    R(m)/w(m),   R(m) = sum_n K_T(m,n),

with the same expectation pickupCross T. The exact law-of-total-
variance decomposition is

 Var_(w x w)(Z) = Var_w(R/w)
                + sum_m w(m) sum_n w(n)
                    (Z(m,n) - R(m)/w(m))^2.

The added term is nonnegative, so the conditioned estimator is NEVER
higher-variance than the original pair estimator. Crucially the
ordered off-diagonal original signs, response Gram, integer labels and
signed physical readout defect are unchanged.

This is an exact finite variance reduction, not an asserted
all-positive-rate upper estimate for the original arithmetic source.
-/

namespace Folder.Research.ShapePhysicalBitRowConditioning

open Carrier
open Folder.Research.ShapePhysicalBitPairSampling
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The expectation of a single original-index observation. -/
def singleExpectation (T : ℝ) (w : ℕ → ℝ)
    (g : ℕ → ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, w m * g m

/-- Conditional expectation over the second original integer index.
The function f may be SIGNED and is never replaced by its magnitude. -/
def rowExpectation (T : ℝ) (w : ℕ → ℝ)
    (f : ℕ → ℕ → ℝ) (m : ℕ) : ℝ :=
  ∑ n ∈ endpointIndex T, w n * f m n

/-- Fubini for this literal finite ordered pair law. -/
theorem windowPairExpectation_eq_single_row (T : ℝ)
    (w : ℕ → ℝ) (f : ℕ → ℕ → ℝ) :
    windowPairExpectation T w f =
      singleExpectation T w (rowExpectation T w f) := by
  unfold windowPairExpectation singleExpectation rowExpectation
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- Conditional rows still use the SAME normalized finite law. -/
theorem rowExpectation_one (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) (m : ℕ) :
    rowExpectation T w (fun _ _ => 1) m = 1 := by
  simpa [rowExpectation] using law.total_one

/-- The precise nonnegative conditional variance of the second draw. -/
def rowSpread (T : ℝ) (w : ℕ → ℝ)
    (f : ℕ → ℕ → ℝ) (m : ℕ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    w n * (f m n - rowExpectation T w f m) ^ 2

/-- Total conditional-variance payment across the first-index law. -/
def residualSpread (T : ℝ) (w : ℕ → ℝ)
    (f : ℕ → ℕ → ℝ) : ℝ :=
  singleExpectation T w (rowSpread T w f)

/-- Rao-Blackwellized variance: ONE sampled original index, with its
complete signed second-index sum retained. -/
def conditionedVariance (T : ℝ) (w : ℕ → ℝ)
    (f : ℕ → ℕ → ℝ) : ℝ :=
  singleExpectation T w
    (fun m => (rowExpectation T w f m -
      windowPairExpectation T w f) ^ 2)

theorem rowSpread_nonneg (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) (m : ℕ) :
    0 ≤ rowSpread T w f m := by
  unfold rowSpread
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg (law.positive n hn).le (sq_nonneg _)

/-- The entire discarded conditional variance is nonnegative. -/
theorem residualSpread_nonneg (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    0 ≤ residualSpread T w f := by
  unfold residualSpread singleExpectation
  apply Finset.sum_nonneg
  intro m hm
  exact mul_nonneg (law.positive m hm).le (rowSpread_nonneg T w law f m)

theorem conditionedVariance_nonneg (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    0 ≤ conditionedVariance T w f := by
  unfold conditionedVariance singleExpectation
  apply Finset.sum_nonneg
  intro m hm
  exact mul_nonneg (law.positive m hm).le (sq_nonneg _)

/-- The weighted row is exactly centered at its OWN conditional mean. -/
private theorem row_centered_sum_zero (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) (f : ℕ → ℕ → ℝ) (m : ℕ) :
    (∑ n ∈ endpointIndex T,
      w n * (f m n - rowExpectation T w f m)) = 0 := by
  let a := rowExpectation T w f m
  change (∑ n ∈ endpointIndex T, w n * (f m n - a)) = 0
  calc
    _ = (∑ n ∈ endpointIndex T, w n * f m n) -
        (∑ n ∈ endpointIndex T, w n) * a := by
          rw [Finset.sum_mul, ← Finset.sum_sub_distrib]
          apply Finset.sum_congr rfl
          intro n hn
          ring
    _ = 0 := by
          rw [law.total_one]
          change a - 1 * a = 0
          ring

/-- Exact pointwise law of total variance for ONE fixed first index.
Every square remains physical; there is no independence of source signs. -/
private theorem row_square_split (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) (f : ℕ → ℕ → ℝ)
    (m : ℕ) (μ : ℝ) :
    (∑ n ∈ endpointIndex T, w n * (f m n - μ) ^ 2) =
      rowSpread T w f m + (rowExpectation T w f m - μ) ^ 2 := by
  let a := rowExpectation T w f m
  have hz : (∑ n ∈ endpointIndex T, w n * (f m n - a)) = 0 :=
    row_centered_sum_zero T w law f m
  have hconst :
      (∑ n ∈ endpointIndex T, w n * (a - μ) ^ 2) = (a - μ) ^ 2 := by
    calc
      _ = (∑ n ∈ endpointIndex T, w n) * (a - μ) ^ 2 := by
        rw [Finset.sum_mul]
      _ = _ := by rw [law.total_one]; ring
  change (∑ n ∈ endpointIndex T, w n * (f m n - μ) ^ 2) =
    (∑ n ∈ endpointIndex T, w n * (f m n - a) ^ 2) + (a - μ) ^ 2
  calc
    _ = ∑ n ∈ endpointIndex T,
          (w n * (f m n - a) ^ 2 +
           w n * (a - μ) ^ 2 +
           2 * (a - μ) * (w n * (f m n - a))) := by
          apply Finset.sum_congr rfl
          intro n hn
          ring
    _ = (∑ n ∈ endpointIndex T, w n * (f m n - a) ^ 2) +
        (∑ n ∈ endpointIndex T, w n * (a - μ) ^ 2) +
        2 * (a - μ) * (∑ n ∈ endpointIndex T,
          w n * (f m n - a)) := by
          simp only [Finset.sum_add_distrib, Finset.mul_sum]
    _ = _ := by rw [hconst, hz]; ring

/-- Exact FINITE law of total variance. The right-hand side retains
the entire nonnegative conditional spread rather than discarding it. -/
theorem windowPairVariance_eq_conditioned_add_spread
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    windowPairVariance T w f =
      conditionedVariance T w f + residualSpread T w f := by
  let μ := windowPairExpectation T w f
  change (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    w m * w n * (f m n - μ) ^ 2) =
    conditionedVariance T w f + residualSpread T w f
  calc
    _ = ∑ m ∈ endpointIndex T,
          w m * (∑ n ∈ endpointIndex T,
            w n * (f m n - μ) ^ 2) := by
            apply Finset.sum_congr rfl
            intro m hm
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro n hn
            ring
    _ = ∑ m ∈ endpointIndex T,
          w m * (rowSpread T w f m +
            (rowExpectation T w f m - μ) ^ 2) := by
            apply Finset.sum_congr rfl
            intro m hm
            rw [row_square_split T w law f m μ]
    _ = conditionedVariance T w f + residualSpread T w f := by
          simp only [mul_add, Finset.sum_add_distrib]
          change
            (∑ m ∈ endpointIndex T,
              w m * rowSpread T w f m) +
              (∑ m ∈ endpointIndex T,
                w m * (rowExpectation T w f m - μ) ^ 2) =
              conditionedVariance T w f + residualSpread T w f
          change
            residualSpread T w f + conditionedVariance T w f =
              conditionedVariance T w f + residualSpread T w f
          exact add_comm _ _

/-- The conditioned source estimator NEVER has larger finite variance. -/
theorem conditionedVariance_le_windowPairVariance
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    conditionedVariance T w f ≤ windowPairVariance T w f := by
  rw [windowPairVariance_eq_conditioned_add_spread T w law f]
  exact le_add_of_nonneg_right (residualSpread_nonneg T w law f)

/-- ORIGINAL signed row, with all second-index orientations and only
the original m=n exclusion. There is no absolute-value replacement. -/
def originalRowSum (T : ℝ) (m : ℕ) : ℝ :=
  ∑ n ∈ endpointIndex T, originalSignedPair T m n

/-- Conditional importance readout from ONE sampled original integer.
Its potentially large 1/w(m) cost is kept explicit. -/
def originalRowImportance (T : ℝ) (w : ℕ → ℝ) (m : ℕ) : ℝ :=
  originalRowSum T m / w m

/-- Actual original pair importance estimator, also from the parent. -/
def originalPairImportance (T : ℝ) (w : ℕ → ℝ) (m n : ℕ) : ℝ :=
  originalSignedPair T m n / (w m * w n)

/-- The original conditional mean is literally the full signed row
divided by its probability, provided the original index is in support. -/
theorem rowExpectation_originalPairImportance (T : ℝ)
    (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    rowExpectation T w (originalPairImportance T w) m =
      originalRowImportance T w m := by
  unfold rowExpectation originalPairImportance originalRowImportance originalRowSum
  calc
    _ = ∑ n ∈ endpointIndex T, originalSignedPair T m n / w m := by
          apply Finset.sum_congr rfl
          intro n hn
          have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
          have hwn : w n ≠ 0 := ne_of_gt (law.positive n hn)
          field_simp [hwm, hwn]
    _ = _ := by rw [Finset.sum_div]

/-- The Rao-Blackwellized estimator is exactly unbiased for the
complete ordered signed original Möbius source, not a new source. -/
theorem singleExpectation_originalRowImportance_eq_pickupCross
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    singleExpectation T w (originalRowImportance T w) =
      pickupCross T := by
  unfold singleExpectation originalRowImportance
  calc
    (∑ m ∈ endpointIndex T, w m * (originalRowSum T m / w m)) =
        ∑ m ∈ endpointIndex T, originalRowSum T m := by
          apply Finset.sum_congr rfl
          intro m hm
          have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
          field_simp [hwm]
    _ = pickupCross T := rfl

/-- The original physical stream's entire signed difference is
reconstructed already in EACH original row, before any sampling. -/
theorem originalRowSum_eq_observed_add_defect
    (T : ℝ) (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (m : ℕ) :
    originalRowSum T m =
      (∑ n ∈ endpointIndex T, observedSignedPair p chart T stream m n) +
      (∑ n ∈ endpointIndex T, defectSignedPair p chart T stream m n) := by
  unfold originalRowSum
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  exact originalSignedPair_eq_observed_add_defect p chart T stream m n

/-- The conditioned estimator has the standard exact second-moment
identity, with NO deletion of source-sign covariance. -/
theorem conditionedVariance_eq_secondMoment_sub_sq
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    conditionedVariance T w f =
      singleExpectation T w
        (fun m => (rowExpectation T w f m) ^ 2) -
      (windowPairExpectation T w f) ^ 2 := by
  let μ := windowPairExpectation T w f
  have hmean : (∑ m ∈ endpointIndex T, w m * rowExpectation T w f m) = μ :=
    (windowPairExpectation_eq_single_row T w f).symm
  unfold conditionedVariance singleExpectation
  calc
    (∑ m ∈ endpointIndex T,
      w m * (rowExpectation T w f m - μ) ^ 2) =
        ∑ m ∈ endpointIndex T,
          (w m * (rowExpectation T w f m) ^ 2 -
            (2 * μ) * (w m * rowExpectation T w f m) +
            μ ^ 2 * w m) := by
          apply Finset.sum_congr rfl
          intro m hm
          ring
    _ = (∑ m ∈ endpointIndex T,
          w m * (rowExpectation T w f m) ^ 2) -
          (2 * μ) * (∑ m ∈ endpointIndex T,
            w m * rowExpectation T w f m) +
          μ ^ 2 * (∑ m ∈ endpointIndex T, w m) := by
          simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
            Finset.mul_sum]
    _ = (∑ m ∈ endpointIndex T,
          w m * (rowExpectation T w f m) ^ 2) - μ ^ 2 := by
          rw [hmean, law.total_one]
          ring
    _ = _ := rfl

/-- A source-exact finite row-second-moment certificate that retains
the inverse-weight price. No subexponential bound is inferred. -/
def originalRowSecondMoment (T : ℝ) (w : ℕ → ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, (originalRowSum T m) ^ 2 / w m

theorem conditionedOriginalVariance_eq_rowSecondMoment_sub_sq
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    conditionedVariance T w (originalPairImportance T w) =
      originalRowSecondMoment T w - (pickupCross T) ^ 2 := by
  rw [conditionedVariance_eq_secondMoment_sub_sq T w law,
    importance_originalSignedPair_eq_pickupCross T w law]
  unfold originalRowSecondMoment singleExpectation
  congr 1
  apply Finset.sum_congr rfl
  intro m hm
  rw [rowExpectation_originalPairImportance T w law m hm]
  unfold originalRowImportance
  have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
  field_simp [hwm]

/-- The source's original signed total is controlled by a precise,
finite ROW-moment certificate. This is not an automatic growth estimate. -/
theorem pickupCross_sq_le_originalRowSecondMoment
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    (pickupCross T) ^ 2 ≤ originalRowSecondMoment T w := by
  have hv := conditionedVariance_nonneg T w law (originalPairImportance T w)
  rw [conditionedOriginalVariance_eq_rowSecondMoment_sub_sq T w law] at hv
  linarith

/-- Exact optimized accounting: the original pair variance equals
the conditioned row variance PLUS its nonnegative residual spread. -/
theorem originalPairVariance_eq_rowVariance_add_spread
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    originalSignedPairVariance T w =
      originalRowSecondMoment T w - (pickupCross T) ^ 2 +
        residualSpread T w (originalPairImportance T w) := by
  unfold originalSignedPairVariance
  rw [windowPairVariance_eq_conditioned_add_spread T w law,
    conditionedOriginalVariance_eq_rowSecondMoment_sub_sq T w law]

/-- The mathematical optimization consumes only original-index rows;
it leaves the physical packet and EVERY signed defect unchanged. -/
theorem optimizedVariance_with_signed_return
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (p : Parameters) (chart : ℝ) (stream : PhysicalStream) :
    (conditionedVariance T w (originalPairImportance T w) ≤
        originalSignedPairVariance T w) ∧
    (singleExpectation T w (originalRowImportance T w) = pickupCross T) ∧
    (pickupCross T = observedPacket p chart T stream +
      signedReadoutDefect p chart T stream) := by
  exact ⟨conditionedVariance_le_windowPairVariance T w law _,
    singleExpectation_originalRowImportance_eq_pickupCross T w law,
    pickupCross_eq_observed_add_defect p chart T stream⟩

end Folder.Research.ShapePhysicalBitRowConditioning
