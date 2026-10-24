# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSharpXiHeadEnvelope.Variantac8f5e2f60993ed856428b220ed593d16b41dfe791b50c9bfb65861304c6d750

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `109fd76252bc6e3bdd4f39027b1225a6e9d6b3a2` · SHA-256 `ac8f5e2f60993ed856428b220ed593d16b41dfe791b50c9bfb65861304c6d750`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceGrowingXiHead

/-! Sharpen the actual source envelope before paying the growing time head.
Both Chebyshev sides are retained; the fixed kappa cost uses y>=7.
Direction and conceptual origin: grwtsk contributors.
Actual estimate construction and formalization: OpenAI Codex assistance. -/
set_option autoImplicit false
noncomputable section
namespace RH16SharpXiHeadEnvelope
open MeasureTheory Set Filter
open RH16GrowingXiHead RH16ActualF7 RH16CompleteXiTail RH16ActualPsiNegativeBlock
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature
open RootActualXiExponentialEnvelope
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def sharpXiEnvelopeConstant : ℝ :=
  Real.log 4 + 3 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| / 7

def sharpGrowingXiHeadCost (Q : ℝ) : ℝ :=
  20 * sharpXiEnvelopeConstant * Real.log Q / Q

private theorem coefficient_nonneg : 0 ≤ sharpXiEnvelopeConstant := by
  unfold sharpXiEnvelopeConstant
  positivity

/-- This preserves cancellation against y before taking an absolute bound. -/
theorem actual_timeXiDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |timeXiDensity t| ≤ sharpXiEnvelopeConstant * Real.exp (t / 2) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hy : 7 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have hpsi := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hps0 := Chebyshev.psi_nonneg (Real.exp t)
  have hc : |c| ≤ |c| / 7 * Real.exp t := by nlinarith [abs_nonneg c]
  have he : |shiftedActualChebyshev (Real.exp t)| ≤
      sharpXiEnvelopeConstant * Real.exp t := by
    unfold shiftedActualChebyshev sharpXiEnvelopeConstant
    change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤
      (Real.log 4 + 3 + |c| / 7) * Real.exp t
    apply abs_le.mpr
    constructor <;> nlinarith [neg_abs_le c, le_abs_self c,
      Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]
  rw [timeXiDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (sharpXiEnvelopeConstant * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right he (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

theorem actualF7_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualF7 t| ≤ 2 * sharpXiEnvelopeConstant * (Real.exp (t / 2) - Real.sqrt 7) := by
  let D := sharpXiEnvelopeConstant
  have hi : IntervalIntegrable (fun r : ℝ => D * Real.exp (r / 2)) volume
      (Real.log 7) t := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact actual_timeXiDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * D * Real.exp (r / 2))
      (D * Real.exp (r / 2)) r := by
    convert (((hasDerivAt_id r).div_const (2 : ℝ)).exp.const_mul (2 * D)) using 1 <;> ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [he, he7] at hh
  rw [actualF7_eq_time_primitive]
  simpa only [Real.norm_eq_abs, D, mul_sub] using hh

theorem actual_f7_head_abs_le {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) (_hHA : H ≤ 2 * A) :
    |-(∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t)| ≤
      10 * sharpXiEnvelopeConstant / A ^ 2 * H * Real.exp (H / 2) := by
  have _hi := actualF7_curvature_intervalIntegrable A (by linarith : 40 ≤ A)
  let D := sharpXiEnvelopeConstant
  let k := 10 * D / A ^ 2
  have hD : 0 ≤ D := coefficient_nonneg
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ =>
      k * (1 + t / 2) * Real.exp (t / 2)) volume (Real.log 7) H :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) H,
      ‖actualF7 t * actualXiCurvature A t‖ ≤ k * (1 + t / 2) * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have hF : |actualF7 t| ≤ 2 * D * Real.exp (t / 2) := by
      exact (actualF7_abs_le ht.1.le).trans
        (by dsimp [D]; nlinarith [coefficient_nonneg, Real.sqrt_nonneg 7])
    have hK := actualXiCurvature_abs_le hA ht0
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * D * Real.exp (t / 2)) * (5 / A ^ 2 * (1 + t / 2)) :=
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
  have hlow : 0 ≤ k * Real.log 7 * Real.exp (Real.log 7 / 2) := by
    exact mul_nonneg (mul_nonneg hk (Real.log_nonneg (by norm_num))) (Real.exp_pos _).le
  rw [abs_neg]
  exact hn.trans (by dsimp [k, D]; linarith)

