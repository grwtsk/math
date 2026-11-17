/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.HS95CharacterCarrier

/-!
# Exact noisy separation of the two HS-95 dual sectors

With finite real diagonal heat and independent closed complex noise disks,
the two possible observation sets intersect exactly when every attenuated
imaginary phase fits in its coordinate's noise budget. The common observation
at the threshold is the real midpoint, so a strict inequality is necessary
for a guaranteed decision between the two sectors.
-/

set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.HS95CharacterCarrier

private theorem im_le_of_common_read {c y : ℂ} {ε : ℝ}
    (h : ‖y - c‖ ≤ ε) (hdual : ‖y - conj c‖ ≤ ε) : |c.im| ≤ ε := by
  have left := (Complex.abs_im_le_norm (y - c)).trans h
  have right := (Complex.abs_im_le_norm (y - conj c)).trans hdual
  rw [Complex.sub_im] at left right
  rw [Complex.conj_im] at right
  rcases abs_le.mp left with ⟨l₁, l₂⟩
  rcases abs_le.mp right with ⟨r₁, r₂⟩
  exact abs_le.mpr ⟨by linarith, by linarith⟩

private theorem midpoint_dist (c : ℂ) : ‖(c.re : ℂ) - c‖ = |c.im| := by
  have eq : (c.re : ℂ) - c = (-(c.im) : ℂ) * Complex.I := by
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im]
  rw [eq, norm_mul, Complex.norm_I, mul_one, norm_neg, Complex.norm_real, Real.norm_eq_abs]

/-- A common noisy vector exists iff no coordinate separates the dual
phases. This holds at every modulus and every observation window. -/
theorem dual_heat_common_read_iff {q : ℕ} (χ : DirichletCharacter ℂ q)
    (w : ℕ) (rate : Position → ℝ) (time : ℝ) (noise : Position → ℝ) :
    let original := diagonalHeat rate time (characterObservation χ w)
    let dual := diagonalHeat rate time (characterObservation χ⁻¹ w)
    (∃ y : Position → ℂ,
      (∀ i, ‖y i - original i‖ ≤ noise i) ∧ (∀ i, ‖y i - dual i‖ ≤ noise i)) ↔
    ∀ i, Real.exp (-time * rate i) * |(characterObservation χ w i).im| ≤ noise i := by
  intro original dual
  have conjDual (i : Position) : dual i = conj (original i) :=
    congrFun (diagonalHeat_dual_character rate time χ w) i
  have height (i : Position) :
      |(original i).im| = Real.exp (-time * rate i) * |(characterObservation χ w i).im| := by
    simp only [original, diagonalHeat, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      zero_mul, add_zero, abs_mul, abs_of_pos (Real.exp_pos _)]
  constructor
  · rintro ⟨y, left, right⟩ i
    rw [← height]
    exact im_le_of_common_read (left i) (by simpa only [conjDual] using right i)
  · intro common
    refine ⟨fun i => ((original i).re : ℂ), fun i => ?_, fun i => ?_⟩
    · rw [midpoint_dist, height]
      exact common i
    · change ‖((original i).re : ℂ) - dual i‖ ≤ noise i
      rw [conjDual, ← Complex.conj_re (original i), midpoint_dist,
        Complex.conj_im, abs_neg, height]
      exact common i

/-- A guaranteed binary decoder exists precisely when at least one
observed coordinate has strictly more surviving phase than noise. -/
theorem dual_heat_decoder_iff {q : ℕ} (χ : DirichletCharacter ℂ q)
    (w : ℕ) (rate : Position → ℝ) (time : ℝ) (noise : Position → ℝ) :
    let original := diagonalHeat rate time (characterObservation χ w)
    let dual := diagonalHeat rate time (characterObservation χ⁻¹ w)
    (∃ decode : (Position → ℂ) → Bool,
      (∀ y, (∀ i, ‖y i - original i‖ ≤ noise i) → decode y = true) ∧
      (∀ y, (∀ i, ‖y i - dual i‖ ≤ noise i) → decode y = false)) ↔
    ∃ i, noise i < Real.exp (-time * rate i) * |(characterObservation χ w i).im| := by
  classical
  intro original dual
  have overlap := dual_heat_common_read_iff χ w rate time noise
  constructor
  · rintro ⟨decode, left, right⟩
    by_contra absent
    push Not at absent
    obtain ⟨y, h₁, h₂⟩ := overlap.mpr absent
    have contradiction := (left y h₁).symm.trans (right y h₂)
    cases contradiction
  · rintro ⟨i, gap⟩
    let decode (y : Position → ℂ) : Bool := decide (∀ j, ‖y j - original j‖ ≤ noise j)
    refine ⟨decode, fun y ok => by simp [decode, ok], ?_⟩
    intro y right
    have bad (left : ∀ j, ‖y j - original j‖ ≤ noise j) : False :=
      gap.not_ge (overlap.mp ⟨y, left, right⟩ i)
    exact decide_eq_false bad

end GRWTSK.NumberTheory.HS95CharacterCarrier
