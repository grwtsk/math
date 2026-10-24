# Complete source: GRWTSK.Topology.GeneralTopology.05SourceBalancedFirstPrimePrimitive.Variantccfe89503430344dd832c5e0831dadf0e3784e0bdfa11e76adb2b63a3996b4d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `118ec27d63a849be843d4d4af4dc0b7b4192c7b9` · SHA-256 `ccfe89503430344dd832c5e0831dadf0e3784e0bdfa11e76adb2b63a3996b4d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceGrowingXiHead
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-! Actual balanced first-prime density and original seven-anchored primitive.
Direction and conceptual origin: grwtsk contributors.
Source construction and formalization: OpenAI Codex assistance.
The original first-prime signed tail and complete RH estimate remain open. -/
set_option autoImplicit false
noncomputable section
namespace RH16BalancedFirstPrimePrimitive
open MeasureTheory Set Filter
open RH16GrowingXiHead RH16ActualF7 RH16CompleteXiTail
open FormalResearch.RiemannHypothesis
open WeightedPrimeAbel SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent

/-- Exact actual theta source, including the fixed square-mean compensation. -/
def balancedFirstPrimeDensity (t : ℝ) : ℝ :=
  (Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)) *
    Real.exp (-t / 2)

/-- The seven anchor is retained; every earlier first-prime atom remains in theta. -/
def balancedFirstPrimePrimitive (t : ℝ) : ℝ :=
  ∫ s in Real.log 7..t, balancedFirstPrimeDensity s

/-- The actual moving time head, with the original primitive and curvature. -/
def balancedFirstPrimeHead (A : ℝ) : ℝ :=
  -(∫ t in Real.log 7..Real.log (⌊A ^ 2⌋₊ : ℝ),
    balancedFirstPrimePrimitive t * actualXiCurvature A t)

private theorem theta_exp_eq_steps (b t : ℝ) (ht : t ≤ b) :
    Chebyshev.theta (Real.exp t) =
      ∑ p ∈ primeLogInventory b, if Real.log (p : ℝ) ≤ t then Real.log p else 0 := by
  change (∑ p ∈ primeLogInventory t, Real.log (p : ℝ)) = _
  rw [← primeLogInventory_filter_log b t ht, Finset.sum_filter]

