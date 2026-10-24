-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJetZeroRight.Variantdd11f350e6298a7b2c5af4f3b9c83d0cb525e6b66657c7beb195f98d5edf5918","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd11f350e6298a7b2c5af4f3b9c83d0cb525e6b66657c7beb195f98d5edf5918","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceJetZeroRight.Variantdd11f350e6298a7b2c5af4f3b9c83d0cb525e6b66657c7beb195f98d5edf5918","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"dd11f350e6298a7b2c5af4f3b9c83d0cb525e6b66657c7beb195f98d5edf5918","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/dd11f350e6298a7b2c5a-ActualSupportEdgeMangoldtRow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSupportEdgeMangoldtMoments
import SourceCubicCorrelationTaylor

/-!
The genuine closed support seam suppresses the actual shifted Mangoldt half row.
No prime power, natural endpoint or continuous/lower trace is discarded.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJetZeroRight.Variantdd11f350e6298a7b2c5af4f3b9c83d0cb525e6b66657c7beb195f98d5edf5918

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualSupportEdgeMangoldtRow
open MeasureTheory Set
open scoped BigOperators Interval
open ActualSupportEdgeMangoldtMoments ActualLowerTraceArithmeticExpansion
open SourcePairing SourceCubicCorrelationTaylor SourceActualAdjointAbelPrimitives
open SourceActualLogColumnTransport
open RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensAbel EstimateVaughanSource
open EstimateSourceMobiusKernel
noncomputable section

private theorem source_jet_zero_right (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    ∀ z : ℝ, 2 * A ≤ z → iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) z = 0 := by
  induction n with
  | zero =>
    intro z hz
    simp only [iteratedDeriv_zero]
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A z (by linarith)
      (hz.trans (le_abs_self z))
  | succ n ih =>
    intro z hz
    have hh : ∀ y ∈ Ici z,
        iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) y = 0 :=
      fun y hy => ih y (hz.trans hy)
    have hd : HasDerivWithinAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
        0 (Ici z) z :=
      (hasDerivWithinAt_const z (Ici z) (0 : ℝ)).congr
        (fun y hy => hh y hy) (hh z self_mem_Ici)
    simpa only [iteratedDeriv_succ] using hd.deriv_eq_zero (uniqueDiffWithinAt_Ici z)

private theorem edge_jet_zero (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 :=
  source_jet_zero_right A hA n _ le_rfl

private theorem global_taylor_bound {f : ℝ → ℝ} (n : ℕ) (hf : ContDiff ℝ (n + 1) f)
    (M a y : ℝ) (hM : ∀ t, |iteratedDeriv (n + 1) f t| ≤ M) :
    |f (a + y) - taylorWithinEval f n univ a (a + y)| ≤
      M * |y| ^ (n + 1) / (n + 1).factorial := by
  by_cases hy : y = 0
  · simp [hy]
  have hne : a ≠ a + y := by intro h; apply hy; linarith
  have hu := uniqueDiffOn_uIcc hne
  have hpoly : taylorWithinEval f n (uIcc a (a + y)) a (a + y) =
      taylorWithinEval f n univ a (a + y) := by
    simp only [taylor_within_apply]
    apply Finset.sum_congr rfl
    intro k hk
    rw [iteratedDerivWithin_univ,
      iteratedDerivWithin_eq_iteratedDeriv hu
        (hf.of_le (by exact_mod_cast (Nat.le_of_lt (Finset.mem_range.mp hk)))).contDiffAt
        (left_mem_uIcc)]
  obtain ⟨t, _, ht⟩ := taylor_mean_remainder_lagrange_iteratedDeriv hne hf.contDiffOn
  rw [← hpoly, ht, abs_div, abs_mul, abs_pow]
  simp only [add_sub_cancel_left, Nat.abs_cast]
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right (hM t) (by positivity)) (by positivity)

/-- The actual third jet vanishes linearly at the genuine closed support seam. -/
theorem actual_correlation_third_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : z ≤ 2 * A) :
    |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have hd := hc.differentiable_iteratedDeriv 3 (by norm_num)
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := univ) (f := iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => hd x)
    (fun x _ => by simpa only [Real.norm_eq_abs, ← iteratedDeriv_succ] using
      actual_correlation_iterated_fourth_abs_le_sixty_seven A x hA)
    convex_univ (mem_univ (2 * A)) (mem_univ z)
  rw [edge_jet_zero A (by linarith) 3] at he
  simp only [Real.norm_eq_abs, sub_zero, abs_of_nonpos (by linarith : z - 2 * A ≤ 0)] at he
  simpa only [show -(z - 2 * A) = 2 * A - z by ring] using he

