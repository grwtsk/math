/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightSeed

set_option autoImplicit false

/-!
# Height eleven by changing cutoff, not by extrapolating primitive order

The previously proved height-ten source is retained. ONLY the new closed band
10<=|Im(s)|<=11 uses the affine reference s-1 and the exact cutoff-two finite
model. Two polynomial certificates and a proved power weight give relative
error9999/10000. The inherited height-ten proof glues to that band; hence the
full right rectangle has norm lower1/1000. The canonical zero mirror supplies
left-side zero exclusion, not a reflected norm or multiplicity identity.

The affine reference vanishes at1, so its deformation is NOT admitted on the
full starting rectangle. Only the same source endpoint glues to the older
reference. SOURCE SCRIPTS / NOT_RUN / NOT_KERNEL_AUDITED / NO UNCONDITIONAL RH.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
open Complex Set
noncomputable section

lemma scaledCoefficient_norm_sq (s : ℂ) :
    ‖scaledCoefficient s‖^2 = CutoffTwoCertificate.modelNorm s.re (s.im^2) := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [scaledCoefficient, pow_succ, pow_zero, mul_one, one_mul,
    Complex.add_re, Complex.sub_re, Complex.mul_re, Complex.add_im, Complex.sub_im,
    Complex.mul_im, Complex.ofNat_re, Complex.ofNat_im, zero_mul, mul_zero,
    sub_zero, add_zero, CutoffTwoCertificate.modelNorm,
    CutoffTwoCertificate.realPart, CutoffTwoCertificate.imagFactor]
  ring

lemma modelNorm_eq (s : ℂ) :
    CutoffTwoCertificate.modelNorm s.re (s.im^2) = 967680^2*‖coefficient s‖^2 := by
  have he : scaledCoefficient s = (967680 : ℂ)*coefficient s := by
    rw [coefficient_eq_scaled]
    ring
  rw [← scaledCoefficient_norm_sq, he, norm_mul, mul_pow]
  norm_num

lemma shiftedProduct_sq (s : ℂ) :
    shiftedProduct s^2 = CutoffTwoCertificate.tailNumerator s.re (s.im^2) := by
  simp only [shiftedProduct, mul_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.one_re, Complex.one_im,
    Complex.ofNat_re, Complex.ofNat_im, add_zero, CutoffTwoCertificate.tailNumerator]
  ring

lemma reference_sq (s : ℂ) : ‖s-1‖^2 = (s.re-1)^2+s.im^2 := by
  simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, sub_zero] <;> ring

