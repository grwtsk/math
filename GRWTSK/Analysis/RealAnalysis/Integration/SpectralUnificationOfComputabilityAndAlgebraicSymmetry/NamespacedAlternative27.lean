-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.WeightedMobiusPrimitiveEqOne.Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.WeightedMobiusPrimitiveEqOne.Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1","mathematical_subject":"Analysis.Integration","original_sha256":"0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelDerivative

/-!
# The first signed blocks of the actual weighted Möbius primitive

These statements compute the actual arithmetic primitive, including its closed
right endpoints. They exhibit a sign change already at log 3, so replacing it
by a nonnegative profile would change the signed residual.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.WeightedMobiusPrimitiveEqOne.Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedMobiusInitialBlocks

open MeasureTheory Set
open EstimateMertensAbel EstimateMertensResidual EstimateWeightedMobiusPairing
open EstimateSourceKernelLogProfile EstimateSourceKernelDerivative

noncomputable section

@[simp] theorem weightedMoebius_one : weightedMoebius 1 = 1 := by
  simp [weightedMoebius, realMoebius]

@[simp] theorem weightedMoebius_two : weightedMoebius 2 = -1 / Real.sqrt 2 := by
  simp [weightedMoebius, realMoebius, ArithmeticFunction.moebius_apply_prime Nat.prime_two]

@[simp] theorem weightedMoebius_three : weightedMoebius 3 = -1 / Real.sqrt 3 := by
  simp [weightedMoebius, realMoebius, ArithmeticFunction.moebius_apply_prime Nat.prime_three]

/-- Before the first prime atom only the unit Möbius coefficient is present. -/
theorem weightedMobiusPrimitive_eq_one {s : ℝ}
    (hs : 0 ≤ s) (hstop : s < Real.log 2) : weightedMobiusPrimitive s = 1 := by
  have hf : ⌊Real.exp s⌋₊ = 1 := (Nat.floor_eq_iff (Real.exp_pos s).le).2 ⟨
    by simpa using Real.one_le_exp_iff.mpr hs,
    by simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2),
      Nat.cast_one, one_add_one_eq_two] using (Real.exp_lt_exp.mpr hstop)⟩
  simp [weightedMobiusPrimitive, hf]

/-- The closed-right value at zero includes the coefficient at the unit. -/
@[simp] theorem weightedMobiusPrimitive_zero : weightedMobiusPrimitive 0 = 1 := by
  apply weightedMobiusPrimitive_eq_one le_rfl
  exact Real.log_pos (by norm_num)

/-- At log 2 the negative prime-two coefficient enters and stays until log 3. -/
theorem weightedMobiusPrimitive_eq_one_sub_two {s : ℝ}
    (hstart : Real.log 2 ≤ s) (hstop : s < Real.log 3) :
    weightedMobiusPrimitive s = 1 - 1 / Real.sqrt 2 := by
  have hf : ⌊Real.exp s⌋₊ = 2 := (Nat.floor_eq_iff (Real.exp_pos s).le).2 ⟨
    by simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2),
      Nat.cast_ofNat] using (Real.exp_le_exp.mpr hstart),
    by
      have hh := Real.exp_lt_exp.mpr hstop
      rw [Real.exp_log (by norm_num : (0 : ℝ) < 3)] at hh
      norm_num only [Nat.cast_ofNat] at *
      exact hh⟩
  norm_num [weightedMobiusPrimitive, hf, Finset.sum_Icc_succ_top]
  ring

/-- The atom at log 3 is included by the closed-right floor convention. -/
theorem weightedMobiusPrimitive_log_three :
    weightedMobiusPrimitive (Real.log 3) = 1 - 1 / Real.sqrt 2 - 1 / Real.sqrt 3 := by
  norm_num [weightedMobiusPrimitive, Real.exp_log (by norm_num : (0 : ℝ) < 3),
    Finset.sum_Icc_succ_top]
  ring

