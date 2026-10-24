# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceSquarefreeSamplingConsumer.Variant70328fc82d3112004c43cfc1d795267fa5e20acdbaeec6d6f6f9d68265d7120c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58adf77320ea09f5f4b739b4bdfa09a54b6607a2` · SHA-256 `5e99c55ebac147d4bb8fec7de31e3567861617f38804663a16885eb672eedeff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualSquarefreeWeightSum.Variant82606d85795838a984f0016c047b8f8ba33e1eeccd8118ebd9ed618947eda247","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82606d85795838a984f0016c047b8f8ba33e1eeccd8118ebd9ed618947eda247","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualSquarefreeWeightSum.Variant82606d85795838a984f0016c047b8f8ba33e1eeccd8118ebd9ed618947eda247","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"82606d85795838a984f0016c047b8f8ba33e1eeccd8118ebd9ed618947eda247","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-sampling-consumer/fresh-replay/SourceSquarefreeSamplingConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeSampling
import SourceExactSamplingTail

/-!
Original short sampling errors use actual finite Moebius support before budgets.
Direction: grwtsk contributors. Native source adaptation: Codex root.
Old source quadrature/Chebyshev proofs retain their authorship. graph_review
constructed the support application; root retained the exact unit refinement.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualSquarefreeWeightSum.Variant82606d85795838a984f0016c047b8f8ba33e1eeccd8118ebd9ed618947eda247

set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeSamplingConsumer
open RH16SquarefreeSampling RH16ExactSamplingTail RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis
open SourceShortSamplingInventory SourceShortSamplingPointwise SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateVaughanSource EstimateSourceMobiusKernel
open SourceSamplingCoefficients SourceSamplingPointwise SourcePositiveSampling SourcePairing
open EstimatePlainKernel EstimateMobiusSplit

private theorem actual_squarefree_weight_sum (N : Nat) :
    (Finset.Icc 1 N).sum (fun d => abs (realMoebius d) / Real.sqrt (d : Real)) <=
      (3 / 2 : Real) * Real.sqrt (N : Real) := by
  simpa only [squarefreeWeightSum, realMoebius] using squarefreeWeightSum_three_halves N

theorem shortLog_error_le_of_sampling_error_squarefree {A E : ℝ} (hA : 1 ≤ A) (hE : 0 ≤ E)
    (J₁ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |sourceMobiusKernel A d - J₁ d| ≤ E / (A ^ 2 * Real.sqrt d)) :
    |shortLogSource A - shortLogMainTerm A J₁| ≤ (3 / 2 : ℝ) * E / A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  unfold shortLogSource shortLogMainTerm
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d * sourceMobiusKernel A d - realMoebius d * J₁ d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), E / A ^ 2 * (|realMoebius d| / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [← mul_sub, abs_mul]
      calc
        _ ≤ |realMoebius d| * (E / (A ^ 2 * Real.sqrt d)) :=
          mul_le_mul_of_nonneg_left (herr d hd) (abs_nonneg _)
        _ = _ := by ring
    _ = E / A ^ 2 * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ E / A ^ 2 * ((3 / 2) * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (actual_squarefree_weight_sum _) (by positivity)
    _ ≤ E / A ^ 2 * ((3 / 2) * A) := by
      gcongr
      exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']


theorem shortPlain_error_uniform_le_of_sampling_error_squarefree {A E : ℝ} (hA : 1 ≤ A)
    (hE : 0 ≤ E) (J₀ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∀ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |sourcePlainKernel A ((d * m : ℕ) : ℝ) - J₀ ((d * m : ℕ) : ℝ)| ≤
          E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) :
    |shortPlainSource A - shortPlainMainTerm A J₀| ≤
      3 * (Real.log 4 + 4) * E := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hcoef : 0 ≤ Real.log 4 + 4 := by positivity
  unfold shortPlainSource shortPlainMainTerm
  rw [← Finset.sum_sub_distrib]
  simp_rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * ArithmeticFunction.vonMangoldt m *
            sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          realMoebius d * ArithmeticFunction.vonMangoldt m * J₀ ((d * m : ℕ) : ℝ)| := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        E / A ^ 2 * (|realMoebius d| / Real.sqrt d) *
          (ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro m hm
      rw [← mul_sub, abs_mul, abs_mul,
        abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      calc
        _ ≤ (|realMoebius d| * ArithmeticFunction.vonMangoldt m) *
          (E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) := by
          exact mul_le_mul_of_nonneg_left (herr d hd m hm)
            (mul_nonneg (abs_nonneg _) ArithmeticFunction.vonMangoldt_nonneg)
        _ = _ := by
          rw [Nat.cast_mul, Real.sqrt_mul (by positivity : (0 : ℝ) ≤ d)]
          ring
    _ = E / A ^ 2 *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt d) *
        (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul, ← Finset.mul_sum]
    _ ≤ E / A ^ 2 * ((3 / 2) * Real.sqrt (vaughanCutoff A)) *
        (2 * (Real.log 4 + 4) * Real.sqrt (vaughanCutoff A)) := by
      gcongr
      · exact actual_squarefree_weight_sum _
      · exact sum_vonMangoldt_div_sqrt_le _
    _ ≤ E / A ^ 2 * ((3 / 2) * A) * (2 * (Real.log 4 + 4) * A) := by
      gcongr <;> exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']

theorem actual_shortLog_error_tail_squarefree {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)| ≤
      144 * tailEnergyCoefficient Q / A := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortLog_error_le_of_sampling_error_squarefree (hQ.trans hQA)
    (show 0 ≤ 96 * tailEnergyCoefficient Q by positivity)
    (sourceLogSamplingMainTerm A) (fun d hd ↦ by
      exact sourceMobiusKernel_sub_mainTerm_abs_le_tail hQ hQA
        (by exact_mod_cast (Finset.mem_Icc.mp hd).1))
  convert h using 1
  ring

/-- The doubly short Mangoldt inventory uses its sharper plain coefficient. -/
theorem actual_shortPlain_error_tail_squarefree {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortPlainSource A - shortPlainMainTerm A (sourcePlainSamplingMainTerm A)| ≤
      48 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortPlain_error_uniform_le_of_sampling_error_squarefree (hQ.trans hQA)
    (show 0 ≤ 16 * tailEnergyCoefficient Q by positivity)
    (sourcePlainSamplingMainTerm A) (fun d hd m hm ↦ by
      exact sourcePlainKernel_sub_mainTerm_abs_le_tail hQ hQA (by
        have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
        have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
        exact_mod_cast Nat.mul_le_mul hd1 hm1))
  convert h using 1
  ring


end RH16SquarefreeSamplingConsumer
```
