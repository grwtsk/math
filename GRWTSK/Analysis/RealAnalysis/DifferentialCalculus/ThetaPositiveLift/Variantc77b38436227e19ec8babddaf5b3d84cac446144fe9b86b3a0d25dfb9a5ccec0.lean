-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaGaussianTerm.Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaGaussianTerm.Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec","mathematical_subject":"Analysis.Calculus","original_sha256":"24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailCalculus
import Mathlib.Analysis.Calculus.SmoothSeries
import FormalResearch.RiemannHypothesis.ThetaPhiModes

/-!
# Two actual derivatives of the literal theta source

Polynomially weighted Gaussian bounds are summable uniformly on every compact
real interval. They justify two differentiations of the literal mode sum on the
whole real line. On the open region `3/2 < thetaModeA t`, the resulting raw
polynomial derivatives equal the score and curvature sums. This open region
contains the nonnegative half-line, including a two-sided neighborhood at zero.
The generic Gaussian polynomial integrability bounds support integration of
these actual derivatives; no log-concavity or tail-ratio sign is assumed.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaGaussianTerm.Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec

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
  refine (((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
    ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi)) |>.sub
    ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3)) |>.add
    ((thetaGaussianTerm_summable 8 17 t).mul_left (32 * Real.pi ^ 4))).congr ?_
  intro m
  exact (thetaPhiTermSecondDeriv_eq_gaussians m t).symm

/-- A summable compact bound for the actual first mode derivatives. -/
def thetaPhiDerivCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  ‖30 * Real.pi ^ 2‖ * thetaGaussianCompactBound 4 9 a b m +
  ‖15 * Real.pi‖ * thetaGaussianCompactBound 2 5 a b m +
  ‖8 * Real.pi ^ 3‖ * thetaGaussianCompactBound 6 13 a b m

/-- A summable compact bound for the actual second mode derivatives. -/
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

private theorem norm_sub_sub_le_real (a b c : ℝ) :
    ‖a - b - c‖ ≤ ‖a‖ + ‖b‖ + ‖c‖ :=
  (norm_sub_le (a - b) c).trans (add_le_add (norm_sub_le a b) le_rfl)

private theorem norm_sub_sub_add_le_real (a b c d : ℝ) :
    ‖a - b - c + d‖ ≤ ‖a‖ + ‖b‖ + ‖c‖ + ‖d‖ :=
  (norm_add_le (a - b - c) d).trans (add_le_add (norm_sub_sub_le_real a b c) le_rfl)

theorem thetaPhiTermDeriv_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTermDeriv m t‖ ≤ thetaPhiDerivCompactBound a b m := by
  rw [thetaPhiTermDeriv_eq_gaussians]
  refine (norm_sub_sub_le_real _ _ _).trans ?_
  unfold thetaPhiDerivCompactBound
  simp only [norm_mul]
  exact add_le_add
    (add_le_add (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 4 9 m ht)
      (by positivity))
      (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 2 5 m ht) (by positivity)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 6 13 m ht) (by positivity))

theorem thetaPhiTermSecondDeriv_norm_le_compactBound {a b t : ℝ}
    (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTermSecondDeriv m t‖ ≤ thetaPhiSecondDerivCompactBound a b m := by
  rw [thetaPhiTermSecondDeriv_eq_gaussians]
  refine (norm_sub_sub_add_le_real _ _ _ _).trans ?_
  unfold thetaPhiSecondDerivCompactBound
  simp only [norm_mul]
  exact add_le_add (add_le_add
    (add_le_add (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 4 9 m ht)
      (by positivity))
      (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 2 5 m ht) (by positivity)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 6 13 m ht) (by positivity)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 8 17 m ht) (by positivity))

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



/-- The requested first source derivative, expressed with the exact mode score. -/
def thetaPhiD1 (t : ℝ) : ℝ := ∑' m, thetaPhiTerm m t * thetaModeScore m t

/-- The requested second source derivative, expressed with score and curvature. -/
def thetaPhiD2 (t : ℝ) : ℝ :=
  ∑' m, thetaPhiTerm m t * (thetaModeScore m t ^ 2 + thetaModeCurvature m t)

/-- Every score denominator stays nonzero on an open domain containing `[0,∞)`. -/
theorem thetaMode_den_ne_zero_of_modeA {t : ℝ} (hA : 3 / 2 < thetaModeA t) (m : ℕ) :
    2 * thetaModeY m t - 3 ≠ 0 := by
  have hn : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by
    exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have hn2 := one_le_pow₀ hn (n := 2)
  have hpos : 0 < thetaModeA t := by unfold thetaModeA; positivity
  have hy : thetaModeA t ≤ thetaModeY m t := by
    unfold thetaModeY
    exact le_mul_of_one_le_right hpos.le hn2
  apply ne_of_gt
  linarith

theorem thetaModeA_gt_three_halves {t : ℝ} (ht : 0 ≤ t) : 3 / 2 < thetaModeA t := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hp : Real.pi ≤ thetaModeA t := by
    unfold thetaModeA
    exact le_mul_of_one_le_right Real.pi_pos.le he
  linarith [Real.pi_gt_three]

theorem thetaPhiRawD1_eq_D1 {t : ℝ} (hA : 3 / 2 < thetaModeA t) :
    thetaPhiRawD1 t = thetaPhiD1 t := by
  exact tsum_congr (fun m => thetaPhiTermDeriv_eq_score m t
    (thetaMode_den_ne_zero_of_modeA hA m))

