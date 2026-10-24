# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative.Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d322c9779e5e2552b1183bad2c6a9f6340c90e2` · SHA-256 `90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Analysis.Calculus.SmoothSeries

/-!
# Exact derivatives and elementary bounds for the literal theta source modes

The polynomial derivative formulas hold on the whole real line. Score and
curvature formulas are used only where their displayed denominator is nonzero.
No determinant sign or source log-concavity is assumed.
-/

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
  field_simp [hden]
  ring

/-- The polynomial second derivative equals the exact score-curvature combination. -/
theorem thetaPhiTermSecondDeriv_eq_score_curvature (m : ℕ) (t : ℝ)
    (hden : 2 * thetaModeY m t - 3 ≠ 0) :
    thetaPhiTermSecondDeriv m t =
      thetaPhiTerm m t * (thetaModeScore m t ^ 2 + thetaModeCurvature m t) := by
  rw [thetaPhiTerm_eq_mode]
  unfold thetaPhiTermSecondDeriv thetaModeScore thetaModeCurvature
  field_simp [hden]
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

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter MeasureTheory Set
open scoped Topology
noncomputable section

/-- A polynomially weighted Gaussian mode with an exponential coordinate factor. -/
def thetaGaussianTerm (k c : ℕ) (m : ℕ) (t : ℝ) : ℝ :=
  Real.exp ((c : ℝ) * t) * HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m

/-- The corresponding absolutely convergent Gaussian sum. -/
def thetaGaussianSum (k c : ℕ) (t : ℝ) : ℝ := ∑' m, thetaGaussianTerm k c m t

theorem thetaGaussianTerm_nonneg (k c m : ℕ) (t : ℝ) :
    0 ≤ thetaGaussianTerm k c m t := by
  unfold thetaGaussianTerm HurwitzKernelBounds.f_nat
  positivity

theorem thetaGaussianTerm_summable (k c : ℕ) (t : ℝ) :
    Summable (fun m => thetaGaussianTerm k c m t) :=
  (HurwitzKernelBounds.summable_f_nat k 1 (Real.exp_pos (4 * t))).mul_left _

/-- A summable bound on every compact real coordinate interval. -/
def thetaGaussianCompactBound (k c : ℕ) (a b : ℝ) (m : ℕ) : ℝ :=
  Real.exp ((c : ℝ) * b) * HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * a)) m

theorem thetaGaussianCompactBound_summable (k c : ℕ) (a b : ℝ) :
    Summable (thetaGaussianCompactBound k c a b) :=
  (HurwitzKernelBounds.summable_f_nat k 1 (Real.exp_pos (4 * a))).mul_left _

theorem thetaGaussianTerm_norm_le_compactBound (k c m : ℕ) {a b t : ℝ}
    (ht : t ∈ Icc a b) :
    ‖thetaGaussianTerm k c m t‖ ≤ thetaGaussianCompactBound k c a b m := by
  rw [Real.norm_of_nonneg (thetaGaussianTerm_nonneg k c m t)]
  have hG : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * a)) := by
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonpos_left (Real.exp_le_exp.mpr (by linarith [ht.1]))
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr Real.pi_pos.le) (sq_nonneg _)
  unfold thetaGaussianTerm thetaGaussianCompactBound HurwitzKernelBounds.f_nat
  exact mul_le_mul (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left ht.2 (by positivity)))
    (mul_le_mul_of_nonneg_left hG (by positivity)) (by positivity) (by positivity)

theorem continuous_thetaGaussianTerm (k c m : ℕ) : Continuous (thetaGaussianTerm k c m) := by
  unfold thetaGaussianTerm HurwitzKernelBounds.f_nat
  fun_prop

