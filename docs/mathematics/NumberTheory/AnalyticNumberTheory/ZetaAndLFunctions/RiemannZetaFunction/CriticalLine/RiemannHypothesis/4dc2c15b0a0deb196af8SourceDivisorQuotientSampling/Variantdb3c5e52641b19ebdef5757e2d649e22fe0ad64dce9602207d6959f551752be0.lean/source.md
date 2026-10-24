# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.4dc2c15b0a0deb196af8SourceDivisorQuotientSampling.Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dea9826e01e8b9d69853dc9311ed25d4a10e44fa` · SHA-256 `e36bec599b4160d1b1d844ab96bbefe8cd117719ed1eecf6457f3787f0e97f95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMultiplesInteractionEqQuotientSubDiagonal.Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DivisorMultiplesInteractionEqQuotientSubDiagonal.Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/4dc2c15b0a0deb196af8-SourceDivisorQuotientSampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceDivisorCounterterms
import FormalResearch.RiemannHypothesis.SourceSamplingPointwise

/-!
# Actual divisor multiples: quotient sampling with the deleted diagonal retained

AI attribution: OpenAI Codex. Every divisor block uses the original open-closed
long inventory and literal natural quotient endpoints. The unequal-index
condition is restored by subtracting its actual divisible diagonal. A full
positive-axis sample has the proved second-order source remainder; transporting
its retained main row to the compensated target is an additional signed task.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMultiplesInteractionEqQuotientSubDiagonal.Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDivisorQuotientSampling

open ArithmeticFunction
open scoped BigOperators
open SourceVaughanHankel SourceDivisorCounterterms SourceDivisorClassification
open SourcePositiveSampling SourceSamplingTaylor SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel

noncomputable section

/-- The original multiples sector is exactly its literal quotient row minus the deleted diagonal. -/
theorem divisorMultiplesInteraction_eq_quotient_sub_diagonal
    (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorMultiplesInteraction A d =
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) -
      ∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0 := by
  classical
  unfold divisorMultiplesInteraction
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  let f : ℕ → ℝ := fun n =>
    if d ∣ n then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0
  have he : (∑ n ∈ (longInventory A).filter (fun n => n ≠ m), f n) =
      (∑ n ∈ longInventory A, f n) - f m := by
    rw [Finset.sum_filter]
    have ht : (∑ n ∈ longInventory A, if n ≠ m then f n else 0) =
        ∑ n ∈ longInventory A, (f n - if n = m then f n else 0) := by
      apply Finset.sum_congr rfl
      intro n _
      by_cases hn : n = m <;> simp [hn]
    rw [ht, Finset.sum_sub_distrib]
    simp only [Finset.sum_ite_eq', hm, if_true]
  rw [he]
  congr 1
  calc
    (∑ n ∈ longInventory A, f n) = vonMangoldt m *
        (∑ n ∈ longInventory A,
          if d ∣ n then sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      dsimp only [f]
      split_ifs <;> simp
    _ = _ := by
      rw [longInventory, sum_multiples_eq_quotient_interval _ _ d hd]

/-- The original divisor remainder keeps the entire extracted quotient and divisible diagonal. -/
theorem divisorRemainder_eq_quotient_sampling
    (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorRemainder A d =
      -(∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
      (∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
      sourceLogSamplingMainTerm A d -
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) := by
  unfold divisorRemainder
  rw [divisorMultiplesInteraction_eq_quotient_sub_diagonal A d hd]
  ring

private theorem actual_multiple_eq_plain_sample
    (A : ℝ) {m d j : ℕ} (hm : 0 < m) (hd : 0 < d) (hj : 0 < j) :
    sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) =
      plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
  have hk : 0 < ((d * m : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hd hm
  have hjr : 0 < (j : ℝ) := by exact_mod_cast hj
  rw [plainProfile_eq_of_pos A _ hjr, sourcePlainSamplingTerm_eq_source_weight A hk hjr]
  simp only [Nat.cast_mul]
  congr 1
  ring

/-- The full actual multiplied sample retains its independent main term and exact A^-2 error. -/
theorem actual_full_multiple_sample_sub_main_abs_le
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    |(∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
        sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)) := by
  have hs : (∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) =
      ∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
        plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
    apply Finset.sum_congr rfl
    intro j hj
    exact actual_multiple_eq_plain_sample A hm hd (by have := (Finset.mem_Icc.mp hj).1; omega)
  rw [hs]
  exact plainProfile_sum_sub_mainTerm_abs_le hA (by
    exact_mod_cast (by nlinarith : 1 ≤ d * m))

end
end FormalResearch.RiemannHypothesis.SourceDivisorQuotientSampling
```
