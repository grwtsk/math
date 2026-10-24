# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripParabolicConfinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b52f83f3b897a39405521edeb248312be5d6e764` · SHA-256 `6b6c1e4d2759396053294d4d557a065f4d728c473d16fa57c2942bc59852a5d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed

set_option autoImplicit false

/-!
# A quantitative zero-free parabolic region from the actual Mellin source

The bound |M(s)| <= 1/Re(s) and the exact identity
H(s) = s * (1 - (s-1)M(s)) provide more than a finite sample: when
|s-1| < Re(s), the normalized Mellin factor is joined to 1 through
nonzero factors. This is a source-derived affine homotopy on its stated
zero-free domain, not a topological argument for the entire critical strip.

The actual functional mirror then confines every canonical target zero to
|2 Re(s)-1| <= Im(s)^2. This is NECESSARY, not equivalent to RH. The
non-strict boundary remains in the residual region; no zero is projected
or assigned a new imaginary height. Source scripts, not kernel acceptance.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinParabolic

open Complex Set

noncomputable section

/-- The homotopy keeps the actual arithmetic Mellin multiplier. -/
def unitHomotopy (t : ℝ) (s : ℂ) : ℂ :=
  1 - (t : ℂ) * ((s - 1) * fractionalMellin s)

@[simp] theorem unitHomotopy_zero (s : ℂ) : unitHomotopy 0 s = 1 := by
  simp [unitHomotopy]

@[simp] theorem unitHomotopy_one (s : ℂ) :
    unitHomotopy 1 s = fractionalMellinUnit s := by
  simp [unitHomotopy, fractionalMellinUnit]

/-- Continuity in the deformation parameter is separate from holomorphy in s. -/
theorem unitHomotopy_continuous (s : ℂ) : Continuous (fun t : ℝ => unitHomotopy t s) := by
  unfold unitHomotopy
  fun_prop

/-- Complex differentiability comes from the actual Mellin theorem, not continuity. -/
theorem unitHomotopy_differentiableAt (t : ℝ) {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ (unitHomotopy t) s := by
  have hM := fractionalMellin_differentiableAt hs
  have hlin : DifferentiableAt ℂ (fun z : ℂ => z - 1) s :=
    differentiableAt_id.sub_const 1
  exact differentiableAt_const.sub
    (differentiableAt_const.mul (hlin.mul hM))

/-- The entire path has a quantitative distance from zero. The parameters sigma,
r and t are respectively a real-part margin, a factor bound and a homotopy parameter. -/
theorem unitHomotopy_norm_lower {s : ℂ} {σ r t : ℝ}
    (hσ : 0 < σ) (hs : σ ≤ s.re) (hfactor : ‖s - 1‖ ≤ r)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    1 - r / σ ≤ ‖unitHomotopy t s‖ := by
  have hr0 : 0 ≤ r := (norm_nonneg _).trans hfactor
  have hM := fractionalMellin_norm_le hσ hs
  have hbase : ‖(s - 1) * fractionalMellin s‖ ≤ r / σ := by
    rw [norm_mul]
    simpa only [div_eq_mul_inv, one_mul] using
      mul_le_mul hfactor hM (norm_nonneg _) hr0
  have htNorm : ‖(t : ℂ)‖ = t := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht0]
  have hscaled : ‖(t : ℂ) * ((s - 1) * fractionalMellin s)‖ ≤ r / σ := by
    rw [norm_mul, htNorm]
    exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans hbase
  have htri : (1 : ℝ) ≤ ‖unitHomotopy t s‖ +
      ‖(t : ℂ) * ((s - 1) * fractionalMellin s)‖ := by
    calc
      (1 : ℝ) = ‖(1 : ℂ)‖ := by simp
      _ = ‖unitHomotopy t s + (t : ℂ) * ((s - 1) * fractionalMellin s)‖ := by
        congr 1
        unfold unitHomotopy
        ring
      _ ≤ _ := norm_add_le _ _
  linarith