private theorem theta_time_density_integrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable (fun t => Chebyshev.theta (Real.exp t) * Real.exp (-t / 2))
      volume a b := by
  have hi : IntervalIntegrable
      (∑ p ∈ primeLogInventory b, fun t : ℝ => Real.log (p : ℝ) *
        (if Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0)) volume a b :=
    IntervalIntegrable.sum _ (fun p _ => by
      have hstep := intervalIntegrable_closed_step a b (Real.log (p : ℝ)) _
        ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable a b)
      exact hstep.const_mul (Real.log (p : ℝ)))
  apply hi.congr
  intro t ht
  simp only [Finset.sum_apply]
  rw [theta_exp_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp

theorem balancedFirstPrimeDensity_eq (t : ℝ) :
    balancedFirstPrimeDensity t =
      Chebyshev.theta (Real.exp t) * Real.exp (-t / 2) - Real.exp (t / 2) + 1 := by
  have h1 : Real.exp t * Real.exp (-t / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]; congr 1; ring
  have h2 : Real.exp (t / 2) * Real.exp (-t / 2) = 1 := by
    rw [← Real.exp_add, show t / 2 + -t / 2 = 0 by ring, Real.exp_zero]
  unfold balancedFirstPrimeDensity
  rw [add_mul, sub_mul, h1, h2]

/-- Finite closed steps prove integrability; total-integral conventions are not used. -/
theorem balancedFirstPrimeDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable balancedFirstPrimeDensity volume a b := by
  suffices h : ∀ a b : ℝ, a ≤ b →
      IntervalIntegrable balancedFirstPrimeDensity volume a b by
    rcases le_total a b with hab | hba
    · exact h a b hab
    · exact (h b a hba).symm
  intro a b hab
  have hi := theta_time_density_integrable a b hab
  have he : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume a b :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hc : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume a b :=
    intervalIntegrable_const
  simpa only [← balancedFirstPrimeDensity_eq] using (hi.sub he).add hc

theorem balancedFirstPrimePrimitive_continuous : Continuous balancedFirstPrimePrimitive :=
  intervalIntegral.continuous_primitive balancedFirstPrimeDensity_intervalIntegrable (Real.log 7)

theorem balancedFirstPrimePrimitive_at_lower :
    balancedFirstPrimePrimitive (Real.log 7) = 0 := by
  simp [balancedFirstPrimePrimitive]

/-- Elementary theta bounds preserve the square compensation before taking absolute values. -/
theorem balancedFirstPrimeDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |balancedFirstPrimeDensity t| ≤ Real.exp (t / 2) := by
  have hy : 7 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have he : 0 < Real.exp (t / 2) := Real.exp_pos _
  have he2 : Real.exp (t / 2) * Real.exp (t / 2) = Real.exp t := by
    rw [← Real.exp_add]; congr 1; ring
  have hege : 2 ≤ Real.exp (t / 2) := by nlinarith
  have hehalf : Real.exp (t / 2) ≤ Real.exp t / 2 := by nlinarith
  have hlog : Real.log 4 ≤ (3 / 2 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have htheta := Chebyshev.theta_le_log4_mul_x (Real.exp_pos t).le
  have htheta0 := Chebyshev.theta_nonneg (Real.exp t)
  have hnum : |Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)| ≤
      Real.exp t := by
    apply abs_le.mpr
    constructor
    · linarith
    · have hm := mul_le_mul_of_nonneg_right hlog (Real.exp_pos t).le
      nlinarith
  unfold balancedFirstPrimeDensity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp t * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right hnum (Real.exp_pos _).le
    _ = _ := by rw [← Real.exp_add]; congr 1; ring

theorem balancedFirstPrimePrimitive_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |balancedFirstPrimePrimitive t| ≤ 2 * (Real.exp (t / 2) - Real.sqrt 7) := by
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (r / 2)) volume (Real.log 7) t :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact balancedFirstPrimeDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * Real.exp (r / 2))
      (Real.exp (r / 2)) r := by
    convert! (((hasDerivAt_id r).div_const (2 : ℝ)).exp.const_mul (2 : ℝ)) using 1
    dsimp
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [he, he7] at hh
  simpa only [Real.norm_eq_abs, balancedFirstPrimePrimitive, mul_sub] using hh


/-- The continuous primitive and literal source curvature give product integrability. -/
theorem balancedFirstPrime_curvature_intervalIntegrable (A a b : ℝ) (hA : 0 < A) :
    IntervalIntegrable (fun t => balancedFirstPrimePrimitive t * actualXiCurvature A t)
      volume a b := by
  have hc := (minusCorrelationWeight_contDiff A hA).continuous_deriv_one
  have he : deriv (minusCorrelationWeight A) = actualXiCurvature A :=
    funext fun t => (minusCorrelationWeight_hasDerivAt A t hA).deriv
  rw [he] at hc
  exact (balancedFirstPrimePrimitive_continuous.mul hc).intervalIntegrable _ _

