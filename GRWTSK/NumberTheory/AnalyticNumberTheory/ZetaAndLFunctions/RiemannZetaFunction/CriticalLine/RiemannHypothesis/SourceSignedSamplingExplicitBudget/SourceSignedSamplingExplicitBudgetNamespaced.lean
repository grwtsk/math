-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReciprocalSqrtSumLe.Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ReciprocalSqrtSumLe.Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/6ac1b36c6b33d2edccad-SourceSignedSamplingExplicitBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSignedDivisorSamplingBudget
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
# Explicit arithmetic budget for the actual signed divisor sampling error

AI attribution: OpenAI Codex. Actual weighted Mangoldt prefixes and actual
Moebius coefficients bound the independently defined sampling error. The
signed-row reconstruction and all original compensation terms are retained
in their separate exact theorem. This growing budget is not a uniform witness.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReciprocalSqrtSumLe.Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSignedSamplingExplicitBudget

open ArithmeticFunction
open scoped BigOperators
open SourceVaughanHankel SourceMangoldtAbel SourceSignedDivisorSamplingBudget WeightedPrimeMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

private theorem reciprocal_sqrt_sum_le (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, 1 / Real.sqrt (d : ℝ)) ≤ 2 * Real.sqrt (N : ℝ) := by
  have hstep (n : ℕ) : 1 / Real.sqrt ((n + 1 : ℕ) : ℝ) ≤
      2 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
    have hp : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
    apply (div_le_iff₀ (Real.sqrt_pos.2 hp)).mpr
    have hn := Real.sq_sqrt (Nat.cast_nonneg n)
    have hn' := Real.sq_sqrt hp.le
    have hs := sq_nonneg (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ))
    push_cast at hn' hs ⊢
    nlinarith
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hs := hstep N
    linarith only [ih, hs]