/-- Strict separation is a proved inequality, never inferred from a path label. -/
theorem unitHomotopy_nonzero {s : ℂ} {σ r t : ℝ}
    (hσ : 0 < σ) (hs : σ ≤ s.re) (hfactor : ‖s - 1‖ ≤ r)
    (hmargin : r < σ) (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    unitHomotopy t s ≠ 0 := by
  have hsmall : r / σ < 1 := (div_lt_iff₀ hσ).mpr (by simpa using hmargin)
  have h := unitHomotopy_norm_lower hσ hs hfactor ht0 ht1
  intro hz
  rw [hz, norm_zero] at h
  linarith

/-- A lower bound for H itself; division by the real-part margin is justified. -/
theorem poleNormalized_norm_lower_of_factor {s : ℂ} {σ r : ℝ}
    (hσ : 0 < σ) (hs : σ ≤ s.re) (hfactor : ‖s - 1‖ ≤ r)
    (hmargin : r < σ) :
    σ - r ≤ ‖poleNormalizedZeta s‖ := by
  have hsmall : r / σ < 1 := (div_lt_iff₀ hσ).mpr (by simpa using hmargin)
  have hpos : 0 ≤ 1 - r / σ := by linarith
  have hQ : 1 - r / σ ≤ ‖fractionalMellinUnit s‖ := by
    simpa only [unitHomotopy_one] using
      unitHomotopy_norm_lower hσ hs hfactor (t := 1) (by norm_num) le_rfl
  have hsnorm : σ ≤ ‖s‖ := hs.trans (Complex.re_le_norm _)
  rw [poleNormalized_eq_mellinUnit (hσ.trans_le hs), norm_mul]
  calc
    σ - r = σ * (1 - r / σ) := by field_simp [hσ.ne'] <;> ring
    _ ≤ ‖s‖ * ‖fractionalMellinUnit s‖ :=
      mul_le_mul hsnorm hQ hpos (norm_nonneg _)

/-- Exact quadratic identity: the imaginary height is not an independent radius. -/
lemma factor_norm_sq (s : ℂ) :
    ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im, sub_zero]
  ring

/-- The exact open parabola for the elementary factor-norm argument. -/
theorem factor_lt_re_iff {s : ℂ} (hs : 0 < s.re) :
    ‖s - 1‖ < s.re ↔ s.im ^ 2 < 2 * s.re - 1 := by
  rw [← sq_lt_sq₀ (norm_nonneg (s - 1)) hs.le, factor_norm_sq]
  constructor <;> intro h <;> nlinarith

/-- No zeta evaluation, derivative table or extra zero-free premise is consumed. -/
theorem poleNormalized_nonzero_of_parabolic {s : ℂ} (hs : 0 < s.re)
    (hpar : s.im ^ 2 < 2 * s.re - 1) : poleNormalizedZeta s ≠ 0 := by
  have hfac := (factor_lt_re_iff hs).mpr hpar
  have h := poleNormalized_norm_lower_of_factor hs le_rfl (le_refl ‖s - 1‖) hfac
  intro hz
  rw [hz, norm_zero] at h
  linarith

/-- The reciprocal has a holomorphic germ only after nonvanishing is proved. -/
theorem inverseUnit_differentiableAt {s : ℂ} (hs : 0 < s.re)
    (hpar : s.im ^ 2 < 2 * s.re - 1) :
    DifferentiableAt ℂ (fun z => (unitHomotopy 1 z)⁻¹) s := by
  exact (unitHomotopy_differentiableAt 1 hs).inv
    (unitHomotopy_nonzero hs le_rfl (le_refl ‖s - 1‖)
      ((factor_lt_re_iff hs).mpr hpar) (by norm_num) le_rfl)

/-- The necessary right-side constraint keeps its non-strict boundary. -/
theorem target_right_parabolic {z : ℂ} (hz : NontrivialZetaZero z) :
    2 * z.re - 1 ≤ z.im ^ 2 := by
  by_contra hnot
  exact poleNormalized_nonzero_of_parabolic hz.mem_critical_strip.1
    (lt_of_not_ge hnot) (poleNormalizedZeta_zero_of_target hz)

/-- Reflection acts on canonical zero locations, not on unproved equality of H-values. -/
theorem target_parabolic_confinement {z : ℂ} (hz : NontrivialZetaZero z) :
    |2 * z.re - 1| ≤ ZetaCommutatorRoot.root.heightAt z ^ 2 := by
  have hright := target_right_parabolic hz
  have hmirror := target_right_parabolic hz.critical_reflection
  have hmirror' : 2 * (1 - z.re) - 1 ≤ z.im ^ 2 := by
    simpa [criticalReflection] using hmirror
  rw [ZetaCommutatorRoot.heightAt_eq_im]
  exact abs_le.mpr ⟨by linarith, hright⟩

/-- A non-RH ambient point satisfies the necessary inequality. It is NOT asserted
as a zeta zero; confinement alone cannot be promoted to the critical-line conclusion. -/
theorem parabolic_condition_does_not_force_line :
    ∃ z : ℂ, |2 * z.re - 1| ≤ z.im ^ 2 ∧ z.re ≠ 1 / 2 := by
  refine ⟨⟨3 / 4, 1⟩, ?_, ?_⟩ <;> norm_num

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinParabolic
```
