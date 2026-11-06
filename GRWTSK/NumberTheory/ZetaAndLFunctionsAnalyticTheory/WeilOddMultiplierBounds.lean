import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPeriodicBoundary
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Bounds for the odd periodic Weil multiplier

Local attribution is to grwtsk contributors.

The rates are those of the actual parity-dependent gamma kernel in
`WeilGammaData`. The periodic multiplier uses the scalar summand from
`WeilPeriodicBoundary` with the factor of two from periodic translation.
The base-parity formulas are those in Sections 2, 4, and 5 of
`documentation/mathematics/_support/reviews/weil-periodic-boundary.md`.

Each summand is nonnegative and bounded by a constant times `(j+1)^(-3)`.
The rational difference identity gives monotonicity in absolute frequency.
Increasing parity increases the rates and decreases the summands. The
integral test places the decreasing sum between the half-line integral and
that integral plus its first term. The logarithmic primitive gives the
exact integral. At zero frequency all terms vanish. At parity zero the
lower bound supplies the `log(2*w)` estimate used for high sine indices.

The half-line complex exponential integral evaluates each real
cosine-difference term. Nonnegativity identifies the norm integral with the
same summand. Summability then gives the exact return to the integral of the
literal parity kernel, with the same geometric expansion and normalization.

These are scalar estimates. The full operator floor also depends on the
comparison domain and the boundary and arithmetic operator estimates.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierBounds

open OddRootProjection PeriodicBoundary

/-- The exponential rate supplied by the parity-dependent gamma kernel. -/
def multiplierRate (a : ℕ) (x : ℝ) : ℝ := 2 * x + (a : ℝ) + 1 / 2

private theorem multiplierRate_pos (a : ℕ) {x : ℝ} (hx : 0 ≤ x) :
    0 < multiplierRate a x := by
  unfold multiplierRate
  positivity

/-- The positive summand with the periodic translation factor of two included. -/
def periodicMultiplierTerm (a : ℕ) (w x : ℝ) : ℝ :=
  2 * multiplierSummand (multiplierRate a x) w

/-- The diagonal periodic multiplier for the actual parity kernel. -/
def periodicMultiplier (a : ℕ) (w : ℝ) : ℝ :=
  ∑' j : ℕ, periodicMultiplierTerm a w j

theorem periodicMultiplierTerm_nonneg (a : ℕ) (w : ℝ) {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ periodicMultiplierTerm a w x :=
  mul_nonneg (by norm_num) (multiplierSummand_nonneg (multiplierRate_pos a hx))

theorem periodicMultiplier_summable (a : ℕ) (w : ℝ) :
    Summable (fun j : ℕ ↦ periodicMultiplierTerm a w j) := by
  have hp := (Real.summable_one_div_nat_pow (p := 3)).2 (by decide)
  have hs := (summable_nat_add_iff (f := fun j : ℕ ↦ 1 / (j : ℝ) ^ 3) 1).2 hp
  refine Summable.of_nonneg_of_le
    (fun j ↦ periodicMultiplierTerm_nonneg a w (Nat.cast_nonneg j)) (fun j ↦ ?_)
    (hs.mul_left (16 * w ^ 2))
  have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg _
  have hrate := multiplierRate_pos a hj
  have hsmall : ((j : ℝ) + 1) / 2 ≤ multiplierRate a j := by
    unfold multiplierRate
    linarith [Nat.cast_nonneg (α := ℝ) a]
  have hden : (((j : ℝ) + 1) / 2) ^ 3 ≤ multiplierRate a j * (multiplierRate a j ^ 2 + w ^ 2) :=
    calc
      _ ≤ multiplierRate a j ^ 3 := pow_le_pow_left₀ (by positivity) hsmall 3
      _ = multiplierRate a j * multiplierRate a j ^ 2 := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left (le_add_of_nonneg_right (sq_nonneg w)) hrate.le
  unfold periodicMultiplierTerm multiplierSummand
  calc
    _ ≤ 2 * (w ^ 2 / (((j : ℝ) + 1) / 2) ^ 3) :=
      mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_left (sq_nonneg w) (by positivity) hden)
        (by norm_num)
    _ = _ := by push_cast; field_simp; ring