theorem continuous_thetaGaussianSum (k c : ℕ) : Continuous (thetaGaussianSum k c) := by
  rw [continuous_iff_continuousAt]
  intro t
  have h : ContinuousOn (thetaGaussianSum k c) (Icc (t - 1) (t + 1)) :=
    continuousOn_tsum (fun m => (continuous_thetaGaussianTerm k c m).continuousOn)
      (thetaGaussianCompactBound_summable k c (t - 1) (t + 1))
      (fun m _ hu => thetaGaussianTerm_norm_le_compactBound k c m hu)
  exact h.continuousAt (Icc_mem_nhds (by linarith) (by linarith))

/-- Uniform summable domination of any finite linear combination follows
from the individual polynomial Gaussian bounds. -/
theorem thetaGaussianSum_nonneg (k c : ℕ) (t : ℝ) : 0 ≤ thetaGaussianSum k c t :=
  tsum_nonneg (fun m => thetaGaussianTerm_nonneg k c m t)

/-- Gaussian splitting leaves a summable mode factor and a superexponential coordinate factor. -/
theorem thetaGaussianSum_le_superexp (k c : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaGaussianSum k c t ≤ HurwitzKernelBounds.F_nat k 1 (1 / 2) *
      Real.exp ((c : ℝ) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
  have hE : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hmode (m : ℕ) : thetaGaussianTerm k c m t ≤
      (Real.exp ((c : ℝ) * t) * Real.exp (-(Real.pi / 2) * Real.exp (4 * t))) *
        HurwitzKernelBounds.f_nat k 1 (1 / 2) m := by
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
    unfold thetaGaussianTerm HurwitzKernelBounds.f_nat
    calc
      _ ≤ Real.exp ((c : ℝ) * t) * (((m : ℝ) + 1) ^ k *
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)))) := by gcongr
      _ = _ := by ring
  have hs := (thetaGaussianTerm_summable k c t).tsum_le_tsum hmode
    ((HurwitzKernelBounds.summable_f_nat k 1 (by norm_num : (0 : ℝ) < 1 / 2)).mul_left _)
  apply hs.trans_eq
  rw [tsum_mul_left]
  unfold HurwitzKernelBounds.F_nat
  rw [sub_eq_add_neg, Real.exp_add, neg_mul]
  ring

theorem thetaGaussianSum_poly_norm_le_tail (k c p : ℕ) {t : ℝ}
    (ht : (c : ℝ) + 3 ≤ t) :
    ‖thetaGaussianSum k c t * t ^ p‖ ≤
      (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) * Real.exp (-t) := by
  have ht0 : 0 ≤ t := (by positivity : (0 : ℝ) ≤ (c : ℝ) + 3).trans ht
  have hC : 0 ≤ HurwitzKernelBounds.F_nat k 1 (1 / 2) := by
    unfold HurwitzKernelBounds.F_nat
    exact tsum_nonneg (fun m => by unfold HurwitzKernelBounds.f_nat; positivity)
  have hmul : ((c : ℝ) + 2) * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) ht0]
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by nlinarith [Real.pi_gt_three]
  have hdebt : ((c : ℝ) + 2) * t ≤ (Real.pi / 2) * Real.exp (4 * t) :=
    hmul.trans <| hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])
  have hpow : t ^ p ≤ (p.factorial : ℝ) * Real.exp t := by
    have h := Real.pow_div_factorial_le_exp t ht0 p
    have hfac : (0 : ℝ) < p.factorial := by positivity
    nlinarith [(div_le_iff₀ hfac).mp h]
  rw [Real.norm_of_nonneg (mul_nonneg (thetaGaussianSum_nonneg k c t) (pow_nonneg ht0 p))]
  calc
    _ ≤ (HurwitzKernelBounds.F_nat k 1 (1 / 2) *
        Real.exp ((c : ℝ) * t - (Real.pi / 2) * Real.exp (4 * t))) *
        ((p.factorial : ℝ) * Real.exp t) :=
      mul_le_mul (thetaGaussianSum_le_superexp k c ht0) hpow (by positivity) (by positivity)
    _ = (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) *
        Real.exp (((c : ℝ) + 1) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [show ((c : ℝ) + 1) * t - (Real.pi / 2) * Real.exp (4 * t) =
        ((c : ℝ) * t - (Real.pi / 2) * Real.exp (4 * t)) + t by ring, Real.exp_add]
      ring
    _ ≤ _ := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Real.exp_le_exp.mpr
      linarith

theorem thetaGaussianSum_poly_integrableOn (k c p : ℕ) :
    IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Ici (0 : ℝ)) := by
  let T : ℝ := (c : ℝ) + 3
  have hTpos : 0 < T := by dsimp [T]; positivity
  have hcont : Continuous (fun t => thetaGaussianSum k c t * t ^ p) :=
    (continuous_thetaGaussianSum k c).mul (continuous_id.pow p)
  have hinitial : IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Icc 0 T) :=
    hcont.continuousOn.integrableOn_Icc
  have hmajor : IntegrableOn (fun t : ℝ =>
      (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) * Real.exp (-t)) (Ioi T) :=
    (integrableOn_exp_neg_Ioi T).const_mul _
  have htail : IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Ioi T) := by
    refine Integrable.mono' hmajor hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaGaussianSum_poly_norm_le_tail k c p (le_of_lt ht)
  apply (hinitial.union htail).mono_set
  intro t ht
  by_cases htT : t ≤ T
  · exact Or.inl ⟨ht, htT⟩
  · exact Or.inr (lt_of_not_ge htT)