lemma height_square_bounds {s : ℂ} (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    (100 : ℝ) ≤ s.im^2 ∧ s.im^2 ≤ (121 : ℝ) := by
  have h1 := mul_le_mul hlo hlo (by norm_num : (0 : ℝ) ≤ 10) (abs_nonneg s.im)
  have h2 := mul_le_mul hhi hhi (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 11)
  constructor <;> nlinarith [sq_abs s.im]

lemma coefficient_weighted_sq {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    2*‖coefficient s‖^2 ≤ (1953/2000 : ℝ)^2*(2*s.re+1)*‖s-1‖^2 := by
  have hy := height_square_bounds hlo hhi
  have h := (CutoffTwoCertificate.gap_bounds hx hx1 hy.1 hy.2).1
  unfold CutoffTwoCertificate.modelGap at h
  rw [modelNorm_eq, ← reference_sq] at h
  nlinarith

lemma tailCoefficient_weighted_sq {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    2*(tailCoefficient s)^2 ≤ (7/16 : ℝ)^2*(2*s.re+1) := by
  have hy := height_square_bounds hlo hhi
  have h := (CutoffTwoCertificate.gap_bounds hx hx1 hy.1 hy.2).2
  have hs5 : 0 < s.re+5 := by linarith
  have hd : 0 < 967680*(s.re+5) := mul_pos (by norm_num) hs5
  rw [tailCoefficient, div_pow, ← mul_div_assoc, shiftedProduct_sq]
  apply (div_le_iff₀ (sq_pos_of_pos hd)).mpr
  unfold CutoffTwoCertificate.tailGap at h
  nlinarith

lemma finite_term_bound {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    ‖power s*coefficient s‖ ≤ (99/140 : ℝ)*(1953/2000)*‖s-1‖ := by
  rw [norm_mul]
  exact weighted_product_bound (norm_nonneg _) (norm_nonneg _) (by norm_num)
    (norm_nonneg _) (power_weight hx) (coefficient_weighted_sq hx hx1 hlo hhi)

lemma tail_term_bound {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    ‖poleNormalizedZeta s-finiteModel 2 s‖ ≤ (99/140 : ℝ)*(7/16)*‖s-1‖ := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re+5 := by linarith
  have hq : 0 ≤ tailCoefficient s := by
    unfold tailCoefficient shiftedProduct
    positivity
  have h := weighted_product_bound (p := ‖power s‖) (q := tailCoefficient s)
    (w := 2*s.re+1) (a := 7/16) (d := 1)
    (norm_nonneg _) hq (by norm_num) (by norm_num) (power_weight hx)
    (by simpa using tailCoefficient_weighted_sq hx hx1 hlo hhi)
  simp only [mul_one] at h
  exact (source_error hs).trans (mul_le_mul_of_nonneg_right h (norm_nonneg _))

/-- Both the finite term and the actual cutoff-two tail are charged. -/
theorem band_source_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    ‖poleNormalizedZeta s-(s-1)‖ ≤ (9999/10000 : ℝ)*‖s-1‖ := by
  have he : finiteModel 2 s-(s-1) = power s*coefficient s := by rw [finiteModel_two]; ring
  calc
    _ = ‖(poleNormalizedZeta s-finiteModel 2 s)+(finiteModel 2 s-(s-1))‖ := by congr 1; ring
    _ ≤ ‖poleNormalizedZeta s-finiteModel 2 s‖+‖finiteModel 2 s-(s-1)‖ := norm_add_le _ _
    _ ≤ (99/140 : ℝ)*(7/16)*‖s-1‖+(99/140)*(1953/2000)*‖s-1‖ := by
      rw [he]
      exact add_le_add (tail_term_bound hx hx1 hlo hhi) (finite_term_bound hx hx1 hlo hhi)
    _ = _ := by ring

lemma norm_lower_of_band_enclosure {s z : ℂ} (hlo : (10 : ℝ) ≤ |s.im|)
    (he : ‖z-(s-1)‖ ≤ (9999/10000 : ℝ)*‖s-1‖) : (1/1000 : ℝ) ≤ ‖z‖ := by
  have him : |s.im| ≤ ‖s-1‖ := by simpa only [Complex.sub_im, Complex.one_im, sub_zero]
    using Complex.abs_im_le_norm (s-1)
  have ht : ‖s-1‖ ≤ ‖z‖+‖z-(s-1)‖ := by
    calc
      _ = ‖z-(z-(s-1))‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  nlinarith

theorem poleNormalized_norm_lower_band {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    (1/1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_of_band_enclosure hlo (band_source_error hx hx1 hlo hhi)

/-- Gluing the proved old seed and the new band, not asserting one reference everywhere. -/
theorem poleNormalized_norm_lower_elevenHeight {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hhi : |s.im| ≤ (11 : ℝ)) :
    (1/1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  by_cases hlo : |s.im| ≤ (10 : ℝ)
  · exact (by norm_num : (1/1000 : ℝ) ≤ 13/3136).trans
      (poleNormalized_norm_lower_tenHeight hx hx1 hlo)
  · exact poleNormalized_norm_lower_band hx hx1 (le_of_lt (lt_of_not_ge hlo)) hhi

theorem poleNormalized_nonzero_elevenHeight {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hhi : |s.im| ≤ (11 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_elevenHeight hx hx1 hhi
  rw [hz, norm_zero] at h
  norm_num at h

theorem nontrivialZetaZero_height_gt_eleven {z : ℂ} (hz : NontrivialZetaZero z) :
    (11 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hn
  have hy : |z.im| ≤ (11 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hn
  by_cases hx : (1/2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_elevenHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1/2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (11 : ℝ) := by simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_elevenHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_elevenHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (11 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_eleven hzero)) hz

theorem windowRH_eleven : WindowRH 11 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (11 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_eleven hzero)) hh)

theorem shellRH_ten : ShellRH 10 := (window_succ_iff 10).mp windowRH_eleven |>.2

/-- This affine reference is admitted on the high band ONLY; it vanishes at1. -/
def deformation (t : ℝ) (s : ℂ) : ℂ := (s-1)+(t : ℂ)*(poleNormalizedZeta s-(s-1))
@[simp] theorem deformation_zero (s : ℂ) : deformation 0 s = s-1 := by simp [deformation]
@[simp] theorem deformation_one (s : ℂ) : deformation 1 s = poleNormalizedZeta s := by simp [deformation]

theorem deformation_continuous (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := by
  unfold deformation
  fun_prop

theorem deformation_differentiableAt (t : ℝ) (s : ℂ) : DifferentiableAt ℂ (deformation t) s :=
  (differentiableAt_id.sub_const 1).add (((differentiable_poleNormalizedZeta s).sub
    (differentiableAt_id.sub_const 1)).const_mul (t : ℂ))

theorem deformation_norm_lower_band {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hlo : (10 : ℝ) ≤ |s.im|)
    (hhi : |s.im| ≤ (11 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (1/1000 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_of_band_enclosure hlo
  have he : deformation t s-(s-1) = (t : ℂ)*(poleNormalizedZeta s-(s-1)) := by
    unfold deformation; ring
  rw [he, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (band_source_error hx hx1 hlo hhi)

theorem inverse_deformation_differentiableAt_band {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hlo : (10 : ℝ) ≤ |s.im|)
    (hhi : |s.im| ≤ (11 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_band hx hx1 hlo hhi ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- The two different reference paths meet at the SAME analytic source endpoint. -/
theorem old_new_source_endpoint (s : ℂ) :
    SexticPrimitive.deformation 1 s = deformation 1 s := by simp

theorem affine_deformation_not_global_unit : deformation 0 1 = 0 := by simp

theorem window_twelve_of_shell (h : ShellRH 11) : WindowRH 12 :=
  (window_succ_iff 11).mpr ⟨windowRH_eleven,h⟩

theorem all_windows_of_above_eleven
    (hstep : ∀ N : ℕ, 11 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_eleven (by decide)
  | succ N ih =>
    by_cases hs : N+1 ≤ 11
    · exact windowRH_mono windowRH_eleven hs
    · exact (window_succ_iff N).mpr ⟨ih,hstep N (by omega) ih⟩

theorem rh_of_above_eleven
    (hstep : ∀ N : ℕ, 11 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_eleven hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