theorem periodicMultiplier_nonneg (a : ℕ) (w : ℝ) : 0 ≤ periodicMultiplier a w :=
  tsum_nonneg (fun j ↦ periodicMultiplierTerm_nonneg a w (Nat.cast_nonneg j))

@[simp] theorem periodicMultiplier_zero (a : ℕ) : periodicMultiplier a 0 = 0 := by
  simp [periodicMultiplier, periodicMultiplierTerm, multiplierSummand]

@[simp] theorem periodicMultiplier_neg (a : ℕ) (w : ℝ) :
    periodicMultiplier a (-w) = periodicMultiplier a w := by
  simp [periodicMultiplier, periodicMultiplierTerm, multiplierSummand]

/-- Ordering by absolute frequency orders the diagonal multipliers. -/
theorem periodicMultiplier_abs_mono (a : ℕ) {v w : ℝ} (h : |v| ≤ |w|) :
    periodicMultiplier a v ≤ periodicMultiplier a w := by
  unfold periodicMultiplier
  refine (periodicMultiplier_summable a v).tsum_le_tsum (fun j ↦ ?_)
    (periodicMultiplier_summable a w)
  let t := multiplierRate a (j : ℝ)
  have ht : 0 < t := multiplierRate_pos a (Nat.cast_nonneg j)
  have hdv : t ^ 2 + v ^ 2 ≠ 0 := by positivity
  have hdw : t ^ 2 + w ^ 2 ≠ 0 := by positivity
  have hsq := sq_le_sq.mpr h
  have hf : t / (t ^ 2 + w ^ 2) ≤ t / (t ^ 2 + v ^ 2) :=
    div_le_div_of_nonneg_left ht.le (by positivity) (by linarith)
  change 2 * multiplierSummand t v ≤ 2 * multiplierSummand t w
  rw [multiplierSummand_eq t v ht.ne' hdv, multiplierSummand_eq t w ht.ne' hdw]
  linarith

private theorem multiplierSummand_antitone {x y w : ℝ} (hx : 0 < x) (hxy : x ≤ y) :
    multiplierSummand y w ≤ multiplierSummand x w := by
  have hy := hx.trans_le hxy
  unfold multiplierSummand
  apply div_le_div_of_nonneg_left (sq_nonneg w) (by positivity)
  have hs := pow_le_pow_left₀ hx.le hxy 2
  exact mul_le_mul hxy (by linarith) (by positivity) hy.le

theorem periodicMultiplier_antitone_parity (w : ℝ) :
    Antitone (fun a : ℕ ↦ periodicMultiplier a w) := by
  intro a b hab
  unfold periodicMultiplier
  refine (periodicMultiplier_summable b w).tsum_le_tsum (fun j ↦ ?_)
    (periodicMultiplier_summable a w)
  unfold periodicMultiplierTerm
  apply mul_le_mul_of_nonneg_left (multiplierSummand_antitone
    (multiplierRate_pos a (Nat.cast_nonneg j)) ?_) (by norm_num)
  unfold multiplierRate
  linarith [show (a : ℝ) ≤ b by exact_mod_cast hab]

/-- The summand decreases as its continuous rate index increases. -/
theorem periodicMultiplierTerm_antitone (a : ℕ) (w : ℝ) :
    AntitoneOn (periodicMultiplierTerm a w) (Ici 0) := by
  intro x hx y _ hxy
  unfold periodicMultiplierTerm
  apply mul_le_mul_of_nonneg_left (multiplierSummand_antitone (multiplierRate_pos a hx) ?_)
    (by norm_num)
  unfold multiplierRate
  linarith

private theorem periodicMultiplierTerm_integrable (a : ℕ) (w : ℝ) :
    IntegrableOn (periodicMultiplierTerm a w) (Ioi 0) :=
  (periodicMultiplierTerm_antitone a w).integrableOn_Ioi_zero_of_summable
    (periodicMultiplier_summable a w) (fun _ hx ↦ periodicMultiplierTerm_nonneg a w hx.le)