/-- Exact first mode derivative as three polynomial Gaussian modes. -/
theorem thetaPhiTermDeriv_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaPhiTermDeriv m t =
      (30 * Real.pi ^ 2) * thetaGaussianTerm 4 9 m t -
      (15 * Real.pi) * thetaGaussianTerm 2 5 m t -
      (8 * Real.pi ^ 3) * thetaGaussianTerm 6 13 m t := by
  have h9 : Real.exp (9 * t) = Real.exp (5 * t) * Real.exp (4 * t) := by
    rw [← Real.exp_add]; congr 1; ring
  have h13 : Real.exp (13 * t) = Real.exp (5 * t) * Real.exp (4 * t) ^ 2 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add]; congr 1; ring
  simp only [thetaPhiTermDeriv, thetaModeY, thetaModeA, thetaGaussianTerm,
    HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat, h9, h13]
  ring_nf

/-- Exact second mode derivative as four polynomial Gaussian modes. -/
theorem thetaPhiTermSecondDeriv_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaPhiTermSecondDeriv m t =
      (330 * Real.pi ^ 2) * thetaGaussianTerm 4 9 m t -
      (75 * Real.pi) * thetaGaussianTerm 2 5 m t -
      (224 * Real.pi ^ 3) * thetaGaussianTerm 6 13 m t +
      (32 * Real.pi ^ 4) * thetaGaussianTerm 8 17 m t := by
  have h9 : Real.exp (9 * t) = Real.exp (5 * t) * Real.exp (4 * t) := by
    rw [← Real.exp_add]; congr 1; ring
  have h13 : Real.exp (13 * t) = Real.exp (5 * t) * Real.exp (4 * t) ^ 2 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add]; congr 1; ring
  have h17 : Real.exp (17 * t) = Real.exp (5 * t) * Real.exp (4 * t) ^ 3 := by
    rw [show 17 * t = 5 * t + 4 * t + 4 * t + 4 * t by ring]
    simp only [Real.exp_add]
    ring
  simp only [thetaPhiTermSecondDeriv, thetaModeY, thetaModeA, thetaGaussianTerm,
    HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat, h9, h13, h17]
  ring_nf

theorem thetaPhiTermDeriv_summable (t : ℝ) :
    Summable (fun m => thetaPhiTermDeriv m t) := by
  refine (((thetaGaussianTerm_summable 4 9 t).mul_left (30 * Real.pi ^ 2)).sub
    ((thetaGaussianTerm_summable 2 5 t).mul_left (15 * Real.pi)) |>.sub
    ((thetaGaussianTerm_summable 6 13 t).mul_left (8 * Real.pi ^ 3))).congr ?_
  intro m
  exact (thetaPhiTermDeriv_eq_gaussians m t).symm

