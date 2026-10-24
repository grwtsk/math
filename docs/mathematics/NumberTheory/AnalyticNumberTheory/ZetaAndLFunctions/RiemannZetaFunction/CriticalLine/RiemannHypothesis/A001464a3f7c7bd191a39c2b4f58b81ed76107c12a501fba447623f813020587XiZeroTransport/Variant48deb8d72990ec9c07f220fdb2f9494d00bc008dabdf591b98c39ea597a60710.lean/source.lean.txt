-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiNeZeroOnRight.Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.XiNeZeroOnRight.Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a0/a001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587--XiZeroTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiTaylorTransport

/-!
# Actual-source zero transport for the descended xi series

This layer proves zero-set equivalences before invoking any PF classification.
The target uses the closed negative real axis, so it requires no hidden theorem
asserting that xi(1/2) is positive. Its strictly positive normalization and the
Edrei/Hadamard classification remain separate obligations in the PF route.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiNeZeroOnRight.Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587

namespace FormalResearch.RiemannHypothesis.XiToeplitz

open Complex
open FormalResearch.RiemannHypothesis

noncomputable section

/-- Entire xi does not vanish in the open right half-plane Re(s)>1. -/
theorem xi_ne_zero_on_right (s : ℂ) (hs : 1 < s.re) : xi s ≠ 0 := by
  rw [xi_product_on_right s hs]
  have h0 : s ≠ 0 := by intro h; subst s; norm_num at hs
  have h1 : s - 1 ≠ 0 := by
    apply sub_ne_zero.mpr
    intro h
    subst s
    norm_num at hs
  exact div_ne_zero
    (mul_ne_zero (mul_ne_zero h0 h1)
      (mul_ne_zero (riemannZeta_ne_zero_of_one_le_re hs.le)
        (Gammaℝ_ne_zero_of_re_pos (by linarith))))
    (by norm_num)

/-- Negative even trivial zeros are not xi zeros: reflect to a nonvanishing right point. -/
theorem xi_ne_zero_at_trivial (n : ℕ) : xi (-2 * (n + 1)) ≠ 0 := by
  rw [← xi_one_sub (-2 * (n + 1))]
  apply xi_ne_zero_on_right
  simp only [Complex.sub_re, Complex.one_re, Complex.mul_re, Complex.neg_re,
    Complex.neg_im, Complex.add_re,
    Complex.natCast_re, Complex.natCast_im, Complex.one_im, Complex.add_im]
  norm_num at *
  nlinarith [show (0 : ℝ) ≤ (n : ℝ) by positivity]

/-- Completion neither adds the restored endpoints nor retains negative-even zeros. -/
theorem xi_zero_iff_nontrivial (s : ℂ) : xi s = 0 ↔ NontrivialZetaZero s := by
  constructor
  · intro hz
    have h0 : s ≠ 0 := by intro h; subst s; simp [xi_zero] at hz
    have h1 : s ≠ 1 := by intro h; subst s; simp [xi_one] at hz
    refine ⟨?_, ?_, h1⟩
    · rw [zeta_recover h0 h1, hz]
      simp
    · rintro ⟨n, rfl⟩
      exact xi_ne_zero_at_trivial n hz
  · intro hz
    have hc : completedRiemannZeta s = 0 := by
      have h := hz.1
      rw [riemannZeta_def_of_ne_zero hz.ne_zero] at h
      exact (div_eq_zero_iff.mp h).resolve_right hz.gamma_real_ne_zero
    rw [xi_eq_completed hz.ne_zero hz.2.2, hc]
    simp

/-- The square map's closed-negative-axis criterion is exact even at its branch point. -/
theorem square_nonpositive_axis_iff (u : ℂ) :
    (u ^ 2).im = 0 ∧ (u ^ 2).re ≤ 0 ↔ u.re = 0 := by
  simp only [pow_two, Complex.mul_re, Complex.mul_im]
  constructor
  · rintro ⟨hi, hr⟩
    have hprod : u.re * u.im = 0 := by nlinarith [hi]
    rcases mul_eq_zero.mp hprod with h | h
    · exact h
    · rw [h] at hr
      nlinarith [sq_nonneg u.re]
  · intro h
    rw [h]
    constructor
    · ring
    · nlinarith [sq_nonneg u.im]

/-- Every zero of the exact descended series lies on the closed negative real axis. -/
def CenteredZerosNonpositive : Prop :=
  ∀ w : ℂ, centeredSeries w = 0 → w.im = 0 ∧ w.re ≤ 0

/-- RH is exactly the zero-location statement for the existing convergent centered series. -/
theorem rh_iff_centeredZerosNonpositive :
    _root_.RiemannHypothesis ↔ CenteredZerosNonpositive := by
  constructor
  · intro h w hw
    obtain ⟨u, hu⟩ := exists_complex_square w
    have hxi : xi (1 / 2 + u) = 0 := by
      rw [← centeredSeries_square, hu, hw]
    have hz := (xi_zero_iff_nontrivial (1 / 2 + u)).mp hxi
    have hr := h (1 / 2 + u) hz.1 hz.2.1 hz.2.2
    have hu0 : u.re = 0 := by
      simp only [Complex.add_re, Complex.div_ofNat_re, Complex.one_re] at hr
      linarith
    rw [← hu]
    exact (square_nonpositive_axis_iff u).mpr hu0
  · intro h s hzero htriv hpole
    let u : ℂ := s - 1 / 2
    have hc : (1 / 2 : ℂ) + u = s := by dsimp [u]; ring
    have hz : centeredSeries (u ^ 2) = 0 := by
      rw [centeredSeries_square, hc]
      exact (xi_zero_iff_nontrivial s).mpr ⟨hzero, htriv, hpole⟩
    have hr := (square_nonpositive_axis_iff u).mp (h (u ^ 2) hz)
    dsimp [u] at hr
    simp only [Complex.div_ofNat_re, Complex.one_re] at hr
    linarith

/-- The analytic equivalence is not the assertion of either equivalent proposition. -/
theorem centeredZerosNonpositive_iff_rh :
    CenteredZerosNonpositive ↔ _root_.RiemannHypothesis :=
  rh_iff_centeredZerosNonpositive.symm

end

end FormalResearch.RiemannHypothesis.XiToeplitz
