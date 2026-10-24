# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiIntegerPrefixMeanConsumer.Variantaf7a0438b9999f75a660bb2c5973f56ad79c210ef8c33a5ef21cd06b3cb7e196

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a023be5f87dce6942a05d196f40b644cbc0551cc` · SHA-256 `af7a0438b9999f75a660bb2c5973f56ad79c210ef8c33a5ef21cd06b3cb7e196`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualXiTerminalFractionBudget
import RootActualXiTailPrimitiveAbel

/-!
The actual completed integer-cell mean controls the original continuous primitive
after the genuine fractional last cell and logarithmic discretization cost are paid.
This is a sufficient return to the unchanged signed-tail consumer. No all-integer
arithmetic bound, actual mean witness, or uniform Psi bound is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiIntegerPrefixMeanConsumer
open MeasureTheory Set
open scoped Interval
open RootActualXiTailPrimitive RootActualXiTailPrimitiveAbel RootActualXiExponentialEnvelope
open ActualXiTerminalFractionBudget SourceActualXiLogStepDiscretization
open SourceActualXiWeightedIntegerMean
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- Independent finite error: the proved discretization cost and true final-cell budget. -/
def actualIntegerPrefixMeanError : ℝ :=
  actualXiLogStepErrorConstant + 2 * actualXiExponentialEnvelopeConstant / Real.sqrt 7

/-- A literal future integer coefficient pays the finite front at the real lower anchor. -/
def actualIntegerPrefixMeanCoefficient (L : ℝ) : ℝ :=
  L + actualIntegerPrefixMeanError / Real.log 7

/-- The original analytic tail guard and actual future integer cutoff fix the real radius. -/
def actualIntegerPrefixMeanRadius (N₀ : ℕ) : ℝ :=
  max 91 (Real.log (N₀ : ℝ) / 2)

theorem actualIntegerPrefixMeanError_nonneg : 0 ≤ actualIntegerPrefixMeanError := by
  unfold actualIntegerPrefixMeanError actualXiLogStepErrorConstant
    actualXiCellOscillationConstant actualXiExponentialEnvelopeConstant
  positivity

theorem actualIntegerPrefixMeanCoefficient_nonneg {L : ℝ} (hL : 0 ≤ L) :
    0 ≤ actualIntegerPrefixMeanCoefficient L := by
  have he := actualIntegerPrefixMeanError_nonneg
  have hl : 0 < Real.log 7 := Real.log_pos (by norm_num)
  unfold actualIntegerPrefixMeanCoefficient
  positivity

/-- The input retains the exact signed critical inventory inside each absolute readout. -/
theorem actualXiWeightedIntegerPrefix_eq_critical_readout (N : ℕ) :
    actualXiWeightedIntegerPrefix N =
      ∑ n ∈ Finset.Icc 7 (N - 1), |actualXiIntegerCriticalReadout n| *
        Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ)) := by
  unfold actualXiWeightedIntegerPrefix
  apply Finset.sum_congr rfl
  intro n hn
  rw [actualXiIntegerCriticalReadout_eq_primitive (Finset.mem_Icc.mp hn).1]

/-- Every real terminal time uses its true moving floor and pays the final fraction first. -/
theorem actual_primitive_mean_of_integer_prefix {L : ℝ} {N₀ : ℕ}
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ))
    {T : ℝ} (hT : Real.log (N₀ : ℝ) ≤ T) :
    (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤
      actualIntegerPrefixMeanCoefficient L * T := by
  have hN₀p : 0 < (N₀ : ℝ) := by exact_mod_cast (show 0 < N₀ by omega)
  have hlog : Real.log 7 ≤ Real.log (N₀ : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hN₀)
  have ht := hlog.trans hT
  have hfloor : N₀ ≤ Nat.floor (Real.exp T) := by
    apply Nat.le_floor
    simpa only [Real.exp_log hN₀p] using Real.exp_le_exp.mpr hT
  have hn : 7 ≤ Nat.floor (Real.exp T) := hN₀.trans hfloor
  have hnp : 0 < (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp T) by omega)
  have hlogfloor : Real.log (Nat.floor (Real.exp T) : ℝ) ≤ T := by
    simpa only [Real.log_exp] using
      Real.log_le_log hnp (Nat.floor_le (Real.exp_pos T).le)
  have hpre := (hprefix _ hfloor).trans
    (mul_le_mul_of_nonneg_left hlogfloor hL)
  have hc : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hfrac := actualXiTerminalFraction_le_inverse_sqrt ht
  have hdiv : 2 * actualXiExponentialEnvelopeConstant /
      Real.sqrt (Nat.floor (Real.exp T) : ℝ) ≤
        2 * actualXiExponentialEnvelopeConstant / Real.sqrt 7 := by
    apply div_le_div_of_nonneg_left (by positivity) (by positivity)
    exact Real.sqrt_le_sqrt (by exact_mod_cast hn)
  have herr := actualXiPrimitive_mean_weighted_readout_error ht
  change |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
    (actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) +
      actualXiTerminalFraction T)| ≤ actualXiLogStepErrorConstant at herr
  have hbase : (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤
      L * T + actualIntegerPrefixMeanError := by
    unfold actualIntegerPrefixMeanError
    linarith [(abs_le.mp herr).2, hfrac.trans hdiv]
  have ha : 0 < Real.log 7 := Real.log_pos (by norm_num)
  have he := actualIntegerPrefixMeanError_nonneg
  have hpay : actualIntegerPrefixMeanError ≤
      actualIntegerPrefixMeanError / Real.log 7 * T := by
    have hh := mul_le_mul_of_nonneg_left ht (div_nonneg he ha.le)
    rwa [div_mul_cancel₀ _ ha.ne'] at hh
  exact hbase.trans ((add_le_add_left hpay (L * T)).trans_eq (by
    unfold actualIntegerPrefixMeanCoefficient
    ring))

/-- The completed integer hypothesis yields the exact future all-real average required by Abel. -/
theorem actual_uniform_primitive_mean_of_integer_prefix {L R : ℝ} {N₀ : ℕ}
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀) (hcut : Real.log (N₀ : ℝ) ≤ 2 * R)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ)) :
    ∀ T : ℝ, 2 * R ≤ T →
      (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤
        actualIntegerPrefixMeanCoefficient L * T := by
  intro T hT
  exact actual_primitive_mean_of_integer_prefix hL hN₀ hprefix (hcut.trans hT)

/-- Only a supplied actual integer mean would give this genuine complete signed-tail lower bound. -/
theorem completeXiTail_lower_of_integer_prefix {L R A : ℝ} {N₀ : ℕ}
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀) (hR : 91 ≤ R) (hA : R ≤ A)
    (hcut : Real.log (N₀ : ℝ) ≤ 2 * R)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ)) :
    -((5 + 10 / R) * actualIntegerPrefixMeanCoefficient L) ≤
      RH16CompleteXiTail.completeXiTail A := by
  exact completeXiTail_lower_of_uniform_primitive_average
    (actualIntegerPrefixMeanCoefficient_nonneg hL) hR hA
    (actual_uniform_primitive_mean_of_integer_prefix hL hN₀ hcut hprefix)

/-- The unchanged original estimate consumer preserves the explicit real radius and finite prefix. -/
theorem original_estimate_of_integer_prefix (L R : ℝ) (N₀ : ℕ)
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀) (hR : 91 ≤ R)
    (hcut : Real.log (N₀ : ℝ) ≤ 2 * R)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ)) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_uniform_primitive_average (actualIntegerPrefixMeanCoefficient L) R
    (actualIntegerPrefixMeanCoefficient_nonneg hL) hR
    (actual_uniform_primitive_mean_of_integer_prefix hL hN₀ hcut hprefix)

/-- The displayed maximum removes an extra radius choice, while retaining the integer witness. -/
theorem original_estimate_of_integer_prefix_at_cutoff (L : ℝ) (N₀ : ℕ)
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ)) :
    CorrelationAssembly.EstimateObligation := by
  apply original_estimate_of_integer_prefix L (actualIntegerPrefixMeanRadius N₀) N₀
    hL hN₀ (le_max_left _ _) _ hprefix
  have hh := le_max_right 91 (Real.log (N₀ : ℝ) / 2)
  unfold actualIntegerPrefixMeanRadius
  linarith

/-- The same sufficient consumer accepts the full independently prescribed arithmetic readout. -/
theorem original_estimate_of_critical_integer_readout (L : ℝ) (N₀ : ℕ)
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀)
    (hreadout : ∀ N : ℕ, N₀ ≤ N →
      (∑ n ∈ Finset.Icc 7 (N - 1), |actualXiIntegerCriticalReadout n| *
        Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))) ≤ L * Real.log (N : ℝ)) :
    CorrelationAssembly.EstimateObligation := by
  apply original_estimate_of_integer_prefix_at_cutoff L N₀ hL hN₀
  intro N hN
  rw [actualXiWeightedIntegerPrefix_eq_critical_readout]
  exact hreadout N hN

end
end FormalResearch.RiemannHypothesis.SourceActualXiIntegerPrefixMeanConsumer
```