theorem thetaPhiTermSecondDeriv_summable (t : ℝ) :
    Summable (fun m => thetaPhiTermSecondDeriv m t) := by
  refine ((((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
    ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi)) |>.sub
    ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3)) |>.add
    ((thetaGaussianTerm_summable 8 17 t).mul_left (32 * Real.pi ^ 4))).congr ?_
  intro m
  exact (thetaPhiTermSecondDeriv_eq_gaussians m t).symm

def thetaPhiDerivCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  ‖30 * Real.pi ^ 2‖ * thetaGaussianCompactBound 4 9 a b m +
  ‖15 * Real.pi‖ * thetaGaussianCompactBound 2 5 a b m +
  ‖8 * Real.pi ^ 3‖ * thetaGaussianCompactBound 6 13 a b m

def thetaPhiSecondDerivCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  ‖330 * Real.pi ^ 2‖ * thetaGaussianCompactBound 4 9 a b m +
  ‖75 * Real.pi‖ * thetaGaussianCompactBound 2 5 a b m +
  ‖224 * Real.pi ^ 3‖ * thetaGaussianCompactBound 6 13 a b m +
  ‖32 * Real.pi ^ 4‖ * thetaGaussianCompactBound 8 17 a b m

theorem thetaPhiDerivCompactBound_summable (a b : ℝ) :
    Summable (thetaPhiDerivCompactBound a b) := by
  exact (((thetaGaussianCompactBound_summable 4 9 a b).mul_left _).add
    ((thetaGaussianCompactBound_summable 2 5 a b).mul_left _)).add
    ((thetaGaussianCompactBound_summable 6 13 a b).mul_left _)

theorem thetaPhiSecondDerivCompactBound_summable (a b : ℝ) :
    Summable (thetaPhiSecondDerivCompactBound a b) := by
  exact ((((thetaGaussianCompactBound_summable 4 9 a b).mul_left _).add
    ((thetaGaussianCompactBound_summable 2 5 a b).mul_left _)).add
    ((thetaGaussianCompactBound_summable 6 13 a b).mul_left _)).add
    ((thetaGaussianCompactBound_summable 8 17 a b).mul_left _)

theorem thetaPhiTermDeriv_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTermDeriv m t‖ ≤ thetaPhiDerivCompactBound a b m := by
  rw [thetaPhiTermDeriv_eq_gaussians]
  refine ((norm_sub_le _ _).trans (add_le_add_right (norm_sub_le _ _) _)).trans ?_
  simp only [norm_mul]
  unfold thetaPhiDerivCompactBound
  exact add_le_add
    (add_le_add (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 4 9 m ht)
      (norm_nonneg _))
      (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 2 5 m ht) (norm_nonneg _)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 6 13 m ht) (norm_nonneg _))

theorem thetaPhiTermSecondDeriv_norm_le_compactBound {a b t : ℝ}
    (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTermSecondDeriv m t‖ ≤ thetaPhiSecondDerivCompactBound a b m := by
  rw [thetaPhiTermSecondDeriv_eq_gaussians]
  refine ((norm_add_le _ _).trans (add_le_add_right
    ((norm_sub_le _ _).trans (add_le_add_right (norm_sub_le _ _) _)) _)).trans ?_
  simp only [norm_mul]
  unfold thetaPhiSecondDerivCompactBound
  exact add_le_add (add_le_add
    (add_le_add (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 4 9 m ht)
      (norm_nonneg _))
      (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 2 5 m ht) (norm_nonneg _)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 6 13 m ht) (norm_nonneg _)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 8 17 m ht) (norm_nonneg _))

/-- Polynomial form of the first derivative sum, meaningful on the entire real line. -/
def thetaPhiRawD1 (t : ℝ) : ℝ := ∑' m, thetaPhiTermDeriv m t