/-- The actual second jet has the exact quadratic support-edge budget. -/
theorem actual_correlation_second_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) :
    |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 2 / 2 := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have h2 := edge_jet_zero A (by linarith) 2
  have h3 := edge_jet_zero A (by linarith) 3
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h2 h3
  have hb : ∀ t, |iteratedDeriv 2 (deriv (deriv
      (sourceCorrelation explicitSecondDerivative A))) t| ≤ 67 / A ^ 4 := by
    intro t
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actual_correlation_iterated_fourth_abs_le_sixty_seven A t hA
  have h := global_taylor_bound 1 hc.deriv'.deriv' (67 / A ^ 4) (2 * A)
    (z - 2 * A) hb
  have he : taylorWithinEval (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      1 univ (2 * A) z = 0 := by
    simp [taylorWithinEval_succ, taylor_within_zero_eval, h2, h3]
  rw [show 2 * A + (z - 2 * A) = z by ring, he, sub_zero] at h
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h
  rw [sq_abs] at h
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero,
    show (z - 2 * A) ^ 2 = (2 * A - z) ^ 2 by ring] using h

/-- Every real displacement below the genuine closed seam has its fourth-order bound. -/
theorem actual_correlation_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 4 / 24 := by
  have h0 := edge_jet_zero A (by linarith) 0
  have h1 := edge_jet_zero A (by linarith) 1
  have h2 := edge_jet_zero A (by linarith) 2
  have h3 := edge_jet_zero A (by linarith) 3
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h0 h1 h2 h3
  have h := cubicCorrelationRemainder_abs_le A (2 * A) (z - 2 * A) hA
  simp only [cubicCorrelationRemainder, cubicCorrelationJet, h0, h1, h2, h3,
    mul_zero, add_zero, sub_zero] at h
  rw [show 2 * A + (z - 2 * A) = z by ring] at h
  convert h using 1
  ring

/-- Actual first derivative jets retain the third-power edge factor. -/
theorem actual_correlation_first_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : z ≤ 2 * A) :
    |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 3 / 6 := by
  have h1 := edge_jet_zero A (by linarith) 1
  have h2 := edge_jet_zero A (by linarith) 2
  have h3 := edge_jet_zero A (by linarith) 3
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1 h2 h3
  have h := cubicCorrelationRemainder_deriv_abs_le A (2 * A) (z - 2 * A) hA
  rw [(cubicCorrelationRemainder_hasDerivAt A (2 * A) (z - 2 * A)
    (by linarith)).deriv] at h
  simp only [h1, h2, h3, mul_zero, add_zero, sub_zero] at h
  rw [show 2 * A + (z - 2 * A) = z by ring,
    abs_of_nonpos (by linarith : z - 2 * A ≤ 0)] at h
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero,
    show -(z - 2 * A) = 2 * A - z by ring] using h

