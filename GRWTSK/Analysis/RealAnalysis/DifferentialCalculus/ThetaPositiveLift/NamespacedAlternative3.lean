-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiPolyExpNormLeTail.Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaPhiPolyExpNormLeTail.Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7","mathematical_subject":"Analysis.Calculus","original_sha256":"5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiPhiTransform
import FormalResearch.RiemannHypothesis.ThetaPositiveLift
import FormalResearch.RiemannHypothesis.ThetaTailCalculus
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Actual xi Taylor coefficients from the literal theta source

The existing xi/cosh transform is differentiated under the integral through
its two exponential terms. Polynomial exponential theta domination justifies
every derivative. Translation, real coercion, factorial normalization and the
null singleton at zero then give the unchanged `ThetaCoefficientFormula`.

The source coefficient at zero is strictly positive. No tail-transport or
higher determinant-positivity target is taken up here.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiPolyExpNormLeTail.Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter MeasureTheory Set
open scoped Topology

noncomputable section

/-- Every polynomial and fixed real exponential weight is absorbed by the
literal theta kernel beyond an explicit threshold. -/
theorem thetaPhi_poly_exp_norm_le_tail (m : ℕ) (R : ℝ) {t : ℝ}
    (ht : 11 + |R| ≤ t) :
    ‖thetaPhi t * t ^ m * Real.exp (R * t)‖ ≤
      (thetaPhiDecayConstant * (m.factorial : ℝ)) * Real.exp (-t) := by
  have hT0 : 0 ≤ 11 + |R| := by positivity
  have ht0 : 0 ≤ t := hT0.trans ht
  have hmul : (11 + |R|) * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) ht0]
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by nlinarith [Real.pi_gt_three]
  have hdebt : (11 + |R|) * t ≤ (Real.pi / 2) * Real.exp (4 * t) :=
    hmul.trans <| hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])
  have hpow : t ^ m ≤ (m.factorial : ℝ) * Real.exp t := by
    have h := Real.pow_div_factorial_le_exp t ht0 m
    have hfac : (0 : ℝ) < m.factorial := by positivity
    nlinarith [(div_le_iff₀ hfac).mp h]
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht0).le
  have hC := thetaPhiDecayConstant_positive
  rw [Real.norm_of_nonneg (by positivity)]
  calc
    _ ≤ ((thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) *
        ((m.factorial : ℝ) * Real.exp t)) * Real.exp (R * t) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact mul_le_mul (thetaPhi_le_superexp ht0) hpow (by positivity) (by positivity)
    _ = (thetaPhiDecayConstant * (m.factorial : ℝ)) *
        Real.exp ((10 + R) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [show (10 + R) * t - (Real.pi / 2) * Real.exp (4 * t) =
        (9 * t - (Real.pi / 2) * Real.exp (4 * t)) + t + R * t by ring]
      rw [Real.exp_add, Real.exp_add]
      ring
    _ ≤ _ := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Real.exp_le_exp.mpr
      have hR : R * t ≤ |R| * t := mul_le_mul_of_nonneg_right (le_abs_self R) ht0
      linarith

/-- All literal theta polynomial moments with fixed real exponential weights
are absolutely integrable on the positive half-line. -/
theorem thetaPhi_poly_exp_integrableOn (m : ℕ) (R : ℝ) :
    IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioi (0 : ℝ)) := by
  let T : ℝ := 11 + |R|
  have hTpos : 0 < T := by dsimp [T]; positivity
  have hcont : Continuous (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) := by
    exact (continuous_thetaPhi.mul (continuous_id.pow m)).mul (by fun_prop)
  have hinitial :
      IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioc (0 : ℝ) T) := by
    rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le hTpos.le]
    exact hcont.intervalIntegrable _ _
  have hmajor : IntegrableOn (fun t : ℝ =>
      (thetaPhiDecayConstant * (m.factorial : ℝ)) * Real.exp (-t)) (Ioi T) :=
    (integrableOn_exp_neg_Ioi T).const_mul _
  have htail :
      IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioi T) := by
    refine Integrable.mono' hmajor hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaPhi_poly_exp_norm_le_tail m R (le_of_lt ht)
  apply (hinitial.union htail).mono_set
  intro t ht
  by_cases htT : t ≤ T
  · exact Or.inl ⟨ht, htT⟩
  · exact Or.inr (lt_of_not_ge htT)

/-- The pre-existing even-basis moment integrability in the open-half-line
convention used by the actual xi transform. -/
theorem thetaPhi_evenBasis_integrableOn (n : ℕ) :
    IntegrableOn (fun t => thetaPhi t * evenBasis n t) (Ioi (0 : ℝ)) :=
  (thetaPhi_mul_evenBasis_integrable n).mono_set Ioi_subset_Ici_self

