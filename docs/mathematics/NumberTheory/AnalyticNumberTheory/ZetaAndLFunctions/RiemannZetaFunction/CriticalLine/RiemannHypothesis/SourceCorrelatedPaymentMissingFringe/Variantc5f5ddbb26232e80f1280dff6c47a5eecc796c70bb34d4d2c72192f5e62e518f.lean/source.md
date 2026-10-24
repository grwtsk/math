# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelatedPaymentMissingFringe.Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32d6d3a5300399be51975a8f0032f1b771235ab1` · SHA-256 `f734fd4a0ca1ca275193069f1deaea9d789cbb03d34d76b5ade3e994f490ef90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LongLongZeroOnSquare.Variant9f4073e55474f0090fc3c2539bd91db90e310706852f1b72be8987dd732a409e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f4073e55474f0090fc3c2539bd91db90e310706852f1b72be8987dd732a409e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LongLongZeroOnSquare.Variant9f4073e55474f0090fc3c2539bd91db90e310706852f1b72be8987dd732a409e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9f4073e55474f0090fc3c2539bd91db90e310706852f1b72be8987dd732a409e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle32/mutation-issue-regent-v1/payment-missing-fringe-reconstruction-v1/SourceCorrelatedPaymentMissingFringe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelatedShortSamplingPayment

/-!
# The two missing divisor sectors of the short payment

UNCOMPILED source preparation. On n <= U*U, the two strict long divisor sectors
are disjoint: two factors greater than U would have product greater than U*U.
The truncated coefficient is therefore the full coefficient minus both signed
complements. The actual normalized Jplain weights and the independent Jlog
payment are retained when the coefficient identity is summed.

No sign or size is assigned to either complement. The actual joint-target
adapter retains the independently defined global baseline, PLUS centering and
the physical unequal-index sector with deletion d*k=m. This is a fixed-source
arithmetic identity, not a real-scale flux, upper estimate or RH witness.

AI attribution: developed with OpenAI Codex. The complete proof bodies below
remain uncompiled; runtime roles, audits, native lints and acceptance are pending.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LongLongZeroOnSquare.Variant9f4073e55474f0090fc3c2539bd91db90e310706852f1b72be8987dd732a409e

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentMissingFringe

open ArithmeticFunction SourceCorrelatedShortSamplingPayment SourcePhysicalQuotientStrip
open SourceDivisorCounterterms SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource

noncomputable section

private theorem long_long_zero_on_square (U n : ℕ) (hn : n ≤ U * U)
    (f g : ArithmeticFunction ℝ) :
    (longPart U f * longPart U g) n = 0 := by
  classical
  rw [ArithmeticFunction.mul_apply]
  apply Finset.sum_eq_zero
  intro p hp
  have hprod := (Nat.mem_divisorsAntidiagonal.mp hp).1
  have hboth : ¬(U < p.1 ∧ U < p.2) := by
    intro h
    have h1 : U + 1 ≤ p.1 := by omega
    have h2 : U + 1 ≤ p.2 := by omega
    have hm := Nat.mul_le_mul h1 h2
    rw [hprod] at hm
    nlinarith
  by_cases h1 : U < p.1
  · have h2 : ¬U < p.2 := by
      intro h2
      exact hboth ⟨h1, h2⟩
    simp only [longPart_apply, if_neg h2, mul_zero]
  · simp only [longPart_apply, if_neg h1, zero_mul]

private theorem first_long_eq_divisor_complement (U n : ℕ) :
    (longPart U (moebius : ArithmeticFunction ℝ) * vonMangoldt) n =
      ∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.1),
        (moebius p.1 : ℝ) * vonMangoldt p.2 := by
  classical
  simp only [ArithmeticFunction.mul_apply, longPart_apply, intCoe_apply,
    ite_mul, zero_mul, Finset.sum_filter]

private theorem second_long_eq_divisor_complement (U n : ℕ) :
    ((moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt) n =
      ∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.2),
        (moebius p.1 : ℝ) * vonMangoldt p.2 := by
  classical
  simp only [ArithmeticFunction.mul_apply, longPart_apply, intCoe_apply,
    mul_ite, mul_zero, Finset.sum_filter]

/-- Both missing divisor sectors are subtracted on the complete square carrier. -/
theorem truncated_coefficient_eq_full_sub_missing_sectors
    (U n : ℕ) (hn : n ≤ U * U) :
    (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n =
      ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n -
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.1),
          (moebius p.1 : ℝ) * vonMangoldt p.2) -
        ∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.2),
          (moebius p.1 : ℝ) * vonMangoldt p.2 := by
  have hi :
      shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt =
        (moebius : ArithmeticFunction ℝ) * vonMangoldt -
          longPart U (moebius : ArithmeticFunction ℝ) * vonMangoldt -
          (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt +
          longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt := by
    unfold longPart
    ring
  have he := congrArg (fun f : ArithmeticFunction ℝ => f n) hi
  change (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n =
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n -
      (longPart U (moebius : ArithmeticFunction ℝ) * vonMangoldt) n -
      ((moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt) n +
      (longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt) n at he
  rw [long_long_zero_on_square U n hn, add_zero,
    first_long_eq_divisor_complement, second_long_eq_divisor_complement] at he
  exact he

/-- Completing the product payment requires adding both signed normalized complements. -/
theorem samplingPaymentAt_eq_full_payment_add_missing_sectors (A : ℝ) (U : ℕ) :
    samplingPaymentAt A U =
      (∑ d ∈ Finset.Icc 1 U, realMoebius d * sourceLogSamplingMainTerm A d) -
      (∑ n ∈ Finset.Icc 1 (U * U),
        ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) +
      (∑ n ∈ Finset.Icc 1 (U * U),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.1),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n) +
      ∑ n ∈ Finset.Icc 1 (U * U),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.2),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n := by
  classical
  have hs :
      (∑ n ∈ Finset.Icc 1 (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) =
      (∑ n ∈ Finset.Icc 1 (U * U),
        ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) -
      (∑ n ∈ Finset.Icc 1 (U * U),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.1),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n) -
      ∑ n ∈ Finset.Icc 1 (U * U),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.2),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n := by
    simp only [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    rw [truncated_coefficient_eq_full_sub_missing_sectors U n (Finset.mem_Icc.mp hn).2]
    ring
  rw [samplingPaymentAt_eq_truncated_product_sum, hs]
  ring

/-- The actual target retains its independent baseline and physical unequal-index sector. -/
theorem jointSignedRemainder_eq_full_payment_add_missing_sectors_sub_physicalOff
    (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * sourceLogSamplingMainTerm A d) -
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) +
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => vaughanCutoff A < p.1),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n) +
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => vaughanCutoff A < p.2),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n) -
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  have ht := jointSignedRemainder_eq_grouped_payment_sub_physicalOff A hA
  have hp := samplingPaymentAt_eq_truncated_product_sum A (vaughanCutoff A)
  have hc := samplingPaymentAt_eq_full_payment_add_missing_sectors A (vaughanCutoff A)
  linear_combination ht - hp + hc

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentMissingFringe
```
