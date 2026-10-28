/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral

/-!
# Two endpoint observations with an explicit signed curvature correction

The chord is taken in x=exp(-u/2), not in physical time u. Its integral has
nonnegative endpoint weights whose sum is physical elapsed time. The missing
quadratic information is retained as c times a nonnegative curvature mass.
There is no positivity assumption on the source polynomial and no claim that
two samples recover its three coefficients.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord

open MeasureTheory Set
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral

def node (u : ℝ) : ℝ := Real.exp (-u / 2)

/-- The physical-time integral of the chord of the source quadratic. -/
def chordValue (a b c lo hi : ℝ) : ℝ :=
  value (a - c * node lo * node hi) (b + c * (node lo + node hi)) 0 lo hi

/-- The exact omitted curvature, including its physical-time measure. -/
def curvatureMass (lo hi : ℝ) : ℝ :=
  (node lo + node hi) * weight1 lo hi -
    node lo * node hi * weight0 lo hi - weight2 lo hi

theorem chord_minus_value (a b c lo hi : ℝ) :
    chordValue a b c lo hi - value a b c lo hi = c * curvatureMass lo hi := by
  unfold chordValue curvatureMass value
  ring

/-- The correction has a fixed sign only after the source coefficient c is considered. -/
theorem curvatureMass_bounds {lo hi : ℝ} (hab : lo ≤ hi) :
    0 ≤ curvatureMass lo hi ∧
      curvatureMass lo hi ≤ (hi - lo) * (node lo - node hi) ^ 2 / 4 := by
  let f := density (-node lo * node hi) (node lo + node hi) (-1)
  have hf : Continuous f := density_continuous _ _ _
  have hp (u : ℝ) (hu : u ∈ Icc lo hi) :
      0 ≤ f u ∧ f u ≤ (node lo - node hi) ^ 2 / 4 := by
    have hleft : node hi ≤ node u := Real.exp_le_exp.mpr (by linarith [hu.2])
    have hright : node u ≤ node lo := Real.exp_le_exp.mpr (by linarith [hu.1])
    have hmul := mul_nonneg (sub_nonneg.mpr hright) (sub_nonneg.mpr hleft)
    have hsq := sq_nonneg (2 * node u - node lo - node hi)
    change 0 ≤ -node lo * node hi + (node lo + node hi) * node u + (-1) * node u ^ 2 ∧
      -node lo * node hi + (node lo + node hi) * node u + (-1) * node u ^ 2 ≤ _
    constructor <;> nlinarith
  have hval : (∫ u in lo..hi, f u) = curvatureMass lo hi := by
    rw [show f = density (-node lo * node hi) (node lo + node hi) (-1) from rfl,
      integral_density]
    unfold value curvatureMass
    ring
  constructor
  · have h := intervalIntegral.integral_mono_on hab
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (0 : ℝ)) volume lo hi)
      (hf.intervalIntegrable lo hi) (fun u hu => (hp u hu).1)
    simpa only [intervalIntegral.integral_zero, hval] using h
  · have h := intervalIntegral.integral_mono_on hab (hf.intervalIntegrable lo hi)
      (intervalIntegrable_const : IntervalIntegrable
        (fun _ : ℝ => (node lo - node hi) ^ 2 / 4) volume lo hi)
      (fun u hu => (hp u hu).2)
    rw [hval, intervalIntegral.integral_const, smul_eq_mul] at h
    nlinarith

theorem chord_error {lo hi : ℝ} (hab : lo ≤ hi) (a b c : ℝ) :
    |chordValue a b c lo hi - value a b c lo hi| ≤
      (hi - lo) * (|c| * (node lo - node hi) ^ 2 / 4) := by
  obtain ⟨hk, hK⟩ := curvatureMass_bounds hab
  rw [chord_minus_value, abs_mul, abs_of_nonneg hk]
  have h := mul_le_mul_of_nonneg_left hK (abs_nonneg c)
  nlinarith

/-- The weight of the earlier PHYSICAL endpoint, whose x-coordinate is larger. -/
def leftWeight (lo hi : ℝ) : ℝ :=
  (weight1 lo hi - node hi * weight0 lo hi) / (node lo - node hi)

def rightWeight (lo hi : ℝ) : ℝ := weight0 lo hi - leftWeight lo hi

def endpointReadout (lo hi ylo yhi : ℝ) : ℝ :=
  leftWeight lo hi * ylo + rightWeight lo hi * yhi

theorem endpoint_weights_sum (lo hi : ℝ) :
    leftWeight lo hi + rightWeight lo hi = hi - lo := by
  unfold rightWeight weight0
  ring