/-- The actual short arithmetic row has its precise square-root mass bound. -/
theorem actualMoebiusSqrtMass_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) ≤
      2 * A := by
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤ A :=
    Real.sqrt_le_iff.mpr ⟨by linarith, hf⟩
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt (d : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      have hmu : |realMoebius d| ≤ 1 := by
        unfold realMoebius
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      exact div_le_div_of_nonneg_right hmu (Real.sqrt_nonneg _)
    _ ≤ 2 * Real.sqrt (vaughanCutoff A : ℝ) := reciprocal_sqrt_sum_le _
    _ ≤ _ := by linarith

/-- The harmonic Mangoldt prefix bounds the original long square-root-weighted row. -/
theorem actualLongMangoldtSqrtMass_le_cutoff (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A, vonMangoldt m / Real.sqrt (m : ℝ)) ≤
      Real.sqrt (sourceKernelCutoff A : ℝ) *
        (Real.log (sourceKernelCutoff A : ℝ) + Real.log 4 + 4 + Real.log 2) := by
  let N := sourceKernelCutoff A
  have hN : 1 ≤ N := (vaughanCutoff_pos A hA).trans
    (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hN0 : 0 < (N : ℝ) := by exact_mod_cast (by omega : 0 < N)
  have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have he := mangoldtLogError_abs_le (Real.log (N : ℝ)) hlog
  simp only [mangoldtLogError, mangoldtLogPrefix, Real.exp_log hN0,
    Nat.floor_natCast] at he
  have hpref : weightedMangoldt N ≤ Real.log (N : ℝ) + Real.log 4 + 4 + Real.log 2 := by
    have hu := (abs_le.mp he).2
    linarith
  have hsub : (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ)) ≤ weightedMangoldt N := by
    unfold weightedMangoldt
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro m hm
      have hb := Finset.mem_Ioc.mp hm
      exact Finset.mem_Ioc.mpr ⟨(Nat.zero_le _).trans_lt hb.1, hb.2⟩
    · intro m _ _
      exact div_nonneg vonMangoldt_nonneg (Nat.cast_nonneg _)
  calc
    _ ≤ ∑ m ∈ longInventory A,
        Real.sqrt (N : ℝ) * (vonMangoldt m / (m : ℝ)) := by
      apply Finset.sum_le_sum
      intro m hm
      have hm0 : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
      have hmn : (m : ℝ) ≤ N := by exact_mod_cast (Finset.mem_Ioc.mp hm).2
      have heq : vonMangoldt m / Real.sqrt (m : ℝ) =
          Real.sqrt (m : ℝ) * (vonMangoldt m / (m : ℝ)) := by
        rw [show Real.sqrt (m : ℝ) * (vonMangoldt m / (m : ℝ)) =
          vonMangoldt m * (Real.sqrt (m : ℝ) / (m : ℝ)) by ring,
          Real.sqrt_div_self']
        ring
      rw [heq]
      exact mul_le_mul_of_nonneg_right (Real.sqrt_le_sqrt hmn)
        (div_nonneg vonMangoldt_nonneg hm0.le)
    _ = Real.sqrt (N : ℝ) * (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ)) := by
      rw [Finset.mul_sum]
    _ ≤ Real.sqrt (N : ℝ) * weightedMangoldt N :=
      mul_le_mul_of_nonneg_left hsub (Real.sqrt_nonneg _)
    _ ≤ _ := mul_le_mul_of_nonneg_left hpref (Real.sqrt_nonneg _)

/-- The unchanged upper floor cutoff gives an all-real explicit long-row budget. -/
theorem actualLongMangoldtSqrtMass_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A, vonMangoldt m / Real.sqrt (m : ℝ)) ≤
      Real.exp A * (2 * A + Real.log 4 + 4 + Real.log 2) := by
  have hN : 1 ≤ sourceKernelCutoff A := (vaughanCutoff_pos A hA).trans
    (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hN0 : 0 < (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (by omega : 0 < sourceKernelCutoff A)
  have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) := Nat.floor_le (Real.exp_pos _).le
  have hs : Real.sqrt (sourceKernelCutoff A : ℝ) ≤ Real.exp A := by
    apply Real.sqrt_le_iff.mpr
    refine ⟨(Real.exp_pos _).le, ?_⟩
    have he : Real.exp A ^ 2 = Real.exp (2 * A) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    rwa [he]
  have hl := Real.log_le_log hN0 hf
  rw [Real.log_exp] at hl
  have hl0 : 0 ≤ Real.log (sourceKernelCutoff A : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hN)
  apply (actualLongMangoldtSqrtMass_le_cutoff A hA).trans
  exact mul_le_mul hs (by linarith) (by positivity) (Real.exp_pos _).le

/-- The signed sampling error has a concrete growing budget from proved actual arithmetic data. -/
theorem actualSignedQuotientSamplingError_abs_le_explicit (A : ℝ) (hA : 1 ≤ A) :
    |actualSignedQuotientSamplingError A| ≤
      32 * (162826 / 7623 : ℝ) * Real.exp A *
        (2 * A + Real.log 4 + 4 + Real.log 2) / A := by
  let c : ℝ := 16 * (162826 / 7623 : ℝ) / A ^ 2
  let D := ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)
  let M := ∑ m ∈ longInventory A, vonMangoldt m / Real.sqrt (m : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have hm : 0 ≤ M := by
    apply Finset.sum_nonneg
    intro m _
    exact div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _)
  have hi (d : ℕ) : (∑ m ∈ longInventory A, vonMangoldt m *
      (16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)))) =
      c * (1 / Real.sqrt (d : ℝ)) * M := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg d)]
    simp only [c, div_eq_mul_inv, mul_inv_rev]
    ring
  have he : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| *
      (∑ m ∈ longInventory A, vonMangoldt m *
        (16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))))) = c * D * M := by
    simp_rw [hi]
    calc
      _ = ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), c *
          (|realMoebius d| / Real.sqrt (d : ℝ)) * M := by
        apply Finset.sum_congr rfl
        intro d _
        ring
      _ = _ := by rw [← Finset.sum_mul, ← Finset.mul_sum]
  calc
    _ ≤ _ := actualSignedQuotientSamplingError_abs_le_weighted_budget A hA
    _ = c * D * M := he
    _ ≤ c * (2 * A) * M :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A hA) hc) hm
    _ ≤ c * (2 * A) * (Real.exp A * (2 * A + Real.log 4 + 4 + Real.log 2)) :=
      mul_le_mul_of_nonneg_left (actualLongMangoldtSqrtMass_le A hA) (by positivity)
    _ = _ := by
      dsimp only [c]
      field_simp [show A ≠ 0 by linarith]
      ring

end
end FormalResearch.RiemannHypothesis.SourceSignedSamplingExplicitBudget
