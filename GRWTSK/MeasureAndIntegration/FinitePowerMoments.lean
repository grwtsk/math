/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream authorship and licenses. -/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic

/-!
# Two-parameter finite power moments and their exact centered covariance

The two-parameter moment is the square of the actual mean. Using one common
parameter produces a different moment and adds a proved nonnegative variance.
All exchanges are finite sums of continuous real polynomials. No probabilistic
independence of arithmetic coefficients or cancellation estimate is assumed.
SOURCE_PROOF_CANDIDATE / compilation, fresh kernel and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
namespace GRWTSK.Analysis.FiniteSums.FinitePowerMoments

variable {ι : Type*} [DecidableEq ι]

def polynomial (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) (t : ℝ) : ℝ :=
  ∑ i ∈ S, c i * t ^ k i

def mean (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) : ℝ :=
  ∑ i ∈ S, c i / ((k i : ℝ)+1)

def covariance (h k : ℕ) : ℝ :=
  1 / ((h : ℝ)+(k : ℝ)+1) - 1 / (((h : ℝ)+1)*((k : ℝ)+1))

theorem continuous_polynomial (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    Continuous (polynomial S c k) := by
  apply continuous_finsetSum
  intro i _
  exact continuous_const.mul (continuous_id.pow _)

theorem integral_power (k : ℕ) :
    (∫ t in (0 : ℝ)..1, t^k) = 1 / ((k : ℝ)+1) := by
  rw [integral_pow]
  simp

theorem integral_polynomial (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    (∫ t in (0 : ℝ)..1, polynomial S c k t) = mean S c k := by
  unfold polynomial mean
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i _
    rw [intervalIntegral.integral_const_mul, integral_power]
    ring
  · intro i _
    exact (continuous_const.mul (continuous_id.pow _)).intervalIntegrable _ _

/-- Independent parameters; no identification of t and s is permitted. -/
theorem two_parameter_moment (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    (∫ t in (0 : ℝ)..1, ∫ s in (0 : ℝ)..1,
      polynomial S c k t * polynomial S c k s) = (mean S c k)^2 := by
  have hi (t : ℝ) : (∫ s in (0 : ℝ)..1,
      polynomial S c k t * polynomial S c k s) =
      polynomial S c k t * mean S c k := by
    rw [intervalIntegral.integral_const_mul, integral_polynomial]
  simp_rw [hi]
  rw [intervalIntegral.integral_mul_const, integral_polynomial, pow_two]

/-- Every pair, including pairs from different source sectors, is retained. -/
theorem mean_square_expansion (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    (mean S c k)^2 = ∑ i ∈ S, ∑ j ∈ S,
      c i*c j / (((k i : ℝ)+1)*((k j : ℝ)+1)) := by
  unfold mean
  rw [pow_two, Finset.sum_mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- One COMMON parameter has the sum-of-degrees denominator, not the product. -/
theorem common_parameter_moment (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    (∫ t in (0 : ℝ)..1, polynomial S c k t ^ 2) =
      ∑ i ∈ S, ∑ j ∈ S, c i*c j / ((k i : ℝ)+(k j : ℝ)+1) := by
  have he (t : ℝ) : polynomial S c k t ^ 2 =
      ∑ i ∈ S, ∑ j ∈ S, c i*c j*t^(k i+k j) := by
    unfold polynomial
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [pow_add]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i _
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro j _
      rw [intervalIntegral.integral_const_mul, integral_power]
      push_cast
      ring
    · intro j _
      exact (continuous_const.mul (continuous_id.pow _)).intervalIntegrable _ _
  · intro i _
    apply Continuous.intervalIntegrable
    apply continuous_finsetSum
    intro j _
    exact continuous_const.mul (continuous_id.pow _)

theorem centered_moment (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    (∫ t in (0 : ℝ)..1, (polynomial S c k t-mean S c k)^2) =
      ∑ i ∈ S, ∑ j ∈ S, c i*c j*covariance (k i) (k j) := by
  let f := polynomial S c k
  let z := mean S c k
  have hc : Continuous f := continuous_polynomial S c k
  have he (t : ℝ) : (f t-z)^2 = f t^2-2*z*f t+z^2 := by ring
  simp_rw [he]
  rw [intervalIntegral.integral_add
      (((hc.pow 2).sub (continuous_const.mul hc)).intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _)]
  rw [intervalIntegral.integral_sub ((hc.pow 2).intervalIntegrable _ _)
      ((continuous_const.mul hc).intervalIntegrable _ _)]
  rw [intervalIntegral.integral_const_mul]
  have hmean : (∫ t in (0 : ℝ)..1, f t) = z := integral_polynomial S c k
  rw [hmean]
  simp only [intervalIntegral.integral_const, sub_zero, one_smul]
  change (∫ t in (0 : ℝ)..1, polynomial S c k t^2) - 2*z*z + z^2 = _
  rw [common_parameter_moment]
  have hz : z^2 = ∑ i ∈ S, ∑ j ∈ S,
      c i*c j / (((k i : ℝ)+1)*((k j : ℝ)+1)) := mean_square_expansion S c k
  have hs : (∑ i ∈ S, ∑ j ∈ S, c i*c j / ((k i : ℝ)+(k j : ℝ)+1)) - z^2 =
      ∑ i ∈ S, ∑ j ∈ S, c i*c j*covariance (k i) (k j) := by
    rw [hz, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro i _
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro j _
    unfold covariance
    ring
  nlinarith

theorem covariance_formula (h k : ℕ) :
    covariance h k = (h : ℝ)*(k : ℝ) /
      (((h : ℝ)+(k : ℝ)+1)*((h : ℝ)+1)*((k : ℝ)+1)) := by
  have h1 : (h : ℝ)+1 ≠ 0 := by positivity
  have k1 : (k : ℝ)+1 ≠ 0 := by positivity
  have hk1 : (h : ℝ)+(k : ℝ)+1 ≠ 0 := by positivity
  unfold covariance
  field_simp [h1, k1, hk1] <;> ring

@[simp] theorem covariance_zero_left (k : ℕ) : covariance 0 k = 0 := by
  rw [covariance_formula]
  simp

theorem centered_quadratic_nonnegative (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    0 ≤ ∑ i ∈ S, ∑ j ∈ S, c i*c j*covariance (k i) (k j) := by
  rw [← centered_moment, intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
  exact integral_nonneg (fun _ => sq_nonneg _)

/-- The mixed covariance with t-1/2 is evaluated, not postulated. -/
theorem affine_covariance (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    (∫ t in (0 : ℝ)..1, (t-1/2)*polynomial S c k t) =
      ∑ i ∈ S, c i*(k i : ℝ) /
        (2*((k i : ℝ)+1)*((k i : ℝ)+2)) := by
  simp only [polynomial, Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i _
    have he (t : ℝ) : (t-1/2)*(c i*t^k i) =
        c i*t^(k i+1) - (c i/2)*t^k i := by rw [pow_succ]; ring
    simp_rw [he]
    rw [intervalIntegral.integral_sub
      ((continuous_const.mul (continuous_id.pow _)).intervalIntegrable _ _)
      ((continuous_const.mul (continuous_id.pow _)).intervalIntegrable _ _),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
      integral_power, integral_power]
    push_cast
    have h1 : (k i : ℝ)+1 ≠ 0 := by positivity
    have h2 : (k i : ℝ)+2 ≠ 0 := by positivity
    field_simp [h1, h2] <;> ring
  · intro i _
    exact ((continuous_id.sub continuous_const).mul
      (continuous_const.mul (continuous_id.pow _))).intervalIntegrable _ _

theorem integral_centered_coordinate :
    (∫ t in (0 : ℝ)..1, t-(1/2 : ℝ)) = 0 := by
  rw [intervalIntegral.integral_sub (continuous_id.intervalIntegrable _ _)
    (continuous_const.intervalIntegrable _ _)]
  norm_num [integral_id, intervalIntegral.integral_const]

theorem integral_centered_coordinate_sq :
    (∫ t in (0 : ℝ)..1, (t-(1/2 : ℝ))^2) = 1/12 := by
  have he (t : ℝ) : (t-(1/2 : ℝ))^2 = t^2-t+1/4 := by ring
  simp_rw [he]
  rw [intervalIntegral.integral_add
    (((continuous_id.pow 2).sub continuous_id).intervalIntegrable _ _)
    (continuous_const.intervalIntegrable _ _),
    intervalIntegral.integral_sub ((continuous_id.pow 2).intervalIntegrable _ _)
    (continuous_id.intervalIntegrable _ _)]
  norm_num [integral_pow, integral_id, intervalIntegral.integral_const]

/-- A computed projection, with integrable equalities rather than growth assumptions. -/
theorem projection_integral (f : ℝ → ℝ) (hf : Continuous f) (h b : ℝ)
    (hb : (∫ t in (0 : ℝ)..1, (t-1/2)*f t) = b) :
    (∫ t in (0 : ℝ)..1, (f t-h-12*b*(t-1/2))^2) =
      (∫ t in (0 : ℝ)..1, (f t-h)^2)-12*b^2 := by
  let z : ℝ → ℝ := fun t => t-1/2
  have hz : Continuous z := continuous_id.sub continuous_const
  have hcross : (∫ t in (0 : ℝ)..1, z t*(f t-h)) = b := by
    have he (t : ℝ) : z t*(f t-h) = z t*f t-h*z t := by ring
    simp_rw [he]
    rw [intervalIntegral.integral_sub ((hz.mul hf).intervalIntegrable _ _)
      ((continuous_const.mul hz).intervalIntegrable _ _),
      intervalIntegral.integral_const_mul]
    change (∫ t in (0 : ℝ)..1, (t-1/2)*f t) -
      h*(∫ t in (0 : ℝ)..1, t-1/2) = b
    rw [hb, integral_centered_coordinate]
    ring
  have he (t : ℝ) : (f t-h-12*b*z t)^2 =
      (f t-h)^2-24*b*(z t*(f t-h))+144*b^2*(z t)^2 := by ring
  change (∫ t in (0 : ℝ)..1, (f t-h-12*b*z t)^2) = _
  simp_rw [he]
  have hc : Continuous (fun t => (f t-h)^2) := (hf.sub continuous_const).pow 2
  have hd : Continuous (fun t => 24*b*(z t*(f t-h))) :=
    continuous_const.mul (hz.mul (hf.sub continuous_const))
  have hk : Continuous (fun t => 144*b^2*(z t)^2) := continuous_const.mul (hz.pow 2)
  rw [intervalIntegral.integral_add ((hc.sub hd).intervalIntegrable _ _)
    (hk.intervalIntegrable _ _),
    intervalIntegral.integral_sub (hc.intervalIntegrable _ _) (hd.intervalIntegrable _ _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    hcross]
  have hzs : (∫ t in (0 : ℝ)..1, (z t)^2) = 1/12 := integral_centered_coordinate_sq
  rw [hzs]
  ring

/-- Independent nonnegative residual after the explicitly computed affine projection. -/
theorem centered_projection_lower (S : Finset ι) (c : ι → ℝ) (k : ι → ℕ) :
    12*(∑ i ∈ S, c i*(k i : ℝ)/(2*((k i : ℝ)+1)*((k i : ℝ)+2)))^2 ≤
      ∑ i ∈ S, ∑ j ∈ S, c i*c j*covariance (k i) (k j) := by
  let b := ∑ i ∈ S, c i*(k i : ℝ)/(2*((k i : ℝ)+1)*((k i : ℝ)+2))
  have he := projection_integral (polynomial S c k) (continuous_polynomial S c k)
    (mean S c k) b (affine_covariance S c k)
  have hn : 0 ≤ ∫ t in (0 : ℝ)..1,
      (polynomial S c k t-mean S c k-12*b*(t-1/2))^2 := by
    rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
    exact integral_nonneg (fun _ => sq_nonneg _)
  rw [he, centered_moment] at hn
  change 12*b^2 ≤ _
  linarith

/-- Pointwise identity retaining the low/high mixed centered term. -/
theorem affine_high_centering (U V H h t : ℝ) :
    (U-t*V+H-(U-V/2+h))^2 =
      V^2*(t-1/2)^2 - 2*V*(t-1/2)*(H-h) + (H-h)^2 := by ring

/-- Explicit projection onto t-1/2; the residual is not an assigned certificate. -/
theorem affine_projection_identity (V b variance : ℝ) :
    V^2/12-2*V*b+variance = (V-12*b)^2/12 + (variance-12*b^2) := by ring

/-- First two nonconstant arithmetic layers have a genuinely negative cross term. -/
theorem prime_semiprime_covariance (P Q : ℝ) :
    P^2*covariance 1 1 - 2*P*Q*covariance 1 2 + Q^2*covariance 2 2 =
      (P-Q)^2/12 + Q^2/180 := by
  norm_num [covariance]
  ring

end GRWTSK.Analysis.FiniteSums.FinitePowerMoments
