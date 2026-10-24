-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReciprocalHalfCutoffTailLe.Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ReciprocalHalfCutoffTailLe.Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/HalfCutoffTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReciprocalHalfCutoffTailLe.Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d

set_option autoImplicit false

namespace HalfCutoffTailScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

theorem reciprocal_half_cutoff_tail_le (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  have hY : (0 : ℝ) < (Y : ℝ) + 1 := by positivity
  calc
    _ ≤ ∑ _g ∈ Ioc Y G, 1 / ((Y : ℝ) + 1) := by
      apply sum_le_sum
      intro g hg
      apply one_div_le_one_div_of_le hY
      have hg1 : Y + 1 ≤ g := by have hh := (mem_Ioc.mp hg).1; omega
      exact_mod_cast hg1
    _ = ((G - Y : ℕ) : ℝ) / ((Y : ℝ) + 1) := by
      simp only [sum_const, Nat.card_Ioc, nsmul_eq_mul, mul_one_div]
    _ ≤ 1 := by
      apply (div_le_one hY).mpr
      have hcard : G - Y ≤ Y + 1 := by omega
      exact_mod_cast hcard

theorem sqrt_square_scale (h g : ℕ) :
    Real.sqrt ((h*g^2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
  push_cast
  rw [Real.sqrt_mul (Nat.cast_nonneg h), Real.sqrt_sq (Nat.cast_nonneg g)]

theorem thetaRemainder_half_cutoff_tail_abs_le (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  calc
    _ ≤ ∑ g ∈ Ioc Y G, |ThetaRemainder.thetaRemainder A (h*g^2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Ioc Y G, (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      have hg1 : 1 ≤ g := by have h := (mem_Ioc.mp hg).1; omega
      have hq : 1 ≤ h*g^2 := Nat.mul_pos hh (Nat.pow_pos hg1)
      have he := ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A (h*g^2) hA hq
      rw [sqrt_square_scale] at he
      simpa only [div_eq_mul_inv, mul_inv_rev, one_mul, mul_assoc, mul_comm, mul_left_comm] using he
    _ = (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) := by rw [mul_sum]
    _ ≤ _ := by
      have hk : 0 ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) :=
        div_nonneg (ThetaKernelEstimate.kernelBound_nonneg A hA) (Real.sqrt_nonneg _)
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (reciprocal_half_cutoff_tail_le Y G hYG hhalf) hk

end
end HalfCutoffTailScratch
