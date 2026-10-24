# Complete source: GRWTSK.Analysis.PrimeIncidenceDecoderBoundary.Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93842453ac8e2cd9ab3a932c2aa42ca54cfd18ca` · SHA-256 `e0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeCoherentPricing
import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Actual signed source atoms cannot be decoded from prime membership alone

B19-L2's information boundary is instantiated on actual centered Mangoldt atoms
and the unchanged normalized source correlation. At every A>=8, the atoms at
2 and 3 have opposite signs while their nonnegative prime-membership statistic
is identical. No scalar decoder of that statistic recovers both atoms. This
specific statistic is not asserted to be the complete GPY/Zhang sieve data;
any proposed richer statistic still needs its own exact decoder or residual.

Human signed-source and transfer direction: grwtsk contributors. Local actual
source counterexample: OpenAI Codex. Mathlib prime, Mangoldt, logarithm and
exponential infrastructure retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimeIncidenceDecoderBoundary
open CenteredVaughan NativeCoherentPricing
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
noncomputable section

/-- The incidence in this module, with the following exact parameterization.

def incidence (n : ℕ) : ℝ := if n.Prime then 1 else 0
-/
def incidence (n : ℕ) : ℝ := if n.Prime then 1 else 0

/-- The actual atom in this module, with the following exact parameterization.

def actualAtom (A : ℝ) (n : ℕ) : ℝ := centeredMangoldt n * sourceCorrelation
explicitSecondDerivative A (Real.log n) / Real.sqrt n
-/
def actualAtom (A : ℝ) (n : ℕ) : ℝ := centeredMangoldt n *
  sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n

theorem actual_correlation_positive_on_two_log_width {A t : ℝ} (hA : 8 ≤ A)
    (ht : |t| ≤ 2) : (31 / 96 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hsqA : 64 ≤ A ^ 2 := by nlinarith
  have hsq : t ^ 2 ≤ 4 := by nlinarith [(abs_le.mp ht).1, (abs_le.mp ht).2]
  have hcoef : 162826 / (7623 * A ^ 2) ≤ (65 / 192 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 7623 * A ^ 2)).mpr
    nlinarith
  have h := sourceCorrelation_linear_taylor_bound hA1 0 t
  simp only [zero_add, actual_correlation_anchor hA1, sourceCorrelation_deriv_zero hAp,
    mul_zero, sub_zero] at h
  have hprice : 162826 / (7623 * A ^ 2) * t ^ 2 / 2 ≤ (65 / 96 : ℝ) := by
    have h := mul_le_mul hcoef hsq (sq_nonneg t) (by norm_num : (0 : ℝ) ≤ 65 / 192)
    linarith
  have hleft := (abs_le.mp (h.trans hprice)).1
  linarith

private theorem log_two_less_one : Real.log (2 : ℝ) < 1 :=
  (Real.log_lt_iff_lt_exp (by norm_num)).mpr Real.exp_one_gt_two

private theorem log_three_greater_one : 1 < Real.log (3 : ℝ) :=
  (Real.lt_log_iff_exp_lt (by norm_num)).mpr Real.exp_one_lt_three

private theorem log_three_less_two : Real.log (3 : ℝ) < 2 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num)).mpr
  have he : Real.exp (2 : ℝ) = Real.exp 1 ^ 2 := by simp [← Real.exp_nat_mul]
  rw [he]
  nlinarith [Real.exp_one_gt_two]

theorem actual_second_atom_negative {A : ℝ} (hA : 8 ≤ A) : actualAtom A 2 < 0 := by
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hc := actual_correlation_positive_on_two_log_width hA
    (by rw [abs_of_nonneg hl0]; linarith [log_two_less_one])
  unfold actualAtom
  rw [centeredMangoldt_apply (by norm_num : 2 ≤ 2),
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  norm_num only [Nat.cast_ofNat]
  apply div_neg_of_neg_of_pos _ (by positivity)
  exact mul_neg_of_neg_of_pos (by linarith [log_two_less_one]) (by linarith)

theorem actual_third_atom_positive {A : ℝ} (hA : 8 ≤ A) : 0 < actualAtom A 3 := by
  have hl0 : 0 ≤ Real.log (3 : ℝ) := Real.log_nonneg (by norm_num)
  have hc := actual_correlation_positive_on_two_log_width hA
    (by rw [abs_of_nonneg hl0]; linarith [log_three_less_two])
  unfold actualAtom
  rw [centeredMangoldt_apply (by norm_num : 2 ≤ 3),
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num only [Nat.cast_ofNat]
  exact div_pos (mul_pos (by linarith [log_three_greater_one]) (by linarith)) (by positivity)

theorem prime_incidence_has_same_actual_fiber : incidence 2 = incidence 3 := by
  norm_num [incidence]

theorem actual_source_atoms_differ_on_incidence_fiber {A : ℝ} (hA : 8 ≤ A) :
    actualAtom A 2 ≠ actualAtom A 3 := by
  have hn := actual_second_atom_negative hA
  have hp := actual_third_atom_positive hA
  linarith

theorem no_incidence_only_decoder_for_actual_source {A : ℝ} (hA : 8 ≤ A) :
    ¬ ∃ decode : ℝ → ℝ, ∀ n : ℕ, 2 ≤ n → decode (incidence n) = actualAtom A n := by
  rintro ⟨decode, hdecode⟩
  have h2 := hdecode 2 (by norm_num)
  have h3 := hdecode 3 (by norm_num)
  rw [prime_incidence_has_same_actual_fiber] at h2
  exact actual_source_atoms_differ_on_incidence_fiber hA (h2.symm.trans h3)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeIncidenceDecoderBoundary
```
