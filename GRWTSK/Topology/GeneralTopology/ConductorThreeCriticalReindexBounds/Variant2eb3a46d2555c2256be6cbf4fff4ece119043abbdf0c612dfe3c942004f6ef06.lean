-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CountToMatrixPointwise.Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CountToMatrixPointwise.Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeCriticalReindexBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCriticalPredicates
public import Surface.Core.ConductorThreePrimeReindex
import Mathlib.Tactic

/-!
# Quantitative conductor-three critical reindexing

This module transfers the square-root/log residue-count estimate through the
exact eligible-prime cutoffs to the canonical indexed Euclidean discrepancy
operator, in both directions.  It uses the checked cutoff plateaus and
two-sided Chebyshev-order bounds; no prime-number-theorem or GRH assumption is
installed.
-/


namespace GRWTSK.Topology.GeneralTopology.CountToMatrixPointwise.Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4

public section

open Filter
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreeCriticalPredicates
open Surface.Core.ConductorThreePrimeReindex
open Surface.Core.CyclicPrimeWalk
open Surface.Core.CyclicPrimeWalkEuclidean

namespace Surface.Core.ConductorThreeCriticalReindexBounds

noncomputable section

private lemma count_to_matrix_pointwise
    (C : ℝ) (hC : 0 ≤ C) (K : ℕ) (hK : 9 ≤ K)
    (hUpper : (actualEligiblePrimeCutoff K : ℝ) ≤
      80 * (K : ℝ) * Real.log K)
    (hD : |countDifference actualResidueSixCounts
        (actualEligiblePrimeCutoff K)| ≤
      C * Real.sqrt (actualEligiblePrimeCutoff K : ℝ) *
        Real.log (actualEligiblePrimeCutoff K : ℝ)) :
    ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ ≤
      (640 * C) * conductorThreeCriticalRate K := by
  have hKposNat : 0 < K := by omega
  have hKpos : (0 : ℝ) < K := by positivity
  have hKnonneg : (0 : ℝ) ≤ K := by positivity
  have hshiftPos : (0 : ℝ) < (K + 2 : ℕ) := by positivity
  have hlogK : (1 : ℝ) ≤ Real.log K := by
    have hlog8 : (1 : ℝ) ≤ Real.log 8 := by
      rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
      norm_num
      have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
      norm_num at h ⊢
      linarith
    exact hlog8.trans (Real.log_le_log (by norm_num) (by exact_mod_cast (show 8 ≤ K by omega)))
  have hlogKpos : 0 < Real.log K := lt_of_lt_of_le zero_lt_one hlogK
  have hlogShift : Real.log K ≤ Real.log ((K + 2 : ℕ) : ℝ) := by
    apply Real.log_le_log hKpos
    exact_mod_cast (show K ≤ K + 2 by omega)
  have hlogShiftNonneg : 0 ≤ Real.log ((K + 2 : ℕ) : ℝ) :=
    le_trans (by linarith : 0 ≤ Real.log K) hlogShift
  have hcutPosNat : 0 < actualEligiblePrimeCutoff K := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKposNat]
    exact (Nat.prime_nth_prime (K + 1)).pos
  have hcutPos : (0 : ℝ) < actualEligiblePrimeCutoff K := by
    exact_mod_cast hcutPosNat
  have hlogK_le_K : Real.log (K : ℝ) ≤ K := by
    have h := Real.log_le_sub_one_of_pos hKpos
    linarith
  have hpoly : (80 : ℝ) * K ^ 2 ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := by
    have hKr : (9 : ℝ) ≤ K := by exact_mod_cast hK
    have h80 : (80 : ℝ) ≤ K ^ 2 := by nlinarith
    have hmul : (80 : ℝ) * K ^ 2 ≤ K ^ 2 * K ^ 2 :=
      mul_le_mul_of_nonneg_right h80 (sq_nonneg (K : ℝ))
    have hmono : (K : ℝ) ^ 4 ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := by
      gcongr
      norm_num
    calc
      (80 : ℝ) * K ^ 2 ≤ K ^ 2 * K ^ 2 := hmul
      _ = K ^ 4 := by ring
      _ ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := hmono
  have hcutPow : (actualEligiblePrimeCutoff K : ℝ) ≤
      ((K + 2 : ℕ) : ℝ) ^ 4 := by
    calc
      (actualEligiblePrimeCutoff K : ℝ) ≤ 80 * K * Real.log K := hUpper
      _ ≤ 80 * K ^ 2 := by
        calc
          80 * K * Real.log K ≤ 80 * K * K :=
            mul_le_mul_of_nonneg_left hlogK_le_K (by positivity)
          _ = 80 * K ^ 2 := by ring
      _ ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := hpoly
  have hlogCut : Real.log (actualEligiblePrimeCutoff K : ℝ) ≤
      4 * Real.log ((K + 2 : ℕ) : ℝ) := by
    calc
      Real.log (actualEligiblePrimeCutoff K : ℝ) ≤
          Real.log (((K + 2 : ℕ) : ℝ) ^ 4) :=
        Real.log_le_log hcutPos hcutPow
      _ = 4 * Real.log ((K + 2 : ℕ) : ℝ) := by
        rw [Real.log_pow]
        norm_num
  have hsqrtCutSq : Real.sqrt (actualEligiblePrimeCutoff K : ℝ) ^ 2 =
      (actualEligiblePrimeCutoff K : ℝ) := Real.sq_sqrt (by positivity)
  have hsqrtKSq : Real.sqrt (K : ℝ) ^ 2 = (K : ℝ) :=
    Real.sq_sqrt hKnonneg
  have hsqrtLogSq : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 =
      Real.log ((K + 2 : ℕ) : ℝ) := Real.sq_sqrt hlogShiftNonneg
  have hsqrtCut : Real.sqrt (actualEligiblePrimeCutoff K : ℝ) ≤
      80 * Real.sqrt (K : ℝ) *
        Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) := by
    have hsq : Real.sqrt (actualEligiblePrimeCutoff K : ℝ) ^ 2 ≤
        (80 * Real.sqrt (K : ℝ) *
          Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) ^ 2 := by
      rw [hsqrtCutSq]
      calc
        (actualEligiblePrimeCutoff K : ℝ) ≤ 80 * K * Real.log K := hUpper
        _ ≤ 6400 * K * Real.log ((K + 2 : ℕ) : ℝ) := by
          have : Real.log K ≤ 80 * Real.log ((K + 2 : ℕ) : ℝ) := by
            calc
              Real.log K ≤ Real.log ((K + 2 : ℕ) : ℝ) := hlogShift
              _ ≤ 80 * Real.log ((K + 2 : ℕ) : ℝ) := by
                nlinarith
          nlinarith
        _ = (80 * Real.sqrt (K : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) ^ 2 := by
          rw [mul_pow, mul_pow, hsqrtKSq, hsqrtLogSq]
          norm_num
    have ha := Real.sqrt_nonneg (actualEligiblePrimeCutoff K : ℝ)
    have hb : 0 ≤ 80 * Real.sqrt (K : ℝ) *
        Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) := by positivity
    exact (sq_le_sq₀ ha hb).mp hsq
  have hsqrtKPos : 0 < Real.sqrt (K : ℝ) := Real.sqrt_pos.2 hKpos
  have hsqrtShiftPos : 0 < Real.sqrt ((K + 2 : ℕ) : ℝ) :=
    Real.sqrt_pos.2 hshiftPos
  have hsqrtShiftSq : Real.sqrt (((K + 2 : ℕ) : ℝ)) ^ 2 =
      ((K + 2 : ℕ) : ℝ) := Real.sq_sqrt (by positivity)
  have hsqrtShift_le : Real.sqrt ((K + 2 : ℕ) : ℝ) ≤
      2 * Real.sqrt (K : ℝ) := by
    have hsq : Real.sqrt ((K + 2 : ℕ) : ℝ) ^ 2 ≤
        (2 * Real.sqrt (K : ℝ)) ^ 2 := by
      rw [hsqrtShiftSq, mul_pow, hsqrtKSq]
      norm_num
      exact_mod_cast (show K + 2 ≤ 4 * K by omega)
    nlinarith [Real.sqrt_nonneg ((K + 2 : ℕ) : ℝ), Real.sqrt_nonneg (K : ℝ)]
  have hinv : 1 / Real.sqrt (K : ℝ) ≤
      2 / Real.sqrt ((K + 2 : ℕ) : ℝ) := by
    rw [div_le_div_iff₀ hsqrtKPos hsqrtShiftPos]
    simpa using hsqrtShift_le
  rw [actualIndexedErrorOperator_norm_eq_countDifference K hKposNat]
  rw [abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2 * K)]
  calc
    sqrtThree *
        (|countDifference actualResidueSixCounts
            (actualEligiblePrimeCutoff K)| / (2 * K)) ≤
        2 * (C * Real.sqrt (actualEligiblePrimeCutoff K : ℝ) *
            Real.log (actualEligiblePrimeCutoff K : ℝ) / (2 * K)) := by
      have hsqrtThree : sqrtThree ≤ 2 := by
        have hs := Real.sqrt_nonneg 3
        nlinarith [sqrtThree_sq]
      gcongr
    _ ≤ 2 * (C *
          (80 * Real.sqrt (K : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) *
          (4 * Real.log ((K + 2 : ℕ) : ℝ)) / (2 * K)) := by
      gcongr
    _ = 320 * C *
          (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
          Real.sqrt (K : ℝ) := by
      field_simp [hKpos.ne', hsqrtKPos.ne']
      rw [hsqrtKSq]
      ring

    _ ≤ 640 * C *
          (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
          Real.sqrt ((K + 2 : ℕ) : ℝ) := by
      have hfactor : 0 ≤ 320 * C *
          (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) := by positivity
      calc
        320 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
            Real.sqrt (K : ℝ) =
            (320 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
              Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)))) *
              (1 / Real.sqrt (K : ℝ)) := by ring
        _ ≤ (320 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
              Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)))) *
              (2 / Real.sqrt ((K + 2 : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_left hinv hfactor
        _ = 640 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
              Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
              Real.sqrt ((K + 2 : ℕ) : ℝ) := by ring
    _ = (640 * C) * conductorThreeCriticalRate K := by
      unfold conductorThreeCriticalRate
      ring

private theorem residueDifferenceCriticalBound_implies_matrixCriticalDecay :
    ResidueDifferenceCriticalBound actualResidueSixCounts →
      MatrixCriticalDecay actualResidueSixCounts := by
  rintro ⟨C, hC, x₀, hx₀, hBound⟩
  refine ⟨640 * C, by positivity, ?_⟩
  filter_upwards [eventually_actualEligiblePrimeCutoff_two_sided,
      eventually_ge_atTop (max 9 x₀)] with K hReindex hLarge
  have hK9 : 9 ≤ K := (le_max_left _ _).trans hLarge
  have hKpos : 0 < K := by omega
  have hxcut : x₀ ≤ actualEligiblePrimeCutoff K := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKpos]
    have hbase : K + 3 ≤ Nat.nth Nat.Prime (K + 1) := by
      simpa using Nat.add_two_le_nth_prime (K + 1)
    exact ((le_max_right _ _).trans hLarge).trans (by omega)
  exact count_to_matrix_pointwise C hC K hK9 hReindex.2
    (hBound _ hxcut)

private lemma matrix_to_count_pointwise
    (C : ℝ) (hC : 0 ≤ C) (K x : ℕ) (hK : 9 ≤ K)
    (hLower : (K : ℝ) * Real.log K / (Real.log 4 + 1) ≤
      (actualEligiblePrimeCutoff K : ℝ))
    (hCutoff : actualEligiblePrimeCutoff K ≤ x)
    (hPlateau : countDifference actualResidueSixCounts x =
      countDifference actualResidueSixCounts (actualEligiblePrimeCutoff K))
    (hMatrix : ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ ≤
      C * conductorThreeCriticalRate K) :
    |countDifference actualResidueSixCounts x| ≤
      (8 * (Real.log 4 + 1) * C) * Real.sqrt (x : ℝ) * Real.log x := by
  let A : ℝ := Real.log 4 + 1
  have hKposNat : 0 < K := by omega
  have hKpos : (0 : ℝ) < K := by positivity
  have hxposNat : 0 < x := lt_of_lt_of_le (by omega : 0 < K) <| by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKposNat] at hCutoff
    have hbase := Nat.add_two_le_nth_prime (K + 1)
    omega
  have hxpos : (0 : ℝ) < x := by exact_mod_cast hxposNat
  have hA : (1 : ℝ) ≤ A := by
    dsimp only [A]
    have : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
    linarith
  have hApos : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hKCutoff : K ≤ actualEligiblePrimeCutoff K := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKposNat]
    exact (by have := Nat.add_two_le_nth_prime (K + 1); omega)
  have hKxNat : K ≤ x := hKCutoff.trans hCutoff
  have hKx : (K : ℝ) ≤ x := by exact_mod_cast hKxNat
  have hlogK : (1 : ℝ) ≤ Real.log K := by
    have hlog8 : (1 : ℝ) ≤ Real.log 8 := by
      rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
      norm_num
      have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
      norm_num at h ⊢
      linarith
    exact hlog8.trans (Real.log_le_log (by norm_num)
      (by exact_mod_cast (show 8 ≤ K by omega)))
  have hlogKpos : 0 < Real.log K := lt_of_lt_of_le zero_lt_one hlogK
  have hlogKx : Real.log K ≤ Real.log x := Real.log_le_log hKpos hKx
  have hshiftBoundNat : K + 2 ≤ K ^ 2 := by nlinarith
  have hshiftBound : ((K + 2 : ℕ) : ℝ) ≤ (K : ℝ) ^ 2 := by
    exact_mod_cast hshiftBoundNat
  have hlogShift : Real.log ((K + 2 : ℕ) : ℝ) ≤ 2 * Real.log K := by
    calc
      Real.log ((K + 2 : ℕ) : ℝ) ≤ Real.log ((K : ℝ) ^ 2) :=
        Real.log_le_log (by positivity) hshiftBound
      _ = 2 * Real.log K := by rw [Real.log_pow]; norm_num
  have hlogShiftNonneg : 0 ≤ Real.log ((K + 2 : ℕ) : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ K + 2 by omega))
  have hsqrtLogShift : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ≤
      2 * Real.sqrt (Real.log K) := by
    have hsqLeft : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 =
        Real.log ((K + 2 : ℕ) : ℝ) := Real.sq_sqrt hlogShiftNonneg
    have hsqK : Real.sqrt (Real.log K) ^ 2 = Real.log K :=
      Real.sq_sqrt (by linarith)
    have hsq : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 ≤
        (2 * Real.sqrt (Real.log K)) ^ 2 := by
      calc
        Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 =
            Real.log ((K + 2 : ℕ) : ℝ) := hsqLeft
        _ ≤ 2 * Real.log K := hlogShift
        _ ≤ 4 * Real.log K := by nlinarith
        _ = (2 * Real.sqrt (Real.log K)) ^ 2 := by
          rw [mul_pow, hsqK]
          norm_num
    exact (sq_le_sq₀ (Real.sqrt_nonneg _)
      (by positivity : 0 ≤ 2 * Real.sqrt (Real.log K))).mp hsq
  have hsqrtKPos : 0 < Real.sqrt (K : ℝ) := Real.sqrt_pos.2 hKpos
  have hsqrtKSq : Real.sqrt (K : ℝ) ^ 2 = (K : ℝ) :=
    Real.sq_sqrt (by positivity)
  have hsqrtShiftPos : 0 < Real.sqrt ((K + 2 : ℕ) : ℝ) :=
    Real.sqrt_pos.2 (by positivity)
  have hsqrtK_le_shift : Real.sqrt (K : ℝ) ≤
      Real.sqrt ((K + 2 : ℕ) : ℝ) := by
    apply Real.sqrt_le_sqrt
    exact_mod_cast (show K ≤ K + 2 by omega)
  have hKdiv : (K : ℝ) / Real.sqrt ((K + 2 : ℕ) : ℝ) ≤
      Real.sqrt K := by
    apply (div_le_iff₀ hsqrtShiftPos).2
    calc
      (K : ℝ) = Real.sqrt K * Real.sqrt K := by
        nlinarith [hsqrtKSq]
      _ ≤ Real.sqrt K * Real.sqrt ((K + 2 : ℕ) : ℝ) :=
        mul_le_mul_of_nonneg_left hsqrtK_le_shift (Real.sqrt_nonneg _)
  have hcutoffReal : (actualEligiblePrimeCutoff K : ℝ) ≤ x := by
    exact_mod_cast hCutoff
  have hKlog_le_Ax : (K : ℝ) * Real.log K ≤ A * x := by
    have := (div_le_iff₀ hApos).mp hLower
    calc
      (K : ℝ) * Real.log K ≤
          (actualEligiblePrimeCutoff K : ℝ) * A := this
      _ = A * (actualEligiblePrimeCutoff K : ℝ) := by ring
      _ ≤ A * x := mul_le_mul_of_nonneg_left hcutoffReal (by linarith)
  have hsqrtXSq : Real.sqrt (x : ℝ) ^ 2 = (x : ℝ) :=
    Real.sq_sqrt (by positivity)
  have hsqrtLogKSq : Real.sqrt (Real.log K) ^ 2 = Real.log K :=
    Real.sq_sqrt (by linarith)
  have hcross : Real.sqrt (K : ℝ) * Real.sqrt (Real.log K) ≤
      A * Real.sqrt (x : ℝ) := by
    have hsq : (Real.sqrt (K : ℝ) * Real.sqrt (Real.log K)) ^ 2 ≤
        (A * Real.sqrt (x : ℝ)) ^ 2 := by
      rw [mul_pow, hsqrtKSq, hsqrtLogKSq, mul_pow, hsqrtXSq]
      have hAx_le : A * x ≤ A ^ 2 * x := by
        have hAA : A ≤ A ^ 2 := by nlinarith
        exact mul_le_mul_of_nonneg_right hAA (by positivity)
      nlinarith
    exact (sq_le_sq₀ (by positivity) (by positivity)).mp hsq
  have hquotient :
      |countDifference actualResidueSixCounts
          (actualEligiblePrimeCutoff K)| / (2 * K) ≤
        C * conductorThreeCriticalRate K := by
    have hquotientNorm :
        |countDifference actualResidueSixCounts
            (actualEligiblePrimeCutoff K) / (2 * (K : ℝ))| ≤
          ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ := by
      rw [actualIndexedErrorOperator_norm_eq_countDifference K hKposNat]
      exact le_mul_of_one_le_left (abs_nonneg _) one_le_sqrtThree
    rw [abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2 * K)] at hquotientNorm
    exact hquotientNorm.trans hMatrix
  rw [hPlateau]
  calc
    |countDifference actualResidueSixCounts (actualEligiblePrimeCutoff K)| ≤
        (C * conductorThreeCriticalRate K) * (2 * K) :=
      (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * K)).mp hquotient
    _ = 2 * C * ((K : ℝ) / Real.sqrt ((K + 2 : ℕ) : ℝ)) *
          Real.log ((K + 2 : ℕ) : ℝ) *
          Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) := by
      unfold conductorThreeCriticalRate
      ring
    _ ≤ 2 * C * Real.sqrt K *
          (2 * Real.log K) * (2 * Real.sqrt (Real.log K)) := by
      gcongr
    _ = 8 * C *
          (Real.sqrt K * Real.sqrt (Real.log K)) * Real.log K := by ring
    _ ≤ 8 * C * (A * Real.sqrt x) * Real.log x := by
      gcongr
    _ = (8 * (Real.log 4 + 1) * C) * Real.sqrt x * Real.log x := by
      dsimp only [A]
      ring