/-- The actual theta source with its polynomial exponential derivative weight. -/
def thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) (t : ℝ) : ℂ :=
  (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ m * Complex.exp (2 * u * (t : ℂ))

/-- Polynomial exponential theta moments as functions of the complex parameter. -/
def thetaPhiExpMoment (m : ℕ) (u : ℂ) : ℂ :=
  ∫ t in Ioi (0 : ℝ), thetaPhiExpMomentIntegrand m u t

/-- Continuity supplies all measurability obligations for the parameter integral. -/
theorem continuous_thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) :
    Continuous (thetaPhiExpMomentIntegrand m u) := by
  unfold thetaPhiExpMomentIntegrand
  exact ((Complex.continuous_ofReal.comp continuous_thetaPhi).mul (by fun_prop)).mul
    (by fun_prop)

/-- A fixed real exponential weight controls the complex integrand uniformly
over every parameter set with the displayed norm bound. -/
theorem thetaPhiExpMomentIntegrand_norm_le (m : ℕ) (u : ℂ) (R : ℝ)
    (hu : 2 * ‖u‖ ≤ R) {t : ℝ} (ht : 0 ≤ t) :
    ‖thetaPhiExpMomentIntegrand m u t‖ ≤
      (2 : ℝ) ^ m * (thetaPhi t * t ^ m * Real.exp (R * t)) := by
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht).le
  have hnorm : ‖2 * u * (t : ℂ)‖ ≤ R * t := by
    simpa [norm_mul, abs_of_nonneg ht, mul_assoc] using
      mul_le_mul_of_nonneg_right hu ht
  have hexp : ‖Complex.exp (2 * u * (t : ℂ))‖ ≤ Real.exp (R * t) :=
    (Complex.norm_exp_le_exp_norm _).trans (Real.exp_le_exp.mpr hnorm)
  unfold thetaPhiExpMomentIntegrand
  simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hphi, abs_of_nonneg ht]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ thetaPhi t * (2 * t) ^ m * Real.exp (R * t) :=
      mul_le_mul_of_nonneg_left hexp (by positivity)
    _ = _ := by rw [mul_pow]; ring

/-- Every complex exponential moment is absolutely integrable. -/
theorem thetaPhiExpMomentIntegrand_integrableOn (m : ℕ) (u : ℂ) :
    IntegrableOn (thetaPhiExpMomentIntegrand m u) (Ioi (0 : ℝ)) := by
  have hmajor := (thetaPhi_poly_exp_integrableOn m (2 * ‖u‖)).const_mul ((2 : ℝ) ^ m)
  apply hmajor.mono' (continuous_thetaPhiExpMomentIntegrand m u).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact thetaPhiExpMomentIntegrand_norm_le m u _ le_rfl (le_of_lt ht)

/-- Differentiation of the literal exponential kernel adds exactly one `2t` factor. -/
theorem hasDerivAt_thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) (t : ℝ) :
    HasDerivAt (fun z => thetaPhiExpMomentIntegrand m z t)
      (thetaPhiExpMomentIntegrand (m + 1) u t) u := by
  have h := ((((hasDerivAt_id u).const_mul 2).mul_const (t : ℂ)).cexp).const_mul
    ((thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ m)
  simpa only [thetaPhiExpMomentIntegrand, pow_succ, id_eq, mul_one, one_mul,
    mul_assoc, mul_left_comm, mul_comm] using! h

/-- The exponential moment derivative is justified by a common integrable
bound on a neighborhood of each complex parameter. -/
theorem hasDerivAt_thetaPhiExpMoment (m : ℕ) (u : ℂ) :
    HasDerivAt (thetaPhiExpMoment m) (thetaPhiExpMoment (m + 1) u) u := by
  let R : ℝ := 2 * (‖u‖ + 1)
  let B : ℝ → ℝ := fun t => (2 : ℝ) ^ (m + 1) *
    (thetaPhi t * t ^ (m + 1) * Real.exp (R * t))
  have hs : Metric.ball (0 : ℂ) (‖u‖ + 1) ∈ 𝓝 u :=
    Metric.isOpen_ball.mem_nhds (by simp [Metric.mem_ball])
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := volume.restrict (Ioi (0 : ℝ)))
    (F := thetaPhiExpMomentIntegrand m)
    (F' := thetaPhiExpMomentIntegrand (m + 1)) (bound := B) hs
    (Eventually.of_forall fun z =>
      (continuous_thetaPhiExpMomentIntegrand m z).aestronglyMeasurable)
    (thetaPhiExpMomentIntegrand_integrableOn m u)
    (continuous_thetaPhiExpMomentIntegrand (m + 1) u).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      intro z hz
      apply thetaPhiExpMomentIntegrand_norm_le (m + 1) z R ?_ (le_of_lt ht)
      have hz' : ‖z‖ < ‖u‖ + 1 := by simpa [Metric.mem_ball] using hz
      dsimp [R]
      linarith)
    ((thetaPhi_poly_exp_integrableOn (m + 1) R).const_mul ((2 : ℝ) ^ (m + 1)))
    (Eventually.of_forall fun t z _ => hasDerivAt_thetaPhiExpMomentIntegrand m z t)
  exact h.2