/-- Positivity is a property of the integration weights, not of the arithmetic source. -/
theorem endpoint_weights_nonnegative {lo hi : ℝ} (hab : lo ≤ hi) :
    0 ≤ leftWeight lo hi ∧ 0 ≤ rightWeight lo hi := by
  by_cases he : lo = hi
  · subst hi
    simp [leftWeight, rightWeight, weight0, weight1, node]
  have hlt : lo < hi := by linarith
  have hd : 0 < node lo - node hi :=
    sub_pos.mpr (Real.exp_lt_exp.mpr (by linarith))
  have hl := intervalIntegral.integral_mono_on hab
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => node hi) volume lo hi)
    ((density_continuous 0 1 0).intervalIntegrable lo hi)
    (fun u hu => show node hi ≤ density 0 1 0 u from by
      simp only [density, zero_add, one_mul, zero_mul, add_zero]
      exact Real.exp_le_exp.mpr (by linarith [hu.2]))
  have hr := intervalIntegral.integral_mono_on hab
    ((density_continuous 0 1 0).intervalIntegrable lo hi)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => node lo) volume lo hi)
    (fun u hu => show density 0 1 0 u ≤ node lo from by
      simp only [density, zero_add, one_mul, zero_mul, add_zero]
      exact Real.exp_le_exp.mpr (by linarith [hu.1]))
  have hlo : node hi * weight0 lo hi ≤ weight1 lo hi := by
    simpa [integral_density, value, intervalIntegral.integral_const, weight0, mul_comm] using hl
  have hhi : weight1 lo hi ≤ node lo * weight0 lo hi := by
    simpa [integral_density, value, intervalIntegral.integral_const, weight0, mul_comm] using hr
  constructor
  · exact div_nonneg (sub_nonneg.mpr hlo) hd.le
  · unfold rightWeight leftWeight
    apply sub_nonneg.mpr
    apply (div_le_iff₀ hd).mpr
    nlinarith

/-- The actual source chord depends on only two source samples, including a zero-width cell. -/
theorem chordValue_eq_endpoints {lo hi : ℝ} (hab : lo ≤ hi) (a b c : ℝ) :
    chordValue a b c lo hi = endpointReadout lo hi
      (a + b * node lo + c * node lo ^ 2)
      (a + b * node hi + c * node hi ^ 2) := by
  by_cases he : lo = hi
  · subst hi
    simp [chordValue, endpointReadout, leftWeight, rightWeight, weight0, weight1, node]
  have hlt : lo < hi := by linarith
  have hd : node lo - node hi ≠ 0 := ne_of_gt
    (sub_pos.mpr (Real.exp_lt_exp.mpr (by linarith)))
  unfold chordValue endpointReadout rightWeight leftWeight value
  field_simp [hd]
  <;> ring

/-- No inverse-node-separation amplification appears in this scalar error bound. -/
theorem endpoint_sample_error {lo hi : ℝ} (hab : lo ≤ hi)
    (ylo yhi vlo vhi elo ehi : ℝ)
    (hl : |ylo - vlo| ≤ elo) (hh : |yhi - vhi| ≤ ehi) :
    |endpointReadout lo hi ylo yhi - endpointReadout lo hi vlo vhi| ≤
      leftWeight lo hi * elo + rightWeight lo hi * ehi := by
  obtain ⟨hL, hR⟩ := endpoint_weights_nonnegative hab
  have he : endpointReadout lo hi ylo yhi - endpointReadout lo hi vlo vhi =
      leftWeight lo hi * (ylo - vlo) + rightWeight lo hi * (yhi - vhi) := by
    unfold endpointReadout
    ring
  rw [he]
  calc
    _ ≤ |leftWeight lo hi * (ylo - vlo)| + |rightWeight lo hi * (yhi - vhi)| := abs_add _ _
    _ = leftWeight lo hi * |ylo - vlo| + rightWeight lo hi * |yhi - vhi| := by
      rw [abs_mul, abs_mul, abs_of_nonneg hL, abs_of_nonneg hR]
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left hl hL) (mul_le_mul_of_nonneg_left hh hR)

theorem endpoint_uniform_error {lo hi : ℝ} (hab : lo ≤ hi)
    (ylo yhi vlo vhi ε : ℝ)
    (hl : |ylo - vlo| ≤ ε) (hh : |yhi - vhi| ≤ ε) :
    |endpointReadout lo hi ylo yhi - endpointReadout lo hi vlo vhi| ≤ (hi - lo) * ε := by
  have h := endpoint_sample_error hab ylo yhi vlo vhi ε ε hl hh
  rw [← add_mul, endpoint_weights_sum] at h
  exact h

/-- The signed curvature is preserved; the chord does not assume a concave or convex source. -/
theorem exact_endpoint_with_curvature {lo hi : ℝ} (hab : lo ≤ hi) (a b c : ℝ) :
    value a b c lo hi = endpointReadout lo hi
      (a + b * node lo + c * node lo ^ 2)
      (a + b * node hi + c * node hi ^ 2) - c * curvatureMass lo hi := by
  have h := chord_minus_value a b c lo hi
  rw [chordValue_eq_endpoints hab] at h
  linarith

end GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord
