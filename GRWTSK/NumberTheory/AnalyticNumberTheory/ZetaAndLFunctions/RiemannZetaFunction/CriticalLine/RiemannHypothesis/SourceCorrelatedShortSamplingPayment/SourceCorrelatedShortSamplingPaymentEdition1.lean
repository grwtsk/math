import SourcePhysicalQuotientStrip

/-!
# Correlated short sampling payments and their product fringe

UNCOMPILED source preparation. The two sampling payments are fixed by the
existing normalized source and universal coefficients. The doubly short
rectangle is grouped using the existing `shortPart` and finite convolution
owner. Its product fringe is retained; it is not replaced by the full
arithmetic convolution or bounded by a newly defined residual.

The original PLUS centering, physical deletion `d * k = m`, independent main
term and global baseline remain unchanged. The coefficient fixture at U=2,
n=4 refutes a full-convolution replacement only at the arithmetic coefficient
level. It supplies no weighted source inequality, monotonicity or RH claim.

AI attribution: developed with OpenAI Codex. The complete proof bodies below
have not been elaborated. Native, type/axiom, full proof-view, lint, independent
acceptance and complete verification gates remain separate.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelatedShortSamplingPayment

open ArithmeticFunction SourcePhysicalQuotientStrip SourceDivisorCounterterms
open SourceSamplingLedger SourceSamplingPointwise SourceShortSamplingInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimateMertensAbel
open EstimateBetaCentering EstimateBetaSourceRecombination EstimateVaughanTranslationGate

noncomputable section

/-- The two independently specified sampling payments retain the same closed short axes. -/
def samplingPaymentAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, realMoebius d *
    (sourceLogSamplingMainTerm A d -
      ∑ m ∈ Finset.Icc 1 U,
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))

private theorem sum_shortPart_weighted (U N : ℕ) (hUN : U ≤ N)
    (f : ArithmeticFunction ℝ) (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, shortPart U f n * w n) =
      ∑ n ∈ Finset.Icc 1 U, f n * w n := by
  classical
  simp_rw [shortPart_apply, ite_mul, zero_mul]
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

private theorem short_rectangle_eq_truncated_product (U : ℕ) (w : ℕ → ℝ) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * w (d * m)) =
    ∑ n ∈ Finset.Icc 1 (U * U),
      (shortPart U (moebius : ArithmeticFunction ℝ) *
        shortPart U vonMangoldt) n * w n := by
  classical
  by_cases hU : 1 ≤ U
  · have hUN : U ≤ U * U := by nlinarith
    let W : ℕ → ℝ := fun n => if n ≤ U * U then w n else 0
    have hW (n : ℕ) (hn : U * U < n) : W n = 0 := by
      simp [W, Nat.not_le.mpr hn]
    have hv := finite_convolution_sum (U * U)
      (shortPart U (moebius : ArithmeticFunction ℝ))
      (shortPart U vonMangoldt) W hW
    have hl :
        (∑ n ∈ Finset.Icc 1 (U * U),
          (shortPart U (moebius : ArithmeticFunction ℝ) *
            shortPart U vonMangoldt) n * W n) =
        ∑ n ∈ Finset.Icc 1 (U * U),
          (shortPart U (moebius : ArithmeticFunction ℝ) *
            shortPart U vonMangoldt) n * w n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [show W n = w n from if_pos (Finset.mem_Icc.mp hn).2]
    rw [hl] at hv
    simp_rw [mul_assoc, ← Finset.mul_sum] at hv
    rw [sum_shortPart_weighted U (U * U) hUN] at hv
    have hi (d : ℕ) :
        (∑ m ∈ Finset.Icc 1 (U * U), shortPart U vonMangoldt m * W (d * m)) =
        ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * W (d * m) :=
      sum_shortPart_weighted U (U * U) hUN vonMangoldt (fun m => W (d * m))
    simp_rw [hi] at hv
    calc
      _ = ∑ d ∈ Finset.Icc 1 U, (moebius : ArithmeticFunction ℝ) d *
          ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * W (d * m) := by
        apply Finset.sum_congr rfl
        intro d hd
        rw [intCoe_apply]
        change (moebius d : ℝ) * _ = (moebius d : ℝ) * _
        congr 1
        apply Finset.sum_congr rfl
        intro m hm
        have hp : d * m ≤ U * U :=
          Nat.mul_le_mul (Finset.mem_Icc.mp hd).2 (Finset.mem_Icc.mp hm).2
        rw [show W (d * m) = w (d * m) from if_pos hp]
      _ = _ := hv.symm
  · have hU0 : U = 0 := by omega
    subst U
    simp

/-- Product grouping retains the actual truncated coefficient on the whole U-squared carrier. -/
theorem samplingPaymentAt_eq_truncated_product_sum (A : ℝ) (U : ℕ) :
    samplingPaymentAt A U =
      (∑ d ∈ Finset.Icc 1 U, realMoebius d * sourceLogSamplingMainTerm A d) -
      ∑ n ∈ Finset.Icc 1 (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) *
          shortPart U vonMangoldt) n * sourcePlainSamplingMainTerm A n := by
  unfold samplingPaymentAt
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  rw [short_rectangle_eq_truncated_product U
    (fun n => sourcePlainSamplingMainTerm A (n : ℝ))]

