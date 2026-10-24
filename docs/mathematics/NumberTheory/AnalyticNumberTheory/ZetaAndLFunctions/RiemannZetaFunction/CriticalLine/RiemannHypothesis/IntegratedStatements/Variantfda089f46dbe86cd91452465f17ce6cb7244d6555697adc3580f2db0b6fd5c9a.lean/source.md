# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegratedStatements.Variantfda089f46dbe86cd91452465f17ce6cb7244d6555697adc3580f2db0b6fd5c9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c217167f8d0a7caf096e6f214e9288bfb5a5d355` · SHA-256 `fda089f46dbe86cd91452465f17ce6cb7244d6555697adc3580f2db0b6fd5c9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorPrimePower
import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor
import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorSign
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainComparison
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainBudget



/-! Damped divisor cancellation, retained truncation, and a vanishing comparison budget. -/

namespace DampedDivisorCoefficientLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
example (ε : ℝ) (n : ℕ) : dampedDivisorCoefficient ε n =
    ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) := rfl
example (ε : ℝ) (n : ℕ) (hn : 1 ≤ n) : dampedDivisorCoefficient ε n =
    ∏ p ∈ n.primeFactors, (1 - Real.exp (-ε * Real.log (p : ℝ))) :=
  dampedDivisorCoefficient_eq_primeFactors_prod ε n hn
example (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    0 ≤ dampedDivisorCoefficient ε n := dampedDivisorCoefficient_nonneg ε hε n hn
example (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient ε n ≤ 1 := dampedDivisorCoefficient_le_one ε hε n hn
example (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n = if n = 1 then 1 else 0 :=
  dampedDivisorCoefficient_zero n hn
example (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n ≠ 0 ↔ n = 1 := dampedDivisorCoefficient_zero_ne_zero_iff n hn

end DampedDivisorCoefficientLiteral

namespace DivisorFloorTransportLiteral
noncomputable section
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport DampedDivisorCoefficient
open MobiusFractionalResidual MobiusPoleNumerator FiniteMobiusController

example (X : ℕ) (x : ℝ) (a : ℕ → ℝ) (hxX : x ≤ X) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors, a d :=
  floor_sum_divisors X x a hxX

example (N : ℕ) (a : ℕ → ℝ) :
    (∑ n ∈ Icc 1 N, ∑ d ∈ n.divisors, a d) =
      ∑ d ∈ Icc 1 N, a d * ((N / d : ℕ) : ℝ) :=
  divisor_prefix_eq_floor N a

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x ≤ X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) :=
  arithmeticResidual_eq_divisor_prefix_closed X ε x hX hx hxX

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) :=
  arithmeticResidual_eq_divisor_prefix X ε x hX hx hxX

example (X : ℕ) (x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X 0 x = 0 :=
  arithmeticResidual_zero_of_lt_cutoff X x hX hx hxX

example (X : ℕ) (hX : 1 ≤ X) : arithmeticResidual X 0 (X : ℝ) =
    ((X : ℝ) * mobiusReciprocalSum X : ℂ) :=
  arithmeticResidual_zero_damping_endpoint X hX
end

end DivisorFloorTransportLiteral

namespace DampedDivisorPrimePowerLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorPrimePower

example (ε : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 1 ≤ k) :
    dampedDivisorCoefficient ε (p ^ k) = 1 - Real.exp (-ε * Real.log (p : ℝ)) :=
  dampedDivisorCoefficient_prime_pow ε p k hp hk

example (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 2 ≤ n) (hnp : ¬IsPrimePow n) :
    dampedDivisorCoefficient ε n ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 :=
  dampedDivisorCoefficient_le_sq_of_not_prime_pow ε hε n hn hnp

end DampedDivisorPrimePowerLiteral

namespace TruncatedDivisorResidualLiteral
noncomputable section
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual DampedDivisorCoefficient
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator FiniteMobiusController

example (X : ℕ) (ε : ℝ) (n : ℕ) : truncatedDivisorCoefficient X ε n =
    ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
      (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) := rfl

example (X : ℕ) (ε : ℝ) (n : ℕ) (hn : n ≤ X) :
    truncatedDivisorCoefficient X ε n = dampedDivisorCoefficient ε n :=
  truncatedDivisorCoefficient_eq_full X ε n hn

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X ε d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      (∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n) -
        (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) :=
  damped_floor_eq_truncated_prefix X ε x hX

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) :=
  arithmeticResidual_eq_truncated_prefix X ε x hX hx
end

end TruncatedDivisorResidualLiteral

namespace DampedDivisorTaylorLiteral
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorTaylor DampedDivisorCoefficient MobiusFractionalResidual MobiusPoleNumerator

example (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
      ε * ArithmeticFunction.vonMangoldt n| ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 :=
  dampedDivisorCoefficient_first_order ε hε n hn

example (ε : ℝ) (hε : 0 ≤ ε) (N : ℕ) (hN : 1 ≤ N) :
    |(∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * (N : ℝ) * Real.log (N : ℝ) ^ 2 :=
  dampedDivisorCoefficient_prefix_first_order ε hε N hN

example (ε : ℝ) (hε : 0 ≤ ε) (x : ℝ) (hx : 1 ≤ x) :
    |(∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * x * Real.log x ^ 2 :=
  dampedDivisorCoefficient_real_prefix_first_order ε hε x hx

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (hx : 1 ≤ x)
    (hxX : x < X) :
    ‖arithmeticResidual X ε x - ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ))‖ ≤
        ε ^ 2 * x * Real.log x ^ 2 :=
  arithmeticResidual_prime_prefix_error X ε x hX hε hx hxX

end DampedDivisorTaylorLiteral

namespace TruncatedDivisorSignLiteral

open FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
example (X : ℕ) (ε : ℝ) (n : ℕ) :
    truncatedDivisorCoefficient X ε n =
      ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
        (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) := rfl
example (ε : ℝ) :
    truncatedDivisorCoefficient 3 ε 6 =
      1 - Real.exp (-ε * Real.log 2) - Real.exp (-ε * Real.log 3) :=
  FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorSign.truncated_three_six ε
example (ε : ℝ) (hε : 0 ≤ ε) (hsmall : ε ≤ 1 / 4) :
    truncatedDivisorCoefficient 3 ε 6 ≤ -(1 / 4 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorSign.truncated_three_six_le_neg_quarter ε hε hsmall

end TruncatedDivisorSignLiteral

namespace DampedDivisorRemainderNormLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorCoefficient FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm
open SourceWeightedMultiplier HalfLineExtension

example (ε Y u : ℝ) : divisorRemainderCore ε Y u =
    (Icc (0 : ℝ) (Real.log Y)).indicator
      (fun u : ℝ => (Real.exp (-u / 2) : ℂ) *
        (((∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
          ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) u := rfl

example (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorRemainderCore ε Y) 2 volume :=
  divisorRemainderCore_memLp ε hε Y hY

example (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    divisorRemainderVector ε hε Y hY =
      (divisorRemainderCore_memLp ε hε Y hY).toLp (divisorRemainderCore ε Y) := rfl

example (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖divisorRemainderVector ε hε Y hY‖ ≤ ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2 :=
  divisorRemainderVector_norm_le ε hε Y hY

example (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (divisorRemainderVector ε hε.le Y hY)‖ ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  sourceMultiplier_divisorRemainder_norm_le ε h hε hsmall hh Y hY

end DampedDivisorRemainderNormLiteral

namespace DivisorMainComparisonLiteral
noncomputable section
open MeasureTheory Set Finset Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainComparison DampedDivisorCoefficient TruncatedDivisorResidual
open MobiusPoleNumerator MobiusFractionalResidual FiniteMobiusController
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension

example (X : ℕ) (ε x : ℝ) : divisorMainResidual X ε x =
    (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) +
      ((∑ n ∈ Icc 1 ⌊x⌋₊,
        (dampedDivisorCoefficient ε n - truncatedDivisorCoefficient X ε n) : ℝ) : ℂ) +
      (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X *
        (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := rfl

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x = divisorMainResidual X ε x -
      (((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) :=
  arithmeticResidual_eq_main_sub_remainder X ε x hX hx

example (X : ℕ) (ε Y : ℝ) : divisorMainCore X ε Y =
    (Icc (0 : ℝ) (Real.log Y)).indicator
      (fun u : ℝ => (Real.exp (-u / 2) : ℂ) * divisorMainResidual X ε (Real.exp u)) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorMainCore X ε Y) 2 volume := divisorMainCore_memLp X ε hX hε Y hY

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    divisorMainVector X ε hX hε Y hY =
      ((divisorMainCore_memLp X ε hX hε Y hY).toLp (divisorMainCore X ε Y) : FullH) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  filtered_core_main_norm_difference_le X ε hX h hε hsmall hh Y hY
end

end DivisorMainComparisonLiteral

namespace DampedDivisorScheduleLiteral

open Filter MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceTailSchedule MobiusEndpointBudget MobiusPoleNumerator
open LogarithmicResidual LogarithmicResidualTail FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule
noncomputable section
example (X : ℕ) : fastEpsilon X = 1 / (X : ℝ) := rfl

example (X : ℕ) (hX : 4 ≤ X) :
    0 < fastEpsilon X ∧ fastEpsilon X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule.fast_schedule_admissible X hX

example (X : ℕ) (hX : 4 ≤ X) :
    ‖correctedNumerator X (1 / 2 + (fastEpsilon X : ℂ))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) /
      Real.sqrt (cutoffSchedule X) ≤ 3 / Real.sqrt (X : ℝ) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule.fast_endpoint_bounds X hX

example (X : ℕ) (hX : 4 ≤ X) :
    fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X - 1) *
      Real.log (cutoffSchedule X) ^ 2 ≤ 25 * logScale X ^ 3 / Real.sqrt (X : ℝ) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule.fast_taylor_bound X hX

example :
    Tendsto fastEpsilon atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => logScale X ^ 2 / (X : ℝ)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => 25 * logScale X ^ 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule.fast_explicit_budgets_tendsto

example :
    Tendsto (fun X : ℕ => ‖correctedNumerator X (1 / 2 + (fastEpsilon X : ℂ))‖)
      atTop (nhds 0) ∧
    Tendsto (fun X : ℕ =>
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) /
        Real.sqrt (cutoffSchedule X)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X - 1) *
      Real.log (cutoffSchedule X) ^ 2) atTop (nhds 0) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule.fast_actual_budgets_tendsto

example (X : ℕ) (hX : 4 ≤ X) :
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X (fastEpsilon X)))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log (cutoffSchedule X))).indicator (logResidual X (fastEpsilon X)))‖ ≤
        3 / Real.sqrt (X : ℝ) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule.fast_actual_tail_norm_bounds X hX

end

end DampedDivisorScheduleLiteral

namespace DivisorMainBudgetLiteral
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorSchedule SourceTailSchedule SourceWeightedMultiplier DivisorMainComparison
open ArithmeticErrorIntegrability FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainBudget
noncomputable section

example (X : ℕ) : comparisonBudget X =
  ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
    (logScale X ^ 2 / (X : ℝ) + 3 / Real.sqrt (X : ℝ) +
      25 * logScale X ^ 3 / Real.sqrt (X : ℝ)) := rfl

example (X : ℕ) (hX : 4 ≤ X) (h : ℝ) (hh : 0 ≤ h) :
    Real.sqrt (arithmeticErrorSq X (fastEpsilon X) h) ≤
      ‖sourceMultiplier (fastEpsilon X) h (fast_schedule_admissible X hX).1
        (fast_schedule_admissible X hX).2.1 hh
        (divisorMainVector X (fastEpsilon X) (by omega)
          (fast_schedule_admissible X hX).1.le (cutoffSchedule X)
          (fast_schedule_admissible X hX).2.2)‖ + comparisonBudget X := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainBudget.arithmeticError_le_main_budget X hX h hh

example : Tendsto comparisonBudget atTop (nhds 0) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainBudget.comparisonBudget_tendsto_zero

end

end DivisorMainBudgetLiteral
```