private theorem matrixCriticalDecay_implies_residueDifferenceCriticalBound :
    MatrixCriticalDecay actualResidueSixCounts →
      ResidueDifferenceCriticalBound actualResidueSixCounts := by
  rintro ⟨C, hC, hMatrixEventually⟩
  rcases Filter.eventually_atTop.1 hMatrixEventually with ⟨K₀, hK₀⟩
  rcases Filter.eventually_atTop.1
      eventually_actualEligiblePrimeCutoff_two_sided with ⟨K₁, hK₁⟩
  let J : ℕ := max 9 (max K₀ K₁)
  have hJ9 : 9 ≤ J := le_max_left _ _
  have hJpos : 0 < J := by omega
  have hcutoffJ2 : 2 ≤ actualEligiblePrimeCutoff J := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime J hJpos]
    have := Nat.add_two_le_nth_prime (J + 1)
    omega
  refine ⟨8 * (Real.log 4 + 1) * C, by positivity,
    actualEligiblePrimeCutoff J, hcutoffJ2, ?_⟩
  intro x hx
  let K : ℕ := eligibleCount actualResidueSixCounts x
  have hJleCountRaw : J ≤ Nat.count IsEligibleResidueSixPrime (x + 1) :=
    (actualEligiblePrimeCutoff_le_iff_count_succ J hJpos x).mp hx
  have hJleK : J ≤ K := by
    dsimp only [K]
    rw [actualEligibleCount_eq_count]
    exact hJleCountRaw
  have hK9 : 9 ≤ K := hJ9.trans hJleK
  have hKpos : 0 < K := by omega
  have hK₀le : K₀ ≤ K := (le_max_left K₀ K₁).trans
    ((le_max_right 9 (max K₀ K₁)).trans hJleK)
  have hK₁le : K₁ ≤ K := (le_max_right K₀ K₁).trans
    ((le_max_right 9 (max K₀ K₁)).trans hJleK)
  have hCutoff : actualEligiblePrimeCutoff K ≤ x := by
    apply (actualEligiblePrimeCutoff_le_iff_count_succ K hKpos x).2
    rw [← actualEligibleCount_eq_count]
  have hNext : x < actualEligiblePrimeCutoff (K + 1) := by
    by_contra hnot
    have hNextLe : actualEligiblePrimeCutoff (K + 1) ≤ x :=
      Nat.le_of_not_gt hnot
    have hCountGe :=
      (actualEligiblePrimeCutoff_le_iff_count_succ (K + 1) (by omega) x).mp
        hNextLe
    rw [← actualEligibleCount_eq_count] at hCountGe
    dsimp only [K] at hCountGe
    omega
  have hPlateau := countDifference_plateau K x hKpos hCutoff hNext
  exact matrix_to_count_pointwise C hC K x hK9 (hK₁ K hK₁le).1
    hCutoff hPlateau (hK₀ K hK₀le)

/-- The actual residue-count critical estimate and the indexed Euclidean
operator critical estimate are quantitatively equivalent. -/
@[surface_novel, surface_published]
theorem residueDifferenceCriticalBound_iff_matrixCriticalDecay :
    ResidueDifferenceCriticalBound actualResidueSixCounts ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  ⟨residueDifferenceCriticalBound_implies_matrixCriticalDecay,
    matrixCriticalDecay_implies_residueDifferenceCriticalBound⟩

end

end Surface.Core.ConductorThreeCriticalReindexBounds