theorem balancedFirstPrime_head_abs_le {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) :
    |-(∫ t in Real.log 7..H, balancedFirstPrimePrimitive t * actualXiCurvature A t)| ≤
      10 / A ^ 2 * H * Real.exp (H / 2) := by
  let k : ℝ := 10 / A ^ 2
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ =>
      k * (1 + t / 2) * Real.exp (t / 2)) volume (Real.log 7) H :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) H,
      ‖balancedFirstPrimePrimitive t * actualXiCurvature A t‖ ≤
        k * (1 + t / 2) * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have hF : |balancedFirstPrimePrimitive t| ≤ 2 * Real.exp (t / 2) :=
      (balancedFirstPrimePrimitive_abs_le ht.1.le).trans
        (by nlinarith [Real.sqrt_nonneg (7 : ℝ)])
    have hK := actualXiCurvature_abs_le hA ht0
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (t / 2)) * (5 / A ^ 2 * (1 + t / 2)) :=
        mul_le_mul hF hK (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hH (ae_of_all _ hp) hb
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => k * t * Real.exp (t / 2))
      (k * (1 + t / 2) * Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).const_mul k).mul
      (((hasDerivAt_id t).div_const 2).exp)) using 1 <;> try rfl
    dsimp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hb,
    Real.norm_eq_abs] at hn
  have hlow : 0 ≤ k * Real.log 7 * Real.exp (Real.log 7 / 2) :=
    mul_nonneg (mul_nonneg hk (Real.log_nonneg (by norm_num))) (Real.exp_pos _).le
  rw [abs_neg]
  exact hn.trans (by dsimp [k]; linarith)

private theorem floor_head_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) ∧
    Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hUr : (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) := by exact_mod_cast hU
  have hlog := Real.log_le_log (by linarith : 0 < (⌊A ^ 2⌋₊ : ℝ))
    (Nat.floor_le (sq_nonneg A))
  rw [Real.log_pow] at hlog
  exact ⟨Real.log_le_log (by norm_num) hUr, by simpa using hlog⟩

theorem balancedFirstPrimeHead_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |balancedFirstPrimeHead A| ≤ 20 * Real.log A / A := by
  obtain ⟨hL, hH⟩ := floor_head_orders hA
  have hh := balancedFirstPrime_head_abs_le hA hL
  have hp : 0 < A := by linarith
  have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hex : Real.exp (Real.log (⌊A ^ 2⌋₊ : ℝ) / 2) ≤ A := by
    simpa only [Real.exp_log hp] using Real.exp_le_exp.mpr
      (show Real.log (⌊A ^ 2⌋₊ : ℝ) / 2 ≤ Real.log A by linarith)
  have hprod := mul_le_mul hH hex (Real.exp_pos _).le
    (by positivity : 0 ≤ 2 * Real.log A)
  have he := mul_le_mul_of_nonneg_left hprod
    (by positivity : 0 ≤ (10 : ℝ) / A ^ 2)
  change |balancedFirstPrimeHead A| ≤ _ at hh
  exact hh.trans (by
    convert he using 1
    all_goals field_simp
    all_goals ring)

private theorem log_div_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    Real.log A / A ≤ Real.log Q / Q := by
  have hp : 0 < Q := by linarith
  have ha : 0 < A := by linarith
  have hlog : 1 ≤ Real.log Q := (Real.le_log_iff_exp_le hp).2
    (by linarith [Real.exp_one_lt_three])
  have hl := Real.log_le_sub_one_of_pos (div_pos ha hp)
  rw [Real.log_div ha.ne' hp.ne'] at hl
  apply (div_le_div_iff₀ ha hp).2
  have hmul := mul_le_mul_of_nonneg_left hl hp.le
  have hrem := mul_nonneg (show 0 ≤ A - Q by linarith)
    (show 0 ≤ Real.log Q - 1 by linarith)
  have hAQ : Q * (A / Q - 1) = A - Q := by field_simp
  rw [hAQ] at hmul
  nlinarith

/-- Actual head on every real A beyond the same supplied radius Q. -/
theorem balancedFirstPrimeHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |balancedFirstPrimeHead A| ≤ 20 * Real.log Q / Q := by
  have h := mul_le_mul_of_nonneg_left (log_div_antitone hQ hQA)
    (by norm_num : (0 : ℝ) ≤ 20)
  exact (balancedFirstPrimeHead_abs_le (by linarith : 91 ≤ A)).trans
    (by simpa only [mul_div_assoc] using h)

end RH16BalancedFirstPrimePrimitive
```
