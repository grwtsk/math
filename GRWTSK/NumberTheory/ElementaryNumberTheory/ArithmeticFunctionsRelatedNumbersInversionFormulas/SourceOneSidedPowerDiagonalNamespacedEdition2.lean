-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualCorrelationPositiveInner.Variant6752a702eeed4b16ed0010d46df91ccd838ef7895edcbe44a84c64f0a4871f8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6752a702eeed4b16ed0010d46df91ccd838ef7895edcbe44a84c64f0a4871f8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualCorrelationPositiveInner.Variant6752a702eeed4b16ed0010d46df91ccd838ef7895edcbe44a84c64f0a4871f8b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6752a702eeed4b16ed0010d46df91ccd838ef7895edcbe44a84c64f0a4871f8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/refocus-20261007/root-diagonal/SourceOneSidedPowerDiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceInvariantBoundaryCoefficient

/-!
One-sided proper-prime-power physical-diagonal estimate for the actual source.
The complete original finite inventory is retained. Only the potentially
unfavorable negative correlation is charged; no arithmetic signed witness follows.
Direction: grwtsk contributors. Calculation and native construction: OpenAI Codex.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualCorrelationPositiveInner.Variant6752a702eeed4b16ed0010d46df91ccd838ef7895edcbe44a84c64f0a4871f8b

set_option autoImplicit false
noncomputable section
namespace RH16OneSidedPowerDiagonal
open scoped BigOperators
open RH16InvariantBoundary
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

theorem actual_correlation_positive_inner (A t : ℝ) (hA : 91 ≤ A)
    (ht : |t| ≤ 3 * A / 5) :
    (1 / 10 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
  have hA0 : 0 < A := by linarith
  have hs : t ^ 2 ≤ 9 * A ^ 2 / 25 := by
    have he : |t| ^ 2 = t ^ 2 := sq_abs t
    nlinarith [abs_nonneg t]
  have hb : 5 / A ^ 2 * t ^ 2 / 2 ≤ (9 / 10 : ℝ) := by
    rw [show 5 / A ^ 2 * t ^ 2 / 2 = 5 * t ^ 2 / (2 * A ^ 2) by ring]
    apply (div_le_iff₀ (by positivity : 0 < 2 * A ^ 2)).mpr
    nlinarith
  have he := (abs_le.mp (actual_correlation_zero_taylor_bound A t hA)).1
  linarith

theorem actual_diagonalCorrelation_positive_inner (A n : ℝ) (hA : 91 ≤ A)
    (hn : 1 ≤ n) (hlog : Real.log n ≤ 3 * A / 10) :
    (1 / 10 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (2 * Real.log n) := by
  apply actual_correlation_positive_inner A (2 * Real.log n) hA
  have hlog0 := Real.log_nonneg hn
  rw [abs_of_nonneg (by linarith : 0 ≤ 2 * Real.log n)]
  linarith

def properLargePowerInventory (U N : ℕ) : Finset ℕ :=
  (Finset.Ioc U N).filter (fun n => IsPrimePow n ∧ U < n.minFac ∧ ¬n.Prime)

def properLargePowerDiagonal (A : ℝ) (U N : ℕ) : ℝ :=
  -(∑ n ∈ properLargePowerInventory U N,
    ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ)))

def properLargePowerUpperBudget (A : ℝ) (U N : ℕ) : ℝ :=
  ∑ n ∈ properLargePowerInventory U N,
    if 3 * A / 10 < Real.log (n : ℝ) then
      ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0

theorem actual_power_atom_one_sided (A : ℝ) (n : ℕ) (hA : 91 ≤ A) (hn : 1 ≤ n) :
    -(ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))) ≤
      if 3 * A / 10 < Real.log (n : ℝ) then
        ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0 := by
  have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / (n : ℝ) :=
    div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg n)
  by_cases hlog : 3 * A / 10 < Real.log (n : ℝ)
  · rw [if_pos hlog]
    have hC := (abs_le.mp (actual_correlation_abs_le_one A
      (2 * Real.log (n : ℝ)) (by linarith))).1
    nlinarith
  · rw [if_neg hlog]
    have hC := actual_diagonalCorrelation_positive_inner A (n : ℝ) hA
      (by exact_mod_cast hn) (le_of_not_gt hlog)
    exact neg_nonpos.mpr (mul_nonneg hw (by linarith))

theorem actual_proper_power_diagonal_upper (A : ℝ) (U N : ℕ)
    (hA : 91 ≤ A) (hU : 1 ≤ U) :
    properLargePowerDiagonal A U N ≤ properLargePowerUpperBudget A U N := by
  unfold properLargePowerDiagonal properLargePowerUpperBudget
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro n hn
  have hUn := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1).1
  exact actual_power_atom_one_sided A n hA (by omega)

theorem properLargePowerUpperBudget_eq_filtered (A : ℝ) (U N : ℕ) :
    properLargePowerUpperBudget A U N =
      ∑ n ∈ (properLargePowerInventory U N).filter
        (fun n : ℕ => 3 * A / 10 < Real.log (n : ℝ)),
          ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
  classical
  unfold properLargePowerUpperBudget
  rw [Finset.sum_filter]

end RH16OneSidedPowerDiagonal