/-- Polynomial form of the second derivative sum, meaningful on the entire real line. -/
def thetaPhiRawD2 (t : ℝ) : ℝ := ∑' m, thetaPhiTermSecondDeriv m t

/-- Actual differentiation of the literal infinite theta source. -/
theorem hasDerivAt_thetaPhi_raw (t : ℝ) : HasDerivAt thetaPhi (thetaPhiRawD1 t) t := by
  exact hasDerivAt_tsum_of_isPreconnected (thetaPhiDerivCompactBound_summable (t - 1) (t + 1))
    isOpen_Ioo (convex_Ioo (t - 1) (t + 1)).isPreconnected
    (fun m u _ => hasDerivAt_thetaPhiTerm_raw m u)
    (fun m u hu => thetaPhiTermDeriv_norm_le_compactBound ⟨hu.1.le, hu.2.le⟩ m)
    (show t ∈ Ioo (t - 1) (t + 1) by constructor <;> linarith)
    (thetaPhi_summable t) (by constructor <;> linarith)

/-- Actual differentiation of the first derivative sum. -/
theorem hasDerivAt_thetaPhiRawD1 (t : ℝ) :
    HasDerivAt thetaPhiRawD1 (thetaPhiRawD2 t) t := by
  exact hasDerivAt_tsum_of_isPreconnected
    (thetaPhiSecondDerivCompactBound_summable (t - 1) (t + 1))
    isOpen_Ioo (convex_Ioo (t - 1) (t + 1)).isPreconnected
    (fun m u _ => hasDerivAt_thetaPhiTermDeriv_raw m u)
    (fun m u hu => thetaPhiTermSecondDeriv_norm_le_compactBound ⟨hu.1.le, hu.2.le⟩ m)
    (show t ∈ Ioo (t - 1) (t + 1) by constructor <;> linarith)
    (thetaPhiTermDeriv_summable t) (by constructor <;> linarith)

theorem deriv_thetaPhi_eq_raw (t : ℝ) : deriv thetaPhi t = thetaPhiRawD1 t :=
  (hasDerivAt_thetaPhi_raw t).deriv

theorem continuous_thetaPhiRawD1 : Continuous thetaPhiRawD1 :=
  continuous_iff_continuousAt.mpr (fun t => (hasDerivAt_thetaPhiRawD1 t).continuousAt)

theorem thetaPhiRawD1_eq_gaussians (t : ℝ) :
    thetaPhiRawD1 t =
      (30 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (15 * Real.pi) * thetaGaussianSum 2 5 t -
      (8 * Real.pi ^ 3) * thetaGaussianSum 6 13 t := by
  unfold thetaPhiRawD1
  simp_rw [thetaPhiTermDeriv_eq_gaussians]
  rw [((thetaGaussianTerm_summable 4 9 t).mul_left (30 * Real.pi ^ 2) |>.sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (15 * Real.pi))).tsum_sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (8 * Real.pi ^ 3)),
    ((thetaGaussianTerm_summable 4 9 t).mul_left (30 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (15 * Real.pi)),
    tsum_mul_left, tsum_mul_left, tsum_mul_left]
  rfl

/-- Absolute integrability of every polynomially weighted actual source derivative. -/
theorem deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv thetaPhi t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (30 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (15 * Real.pi)) |>.sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (8 * Real.pi ^ 3))
  convert! h using 1
  ext t
  rw [deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians]
  ring

/-- The exact shifted source derivative weight needed by the first tail ratio. -/
theorem thetaPhi_deriv_mul_sub_integrableOn {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t) := by
  have h0 : IntegrableOn (deriv thetaPhi) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 0
  have h1 : IntegrableOn (fun u => deriv thetaPhi u * u) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 1
  have h := (h1.sub (h0.mul_const t)).mono_set (Ici_subset_Ici.mpr ht)
  convert! h using 1
  ext u
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