/-- The two exponential derivative contributions to the centered cosh transform. -/
def thetaCenteredMomentJet (m : ℕ) (u : ℂ) : ℂ :=
  4 * (thetaPhiExpMoment m u + (-1 : ℂ) ^ m * thetaPhiExpMoment m (-u))

/-- Both signs in the exponential recombination are retained in every derivative. -/
theorem hasDerivAt_thetaCenteredMomentJet (m : ℕ) (u : ℂ) :
    HasDerivAt (thetaCenteredMomentJet m) (thetaCenteredMomentJet (m + 1) u) u := by
  have hneg := (hasDerivAt_thetaPhiExpMoment m (-u)).comp u (hasDerivAt_id u).neg
  have h := ((hasDerivAt_thetaPhiExpMoment m u).add
    (hneg.const_mul ((-1 : ℂ) ^ m))).const_mul 4
  simpa only [thetaCenteredMomentJet, Pi.add_apply, Function.comp_apply, pow_succ,
    mul_assoc, mul_left_comm, mul_comm] using! h

/-- Iterated differentiation follows the proved integral derivative ladder. -/
theorem iteratedDeriv_thetaCenteredMomentJet (m : ℕ) :
    iteratedDeriv m (thetaCenteredMomentJet 0) = thetaCenteredMomentJet m := by
  induction m with
  | zero => rfl
  | succ m ih =>
    rw [iteratedDeriv_succ, ih]
    exact funext fun u => (hasDerivAt_thetaCenteredMomentJet m u).deriv

/-- At even order and parameter zero the two exponential terms add with factor eight. -/
theorem thetaCenteredMomentJet_even_zero (n : ℕ) :
    thetaCenteredMomentJet (2 * n) 0 =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  simp only [thetaCenteredMomentJet, thetaPhiExpMoment, thetaPhiExpMomentIntegrand,
    neg_zero, mul_zero, zero_mul, Complex.exp_zero, mul_one, pow_mul]
  norm_num
  ring