private theorem actual_row_term_abs_le {A a : ℝ} (hA : 91 ≤ A) {n : ℕ}
    (hn : 1 ≤ n) (hz : Real.log n ≤ 2 * A - a) :
    |ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)| ≤
      67 / A ^ 4 * (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        ((2 * A - a - Real.log n) ^ 3 / 6 +
          (2 * A - a - Real.log n) ^ 4 / 48) := by
  have hc := actual_correlation_edge_abs_le (z := Real.log n + a) hA
  have hd := actual_correlation_first_edge_abs_le (z := Real.log n + a) hA (by linarith)
  have hh := abs_sub (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
    (Real.log n + a)) (sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)
  have hcoef : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) := by positivity
  rw [abs_div, abs_of_nonneg (by norm_num : 0 ≤ (2 : ℝ))] at hh
  have hsum : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2| ≤
      67 / A ^ 4 * ((2 * A - a - Real.log n) ^ 3 / 6 +
        (2 * A - a - Real.log n) ^ 4 / 48) := by
    rw [show 2 * A - (Real.log n + a) = 2 * A - a - Real.log n by ring] at hc hd
    linarith
  rw [abs_mul, abs_of_nonneg hcoef]
  calc
    _ ≤ (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (67 / A ^ 4 * ((2 * A - a - Real.log n) ^ 3 / 6 +
          (2 * A - a - Real.log n) ^ 4 / 48)) :=
      mul_le_mul_of_nonneg_left hsum hcoef
    _ = _ := by ring

/-- Every literal finite positive Mangoldt inventory has the support-edge row norm budget. -/
theorem actual_finite_mangoldt_half_row_abs_le {A a : ℝ} (hA : 91 ≤ A)
    (ha : a ≤ 2 * A) (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) :
    |∑ n ∈ S, ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)| ≤
      2144 * (Real.log 4 + 4) * Real.exp ((2 * A - a) / 2) / A ^ 4 := by
  classical
  let L := 2 * A - a
  let M := ⌊Real.exp L⌋₊
  let f := fun n : ℕ => 67 / A ^ 4 *
    (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
      ((L - Real.log n) ^ 3 / 6 + (L - Real.log n) ^ 4 / 48)
  have hL : 0 ≤ L := by dsimp only [L]; linarith
  have hb : |∑ n ∈ S, ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)| ≤
      ∑ n ∈ S, if n ≤ M then f n else 0 := by
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro n hn
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast hS n hn
    by_cases hnm : n ≤ M
    · rw [if_pos hnm]
      have hz : Real.log (n : ℝ) ≤ L :=
        (Real.log_le_iff_le_exp hn0).mpr
          ((Nat.le_floor_iff (Real.exp_pos L).le).mp hnm)
      exact actual_row_term_abs_le hA (hS n hn) hz
    · rw [if_neg hnm]
      have hz : 2 * A ≤ Real.log n + a := by
        have ht : L < Real.log (n : ℝ) := by
          rw [Real.lt_log_iff_exp_lt hn0, ← Nat.floor_lt (Real.exp_pos L).le]
          exact Nat.lt_of_not_ge hnm
        dsimp only [L] at ht
        linarith
      rw [source_jet_zero_right A (by linarith) 1 _ hz,
        show sourceCorrelation explicitSecondDerivative A (Real.log n + a) = 0 from
          source_jet_zero_right A (by linarith) 0 _ hz]
      simp
  have hsubset : S.filter (fun n => n ≤ M) ⊆ Finset.Icc 1 M := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨hS n (Finset.mem_filter.mp hn).1, (Finset.mem_filter.mp hn).2⟩
  have hf (n : ℕ) (hn : n ∈ Finset.Icc 1 M) : 0 ≤ f n := by
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    have hz : Real.log (n : ℝ) ≤ L := (Real.log_le_iff_le_exp hn0).mpr
      ((Nat.le_floor_iff (Real.exp_pos L).le).mp (Finset.mem_Icc.mp hn).2)
    dsimp only [f]
    positivity
  have heq : (∑ n ∈ Finset.Icc 1 M, f n) =
      67 / A ^ 4 * (actualHalfMangoldtEdgeMoment 3 L / 6 +
        actualHalfMangoldtEdgeMoment 4 L / 48) := by
    unfold actualHalfMangoldtEdgeMoment
    dsimp only [f, M]
    rw [Finset.sum_div, Finset.sum_div, ← Finset.sum_add_distrib]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    ring
  have h3 := actualHalfMangoldtEdgeMoment_le 2 hL
  have h4 := actualHalfMangoldtEdgeMoment_le 3 hL
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h3 h4
  calc
    _ ≤ ∑ n ∈ S, if n ≤ M then f n else 0 := hb
    _ = ∑ n ∈ S.filter (fun n => n ≤ M), f n := (Finset.sum_filter _ _).symm
    _ ≤ ∑ n ∈ Finset.Icc 1 M, f n :=
      Finset.sum_le_sum_of_subset_of_nonneg hsubset (fun n hn _ => hf n hn)
    _ = _ := heq
    _ ≤ 67 / A ^ 4 *
        (96 * (Real.log 4 + 4) * Real.exp (L / 2) / 6 +
          768 * (Real.log 4 + 4) * Real.exp (L / 2) / 48) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      linarith
    _ = _ := by dsimp only [L]; ring

/-- The actual lower-column full Mangoldt row receives this unconditional norm bound. -/
theorem actualLowerColumnHalfMangoldtRow_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualLowerColumnHalfMangoldtRow A| ≤
      2144 * (Real.log 4 + 4) *
        Real.exp ((2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / 2) / A ^ 4 := by
  have hK := actual_column_window_nonempty (by linarith : 1 ≤ A)
  have hN : vaughanCutoff A + 1 ≤ sourceKernelCutoff A :=
    hK.trans (Nat.div_le_self _ _)
  have hNF : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have ha : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A := by
    rw [Real.log_le_iff_le_exp (by positivity)]
    exact (by exact_mod_cast hN : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      (sourceKernelCutoff A : ℝ)).trans hNF
  apply actual_finite_mangoldt_half_row_abs_le hA ha _
  intro n hn
  have := (Finset.mem_Ioc.mp hn).1
  omega

end
end FormalResearch.RiemannHypothesis.ActualSupportEdgeMangoldtRow
