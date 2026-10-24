# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0803a9bc5216c40af828df7e9aa162992c9adb6` · SHA-256 `2561b92356896f3338ce75d3053744b1ba85231f84dceacf570d1af1f5905924`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ThetaPhiSummable.Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ThetaPhiSummable.Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"bb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/bb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPositiveLift
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Normed.Group.FunctionSeries

/-!
# Convergence and positivity of the actual theta kernel

These theorems apply to the explicit `thetaPhiTerm` and `thetaPhi` definitions.
Convergence is inherited from Mathlib's polynomially weighted Gaussian theta
series. No xi coefficient identity or determinant sign is assumed here.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ThetaPhiSummable.Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Set

noncomputable section

/-- Polynomially weighted Gaussian convergence holds at every real coordinate. -/
theorem thetaPhi_summable (t : ℝ) : Summable (fun m : ℕ => thetaPhiTerm m t) := by
  have h4 := (HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * t))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (5 * t) * Real.exp (4 * t))
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (3 * Real.pi * Real.exp (5 * t))
  refine (h4.sub h2).congr ?_
  intro n
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one]
  ring

/-- Every positive mode is strictly positive on the nonnegative half-line. -/
theorem thetaPhiTerm_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) : 0 < thetaPhiTerm m t := by
  have hn : (1 : ℝ) ≤ (m + 1 : ℕ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hn2 : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 := one_le_pow₀ hn
  have hne : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr he)]
  have hp : 3 < 2 * Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by
    nlinarith [Real.pi_gt_three, mul_le_mul_of_nonneg_left hne (le_of_lt Real.pi_pos)]
  unfold thetaPhiTerm
  exact mul_pos (mul_pos (mul_pos (mul_pos Real.pi_pos (by positivity))
    (Real.exp_pos _)) (sub_pos.mpr hp)) (Real.exp_pos _)

/-- Every nonnegative coordinate has a strictly positive convergent theta sum. -/
theorem thetaPhi_positive : ThetaPhiPositive := by
  intro t ht
  exact (thetaPhi_summable t).tsum_pos
    (fun m => (thetaPhiTerm_positive m ht).le) 0 (thetaPhiTerm_positive 0 ht)


/-- Exact decomposition into the two weighted Gaussian theta series. -/
theorem thetaPhiTerm_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaPhiTerm m t =
      (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
        HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m -
      (3 * Real.pi * Real.exp (5 * t)) *
        HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
  have he : Real.exp (9 * t) = Real.exp (5 * t) * Real.exp (4 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one, he]
  ring

/-- Explicit summable bound on any compact coordinate interval. -/
def thetaPhiCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  (2 * Real.pi ^ 2 * Real.exp (9 * b)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * a)) m +
    (3 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m

/-- The compact bound is summable over the actual source modes. -/
theorem thetaPhiCompactBound_summable (a b : ℝ) : Summable (thetaPhiCompactBound a b) := by
  exact ((HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * a))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (9 * b))).add
    ((HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * a))).mul_left
      (3 * Real.pi * Real.exp (5 * b)))

/-- The bound controls every mode uniformly throughout the interval. -/
theorem thetaPhiTerm_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTerm m t‖ ≤ thetaPhiCompactBound a b m := by
  rw [thetaPhiTerm_eq_gaussians]
  refine (norm_sub_le _ _).trans ?_
  have h4 : 0 ≤ HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h2 : 0 ≤ HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  rw [Real.norm_of_nonneg (by positivity), Real.norm_of_nonneg (by positivity)]
  have hG : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * a)) := by
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonpos_left (Real.exp_le_exp.mpr (by linarith [ht.1]))
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr Real.pi_pos.le) (sq_nonneg _)
  have hF (k : ℕ) : HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * a)) m :=
    mul_le_mul_of_nonneg_left hG (by positivity)
  unfold thetaPhiCompactBound
  apply add_le_add
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 4) h4 (by positivity)
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 2) h2 (by positivity)

/-- Every individual mode is continuous on the whole real line. -/
theorem continuous_thetaPhiTerm (m : ℕ) : Continuous (thetaPhiTerm m) := by
  unfold thetaPhiTerm
  fun_prop

/-- Summable compact domination makes the theta sum continuous on each interval. -/
theorem continuousOn_thetaPhi_Icc (a b : ℝ) : ContinuousOn thetaPhi (Icc a b) := by
  exact continuousOn_tsum (fun m => (continuous_thetaPhiTerm m).continuousOn)
    (thetaPhiCompactBound_summable a b) (fun m _ ht => thetaPhiTerm_norm_le_compactBound ht m)

/-- The actual theta sum is continuous at every real coordinate. -/
theorem continuous_thetaPhi : Continuous thetaPhi := by
  rw [continuous_iff_continuousAt]
  intro t
  exact (continuousOn_thetaPhi_Icc (t - 1) (t + 1)).continuousAt
    (Icc_mem_nhds (by linarith) (by linarith))



/-- Explicit finite constant in the source decay estimate. -/
def thetaPhiDecayConstant : ℝ :=
  2 * Real.pi ^ 2 * HurwitzKernelBounds.F_nat 4 1 (1 / 2)

/-- The Gaussian sum defining the decay constant is finite and strictly positive. -/
theorem thetaPhiDecayConstant_positive : 0 < thetaPhiDecayConstant := by
  unfold thetaPhiDecayConstant HurwitzKernelBounds.F_nat
  apply mul_pos (by positivity)
  exact (HurwitzKernelBounds.summable_f_nat 4 1 (by norm_num : (0 : ℝ) < 1 / 2)).tsum_pos
    (fun m => by unfold HurwitzKernelBounds.f_nat; positivity) 0 (by
      unfold HurwitzKernelBounds.f_nat
      positivity)

/-- An explicit superexponential source bound, obtained by splitting each Gaussian. -/
theorem thetaPhi_le_superexp {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t ≤ thetaPhiDecayConstant * Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t)) := by
  have hE : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hmode (m : ℕ) : thetaPhiTerm m t ≤
      (2 * Real.pi ^ 2 * Real.exp (9 * t) * Real.exp (-(Real.pi / 2) * Real.exp (4 * t))) *
        HurwitzKernelBounds.f_nat 4 1 (1 / 2) m := by
    rw [thetaPhiTerm_eq_gaussians]
    apply le_trans (sub_le_self _ (by unfold HurwitzKernelBounds.f_nat; positivity))
    have hn : (1 : ℝ) ≤ (m : ℝ) + 1 := by
      have : (0 : ℝ) ≤ m := Nat.cast_nonneg m
      linarith
    have hn2 : 1 ≤ ((m : ℝ) + 1) ^ 2 := one_le_pow₀ hn
    have hsplit : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
        Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)) := by
      rw [← Real.exp_add]
      apply Real.exp_le_exp.mpr
      have hprod := mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr hE)
      have hmid : Real.exp (4 * t) + ((m : ℝ) + 1) ^ 2 ≤
          2 * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t) := by nlinarith
      nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hmid)]
    unfold HurwitzKernelBounds.f_nat
    calc
      _ ≤ (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
          (((m : ℝ) + 1) ^ 4 * (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
            Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)))) := by
        gcongr
      _ = _ := by ring
  have hsum := (thetaPhi_summable t).tsum_le_tsum hmode
    ((HurwitzKernelBounds.summable_f_nat 4 1 (by norm_num : (0 : ℝ) < 1 / 2)).mul_left _)
  apply hsum.trans_eq
  rw [tsum_mul_left]
  unfold thetaPhiDecayConstant HurwitzKernelBounds.F_nat
  rw [sub_eq_add_neg, Real.exp_add, neg_mul]
  ring

/-- A quadratic exponential bound absorbing the source prefactor. -/
theorem thirteen_mul_le_half_pi_exp {t : ℝ} (ht : 0 ≤ t) :
    13 * t ≤ (Real.pi / 2) * Real.exp (4 * t) := by
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hpi : 3 * Real.exp (4 * t) ≤ Real.pi * Real.exp (4 * t) :=
    mul_le_mul_of_nonneg_right Real.pi_gt_three.le (Real.exp_pos _).le
  nlinarith [sq_nonneg (24 * t - 7)]

/-- A simpler exponential bound suitable for integrability estimates. -/
theorem thetaPhi_le_exp_neg_four_mul {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t ≤ thetaPhiDecayConstant * Real.exp (-4 * t) := by
  refine (thetaPhi_le_superexp ht).trans ?_
  apply mul_le_mul_of_nonneg_left _ thetaPhiDecayConstant_positive.le
  apply Real.exp_le_exp.mpr
  linarith [thirteen_mul_le_half_pi_exp ht]

/-- A weaker rate leaving one exponential factor for normalized polynomial weights. -/
theorem thetaPhi_le_exp_neg_two_mul {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t ≤ thetaPhiDecayConstant * Real.exp (-2 * t) := by
  refine (thetaPhi_le_exp_neg_four_mul ht).trans ?_
  apply mul_le_mul_of_nonneg_left _ thetaPhiDecayConstant_positive.le
  apply Real.exp_le_exp.mpr
  linarith


end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
