import Mathlib.Analysis.Complex.Circle
import Mathlib.Analysis.SpecialFunctions.Complex.Arg
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
# Complex actions and Euler's formula through group homomorphisms

Local attribution: grwtsk contributors.

Source: Grant Sanderson, Euler's formula with introductory group theory,
March 3, 2017; published text adaptation by River Way,
https://www.3blue1brown.com/lessons/eulers-formula-via-group-theory/ .
Imported circle mathematics: Heather Macbeth and Mathlib contributors (2021),
Mathlib/Analysis/Complex/Circle.lean; upstream authorship/license unchanged.

The lesson explicitly presents its group-theoretic discussion as intuition,
and distinguishes the calculus normalization of e from other bases. Here the
translation and nonzero multiplication actions are actual permutations, with
composition and faithful evaluation proved. Nonzero complex multiplication
has a positive-radius/unit-circle factorization. Exponential rotation is an
actual continuous group homomorphism. Frequencies 1 and 2 give two continuous
surjective homomorphisms with different values at pi: the homomorphism law
alone therefore does not select the analytic normalization. This is not a
claimed flaw in the lesson, which already makes the base distinction.

Compilation/kernel/type/axiom checks NOT_RUN by user deferral. Imported Euler
and polar identities retain their upstream scope; no independent local analytic
proof, full video coverage or verified completion is claimed.
-/

namespace GRWTSK.GroupTheory.Elementary.EulerComplexActions

noncomputable def translation (a : ℂ) : Equiv.Perm ℂ where
  toFun z := a + z
  invFun z := z - a
  left_inv z := by ring
  right_inv z := by ring

theorem translation_at_zero (a : ℂ) : translation a 0 = a := by simp [translation]

theorem translation_compose (a b : ℂ) : translation (a + b) = translation a * translation b := by
  ext z
  change (a + b) + z = a + (b + z)
  ring

theorem translation_faithful (a b : ℂ) : translation a = translation b ↔ a = b := by
  constructor
  · intro h
    simpa only [translation_at_zero] using congrArg (fun f : Equiv.Perm ℂ => f 0) h
  · rintro rfl
    rfl

noncomputable def translationHom : ℂ →+ Additive (Equiv.Perm ℂ) where
  toFun a := Additive.ofMul (translation a)
  map_zero' := by
    change translation 0 = 1
    ext z
    simp [translation]
  map_add' a b := translation_compose a b

noncomputable def multiplication (a : ℂ) (ha : a ≠ 0) : Equiv.Perm ℂ where
  toFun z := a * z
  invFun z := a⁻¹ * z
  left_inv z := by simp [← mul_assoc, ha]
  right_inv z := by simp [← mul_assoc, ha]

theorem multiplication_at_one (a : ℂ) (ha : a ≠ 0) : multiplication a ha 1 = a := by
  simp [multiplication]

theorem multiplication_compose (a b : ℂ) (ha : a ≠ 0) (hb : b ≠ 0) :
    multiplication (a * b) (mul_ne_zero ha hb) = multiplication a ha * multiplication b hb := by
  ext z
  change (a * b) * z = a * (b * z)
  ring

theorem multiplication_faithful (a b : ℂ) (ha : a ≠ 0) (hb : b ≠ 0) :
    multiplication a ha = multiplication b hb ↔ a = b := by
  constructor
  · intro h
    simpa only [multiplication_at_one] using congrArg (fun f : Equiv.Perm ℂ => f 1) h
  · rintro rfl
    rfl

noncomputable def multiplicationHom : ℂˣ →* Equiv.Perm ℂ where
  toFun a := multiplication (a : ℂ) a.ne_zero
  map_one' := by
    ext z
    simp [multiplication]
  map_mul' a b := by
    ext z
    simp [multiplication, mul_assoc]

theorem multiplicationHom_injective : Function.Injective multiplicationHom := by
  intro a b h
  apply Units.ext
  simpa [multiplicationHom, multiplication] using congrArg (fun f : Equiv.Perm ℂ => f 1) h

/-- Zero is excluded because its multiplication map is not invertible. -/
theorem zero_multiplication_not_bijective : ¬ Function.Bijective (fun z : ℂ => 0 * z) := by
  intro h
  have impossible := h.1 (show (0 : ℂ) * 0 = 0 * 1 by ring)
  norm_num at impossible

noncomputable def direction (z : ℂ) (hz : z ≠ 0) : Circle :=
  ⟨z / (‖z‖ : ℂ), by
    apply Metric.mem_sphere_zero_iff_norm.mpr
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (norm_nonneg z),
      div_self (norm_ne_zero_iff.mpr hz)]⟩