/-- The first genuine sign change of the weighted arithmetic primitive is
already visible at the third integer. -/
theorem weightedMobiusPrimitive_log_three_neg :
    weightedMobiusPrimitive (Real.log 3) < 0 := by
  rw [weightedMobiusPrimitive_log_three]
  have h2p : 0 < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have h3p : 0 < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num)
  have h2 : Real.sqrt 2 < 2 := by nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)]
  have h3 : Real.sqrt 3 < 2 := by nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)]
  have hi2 : (1/2:ℝ) < 1 / Real.sqrt 2 :=
    (div_lt_div_iff₀ (by norm_num) h2p).2 (by linarith)
  have hi3 : (1/2:ℝ) < 1 / Real.sqrt 3 :=
    (div_lt_div_iff₀ (by norm_num) h3p).2 (by linarith)
  linarith

/-- The second block keeps the negative prime-two contribution but is positive. -/
theorem first_prime_block_weight_pos : (0 : ℝ) < 1 - 1 / Real.sqrt 2 := by
  have hp : 0 < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hs : 1 < Real.sqrt 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
  have hi : 1 / Real.sqrt 2 < 1 := (div_lt_one hp).2 hs
  linarith

/-- No earlier logarithmic scale has crossed zero. -/
theorem weightedMobiusPrimitive_pos_before_log_three {s : ℝ}
    (hs : 0 ≤ s) (hstop : s < Real.log 3) : 0 < weightedMobiusPrimitive s := by
  by_cases ht : s < Real.log 2
  · rw [weightedMobiusPrimitive_eq_one hs ht]
    norm_num
  · rw [weightedMobiusPrimitive_eq_one_sub_two (le_of_not_gt ht) hstop]
    exact first_prime_block_weight_pos

/-- On the first block the unit coefficient integrates with its full endpoint. -/
theorem first_block_integral (G : ℝ → ℝ) (hG : ContDiff ℝ 1 G) :
    (∫ s in (0 : ℝ)..Real.log 2, weightedMobiusPrimitive s * deriv G s) =
      G (Real.log 2) - G 0 := by
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  calc
    _ = ∫ s in (0 : ℝ)..Real.log 2, deriv G s := by
      apply intervalIntegral.integral_congr_Ioo_of_le h2
      intro s hs
      dsimp only
      rw [weightedMobiusPrimitive_eq_one hs.1.le hs.2, one_mul]
    _ = _ := intervalIntegral.integral_deriv_eq_sub
      (fun s _ => hG.differentiable (by norm_num) s)
      ((hG.continuous_deriv (by norm_num)).intervalIntegrable _ _)

/-- The second signed block contains the prime-two correction exactly. -/
theorem second_block_integral (G : ℝ → ℝ) (hG : ContDiff ℝ 1 G) :
    (∫ s in Real.log 2..Real.log 3, weightedMobiusPrimitive s * deriv G s) =
      (1 - 1 / Real.sqrt 2) * (G (Real.log 3) - G (Real.log 2)) := by
  have h23 : Real.log 2 ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  calc
    _ = ∫ s in Real.log 2..Real.log 3, (1 - 1 / Real.sqrt 2) * deriv G s := by
      apply intervalIntegral.integral_congr_Ioo_of_le h23
      intro s hs
      dsimp only
      rw [weightedMobiusPrimitive_eq_one_sub_two hs.1.le hs.2]
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_deriv_eq_sub]
      · intro s _
        exact hG.differentiable (by norm_num) s
      · exact (hG.continuous_deriv (by norm_num)).intervalIntegrable _ _

/-- Exact signed initial pairing; neither the unit nor prime-two boundary
coefficient is dropped when the two adjacent blocks are recombined. -/
theorem initial_pairing_identity (G : ℝ → ℝ) (hG : ContDiff ℝ 1 G) :
    -(∫ s in (0 : ℝ)..Real.log 3, weightedMobiusPrimitive s * deriv G s) =
      G 0 - G (Real.log 2) / Real.sqrt 2 -
        (1 - 1 / Real.sqrt 2) * G (Real.log 3) := by
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have h23 : Real.log 2 ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  have hint (a b : ℝ) : IntervalIntegrable (deriv G) volume a b :=
    (hG.continuous_deriv (by norm_num)).intervalIntegrable a b
  have hi1 : IntervalIntegrable (fun s => weightedMobiusPrimitive s * deriv G s)
      volume 0 (Real.log 2) := by
    apply (hint 0 (Real.log 2)).congr_uIoo
    intro s hs
    rw [uIoo_of_le h2] at hs
    dsimp only
    rw [weightedMobiusPrimitive_eq_one hs.1.le hs.2, one_mul]
  have hi2 : IntervalIntegrable (fun s => weightedMobiusPrimitive s * deriv G s)
      volume (Real.log 2) (Real.log 3) := by
    apply ((hint (Real.log 2) (Real.log 3)).const_mul (1 - 1 / Real.sqrt 2)).congr_uIoo
    intro s hs
    rw [uIoo_of_le h23] at hs
    dsimp only
    rw [weightedMobiusPrimitive_eq_one_sub_two hs.1.le hs.2]
  rw [← intervalIntegral.integral_add_adjacent_intervals hi1 hi2,
    first_block_integral G hG, second_block_integral G hG]
  ring

/-- Prime two strictly decreases the effective length of the initial signed
pairing below the unweighted interval length log 3. -/
theorem initial_pairing_weight_lt_log_three :
    Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2) < Real.log 3 := by
  have hl : Real.log 2 < Real.log 3 := Real.log_lt_log (by norm_num) (by norm_num)
  have hi : (0 : ℝ) < 1 / Real.sqrt 2 := by positivity
  nlinarith

/-- This finite arithmetic regime uses the actual signed prime-two coefficient,
not the larger interval length obtained by replacing it with one. -/
theorem initial_pairing_abs_le (G : ℝ → ℝ) (hG : ContDiff ℝ 1 G) (B : ℝ)
    (hB : ∀ s ∈ Icc (0 : ℝ) (Real.log 3), |deriv G s| ≤ B) :
    |-(∫ s in (0 : ℝ)..Real.log 3, weightedMobiusPrimitive s * deriv G s)| ≤
      (Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2)) * B := by
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have h23 : Real.log 2 ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  have hFTC (a b : ℝ) : (∫ s in a..b, deriv G s) = G b - G a :=
    intervalIntegral.integral_deriv_eq_sub
      (fun s _ => hG.differentiable (by norm_num) s)
      ((hG.continuous_deriv (by norm_num)).intervalIntegrable _ _)
  have hfirst : |G (Real.log 2) - G 0| ≤ B * Real.log 2 := by
    rw [← hFTC]
    have hb := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := Real.log 2) (C := B) (f := deriv G) (fun s hs => ?_)
    · simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg h2] using hb
    · rw [uIoc_of_le h2] at hs
      simpa only [Real.norm_eq_abs] using hB s ⟨hs.1.le, hs.2.trans h23⟩
  have hsecond : |G (Real.log 3) - G (Real.log 2)| ≤ B * (Real.log 3 - Real.log 2) := by
    rw [← hFTC]
    have hb := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := Real.log 2) (b := Real.log 3) (C := B) (f := deriv G) (fun s hs => ?_)
    · simpa only [Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr h23)] using hb
    · rw [uIoc_of_le h23] at hs
      simpa only [Real.norm_eq_abs] using hB s ⟨h2.trans hs.1.le, hs.2⟩
  rw [initial_pairing_identity G hG]
  calc
    _ = |-(G (Real.log 2) - G 0) -
        (1 - 1 / Real.sqrt 2) * (G (Real.log 3) - G (Real.log 2))| := by
      congr 1
      ring
    _ ≤ |G (Real.log 2) - G 0| +
        (1 - 1 / Real.sqrt 2) * |G (Real.log 3) - G (Real.log 2)| := by
      simpa only [sub_zero, zero_sub, abs_neg, abs_mul,
        abs_of_nonneg first_prime_block_weight_pos.le] using
        abs_sub_le (-(G (Real.log 2) - G 0)) 0
          ((1 - 1 / Real.sqrt 2) * (G (Real.log 3) - G (Real.log 2)))
    _ ≤ B * Real.log 2 +
        (1 - 1 / Real.sqrt 2) * (B * (Real.log 3 - Real.log 2)) :=
      add_le_add hfirst (mul_le_mul_of_nonneg_left hsecond first_prime_block_weight_pos.le)
    _ = _ := by ring

/-- The exact first two signed blocks for the unchanged source kernel. -/
theorem source_initial_pairing_identity (A : ℝ) (hA : 1 ≤ A) :
    -(∫ s in (0 : ℝ)..Real.log 3,
      weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) =
      sourceLogKernel A 0 - sourceLogKernel A (Real.log 2) / Real.sqrt 2 -
        (1 - 1 / Real.sqrt 2) * sourceLogKernel A (Real.log 3) :=
  initial_pairing_identity _ (sourceLogKernel_contDiff A (by linarith))