/-- The actual centered xi transform is the zeroth member of the proved
exponential moment derivative family. -/
theorem xi_centered_eq_thetaCenteredMomentJet (u : ℂ) :
    XiToeplitz.xi ((1 : ℂ) / 2 + u) = thetaCenteredMomentJet 0 u := by
  rw [xi_centered_thetaPhi]
  have hp := thetaPhiExpMomentIntegrand_integrableOn 0 u
  have hm := thetaPhiExpMomentIntegrand_integrableOn 0 (-u)
  have hfun : (fun t : ℝ => (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      fun t : ℝ =>
        (thetaPhiExpMomentIntegrand 0 u t + thetaPhiExpMomentIntegrand 0 (-u) t) / 2 := by
    funext t
    simp only [thetaPhiExpMomentIntegrand, pow_zero, mul_one, Complex.cosh]
    rw [show 2 * (-u) * (t : ℂ) = -(2 * u * (t : ℂ)) by ring]
    ring
  unfold thetaCenteredMomentJet thetaPhiExpMoment
  rw [hfun, integral_div, integral_add hp hm]
  simp only [pow_zero, one_mul]
  ring

/-- The even derivatives of the actual centered xi function are the exact
unnormalized theta moments, with outer factor eight. -/
theorem centeredXi_iteratedDeriv_even (n : ℕ) :
    iteratedDeriv (2 * n) (fun u : ℂ => XiToeplitz.xi ((1 : ℂ) / 2 + u)) 0 =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  rw [show (fun u : ℂ => XiToeplitz.xi ((1 : ℂ) / 2 + u)) = thetaCenteredMomentJet 0
    from funext xi_centered_eq_thetaCenteredMomentJet, iteratedDeriv_thetaCenteredMomentJet]
  exact thetaCenteredMomentJet_even_zero n

/-- Translation to the center preserves every complex iterated derivative. -/
theorem iteratedDeriv_centeredXi_zero (m : ℕ) :
    iteratedDeriv m (fun u : ℂ => XiToeplitz.xi ((1 : ℂ) / 2 + u)) 0 =
      iteratedDeriv m XiToeplitz.xi ((1 : ℂ) / 2) := by
  rw [iteratedDeriv_comp_const_add]
  simp

/-- Independent kernel normalization check for every even derivative at zero. -/
theorem iteratedDeriv_cosh_linear_zero (n : ℕ) (t : ℝ) :
    iteratedDeriv (2 * n) (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) 0 =
      (2 * (t : ℂ)) ^ (2 * n) := by
  have harg : (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) =
      fun u : ℂ => Complex.cosh ((2 * (t : ℂ)) * u) := by
    funext u
    congr 1
    ring
  rw [harg, iteratedDeriv_comp_const_mul Complex.contDiff_cosh,
    Complex.iteratedDeriv_even_cosh]
  simp

/-- The derivative-defined xi coefficients use these actual complex derivatives. -/
theorem xi_iteratedDeriv_even_eq_thetaPhi (n : ℕ) :
    iteratedDeriv (2 * n) XiToeplitz.xi ((1 : ℂ) / 2) =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  rw [← iteratedDeriv_centeredXi_zero]
  exact centeredXi_iteratedDeriv_even n

/-- Real-to-complex coercion commutes with the literal unnormalized even moment. -/
theorem thetaPhi_complex_even_moment_eq (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)) =
      ((∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n) : ℝ) : ℂ) := by
  simp only [← Complex.ofReal_ofNat, ← Complex.ofReal_mul, ← Complex.ofReal_pow,
    integral_complex_ofReal]

/-- The complex integral is real, with no absolute-square replacement. -/
theorem thetaPhi_power_integral_re (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)).re =
      ∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n) := by
  rw [thetaPhi_complex_even_moment_eq, Complex.ofReal_re]

/-- Exact extraction of the unchanged derivative-defined coefficient on `(0,∞)`. -/
theorem coefficient_eq_thetaPhi_Ioi (n : ℕ) :
    XiToeplitz.coefficient n =
      8 * ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t := by
  rw [XiToeplitz.coefficient, xi_iteratedDeriv_even_eq_thetaPhi,
    thetaPhi_complex_even_moment_eq]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis n t) =
      fun t : ℝ => (thetaPhi t * (2 * t) ^ (2 * n)) / ((2 * n).factorial : ℝ) := by
    funext t
    unfold evenBasis
    ring
  rw [hfun, integral_div]
  norm_num only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.re_ofNat, Complex.im_ofNat, mul_zero, sub_zero]
  ring

/-- Adding the singleton zero changes no theta moment. -/
theorem thetaPhi_evenBasis_integral_Ici_eq_Ioi (n : ℕ) :
    (∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t) =
      ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t :=
  integral_Ici_eq_integral_Ioi

/-- The original theta coefficient proposition, now proved from the actual xi
source without additional hypotheses or coefficient renormalization. -/
theorem thetaCoefficientFormula : ThetaCoefficientFormula := by
  intro n
  rw [thetaPhi_evenBasis_integral_Ici_eq_Ioi]
  exact coefficient_eq_thetaPhi_Ioi n

/-- At degree zero the unchanged source coefficient is eight times the theta mass. -/
theorem coefficient_zero_eq_eight_integral :
    XiToeplitz.coefficient 0 = 8 * ∫ t in Ioi (0 : ℝ), thetaPhi t := by
  have h := thetaCoefficientFormula 0
  simpa [evenBasis, integral_Ici_eq_integral_Ioi] using h

/-- At degree one the `2!` denominator leaves exactly the factor sixteen. -/
theorem coefficient_one_eq_sixteen_integral :
    XiToeplitz.coefficient 1 = 16 * ∫ t in Ioi (0 : ℝ), t ^ 2 * thetaPhi t := by
  rw [thetaCoefficientFormula 1, integral_Ici_eq_integral_Ioi]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis 1 t) =
      fun t : ℝ => 2 * (t ^ 2 * thetaPhi t) := by
    funext t
    norm_num [evenBasis]
    ring
  rw [hfun, integral_const_mul]
  ring

/-- Strict positivity comes from the proved integrable theta moment and its
positive-measure support, not merely pointwise nonnegativity. -/
theorem coefficient_zero_pos : 0 < XiToeplitz.coefficient 0 :=
  coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 0

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
