-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LinearTwelve.Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.LinearTwelve.Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/joint-cancellation/DirichletCoefficientGuard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusQuadratic


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LinearTwelve.Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085

set_option autoImplicit false
namespace DirichletCoefficientGuardScratch
open ArithmeticFunction
open scoped ArithmeticFunction.zeta
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusQuadratic
noncomputable section

theorem linear_twelve : (truncatedMoebius 5 * ArithmeticFunction.log) 12 = - Real.log 2 := by
  rw [ArithmeticFunction.mul_apply]
  have hd : Nat.divisorsAntidiagonal 12 =
      {(1,12), (2,6), (3,4), (4,3), (6,2), (12,1)} := by decide
  rw [hd]
  have hm4 : ArithmeticFunction.moebius 4 = 0 := by
    simpa using ArithmeticFunction.moebius_apply_prime_pow (by norm_num : Nat.Prime 2)
      (by decide : (2 : ℕ) ≠ 0)
  have hl12 : Real.log 12 = Real.log 2 + Real.log 6 := by
    rw [← show (2 : ℝ) * 6 = 12 by norm_num]
    exact Real.log_mul (by norm_num) (by norm_num)
  have hl4 : Real.log 4 = 2 * Real.log 2 := by
    rw [← show (2 : ℝ) ^ 2 = 4 by norm_num, Real.log_pow]
    norm_num
  simp [truncatedMoebius, ArithmeticFunction.log_apply, hm4, hl12, hl4,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  ring

theorem quadratic_twelve :
    (truncatedMoebius 5 ^ 2 * (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 =
      -2 * Real.log 2 := by
  have hv : ArithmeticFunction.vonMangoldt 12 = 0 :=
    ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr (by decide)
  have h := vonMangoldt_decomposition 5 12 (by norm_num)
  rw [hv, linear_twelve] at h
  linarith

theorem quadratic_twelve_neg :
    (truncatedMoebius 5 ^ 2 * (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 < 0 := by
  rw [quadratic_twelve]
  have : 0 < Real.log 2 := Real.log_pos (by norm_num)
  linarith

theorem source_radius_admitted : 1 ≤ Real.log 5 := by
  rw [Real.le_log_iff_exp_le (by norm_num)]
  have h := Real.exp_one_lt_d9
  linarith

theorem source_cutoff_five : ⌊Real.exp (Real.log 5)⌋₊ = 5 := by
  rw [Real.exp_log (by norm_num)]
  norm_num

theorem twelve_in_source_cutoff :
    12 ∈ FormalResearch.RiemannHypothesis.SourceComparison.Cutoff.primeIndices (Real.log 5) := by
  rw [FormalResearch.RiemannHypothesis.SourceComparison.Cutoff.mem_primeIndices_iff]
  rw [two_mul, Real.exp_add, Real.exp_log (by norm_num)]
  norm_num

theorem actual_quadratic_coefficient_negative :
    (truncatedMoebius ⌊Real.exp (Real.log 5)⌋₊ ^ 2 *
      (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 < 0 := by
  rw [source_cutoff_five]
  exact quadratic_twelve_neg

theorem twelve_linear_quadratic_cancel :
    2 * (truncatedMoebius 5 * ArithmeticFunction.log) 12 -
      (truncatedMoebius 5 ^ 2 * (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 = 0 := by
  rw [linear_twelve, quadratic_twelve]
  ring

end
end DirichletCoefficientGuardScratch