theorem polar_reconstruct (z : ℂ) (hz : z ≠ 0) : (‖z‖ : ℂ) * direction z hz = z := by
  change (‖z‖ : ℂ) * (z / (‖z‖ : ℂ)) = z
  have hn : (‖z‖ : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (norm_ne_zero_iff.mpr hz)
  field_simp [hn]
  <;> ring

theorem polar_unique (z : ℂ) (hz : z ≠ 0) (r : ℝ) (hr : 0 < r) (u : Circle)
    (h : (r : ℂ) * u = z) : r = ‖z‖ ∧ u = direction z hz := by
  have hn := congrArg norm h
  have radius : r = ‖z‖ := by
    simpa only [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hr,
      Circle.norm_coe, mul_one] using hn
  refine ⟨radius, ?_⟩
  apply Circle.ext
  apply mul_left_cancel₀ (Complex.ofReal_ne_zero.mpr (norm_ne_zero_iff.mpr hz))
  calc
    (‖z‖ : ℂ) * (u : ℂ) = (r : ℂ) * (u : ℂ) := by rw [radius]
    _ = z := h
    _ = _ := (polar_reconstruct z hz).symm

theorem polar_exists_unique (z : ℂ) (hz : z ≠ 0) :
    ∃ r : ℝ, 0 < r ∧ ∃ u : Circle, (r : ℂ) * u = z ∧
      ∀ (r' : ℝ), 0 < r' → ∀ u' : Circle,
        (r' : ℂ) * u' = z → r' = r ∧ u' = u := by
  refine ⟨‖z‖, norm_pos_iff.mpr hz, direction z hz, polar_reconstruct z hz, ?_⟩
  intro r' hr' u' h
  exact polar_unique z hz r' hr' u' h

/-- The polar factors decompose the actual multiplication action on every point. -/
theorem polar_action (z : ℂ) (hz : z ≠ 0) (w : ℂ) :
    multiplication z hz w = (‖z‖ : ℂ) * ((direction z hz : ℂ) * w) := by
  change z * w = _
  calc
    _ = ((‖z‖ : ℂ) * (direction z hz : ℂ)) * w :=
      congrArg (fun a : ℂ => a * w) (polar_reconstruct z hz).symm
    _ = _ := by ring

/-- Actual multiplication by a circle element preserves the complex-plane norm. -/
theorem circle_multiplication_norm (u : Circle) (z : ℂ) : ‖(u : ℂ) * z‖ = ‖z‖ := by
  rw [norm_mul, Circle.norm_coe, one_mul]

noncomputable def frequency (ω : ℝ) : ℝ →+ Additive Circle where
  toFun t := Additive.ofMul (Circle.exp (ω * t))
  map_zero' := by change Circle.exp (ω * 0) = 1; simp
  map_add' x y := by
    change Circle.exp (ω * (x + y)) = Circle.exp (ω * x) * Circle.exp (ω * y)
    rw [mul_add, Circle.exp_add]

theorem frequency_continuous (ω : ℝ) : Continuous (fun t : ℝ => (frequency ω t).toMul) :=
  Circle.exp.continuous.comp (continuous_const.mul continuous_id)

theorem circle_exp_surjective : Function.Surjective Circle.exp := by
  intro z
  obtain ⟨t, h⟩ := (Complex.norm_eq_one_iff (z : ℂ)).mp (Circle.norm_coe z)
  exact ⟨t, Circle.ext (by simpa only [Circle.coe_exp] using h)⟩

theorem frequency_surjective (ω : ℝ) (hω : ω ≠ 0) :
    Function.Surjective (fun t : ℝ => (frequency ω t).toMul) := by
  intro z
  obtain ⟨t, h⟩ := circle_exp_surjective z
  refine ⟨t / ω, ?_⟩
  have cancel : ω * (t / ω) = t := by
    field_simp [hω]
    <;> ring
  simpa only [frequency, cancel] using h

theorem frequency_one_pi : ((frequency 1 Real.pi).toMul : ℂ) = -1 := by
  change Complex.exp (((1 : ℝ) * Real.pi : ℝ) * Complex.I) = -1
  simpa only [one_mul] using Complex.exp_pi_mul_I

theorem frequency_two_pi : ((frequency 2 Real.pi).toMul : ℂ) = 1 := by
  change Complex.exp (((2 : ℝ) * Real.pi : ℝ) * Complex.I) = 1
  push_cast
  exact Complex.exp_two_pi_mul_I

/-- Continuity and surjectivity still leave the angular speed unnormalized. -/
theorem homomorphism_law_does_not_fix_pi :
    ∃ f g : ℝ →+ Additive Circle,
      Continuous (fun t => (f t).toMul) ∧ Continuous (fun t => (g t).toMul) ∧
      Function.Surjective (fun t => (f t).toMul) ∧ Function.Surjective (fun t => (g t).toMul) ∧
      f Real.pi ≠ g Real.pi := by
  refine ⟨frequency 1, frequency 2, frequency_continuous 1, frequency_continuous 2,
    frequency_surjective 1 (by norm_num), frequency_surjective 2 (by norm_num), ?_⟩
  intro same
  have h := congrArg (fun z : Additive Circle => (z.toMul : ℂ)) same
  rw [frequency_one_pi, frequency_two_pi] at h
  norm_num at h

noncomputable def rotate (t : ℝ) (z : ℂ) : ℂ := (Circle.exp t : ℂ) * z

theorem rotate_compose (s t : ℝ) (z : ℂ) : rotate (s + t) z = rotate s (rotate t z) := by
  simp only [rotate, Circle.exp_add, Circle.coe_mul]
  ring

theorem rotate_zero (z : ℂ) : rotate 0 z = z := by simp [rotate]

theorem rotate_inverse (t : ℝ) (z : ℂ) : rotate (-t) (rotate t z) = z := by
  rw [← rotate_compose]
  simp [rotate]

theorem rotate_preserves_norm (t : ℝ) (z : ℂ) : ‖rotate t z‖ = ‖z‖ := by simp [rotate]

/-- Euler's imported analytic identity has a concrete action consumer. -/
theorem euler_half_turn_action (z : ℂ) : rotate Real.pi z = -z := by
  simp [rotate, Circle.coe_exp, Complex.exp_pi_mul_I]

end GRWTSK.GroupTheory.Elementary.EulerComplexActions