/-- A scale-sensitive bound for the actual initial signed pairing, retaining
its smaller prime-two block weight. This does not bound the remaining tail. -/
theorem source_initial_pairing_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |-(∫ s in (0 : ℝ)..Real.log 3,
      weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)| ≤
      (Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2)) *
        (40 / A + 260 / (3 * A ^ 2)) :=
  initial_pairing_abs_le _ (sourceLogKernel_contDiff A (by linarith)) _
    (fun s hs => sourceLogKernel_deriv_abs_le A s hA hs.1)

/-- In particular these actual signed initial blocks are O(1/A), with an
explicit coefficient and every real source scale covered. -/
theorem source_initial_pairing_abs_le_inv_scale (A : ℝ) (hA : 1 ≤ A) :
    |-(∫ s in (0 : ℝ)..Real.log 3,
      weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)| ≤
      (Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2)) *
        (380 / (3 * A)) := by
  have hAp : 0 < A := by linarith
  have hdiv : 260 / (3 * A ^ 2) ≤ 260 / (3 * A) :=
    div_le_div_of_nonneg_left (by norm_num) (by positivity) (by nlinarith)
  have hbound : 40 / A + 260 / (3 * A ^ 2) ≤ 380 / (3 * A) := by
    calc
      _ ≤ 40 / A + 260 / (3 * A) := add_le_add le_rfl hdiv
      _ = _ := by ring
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have h23 : 0 ≤ Real.log 3 - Real.log 2 :=
    sub_nonneg.mpr (Real.log_le_log (by norm_num) (by norm_num))
  have hw : 0 ≤ Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2) :=
    add_nonneg h2 (mul_nonneg first_prime_block_weight_pos.le h23)
  exact (source_initial_pairing_abs_le A hA).trans (mul_le_mul_of_nonneg_left hbound hw)

/-- The first two arithmetic blocks fit inside every admitted source interval. -/
theorem log_three_lt_source_upper (A : ℝ) (hA : 1 ≤ A) : Real.log 3 < 2 * A := by
  have h := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 3) (by norm_num)
  linarith

/-- The full signed source residual separates into the explicitly evaluated
initial arithmetic blocks and the remaining signed tail. The boundary at log 3
is retained, and this is an identity rather than a tail bound. -/
theorem mertensResidual_eq_initial_and_tail (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      sourceLogKernel A 0 - sourceLogKernel A (Real.log 2) / Real.sqrt 2 -
        (1 - 1 / Real.sqrt 2) * sourceLogKernel A (Real.log 3) -
      ∫ s in Real.log 3..(2 * A),
        weightedMobiusPrimitive s * deriv (sourceLogKernel A) s := by
  have h3 : 0 ≤ Real.log 3 := Real.log_nonneg (by norm_num)
  have hu : Real.log 3 ≤ 2 * A := (log_three_lt_source_upper A hA).le
  have hf := weightedMobiusPrimitive_mul_deriv_integrable A hA
  have hi1 : IntervalIntegrable
      (fun s => weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume 0 (Real.log 3) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le h3).2
      (hf.mono_set (Icc_subset_Icc le_rfl hu))
  have hi2 : IntervalIntegrable
      (fun s => weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume (Real.log 3) (2 * A) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hu).2
      (hf.mono_set (Icc_subset_Icc h3 le_rfl))
  rw [mertensResidual_eq_weighted_log_pairing A hA,
    ← intervalIntegral.integral_add_adjacent_intervals hi1 hi2]
  have he := source_initial_pairing_identity A hA
  linarith

/-- The explicit signed initial arithmetic correction to the remaining tail
is bounded by a constant times 1/A, uniformly for all real A ≥ 1. -/
theorem mertensResidual_signed_tail_error_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A + ∫ s in Real.log 3..(2 * A),
      weightedMobiusPrimitive s * deriv (sourceLogKernel A) s| ≤
      (Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2)) *
        (380 / (3 * A)) := by
  rw [mertensResidual_eq_initial_and_tail A hA, sub_add_cancel]
  rw [← source_initial_pairing_identity A hA]
  exact source_initial_pairing_abs_le_inv_scale A hA

end
end EstimateWeightedMobiusInitialBlocks
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