theorem thetaPhiRawD2_eq_D2 {t : ℝ} (hA : 3 / 2 < thetaModeA t) :
    thetaPhiRawD2 t = thetaPhiD2 t := by
  exact tsum_congr (fun m => thetaPhiTermSecondDeriv_eq_score_curvature m t
    (thetaMode_den_ne_zero_of_modeA hA m))

/-- The score-weighted first derivative series converges absolutely. -/
theorem thetaPhi_mul_score_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaPhiTerm m t * thetaModeScore m t) := by
  exact (thetaPhiTermDeriv_summable t).congr (fun m => thetaPhiTermDeriv_eq_score m t
    (thetaMode_den_ne_zero_of_modeA (thetaModeA_gt_three_halves ht) m))

/-- The exact score-curvature second derivative series converges absolutely. -/
theorem thetaPhi_mul_score_sq_add_curvature_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaPhiTerm m t *
      (thetaModeScore m t ^ 2 + thetaModeCurvature m t)) := by
  exact (thetaPhiTermSecondDeriv_summable t).congr
    (fun m => thetaPhiTermSecondDeriv_eq_score_curvature m t
      (thetaMode_den_ne_zero_of_modeA (thetaModeA_gt_three_halves ht) m))

/-- Source differentiation in score form on a genuinely open coordinate domain. -/
theorem hasDerivAt_thetaPhi_of_modeA {t : ℝ} (hA : 3 / 2 < thetaModeA t) :
    HasDerivAt thetaPhi (thetaPhiD1 t) t := by
  rw [← thetaPhiRawD1_eq_D1 hA]
  exact hasDerivAt_thetaPhi_raw t

/-- The first derivative source sum differentiates in a two-sided neighborhood. -/
theorem hasDerivAt_thetaPhiD1_of_modeA {t : ℝ} (hA : 3 / 2 < thetaModeA t) :
    HasDerivAt thetaPhiD1 (thetaPhiD2 t) t := by
  rw [← thetaPhiRawD2_eq_D2 hA]
  apply (hasDerivAt_thetaPhiRawD1 t).congr_of_eventuallyEq
  have hc : Continuous thetaModeA := by unfold thetaModeA; fun_prop
  have hnb : {u : ℝ | 3 / 2 < thetaModeA u} ∈ 𝓝 t :=
    (isOpen_lt continuous_const hc).mem_nhds hA
  filter_upwards [hnb] with u hu
  exact (thetaPhiRawD1_eq_D1 hu).symm

/-- The score expression for the actual theta derivative includes the endpoint zero. -/
theorem hasDerivAt_thetaPhi {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt thetaPhi (thetaPhiD1 t) t :=
  hasDerivAt_thetaPhi_of_modeA (thetaModeA_gt_three_halves ht)

/-- The score-curvature expression for its derivative also includes the endpoint zero. -/
theorem hasDerivAt_thetaPhiD1 {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt thetaPhiD1 (thetaPhiD2 t) t :=
  hasDerivAt_thetaPhiD1_of_modeA (thetaModeA_gt_three_halves ht)

theorem deriv_thetaPhi_eq_D1 {t : ℝ} (ht : 0 ≤ t) : deriv thetaPhi t = thetaPhiD1 t :=
  (hasDerivAt_thetaPhi ht).deriv

/-- Differentiation of the actual derivative function, using the all-real raw identity. -/
theorem hasDerivAt_deriv_thetaPhi {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (deriv thetaPhi) (thetaPhiD2 t) t := by
  rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw,
    ← thetaPhiRawD2_eq_D2 (thetaModeA_gt_three_halves ht)]
  exact hasDerivAt_thetaPhiRawD1 t

theorem deriv_deriv_thetaPhi_eq_D2 {t : ℝ} (ht : 0 ≤ t) :
    deriv (deriv thetaPhi) t = thetaPhiD2 t :=
  (hasDerivAt_deriv_thetaPhi ht).deriv

/-- Every natural moment in the mode coordinate has a convergent source-weighted sum. -/
theorem thetaPhi_mul_y_pow_summable (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaPhiTerm m t * thetaModeY m t ^ k) := by
  let C : ℝ := (2 * Real.pi ^ 2 * Real.exp (9 * t)) * thetaModeA t ^ k
  have hs := (HurwitzKernelBounds.summable_f_nat (4 + 2 * k) 1
    (Real.exp_pos (4 * t))).mul_left C
  apply hs.of_norm_bounded
  intro m
  have hy : 0 ≤ thetaModeY m t := by unfold thetaModeY thetaModeA; positivity
  rw [Real.norm_of_nonneg (mul_nonneg (thetaPhiTerm_positive m ht).le (pow_nonneg hy k))]
  have hb : thetaPhiTerm m t ≤ (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    rw [thetaPhiTerm_eq_gaussians]
    exact sub_le_self _ (by unfold HurwitzKernelBounds.f_nat; positivity)
  refine (mul_le_mul_of_nonneg_right hb (pow_nonneg hy k)).trans_eq ?_
  unfold C thetaModeY HurwitzKernelBounds.f_nat
  simp only [Nat.cast_add, Nat.cast_one, mul_pow, pow_add, pow_mul]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