private def multiplierPrimitive (a : ℕ) (w x : ℝ) : ℝ :=
  -(1 / 2 : ℝ) * Real.log (1 + (w / multiplierRate a x) ^ 2)

private theorem hasDerivAt_multiplierPrimitive (a : ℕ) (w : ℝ) {x : ℝ} (hx : 0 ≤ x) :
    HasDerivAt (multiplierPrimitive a w) (periodicMultiplierTerm a w x) x := by
  have hrate := multiplierRate_pos a hx
  have hlin : HasDerivAt (multiplierRate a) 2 x := by
    convert (((hasDerivAt_id x).const_mul (2 : ℝ)).add_const (a : ℝ)).add_const (1 / 2) using 1
    · funext y
      rfl
    · norm_num
  have hdiv := (hasDerivAt_const x w).div hlin hrate.ne'
  have harg := (hdiv.pow 2).const_add 1
  have hpos : 1 + (w / multiplierRate a x) ^ 2 ≠ 0 := by positivity
  have h := ((Real.hasDerivAt_log hpos).comp x harg).const_mul (-(1 / 2 : ℝ))
  have hsum : multiplierRate a x ^ 2 + w ^ 2 ≠ 0 := by positivity
  convert h using 1
  · funext y
    rfl
  · unfold periodicMultiplierTerm multiplierSummand
    simp only [Pi.div_apply, Nat.reduceSub, pow_one, zero_mul, zero_sub,
      Nat.cast_ofNat]
    field_simp [hrate.ne', hpos, hsum]

private theorem multiplierPrimitive_tendsto (a : ℕ) (w : ℝ) :
    Tendsto (multiplierPrimitive a w) atTop (𝓝 0) := by
  have hlin : Tendsto (multiplierRate a) atTop atTop := by
    unfold multiplierRate
    exact tendsto_atTop_add_const_right _ _ (tendsto_atTop_add_const_right _ _
      (tendsto_id.const_mul_atTop (by norm_num)))
  have hdiv : Tendsto (fun x ↦ w / multiplierRate a x) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop hlin
  have harg : Tendsto (fun x ↦ 1 + (w / multiplierRate a x) ^ 2) atTop (𝓝 1) := by
    simpa using (hdiv.pow 2).const_add 1
  have hlog : Tendsto (fun x ↦ Real.log (1 + (w / multiplierRate a x) ^ 2)) atTop (𝓝 0) := by
    simpa only [Function.comp_def, Real.log_one] using (Real.continuousAt_log one_ne_zero).tendsto.comp harg
  unfold multiplierPrimitive
  simpa only [mul_zero] using hlog.const_mul (-(1 / 2 : ℝ))

/-- The half-line integral gives the logarithmic part of the multiplier bracket. -/
theorem integral_periodicMultiplierTerm (a : ℕ) (w : ℝ) :
    ∫ x in Ioi 0, periodicMultiplierTerm a w x =
      (1 / 2 : ℝ) * Real.log (1 + w ^ 2 / ((a : ℝ) + 1 / 2) ^ 2) := by
  rw [integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun x hx ↦ hasDerivAt_multiplierPrimitive a w (show 0 ≤ x from hx))
    (periodicMultiplierTerm_integrable a w) (multiplierPrimitive_tendsto a w)]
  simp [multiplierPrimitive, multiplierRate, div_pow]

/-- The exact logarithmic lower bound from the decreasing integral comparison. -/
theorem log_lower_le_periodicMultiplier (a : ℕ) (w : ℝ) :
    (1 / 2 : ℝ) * Real.log (1 + w ^ 2 / ((a : ℝ) + 1 / 2) ^ 2) ≤ periodicMultiplier a w := by
  rw [← integral_periodicMultiplierTerm]
  exact (periodicMultiplierTerm_antitone a w).integral_le_tsum
    (periodicMultiplier_summable a w) (fun _ hx ↦ periodicMultiplierTerm_nonneg a w hx.le)

