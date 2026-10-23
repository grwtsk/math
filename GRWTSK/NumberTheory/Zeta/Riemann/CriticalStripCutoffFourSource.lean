/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTranslatedPowerJet
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightSeed

set_option autoImplicit false

/-!
# The unchanged sextic model at cutoff four

All four positive Dirichlet terms, the endpoint power, and the B2/B4/B6
corrections are retained. The new polynomial model is only an enclosure of
that exact finite model. Its error is separate from the actual infinite tail.
All estimates below are on the CLOSED positive band 13<=Im(s)<=14. The
negative band is not inferred by equality of model values; zero reflection
is handled later by the canonical zero predicate.
SOURCE SCRIPTS / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffFour
open Complex Set
noncomputable section

def Band (s : ℂ) : Prop := (1 / 2 : ℝ) ≤ s.re ∧ s.re ≤ 1 ∧ (13 : ℝ) ≤ s.im ∧ s.im ≤ 14

def coefficient (s : ℂ) : ℂ :=
  (s + 7) / 2 + s * (s - 1) / 48 - CubicPrimitive.multiplier s / 46080 +
    QuarticPrimitive.multiplier s * (s + 4) / 30965760

def model (s : ℂ) : ℂ :=
  (s - 1) * (1 + FourteenJet.jet 0 s + FourteenJet.jet 1 s) +
    FourteenJet.jet 2 s * coefficient s

lemma negative_shift (s : ℂ) (k : ℕ) :
    (4 : ℂ) ^ (-(s + (k : ℂ))) = (4 : ℂ) ^ (-s) / (4 : ℂ) ^ k := by
  rw [show -(s + (k : ℂ)) = -s - (k : ℂ) by ring,
    Complex.cpow_sub _ _ (by norm_num : (4 : ℂ) ≠ 0), Complex.cpow_natCast]

theorem finiteModel_four (s : ℂ) : finiteModel 4 s =
    (s - 1) * (1 + (2 : ℂ) ^ (-s) + (3 : ℂ) ^ (-s)) + (4 : ℂ) ^ (-s) * coefficient s := by
  have hsum : finiteDirichletPowerSum 4 s =
      1 + (2 : ℂ) ^ (-s) + (3 : ℂ) ^ (-s) + (4 : ℂ) ^ (-s) := by
    rw [finiteDirichletPowerSum, show Finset.Icc (1 : ℕ) 4 = {1, 2, 3, 4} from by decide]
    simp <;> ring
  have hend : (4 : ℂ) ^ (1 - s) = 4 * (4 : ℂ) ^ (-s) := by
    rw [sub_eq_add_neg, Complex.cpow_add _ _ (by norm_num : (4 : ℂ) ≠ 0), Complex.cpow_one]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  norm_num only [Nat.cast_ofNat]
  rw [hsum, hend, negative_shift s 1, negative_shift s 3, negative_shift s 5]
  norm_num only [Nat.cast_ofNat, Nat.cast_one]
  unfold coefficient
  ring

lemma band_distance {s : ℂ} (hs : Band s) : ‖s - FourteenJet.center‖ ≤ (3 / 4 : ℝ) := by
  rcases hs with ⟨hx, hx1, ht, ht1⟩
  have hr : |s.re - 3 / 4| ≤ (1 / 4 : ℝ) := abs_le.mpr ⟨by linarith, by linarith⟩
  have hi : |s.im - 27 / 2| ≤ (1 / 2 : ℝ) := abs_le.mpr ⟨by linarith, by linarith⟩
  have h := Complex.norm_le_abs_re_add_abs_im (s - FourteenJet.center)
  simp only [Complex.sub_re, Complex.sub_im, FourteenJet.center, Complex.mk_re, Complex.mk_im] at h
  linarith

lemma band_norms {s : ℂ} (hs : Band s) : ‖s‖ ≤ (15 : ℝ) ∧ ‖s - 1‖ ≤ (15 : ℝ) := by
  rcases hs with ⟨hx, hx1, ht, ht1⟩
  have h := Complex.norm_le_abs_re_add_abs_im s
  have hd := Complex.norm_le_abs_re_add_abs_im (s - 1)
  simp only [Complex.sub_re, Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero] at hd
  rw [abs_of_nonneg (by linarith : 0 ≤ s.re), abs_of_nonneg (by linarith : 0 ≤ s.im)] at h
  rw [abs_of_nonpos (by linarith : s.re - 1 ≤ 0), abs_of_nonneg (by linarith : 0 ≤ s.im)] at hd
  constructor <;> linarith

lemma coefficient_norm {s : ℂ} (hs : Band s) : ‖coefficient s‖ ≤ (20 : ℝ) := by
  have hn := band_norms hs
  have hj (j : ℕ) : ‖s + (j : ℂ)‖ ≤ 15 + (j : ℝ) := by
    exact (norm_add_le _ _).trans (by simpa using add_le_add_right hn.1 (j : ℝ))
  have h4 : ‖CubicPrimitive.multiplier s‖ ≤ (15 : ℝ) * 15 * 16 * 17 := by
    simp only [CubicPrimitive.multiplier, norm_mul]
    gcongr
    · exact hn.1
    · exact hn.2
    · simpa using hj 1
    · simpa using hj 2
  have h6 : ‖QuarticPrimitive.multiplier s * (s + 4)‖ ≤ (15 : ℝ) * 15 * 16 * 17 * 18 * 19 := by
    simp only [QuarticPrimitive.multiplier, norm_mul]
    gcongr
    · exact h4
    · simpa using hj 3
    · simpa using hj 4
  have h2 : ‖s * (s - 1)‖ ≤ (225 : ℝ) := by
    rw [norm_mul]
    nlinarith [mul_le_mul hn.1 hn.2 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 15)]
  have h := norm_add_le ((s + 7) / 2 + s * (s - 1) / 48 - CubicPrimitive.multiplier s / 46080)
    (QuarticPrimitive.multiplier s * (s + 4) / 30965760)
  have h' := norm_sub_le ((s + 7) / 2 + s * (s - 1) / 48) (CubicPrimitive.multiplier s / 46080)
  have h'' := norm_add_le ((s + 7) / 2) (s * (s - 1) / 48)
  norm_num [norm_div] at h h' h''
  have h7 : ‖s + 7‖ ≤ (22 : ℝ) := by simpa using hj 7
  change ‖(s + 7) / 2 + s * (s - 1) / 48 - CubicPrimitive.multiplier s / 46080 +
    QuarticPrimitive.multiplier s * (s + 4) / 30965760‖ ≤ 20
  linarith

/-- Rounding/Taylor errors for bases 2,3,4 are charged separately. Base one is exact. -/
theorem model_error {s : ℂ} (hs : Band s) : ‖finiteModel 4 s - model s‖ ≤ (25 / 1024 : ℝ) := by
  have hd := band_distance hs
  have h2 := FourteenJet.jet_encloses 0 hd
  have h3 := FourteenJet.jet_encloses 1 hd
  have h4 := FourteenJet.jet_encloses 2 hd
  norm_num [FourteenJet.base] at h2 h3 h4
  have heq : finiteModel 4 s - model s =
      (s - 1) * (((2 : ℂ) ^ (-s) - FourteenJet.jet 0 s) +
        ((3 : ℂ) ^ (-s) - FourteenJet.jet 1 s)) +
      ((4 : ℂ) ^ (-s) - FourteenJet.jet 2 s) * coefficient s := by
    rw [finiteModel_four, model]
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul, norm_mul]
  have hp := (norm_add_le _ _).trans (add_le_add h2 h3)
  have hm1 := mul_le_mul (band_norms hs).2 hp (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 15)
  have hm2 := mul_le_mul h4 (coefficient_norm hs) (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2048)
  linarith

lemma multiplier_bound {s : ℂ} (hs : Band s) : ‖multiplier s‖ ≤ (132000000 : ℝ) := by
  rcases hs with ⟨hx, hx1, ht, ht1⟩
  have hx0 : 0 ≤ s.re := by linarith
  have ht0 : 0 ≤ s.im := by linarith
  have hty : s.im ^ 2 ≤ (196 : ℝ) := by
    have h := mul_le_mul ht1 ht1 ht0 (by norm_num : (0 : ℝ) ≤ 14)
    nlinarith
  have hxx : s.re ^ 2 ≤ (1 : ℝ) := by
    have h := mul_le_mul hx1 hx1 hx0 (by norm_num : (0 : ℝ) ≤ 1)
    nlinarith
  have hdx : (s.re - 1) ^ 2 ≤ (1 : ℝ) := by
    have h0 : 0 ≤ 1 - s.re := by linarith
    have h1 : 1 - s.re ≤ 1 := by linarith
    have h := mul_le_mul h1 h1 h0 (by norm_num : (0 : ℝ) ≤ 1)
    nlinarith
  have hbase : ‖s‖ ^ 2 ≤ (197 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith
  have hminus : ‖s - 1‖ ^ 2 ≤ (197 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero]
    nlinarith
  have hj (j : ℕ) : ‖s + (j : ℂ)‖ ^ 2 ≤ (1 + (j : ℝ)) ^ 2 + 196 := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.add_re, Complex.add_im, Complex.natCast_re, Complex.natCast_im, add_zero]
    have hn : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    have h := mul_le_mul (add_le_add_right hx1 (j : ℝ)) (add_le_add_right hx1 (j : ℝ))
      (add_nonneg hx0 hn) (by positivity : 0 ≤ 1 + (j : ℝ))
    nlinarith
  have hprod : ‖multiplier s‖ ^ 2 ≤ (197 : ℝ) * 197 * 200 * 205 * 212 * 221 * 232 := by
    simp only [multiplier, QuarticPrimitive.multiplier, CubicPrimitive.multiplier, norm_mul, mul_pow]
    gcongr
    · exact hbase
    · exact hminus
    · simpa using hj 1
    · simpa using hj 2
    · simpa using hj 3
    · simpa using hj 4
    · simpa using hj 5
  nlinarith [norm_nonneg (multiplier s)]

lemma cutoff_four_weight : (4 : ℝ) ^ (-(11 / 2 : ℝ)) = (1 / 2048 : ℝ) := by
  have h : (4 : ℝ) ^ (-(11 / 2 : ℝ)) = (2 : ℝ) ^ (-(11 : ℝ)) := by
    rw [show (4 : ℝ) = (2 : ℝ) ^ (2 : ℕ) by norm_num,
      ← Real.rpow_natCast_mul (by norm_num : (0 : ℝ) ≤ 2)]
    congr 1
    norm_num
  rw [h]
  norm_num [Real.rpow_neg]

/-- Only the general-cutoff sextic tail is used; no cutoff-one/two saving is transported. -/
theorem tail_error {s : ℂ} (hs : Band s) : ‖poleNormalizedZeta s - finiteModel 4 s‖ ≤ (2 / 5 : ℝ) := by
  have h := finiteModel_error (N := 4) (σ := (1 / 2 : ℝ)) (by decide) (by norm_num) hs.1
  norm_num only [Nat.cast_ofNat, show (1 / 2 : ℝ) + 5 = 11 / 2 by norm_num] at h
  rw [cutoff_four_weight] at h
  have hm := multiplier_bound hs
  linarith

/-- Complete source error, not just a finite-model or sample error. -/
theorem source_model_error {s : ℂ} (hs : Band s) : ‖poleNormalizedZeta s - model s‖ ≤ (7 / 16 : ℝ) := by
  have ht := tail_error hs
  have hm := model_error hs
  calc
    _ = ‖(poleNormalizedZeta s - finiteModel 4 s) + (finiteModel 4 s - model s)‖ := by congr 1; ring
    _ ≤ ‖poleNormalizedZeta s - finiteModel 4 s‖ + ‖finiteModel 4 s - model s‖ := norm_add_le _ _
    _ ≤ 2 / 5 + 25 / 1024 := add_le_add ht hm
    _ ≤ _ := by norm_num

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffFour
