/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupOptimizationGap

/-!
# Source-defined integer weights for the actual pickup spin problem

The mesh is four times one plus the COMPLETE ordered pair count. Round each
nonnegative coupling down by its actual real floor, never the Mobius signs.
The resulting finite integer weighted cut has uniform objective error <= 1/4
at every horizon and EVERY spin assignment. This is a mathematical construction,
not an algorithm for deciding a real floor or a bounded-width SAT encoding.
The source assignment, both orders and all zero labels remain unchanged.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupIntegerWeights

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy

/-- Complete ordered inventory size, not a count of distinct prime witnesses. -/
def denominator (T : ℝ) : ℕ := 4 * ((sourcePairs T).card + 1)

theorem denominator_pos (T : ℝ) : 0 < denominator T := by
  unfold denominator
  omega

/-- An exact source-defined natural weight. Its computation is a separate task. -/
def integerWeight (T : ℝ) (z : ℕ × ℕ) : ℕ :=
  ⌊(denominator T : ℝ) * |signedAtom T z.1 z.2|⌋₊

def decodedWeight (T : ℝ) (z : ℕ × ℕ) : ℝ :=
  (integerWeight T z : ℝ) / (denominator T : ℝ)

/-- Actual floor inequalities give an unconditional per-edge certificate. -/
theorem decodedWeight_bounds (T : ℝ) (z : ℕ × ℕ) :
    0 ≤ |signedAtom T z.1 z.2| - decodedWeight T z ∧
      |signedAtom T z.1 z.2| - decodedWeight T z ≤ 1 / (denominator T : ℝ) := by
  have hD : (0 : ℝ) < denominator T := by exact_mod_cast denominator_pos T
  have hlo := Nat.floor_le
    (mul_nonneg hD.le (abs_nonneg (signedAtom T z.1 z.2)))
  have hhi := Nat.lt_floor_add_one
    ((denominator T : ℝ) * |signedAtom T z.1 z.2|)
  have he : decodedWeight T z * (denominator T : ℝ) = integerWeight T z := by
    unfold decodedWeight
    exact div_mul_cancel₀ _ hD.ne'
  have herror : (|signedAtom T z.1 z.2| - decodedWeight T z) *
      (denominator T : ℝ) ≤ 1 := by
    change (denominator T : ℝ) * |signedAtom T z.1 z.2| <
      (integerWeight T z : ℝ) + 1 at hhi
    nlinarith
  constructor
  · change (integerWeight T z : ℝ) ≤
      (denominator T : ℝ) * |signedAtom T z.1 z.2| at hlo
    have hle : decodedWeight T z ≤ |signedAtom T z.1 z.2| := by
      apply (mul_le_mul_right hD).mp
      rw [he]
      simpa only [mul_comm] using hlo
    linarith
  · exact (le_div_iff₀ hD).mpr herror

theorem decodedWeight_error (T : ℝ) (z : ℕ × ℕ) :
    |decodedWeight T z - |signedAtom T z.1 z.2|| ≤ 1 / (denominator T : ℝ) := by
  have h := decodedWeight_bounds T z
  rw [abs_sub_comm, abs_of_nonneg h.1]
  exact h.2

/-- Zero atoms stay zero; no survivor renormalization is introduced. -/
theorem integerWeight_zero {T : ℝ} {z : ℕ × ℕ}
    (hz : signedAtom T z.1 z.2 = 0) : integerWeight T z = 0 := by
  simp [integerWeight, hz]

def integerTotal (T : ℝ) : ℕ := ∑ z ∈ sourcePairs T, integerWeight T z

def integerCut (T : ℝ) (s : ℕ → Bool) : ℕ :=
  ∑ z ∈ sourcePairs T, if s z.1 = s z.2 then 0 else integerWeight T z

/-- An integer objective with the original ordered-pair normalization. -/
def integerEnergy (T : ℝ) (s : ℕ → Bool) : ℤ :=
  (integerTotal T : ℤ) - 2 * (integerCut T s : ℤ)

def quantizedTrial (T : ℝ) (s : ℕ → Bool) : ℝ :=
  (integerEnergy T s : ℝ) / (denominator T : ℝ)

/-- The integer weighted-cut expression is exactly the rounded spin quadratic. -/
theorem quantizedTrial_spin_sum (T : ℝ) (s : ℕ → Bool) :
    quantizedTrial T s = ∑ z ∈ sourcePairs T,
      decodedWeight T z * (spin (s z.1) * spin (s z.2)) := by
  unfold quantizedTrial integerEnergy integerTotal integerCut
  push_cast
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro z _
  cases h₁ : s z.1 <;> cases h₂ : s z.2 <;>
    simp [decodedWeight, spin, h₁, h₂] <;> ring

/-- The total rounding allowance is independent of N and physical time. -/
theorem mesh_allowance (T : ℝ) :
    ((sourcePairs T).card : ℝ) / (denominator T : ℝ) ≤ 1 / 4 := by
  have hD : (0 : ℝ) < denominator T := by exact_mod_cast denominator_pos T
  apply (div_le_iff₀ hD).mpr
  unfold denominator
  push_cast
  linarith

/-- Uniformity is over all assignments, not just one numerically tested source. -/
theorem quantizedTrial_error (T : ℝ) (s : ℕ → Bool) :
    |quantizedTrial T s - trialCross T s| ≤ 1 / 4 := by
  rw [quantizedTrial_spin_sum, trialCross_spin_sum, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ z ∈ sourcePairs T,
        |decodedWeight T z * (spin (s z.1) * spin (s z.2)) -
          |signedAtom T z.1 z.2| * (spin (s z.1) * spin (s z.2))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _z ∈ sourcePairs T, 1 / (denominator T : ℝ) := by
      apply Finset.sum_le_sum
      intro z _
      rw [← sub_mul, abs_mul]
      have hs : |spin (s z.1) * spin (s z.2)| = 1 := by
        cases s z.1 <;> cases s z.2 <;> norm_num [spin]
      rw [hs, mul_one]
      exact decodedWeight_error T z
    _ = ((sourcePairs T).card : ℝ) / (denominator T : ℝ) := by
      simp [Finset.sum_const, nsmul_eq_mul, div_eq_mul_inv]
    _ ≤ 1 / 4 := mesh_allowance T

/-- The source spin is fixed by Mobius; an optimizer is NOT substituted for it. -/
def quantizedSource (T : ℝ) : ℝ := quantizedTrial T sourceSpin

theorem quantizedSource_error {T : ℝ} (hT : 0 ≤ T) :
    |quantizedSource T - pickupCross T| ≤ 1 / 4 := by
  simpa only [quantizedSource, trial_source_eq_cross hT] using
    quantizedTrial_error T sourceSpin

/-- The original endpoint adds its independent quarter-unit approximation cost. -/
theorem quantizedSource_endpoint_error {T : ℝ} (hT : 0 ≤ T) :
    |quantizedSource T - endpointSum T| ≤ 1 / 2 := by
  have hq := quantizedSource_error hT
  have he := endpointSum_error hT
  have h := abs_sub_le (quantizedSource T) (pickupCross T) (endpointSum T)
  rw [abs_sub_comm (pickupCross T) (endpointSum T)] at h
  linarith

/-- Integer-weight approximation is equivalent at all positive rates on the same scales. -/
theorem quantizedSource_subexponential_iff {G : Set ℝ} :
    SubexponentialOn quantizedSource G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro h
    apply subexponentialOn_mono (add_global h quarter_subexponential)
    intro T _ hT
    have he := (abs_le.mp (quantizedSource_error hT)).1
    linarith
  · intro h
    apply subexponentialOn_mono (add_global h quarter_subexponential)
    intro T _ hT
    have he := (abs_le.mp (quantizedSource_error hT)).2
    linarith

theorem dyadicBirthBound_iff_quantizedSource :
    DyadicBirthBound ↔ SubexponentialOn quantizedSource dyadicScales :=
  dyadicBirthBound_iff_endpoint.trans
    (dyadicEndpointBound_iff_good_scales.trans
      (endpoint_subexponential_iff.trans quantizedSource_subexponential_iff.symm))

/-- A certified optimizer of this rounded objective is within 1/2 of the
actual optimum. This does NOT identify the Mobius assignment with that optimizer. -/
theorem integer_optimizer_gap (T : ℝ) (s : Configuration T)
    (hmin : ∀ t : Configuration T,
      quantizedTrial T (extend T s) ≤ quantizedTrial T (extend T t)) :
    trialGap T (extend T s) ≤ 1 / 2 := by
  have h := approximate_optimizer_gap T (fun t => quantizedTrial T (extend T t))
    s (1 / 4) (fun t => quantizedTrial_error T (extend T t)) hmin
  linarith

/-- A source-aware optimizer certificate retains the entire signed return. -/
theorem source_gap_of_integer_optimizer {T B : ℝ} (hT : 0 ≤ T) (s : Configuration T)
    (hmin : ∀ t : Configuration T,
      quantizedTrial T (extend T s) ≤ quantizedTrial T (extend T t))
    (hreturn : returnDefect T (extend T s) ≤ B) :
    optimalityGap T ≤ B + 1 / 2 := by
  rw [gap_return_exact hT (extend T s)]
  linarith [integer_optimizer_gap T s hmin]

end GRWTSK.NumberTheory.Moebius.PickupIntegerWeights