theorem periodicMultiplier_le_log_upper (a : ℕ) (w : ℝ) :
    periodicMultiplier a w ≤ 2 / ((a : ℝ) + 1 / 2) +
      (1 / 2 : ℝ) * Real.log (1 + w ^ 2 / ((a : ℝ) + 1 / 2) ^ 2) := by
  have h := (periodicMultiplierTerm_antitone a w).tsum_le_integral
    (periodicMultiplierTerm_integrable a w) (fun _ hx ↦ periodicMultiplierTerm_nonneg a w hx.le)
  rw [integral_periodicMultiplierTerm] at h
  have hrate := multiplierRate_pos a (le_refl (0 : ℝ))
  have hfirst : periodicMultiplierTerm a w 0 ≤ 2 / ((a : ℝ) + 1 / 2) := by
    have hsum : multiplierRate a 0 ^ 2 + w ^ 2 ≠ 0 := by positivity
    unfold periodicMultiplierTerm
    rw [multiplierSummand_eq _ _ hrate.ne' hsum]
    have hq : 0 ≤ multiplierRate a 0 / (multiplierRate a 0 ^ 2 + w ^ 2) := by positivity
    have h0 : multiplierRate a 0 = (a : ℝ) + 1 / 2 := by simp [multiplierRate]
    rw [← h0]
    calc
      _ ≤ 2 * (1 / multiplierRate a 0) :=
        mul_le_mul_of_nonneg_left (sub_le_self _ hq) (by norm_num)
      _ = _ := by ring
  exact h.trans (add_le_add hfirst le_rfl)

theorem log_two_mul_le_periodicMultiplier_zero {w : ℝ} (hw : 0 < w) :
    Real.log (2 * w) ≤ periodicMultiplier 0 w := by
  have h := log_lower_le_periodicMultiplier 0 w
  have hle : (2 * w) ^ 2 ≤ 1 + w ^ 2 / ((0 : ℝ) + 1 / 2) ^ 2 := by
    norm_num
    linarith
  have hlog := Real.log_le_log (show 0 < (2 * w) ^ 2 by positivity) hle
  rw [pow_two, Real.log_mul (by positivity) (by positivity)] at hlog
  push_cast at h
  linarith

/-- The rates of the multiplier are exactly the rates in the parity-kernel expansion. -/
theorem parityKernel_eq_tsum_multiplierRate (a : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel a r = ∑' j : ℕ, Real.exp (-(multiplierRate a j * r)) := by
  have he (j : ℕ) : Real.exp (-(multiplierRate a j * r)) =
      Real.exp (-((a : ℝ) + 1 / 2) * r) * Real.exp (-2 * r) ^ j := by
    rw [← Real.exp_nat_mul, ← Real.exp_add]
    unfold multiplierRate
    congr 1
    ring
  have hratio : Real.exp (-2 * r) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
  simp_rw [he]
  rw [tsum_mul_left, tsum_geometric_of_lt_one (Real.exp_nonneg _) hratio]
  simp [parityKernel, div_eq_mul_inv]

private def complexFrequency (a w : ℝ) : ℂ := -(a : ℂ) + (w : ℂ) * Complex.I

private theorem complexFrequency_re (a w : ℝ) : (complexFrequency a w).re = -a := by
  simp [complexFrequency, Complex.mul_re]

private theorem expCos_eq_re (a w r : ℝ) :
    Real.exp (-(a * r)) * Real.cos (w * r) =
      (Complex.exp (complexFrequency a w * (r : ℂ))).re := by
  rw [Complex.exp_re]
  simp [complexFrequency, Complex.mul_re, Complex.mul_im, neg_mul]

private theorem expCos_integrable {a : ℝ} (ha : 0 < a) (w : ℝ) :
    IntegrableOn (fun r ↦ Real.exp (-(a * r)) * Real.cos (w * r)) (Ioi 0) := by
  simp_rw [expCos_eq_re]
  have hz : (complexFrequency a w).re < 0 := by rw [complexFrequency_re]; linarith
  exact (integrableOn_exp_mul_complex_Ioi hz 0).re

private theorem integral_expCos {a : ℝ} (ha : 0 < a) (w : ℝ) :
    ∫ r in Ioi 0, Real.exp (-(a * r)) * Real.cos (w * r) = a / (a ^ 2 + w ^ 2) := by
  have hz : (complexFrequency a w).re < 0 := by rw [complexFrequency_re]; linarith
  simp_rw [expCos_eq_re, ← RCLike.re_to_complex]
  rw [integral_re (integrableOn_exp_mul_complex_Ioi hz 0),
    integral_exp_mul_complex_Ioi hz 0]
  simp [RCLike.re_to_complex, complexFrequency, Complex.div_re, Complex.mul_re,
    Complex.mul_im, Complex.normSq_apply, pow_two]

private def expDifference (a w r : ℝ) : ℝ :=
  Real.exp (-(a * r)) * (1 - Real.cos (w * r))

private theorem expDifference_nonneg (a w r : ℝ) : 0 ≤ expDifference a w r :=
  mul_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr (Real.cos_le_one _))

private theorem expDifference_integrable {a : ℝ} (ha : 0 < a) (w : ℝ) :
    IntegrableOn (expDifference a w) (Ioi 0) := by
  have hexp := integrableOn_exp_mul_Ioi (show -a < 0 by linarith) 0
  have heq : expDifference a w = (fun r ↦ Real.exp (-a * r)) -
      (fun r ↦ Real.exp (-(a * r)) * Real.cos (w * r)) := by
    funext r
    simp only [expDifference, mul_sub, mul_one, Pi.sub_apply, neg_mul]
  rw [heq]
  exact hexp.sub (expCos_integrable ha w)

private theorem integral_expDifference {a : ℝ} (ha : 0 < a) (w : ℝ) :
    ∫ r in Ioi 0, expDifference a w r = multiplierSummand a w := by
  have hneg : -a < 0 := by linarith
  have hexp : IntegrableOn (fun r ↦ Real.exp (-(a * r))) (Ioi 0) := by
    simpa only [neg_mul] using integrableOn_exp_mul_Ioi hneg 0
  simp only [expDifference, mul_sub, mul_one]
  rw [integral_sub hexp (expCos_integrable ha w), integral_expCos ha,
    multiplierSummand_eq a w ha.ne' (by positivity)]
  simp_rw [← neg_mul]
  rw [integral_exp_mul_Ioi hneg 0]
  simp

/-- The positive series is the exact cosine-difference integral of the actual parity kernel. -/
theorem periodicMultiplier_eq_kernel_integral (a : ℕ) (w : ℝ) :
    periodicMultiplier a w = 2 * ∫ r in Ioi 0, parityKernel a r * (1 - Real.cos (w * r)) := by
  let F : ℕ → ℝ → ℝ := fun j r ↦ 2 * expDifference (multiplierRate a j) w r
  have hf (j : ℕ) : IntegrableOn (F j) (Ioi 0) :=
    (expDifference_integrable (multiplierRate_pos a (Nat.cast_nonneg j)) w).const_mul _
  have hfint (j : ℕ) : (∫ r in Ioi 0, F j r) = periodicMultiplierTerm a w j := by
    simp only [F, integral_const_mul, periodicMultiplierTerm]
    rw [integral_expDifference (multiplierRate_pos a (Nat.cast_nonneg j))]
  have hnorm : Summable (fun j ↦ ∫ r in Ioi 0, ‖F j r‖) := by
    convert periodicMultiplier_summable a w using 1
    funext j
    rw [← hfint j]
    refine setIntegral_congr_fun measurableSet_Ioi (fun r _ ↦ ?_)
    exact Real.norm_of_nonneg
      (mul_nonneg (by norm_num) (expDifference_nonneg (multiplierRate a j) w r))
  rw [← integral_const_mul]
  calc
    periodicMultiplier a w = ∑' j, ∫ r in Ioi 0, F j r :=
      tsum_congr (fun j ↦ (hfint j).symm)
    _ = ∫ r in Ioi 0, ∑' j, F j r := integral_tsum_of_summable_integral_norm hf hnorm
    _ = _ := by
      refine setIntegral_congr_fun measurableSet_Ioi (fun r hr ↦ ?_)
      simp_rw [F, expDifference]
      rw [tsum_mul_left, tsum_mul_right, ← parityKernel_eq_tsum_multiplierRate a hr]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierBounds
