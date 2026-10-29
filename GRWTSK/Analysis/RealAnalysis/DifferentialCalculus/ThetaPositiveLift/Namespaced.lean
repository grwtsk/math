-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaModeA.Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaModeA.Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8","mathematical_subject":"Analysis.Calculus","original_sha256":"e5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/e5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

/-!
# Exact derivatives and elementary bounds for the literal theta source modes

The polynomial derivative formulas hold on the whole real line. Score and
curvature formulas are used only where their displayed denominator is nonzero.
No determinant sign or source log-concavity is assumed.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaModeA.Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- The common exponential theta coordinate. -/
def thetaModeA (t : ℝ) : ℝ := Real.pi * Real.exp (4 * t)

/-- The mode coordinate, with the repository's zero-based natural index. -/
def thetaModeY (m : ℕ) (t : ℝ) : ℝ :=
  thetaModeA t * ((m + 1 : ℕ) : ℝ) ^ 2

/-- The logarithmic derivative of a positive source mode. -/
def thetaModeScore (m : ℕ) (t : ℝ) : ℝ :=
  9 + 12 / (2 * thetaModeY m t - 3) - 4 * thetaModeY m t

/-- The second logarithmic derivative of a positive source mode. -/
def thetaModeCurvature (m : ℕ) (t : ℝ) : ℝ :=
  -16 * thetaModeY m t - 96 * thetaModeY m t / (2 * thetaModeY m t - 3) ^ 2

/-- Polynomial form of the first source-mode derivative, valid at every real point. -/
def thetaPhiTermDeriv (m : ℕ) (t : ℝ) : ℝ :=
  Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * t) *
    (-15 + 30 * thetaModeY m t - 8 * thetaModeY m t ^ 2) * Real.exp (-thetaModeY m t)

/-- Polynomial form of the second source-mode derivative, valid at every real point. -/
def thetaPhiTermSecondDeriv (m : ℕ) (t : ℝ) : ℝ :=
  Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * t) *
    (-75 + 330 * thetaModeY m t - 224 * thetaModeY m t ^ 2 +
      32 * thetaModeY m t ^ 3) * Real.exp (-thetaModeY m t)

/-- Exact source-mode expression in the common coordinate. -/
theorem thetaPhiTerm_eq_mode (m : ℕ) (t : ℝ) :
    thetaPhiTerm m t =
      Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * t) *
        (2 * thetaModeY m t - 3) * Real.exp (-thetaModeY m t) := by
  unfold thetaPhiTerm thetaModeY thetaModeA
  ring_nf

/-- Derivative of the common theta coordinate. -/
theorem hasDerivAt_thetaModeA (t : ℝ) :
    HasDerivAt thetaModeA (4 * thetaModeA t) t := by
  unfold thetaModeA
  convert! (((hasDerivAt_id t).const_mul 4).exp.const_mul Real.pi) using 1
  dsimp only [Pi.mul_apply, Pi.sub_apply, Pi.pow_apply, Pi.neg_apply, id_eq]
  ring

/-- Derivative of an individual mode coordinate. -/
theorem hasDerivAt_thetaModeY (m : ℕ) (t : ℝ) :
    HasDerivAt (thetaModeY m) (4 * thetaModeY m t) t := by
  unfold thetaModeY
  convert! (hasDerivAt_thetaModeA t).mul_const (((m + 1 : ℕ) : ℝ) ^ 2) using 1
  ring

private theorem hasDerivAt_modePrefactor (m : ℕ) (t : ℝ) :
    HasDerivAt (fun x => Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * x))
      (5 * (Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * t))) t := by
  convert! (((hasDerivAt_id t).const_mul 5).exp.const_mul
    (Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2)) using 1
  dsimp only [Pi.mul_apply, Pi.sub_apply, Pi.pow_apply, Pi.neg_apply, id_eq]
  ring

/-- Differentiate the literal mode without a logarithm or denominator premise. -/
theorem hasDerivAt_thetaPhiTerm_raw (m : ℕ) (t : ℝ) :
    HasDerivAt (thetaPhiTerm m) (thetaPhiTermDeriv m t) t := by
  rw [show thetaPhiTerm m = fun x =>
      Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * x) *
        (2 * thetaModeY m x - 3) * Real.exp (-thetaModeY m x) from
    funext (thetaPhiTerm_eq_mode m)]
  have hy := hasDerivAt_thetaModeY m t
  convert! ((hasDerivAt_modePrefactor m t).mul ((hy.const_mul 2).sub_const 3)).mul
    hy.neg.exp using 1
  unfold thetaPhiTermDeriv
  dsimp only [Pi.mul_apply, Pi.sub_apply, Pi.pow_apply, Pi.neg_apply, id_eq]
  ring

/-- Differentiate the polynomial first derivative on the whole real line. -/
theorem hasDerivAt_thetaPhiTermDeriv_raw (m : ℕ) (t : ℝ) :
    HasDerivAt (thetaPhiTermDeriv m) (thetaPhiTermSecondDeriv m t) t := by
  have hy := hasDerivAt_thetaModeY m t
  have hp := ((hy.const_mul 30).const_add (-15)).sub ((hy.pow 2).const_mul 8)
  unfold thetaPhiTermDeriv
  convert! ((hasDerivAt_modePrefactor m t).mul hp).mul hy.neg.exp using 1
  unfold thetaPhiTermSecondDeriv
  dsimp only [Pi.mul_apply, Pi.sub_apply, Pi.pow_apply, Pi.neg_apply, id_eq]
  ring

/-- The polynomial first derivative equals the mode times its score. -/
theorem thetaPhiTermDeriv_eq_score (m : ℕ) (t : ℝ)
    (hden : 2 * thetaModeY m t - 3 ≠ 0) :
    thetaPhiTermDeriv m t = thetaPhiTerm m t * thetaModeScore m t := by
  rw [thetaPhiTerm_eq_mode]
  unfold thetaPhiTermDeriv thetaModeScore
  have hp : -15 + 30 * thetaModeY m t - 8 * thetaModeY m t ^ 2 =
      (2 * thetaModeY m t - 3) *
        (9 + 12 / (2 * thetaModeY m t - 3) - 4 * thetaModeY m t) := by
    linear_combination -12 * (mul_inv_cancel₀ hden)
  rw [hp]
  ring

/-- The polynomial second derivative equals the exact score-curvature combination. -/
theorem thetaPhiTermSecondDeriv_eq_score_curvature (m : ℕ) (t : ℝ)
    (hden : 2 * thetaModeY m t - 3 ≠ 0) :
    thetaPhiTermSecondDeriv m t =
      thetaPhiTerm m t * (thetaModeScore m t ^ 2 + thetaModeCurvature m t) := by
  rw [thetaPhiTerm_eq_mode]
  unfold thetaPhiTermSecondDeriv thetaModeScore thetaModeCurvature
  have hp : -75 + 330 * thetaModeY m t - 224 * thetaModeY m t ^ 2 +
      32 * thetaModeY m t ^ 3 = (2 * thetaModeY m t - 3) *
        ((9 + 12 / (2 * thetaModeY m t - 3) - 4 * thetaModeY m t) ^ 2 +
          (-16 * thetaModeY m t - 96 * thetaModeY m t /
            (2 * thetaModeY m t - 3) ^ 2)) := by
    simp only [div_eq_mul_inv, ← inv_pow]
    linear_combination
      (48 * ((2 * thetaModeY m t - 3) * (2 * thetaModeY m t - 3)⁻¹) +
        96 * thetaModeY m t - 168) * (mul_inv_cancel₀ hden)
  rw [hp]
  ring

/-- The score derivative is the displayed curvature wherever its denominator is nonzero. -/
theorem hasDerivAt_thetaModeScore (m : ℕ) (t : ℝ)
    (hden : 2 * thetaModeY m t - 3 ≠ 0) :
    HasDerivAt (thetaModeScore m) (thetaModeCurvature m t) t := by
  have hy := hasDerivAt_thetaModeY m t
  unfold thetaModeScore
  convert! (((hasDerivAt_const t (12 : ℝ)).div ((hy.const_mul 2).sub_const 3) hden).const_add 9).sub
    (hy.const_mul 4) using 1
  unfold thetaModeCurvature
  ring

/-- The common coordinate is strictly larger than three on the source half-line. -/
theorem thetaModeA_gt_three {t : ℝ} (ht : 0 ≤ t) : 3 < thetaModeA t := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  unfold thetaModeA
  nlinarith [Real.pi_gt_three]

/-- Every mode coordinate is at least the common coordinate. -/
theorem thetaModeA_le_thetaModeY (m : ℕ) (t : ℝ) : thetaModeA t ≤ thetaModeY m t := by
  have ha : 0 ≤ thetaModeA t := by unfold thetaModeA; positivity
  have hn : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by
    exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  unfold thetaModeY
  nlinarith [mul_nonneg ha (show 0 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 - 1 by nlinarith)]

/-- The actual mode denominator is positive on the source half-line. -/
theorem thetaMode_den_pos (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 < 2 * thetaModeY m t - 3 := by
  have := thetaModeA_gt_three ht
  have := thetaModeA_le_thetaModeY m t
  linarith

/-- Every mode curvature has the stated negative upper bound. -/
theorem thetaModeCurvature_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeCurvature m t ≤ -16 * thetaModeA t := by
  have hy := thetaModeA_le_thetaModeY m t
  have ha := thetaModeA_gt_three ht
  have hd : 0 ≤ 96 * thetaModeY m t / (2 * thetaModeY m t - 3) ^ 2 := by
    exact div_nonneg (by linarith) (sq_nonneg _)
  unfold thetaModeCurvature
  linarith

/-- A polynomial score bound used for absolutely convergent weighted sums. -/
theorem abs_thetaModeScore_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    |thetaModeScore m t| ≤ 9 * thetaModeY m t := by
  have hy : 3 ≤ thetaModeY m t :=
    (thetaModeA_gt_three ht).le.trans (thetaModeA_le_thetaModeY m t)
  have hd := thetaMode_den_pos m ht
  have hdiv0 : 0 ≤ 12 / (2 * thetaModeY m t - 3) := by positivity
  have hdiv : 12 / (2 * thetaModeY m t - 3) ≤ 4 :=
    (div_le_iff₀ hd).2 (by linarith)
  unfold thetaModeScore
  rw [abs_le]
  constructor <;> linarith

/-- A polynomial curvature bound used for absolutely convergent weighted sums. -/
theorem abs_thetaModeCurvature_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    |thetaModeCurvature m t| ≤ 27 * thetaModeY m t := by
  have hy : 3 ≤ thetaModeY m t :=
    (thetaModeA_gt_three ht).le.trans (thetaModeA_le_thetaModeY m t)
  have hd : 0 < (2 * thetaModeY m t - 3) ^ 2 := sq_pos_of_pos (thetaMode_den_pos m ht)
  have hds : 9 ≤ (2 * thetaModeY m t - 3) ^ 2 := by nlinarith
  have hdiv0 : 0 ≤ 96 * thetaModeY m t / (2 * thetaModeY m t - 3) ^ 2 := by positivity
  have hdiv : 96 * thetaModeY m t / (2 * thetaModeY m t - 3) ^ 2 ≤
      11 * thetaModeY m t := (div_le_iff₀ hd).2 (by
    nlinarith [mul_nonneg (show 0 ≤ thetaModeY m t by linarith)
      (show 0 ≤ (2 * thetaModeY m t - 3) ^ 2 - 9 by linarith)])
  unfold thetaModeCurvature
  rw [abs_le]
  constructor <;> linarith

/-- Scores decrease as the nonnegative-half-line source mode index increases. -/
theorem thetaModeScore_sub_nonnegative (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaModeScore 0 t - thetaModeScore m t := by
  have ha := (thetaModeA_gt_three ht).le
  have hy := thetaModeA_le_thetaModeY m t
  have hdA : 0 < 2 * thetaModeA t - 3 := by linarith
  have hdiv : 12 / (2 * thetaModeY m t - 3) ≤ 12 / (2 * thetaModeA t - 3) :=
    div_le_div_of_nonneg_left (by norm_num) hdA (by linarith)
  simp only [thetaModeScore, thetaModeY, zero_add, Nat.cast_one, one_pow, mul_one] at *
  linarith

/-- An explicit score-gap bound relative to the first positive mode. -/
theorem thetaModeScore_sub_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeScore 0 t - thetaModeScore m t ≤
      5 * thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1) := by
  rcases m with _ | m
  · simp [thetaModeScore]
  have ha := (thetaModeA_gt_three ht).le
  have hn : (2 : ℝ) ≤ ((m + 1 + 1 : ℕ) : ℝ) := by
    exact_mod_cast (show 2 ≤ m + 1 + 1 by omega)
  have hn2 : (4 : ℝ) ≤ ((m + 1 + 1 : ℕ) : ℝ) ^ 2 := by nlinarith
  have hprod := mul_nonneg (show 0 ≤ thetaModeA t - 3 by linarith)
    (show 0 ≤ ((m + 1 + 1 : ℕ) : ℝ) ^ 2 - 4 by linarith)
  have hAn : 12 ≤ thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2 := by nlinarith
  have hdA : 0 < 2 * thetaModeA t - 3 := by linarith
  have hdy : 0 < 2 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2) - 3 := by
    linarith
  have hdiv : 12 / (2 * thetaModeA t - 3) ≤ 4 := (div_le_iff₀ hdA).2 (by linarith)
  have hdiv0 : 0 ≤ 12 / (2 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2) - 3) :=
    by positivity
  have hgap : 4 ≤ thetaModeA t * (((m + 1 + 1 : ℕ) : ℝ) ^ 2 - 1) := by nlinarith
  simp only [thetaModeScore, thetaModeY, zero_add, Nat.cast_one, one_pow, mul_one]
  change 9 + 12 / (2 * thetaModeA t - 3) - 4 * thetaModeA t -
      (9 + 12 / (2 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2) - 3) -
        4 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2)) ≤ _
  nlinarith

/-- The exact ratio of a positive mode to the first mode, with common factors cancelled. -/
theorem thetaPhiTerm_div_zero_eq (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiTerm m t / thetaPhiTerm 0 t =
      ((m + 1 : ℕ) : ℝ) ^ 2 * (2 * thetaModeA t * ((m + 1 : ℕ) : ℝ) ^ 2 - 3) /
        (2 * thetaModeA t - 3) *
          Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1)) := by
  have hA := thetaModeA_gt_three ht
  have hd : 2 * thetaModeA t - 3 ≠ 0 := by linarith
  rw [thetaPhiTerm_eq_mode, thetaPhiTerm_eq_mode]
  simp only [thetaModeY, Nat.cast_one, zero_add, one_pow, mul_one]
  have he : Real.exp (-(thetaModeA t * ((m + 1 : ℕ) : ℝ) ^ 2)) =
      Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1)) * Real.exp (-thetaModeA t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp [ne_of_gt Real.pi_pos, hd, Real.exp_ne_zero]

/-- An explicit Gaussian upper bound for the ratio to the first positive mode. -/
theorem thetaPhiTerm_div_zero_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiTerm m t / thetaPhiTerm 0 t ≤
      2 * ((m + 1 : ℕ) : ℝ) ^ 4 *
        Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1)) := by
  have hA := (thetaModeA_gt_three ht).le
  rw [thetaPhiTerm_div_zero_eq m ht]
  apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
  apply (div_le_iff₀ (by linarith : 0 < 2 * thetaModeA t - 3)).mpr
  have h : 0 ≤ 2 * (thetaModeA t - 3) * ((m + 1 : ℕ) : ℝ) ^ 4 +
      3 * ((m + 1 : ℕ) : ℝ) ^ 2 := by positivity
  nlinarith only [h]

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