/-- Below the closed short cutoff the truncated coefficient equals the full convolution. -/
theorem truncated_coefficient_eq_full_of_le (U n : ℕ) (hn : n ≤ U) :
    (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n =
      ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n := by
  classical
  simp only [ArithmeticFunction.mul_apply]
  apply Finset.sum_congr rfl
  intro p hp
  have hpn := Nat.mem_divisorsAntidiagonal.mp hp
  have hp1 : 0 < p.1 := Nat.pos_of_ne_zero (left_ne_zero_of_mul (hpn.1 ▸ hpn.2))
  have hp2 : 0 < p.2 := Nat.pos_of_ne_zero (right_ne_zero_of_mul (hpn.1 ▸ hpn.2))
  have h1 : p.1 ≤ U :=
    (Nat.le_mul_of_pos_right p.1 hp2).trans (hpn.1 ▸ hn)
  have h2 : p.2 ≤ U :=
    (Nat.le_mul_of_pos_left p.2 hp1).trans (hpn.1 ▸ hn)
  simp only [shortPart_apply, if_pos h1, if_pos h2]

/-- At the actual cutoff this is the existing short-log payment minus the short-plain payment. -/
theorem actual_samplingPayment_eq_existing_short_inventories (A : ℝ) :
    samplingPaymentAt A (vaughanCutoff A) =
      shortLogMainTerm A (sourceLogSamplingMainTerm A) -
        shortPlainMainTerm A (sourcePlainSamplingMainTerm A) := by
  unfold samplingPaymentAt shortLogMainTerm shortPlainMainTerm
  simp_rw [mul_sub, Finset.sum_sub_distrib, Finset.mul_sum, mul_assoc]

/-- The original independent main term retains its mean and baseline before payment grouping. -/
theorem independentMainTerm_eq_mean_baseline_sub_payment (A : ℝ) :
    independentMainTerm A =
      alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A + globalBaseline A -
        samplingPaymentAt A (vaughanCutoff A) := by
  rw [actual_samplingPayment_eq_existing_short_inventories, independentMainTerm,
    coefficientMainTerm_eq_sampling_inventory]
  unfold globalBaseline sourceLogSamplingMainTerm sourcePlainSamplingMainTerm
    logLinearMain plainLinearMain
  ring

/-- The target retains the independently defined baseline and physical unequal-index sector. -/
theorem jointSignedRemainder_eq_grouped_payment_sub_physicalOff
    (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * sourceLogSamplingMainTerm A d) -
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        (shortPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          shortPart (vaughanCutoff A) vonMangoldt) n *
            sourcePlainSamplingMainTerm A n) -
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  classical
  have hp : jointSignedRemainder A = -globalBaseline A +
      samplingPaymentAt A (vaughanCutoff A) -
        ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
          physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
    rw [jointSignedRemainder_eq_divisor_remainders A hA]
    unfold samplingPaymentAt
    rw [add_sub_assoc, ← Finset.sum_sub_distrib]
    congr 1
    apply Finset.sum_congr rfl
    intro d hd
    unfold divisorRemainder
    rw [divisorMultiplesInteraction_eq_physicalOffRows A d (Finset.mem_Icc.mp hd).1]
    ring
  rw [hp, samplingPaymentAt_eq_truncated_product_sum]
  ring

/-- Actual arithmetic coefficients: the square product 4 survives the U=2 truncated fringe. -/
theorem truncated_coefficient_two_four :
    (shortPart 2 (moebius : ArithmeticFunction ℝ) * shortPart 2 vonMangoldt) 4 =
      -Real.log 2 := by
  have hd : Nat.divisorsAntidiagonal 4 = {(1, 4), (2, 2), (4, 1)} := by decide
  have hm : (moebius 2 : ℝ) = -1 := by
    rw [moebius_apply_prime Nat.prime_two]
    norm_num
  have hl : vonMangoldt 2 = Real.log 2 := vonMangoldt_apply_prime Nat.prime_two
  norm_num [ArithmeticFunction.mul_apply, hd, shortPart_apply, intCoe_apply, hm, hl]

/-- The full arithmetic convolution has coefficient zero at the same square product. -/
theorem full_coefficient_four_zero :
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) 4 = 0 := by
  have hd : Nat.divisorsAntidiagonal 4 = {(1, 4), (2, 2), (4, 1)} := by decide
  have hm : (moebius 2 : ℝ) = -1 := by
    rw [moebius_apply_prime Nat.prime_two]
    norm_num
  have hl : vonMangoldt 2 = Real.log 2 := vonMangoldt_apply_prime Nat.prime_two
  have h4 : vonMangoldt 4 = Real.log 2 := by
    have h := vonMangoldt_apply_pow (n := 2) (k := 2) (by decide)
    norm_num at h
    exact h.trans hl
  norm_num [ArithmeticFunction.mul_apply, hd, hm, hl, h4, intCoe_apply]

/-- Coefficient-level obstruction only: completing the product fringe changes the payment data. -/
theorem truncated_square_fringe_differs_from_full :
    (shortPart 2 (moebius : ArithmeticFunction ℝ) * shortPart 2 vonMangoldt) 4 ≠
      ((moebius : ArithmeticFunction ℝ) * vonMangoldt) 4 := by
  rw [truncated_coefficient_two_four, full_coefficient_four_zero]
  exact neg_ne_zero.mpr (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedShortSamplingPayment
