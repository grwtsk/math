# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.595f9c34977a990a81f3SourceStrictComplementaryLocalization.Variantd29e613a4eac4e4853bee9f13c8df6bc9ec2b823e79eed93f57f07fa3beafe3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4bc76777e6915ced84eb1c26f1611483aca63a6` · SHA-256 `d29e613a4eac4e4853bee9f13c8df6bc9ec2b823e79eed93f57f07fa3beafe3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceStrictComplementaryAbel

/-!
The actual strict d>U convolution has no atom through the closed integer U.
The complement-minus-plain cumulative source therefore equals -floor(x)
there. The full source pairing is localized with its genuine signed tail.
No sign of h' or quantitative bound for that tail is assumed.
Research direction: grwtsk contributors. Formal adapter: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceStrictComplementaryLocalization

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceStrictComplementaryAbel
open SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory ContinuousResearch.ActualSignedStieltjes
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel

noncomputable section

/-- No strict divisor of n can exceed U when n is at most U. -/
theorem strictDivisorLogCoefficient_zero_of_le {U n : ℕ} (hn : n ≤ U) :
    strictDivisorLogCoefficient U n = 0 := by
  unfold strictDivisorLogCoefficient
  apply Finset.sum_eq_zero
  intro dk hdk
  have hd : dk.1 ≤ n := Nat.divisor_le (Nat.fst_mem_divisors_of_mem_antidiagonal hdk)
  simp only [if_neg (not_lt.mpr (hd.trans hn))]

/-- The complete short convolution equals the actual Mangoldt atom through U. -/
theorem shortDivisorLogCoefficient_eq_vonMangoldt_of_le {U n : ℕ} (hn : n ≤ U) :
    shortDivisorLogCoefficient U n = ArithmeticFunction.vonMangoldt n := by
  have hs := strict_add_short_eq_vonMangoldt U n
  rw [strictDivisorLogCoefficient_zero_of_le hn, zero_add] at hs
  exact hs

/-- Every closed short atom is retained, giving actual psi through the floor cutoff. -/
theorem shortDivisorCumulative_eq_psi_of_le {U : ℕ} {x : ℝ} (hx : x ≤ (U : ℝ)) :
    shortDivisorCumulative U x = Chebyshev.psi x := by
  unfold shortDivisorCumulative
  rw [Chebyshev.psi_eq_sum_Icc]
  apply Finset.sum_congr rfl
  intro n hn
  exact shortDivisorLogCoefficient_eq_vonMangoldt_of_le
    ((Finset.mem_Icc.mp hn).2.trans (Nat.floor_le_of_le hx))

/-- The actual joint cumulative source equals the negative closed floor throughout x<=U. -/
theorem complementaryCumulative_eq_neg_floor_of_le {U : ℕ} {x : ℝ} (hx : x ≤ (U : ℝ)) :
    complementaryCumulative U x = -(⌊x⌋₊ : ℝ) := by
  rw [complementaryCumulative_eq, shortDivisorCumulative_eq_psi_of_le hx]
  ring

/-- The exact early plain contribution, without inferring a sign for h'. -/
def complementaryEarlyBaseline (A : ℝ) : ℝ :=
  ∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ),
    (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x

/-- The genuine signed strict complementary tail up to the actual real touching endpoint. -/
def complementarySignedTail (A : ℝ) : ℝ :=
  -(∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
    complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x)

theorem actual_cutoff_order (A : ℝ) (hA : 1 ≤ A) :
    (1 : ℝ) ≤ (vaughanCutoff A : ℝ) ∧ (vaughanCutoff A : ℝ) ≤ Real.exp (2 * A) := by
  constructor
  · exact_mod_cast vaughanCutoff_pos A hA
  · have hn := vaughanCutoff_le_sourceKernelCutoff A hA
    have hf := Nat.floor_le (Real.exp_pos (2 * A)).le
    exact (by exact_mod_cast hn : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ)).trans hf

/-- The early interval contains exactly -floor(x), including x=U. -/
theorem complementary_early_integral_eq (A : ℝ) :
    (∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ),
      complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) =
      -complementaryEarlyBaseline A := by
  unfold complementaryEarlyBaseline
  rw [← integral_neg]
  apply setIntegral_congr_fun measurableSet_Ioc
  intro x hx
  dsimp only
  rw [complementaryCumulative_eq_neg_floor_of_le hx.2]
  ring

/-- Full L-B localizes into its exact early floor term and complete genuine signed tail. -/
theorem literal_L_sub_plain_eq_early_add_tail (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      complementaryEarlyBaseline A + complementarySignedTail A := by
  have hU := (actual_cutoff_order A hA).1
  have hUX := (actual_cutoff_order A hA).2
  let f : ℝ → ℝ := fun x => complementaryCumulative (vaughanCutoff A) x *
    deriv (plainProfile A 1) x
  have hi : IntegrableOn f (Ioi (1 : ℝ)) := complementary_derivative_integrable_Ioi hA
  have ht : IntegrableOn f (Ioi (vaughanCutoff A : ℝ)) :=
    hi.mono_set (Ioi_subset_Ioi hU)
  have hs := intervalIntegral.integral_interval_add_Ioi hi ht
  rw [intervalIntegral.integral_of_le hU] at hs
  have he : (∫ x in Ioi (vaughanCutoff A : ℝ), f x) =
      ∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)), f x := by
    rw [← Ioc_union_Ioi_eq_Ioi hUX]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro x hx
    dsimp only [f]
    rw [actual_derivative_zero_above hA hx, mul_zero]
  rw [he] at hs
  change (∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ),
    complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) +
    (∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
      complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) =
    ∫ x in Ioi (1 : ℝ), complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x at hs
  rw [complementary_early_integral_eq] at hs
  rw [literal_L_sub_plain_eq_full_Abel hA, ← hs]
  unfold complementarySignedTail
  ring

end
end FormalResearch.RiemannHypothesis.SourceStrictComplementaryLocalization
```