private theorem floor_head_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) ∧
    Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A ∧
    2 * Real.log A ≤ 2 * A := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hUr : (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) := by exact_mod_cast hU
  have hlog := Real.log_le_log (by linarith : 0 < (⌊A ^ 2⌋₊ : ℝ))
    (Nat.floor_le (sq_nonneg A))
  rw [Real.log_pow] at hlog
  exact ⟨Real.log_le_log (by norm_num) hUr, by simpa using hlog,
    by linarith [Real.log_le_sub_one_of_pos hp]⟩

theorem growingXiHead_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |growingXiHead A| ≤ sharpGrowingXiHeadCost A := by
  obtain ⟨hL, hH, hHA⟩ := floor_head_orders hA
  have hh := actual_f7_head_abs_le hA hL (hH.trans hHA)
  have hp : 0 < A := by linarith
  have hlog : 0 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) :=
    (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hL
  have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hex : Real.exp (Real.log (⌊A ^ 2⌋₊ : ℝ) / 2) ≤ A := by
    simpa only [Real.exp_log hp] using Real.exp_le_exp.mpr
      (show Real.log (⌊A ^ 2⌋₊ : ℝ) / 2 ≤ Real.log A by linarith)
  have hprod := mul_le_mul hH hex (Real.exp_pos _).le (by positivity : 0 ≤ 2 * Real.log A)
  have he := mul_le_mul_of_nonneg_left hprod
    (div_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 10) coefficient_nonneg) (sq_nonneg A))
  change |growingXiHead A| ≤ _ at hh
  exact hh.trans (by
    unfold sharpGrowingXiHeadCost
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
  have hrem := mul_nonneg (show 0 ≤ A - Q by linarith) (show 0 ≤ Real.log Q - 1 by linarith)
  have hAQ : Q * (A / Q - 1) = A - Q := by field_simp
  rw [hAQ] at hmul
  nlinarith

theorem sharpGrowingXiHeadCost_nonneg {Q : ℝ} (hQ : 91 ≤ Q) : 0 ≤ sharpGrowingXiHeadCost Q := by
  unfold sharpGrowingXiHeadCost
  have := coefficient_nonneg
  have : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  positivity

theorem growingXiHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |growingXiHead A| ≤ sharpGrowingXiHeadCost Q := by
  have h := mul_le_mul_of_nonneg_left (log_div_antitone hQ hQA)
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 20) coefficient_nonneg)
  exact (growingXiHead_abs_le (by linarith : 91 ≤ A)).trans
    (by simpa only [sharpGrowingXiHeadCost, mul_div_assoc] using h)

theorem completeXiTail_lower_of_growing_tail {Q A K : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A)
    (hTail : -K ≤ growingXiTail A) :
    -(K + sharpGrowingXiHeadCost Q) ≤ completeXiTail A := by
  have hhead := neg_le_of_abs_le (growingXiHead_abs_le_at_radius hQ hQA)
  rw [completeXiTail_eq_growing_head_add_tail (by linarith : 91 ≤ A)]
  linarith

theorem sharpGrowingXiHeadCost_le_old {Q : ℝ} (hQ : 91 ≤ Q) :
    sharpGrowingXiHeadCost Q ≤ RH16GrowingXiHead.growingXiHeadCost Q := by
  have hc : sharpXiEnvelopeConstant ≤ actualXiExponentialEnvelopeConstant := by
    unfold sharpXiEnvelopeConstant actualXiExponentialEnvelopeConstant
    nlinarith [abs_nonneg (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))]
  have hlog : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  unfold sharpGrowingXiHeadCost RH16GrowingXiHead.growingXiHeadCost
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hc (by norm_num)) hlog)
    (by linarith)

end RH16SharpXiHeadEnvelope
```
