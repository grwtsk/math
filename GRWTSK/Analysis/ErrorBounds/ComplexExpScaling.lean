/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Complex exponential scaling with explicit squaring errors

Reduce the exponent by the positive integer 2^s, evaluate the existing Taylor
polynomial, and reconstruct by s squarings. The exact exponential stays in the
closed unit disk when Re(w)<=0; the approximate value is NOT assumed to do so.
The radius therefore includes its quadratic term. Rounded seeds and every
rounded square are charged separately. No executable arithmetic is qualified.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.ComplexExpScaling

open GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure
noncomputable section

/-- s repeated squarings; the successor identity exposes the finite evaluation path. -/
def squaredValue (v : ℂ) (s : ℕ) : ℂ := v ^ (2 ^ s)

/-- Radius for exact squarings; it is not merely 2^s times the seed radius. -/
def squaringRadius (e : ℝ) : ℕ → ℝ
  | 0 => e
  | s + 1 => 2 * squaringRadius e s + squaringRadius e s ^ 2

/-- Each local square error enters at its own stage and is propagated thereafter. -/
def roundedRadius (e : ℝ) (r : ℕ → ℝ) : ℕ → ℝ
  | 0 => e
  | s + 1 => 2 * roundedRadius e r s + roundedRadius e r s ^ 2 + r s

/-- Finite polynomial followed by powers, at the EXACT divided exponent. -/
def scaledTaylor (w : ℂ) (s M : ℕ) : ℂ :=
  squaredValue (taylorValue (w / (2 ^ s : ℕ)) M) s

/-- Reconstructed truncation radius. There is no exp call in this expression. -/
def scaledRadius (B : ℝ) (s M : ℕ) : ℝ :=
  squaringRadius (taylorTail (B / (2 ^ s : ℕ)) M) s

@[simp] theorem squaredValue_zero (v : ℂ) : squaredValue v 0 = v := by
  simp [squaredValue]

theorem squaredValue_succ (v : ℂ) (s : ℕ) :
    squaredValue v (s + 1) = squaredValue v s ^ 2 := by
  unfold squaredValue
  rw [pow_succ (2 : ℕ) s, pow_mul]

theorem squaringRadius_nonneg {e : ℝ} (he : 0 ≤ e) (s : ℕ) :
    0 ≤ squaringRadius e s := by
  induction s with
  | zero => exact he
  | succ s ih => exact add_nonneg (mul_nonneg (by norm_num) ih) (sq_nonneg _)

/-- The exact solution of the scalar recurrence, including s=0. -/
theorem squaringRadius_eq (e : ℝ) (s : ℕ) :
    squaringRadius e s = (1 + e) ^ (2 ^ s) - 1 := by
  induction s with
  | zero => simp [squaringRadius]
  | succ s ih =>
    rw [squaringRadius, ih, pow_succ (2 : ℕ) s, pow_mul]
    ring

theorem roundedRadius_zero_rounding (e : ℝ) (s : ℕ) :
    roundedRadius e (fun _ => 0) s = squaringRadius e s := by
  induction s with
  | zero => rfl
  | succ s ih => simp only [roundedRadius, squaringRadius, ih, add_zero]

/-- The approximant may leave the unit disk, and that is why e^2 is necessary. -/
theorem square_error {u v : ℂ} {e : ℝ} (hu : ‖u‖ ≤ 1) (he : ‖u - v‖ ≤ e) :
    ‖u ^ 2 - v ^ 2‖ ≤ 2 * e + e ^ 2 := by
  have he0 : 0 ≤ e := (norm_nonneg _).trans he
  have hv : ‖v‖ ≤ 1 + e := by
    calc
      _ = ‖u + (v - u)‖ := by congr 1; abel
      _ ≤ ‖u‖ + ‖v - u‖ := norm_add_le _ _
      _ ≤ _ := add_le_add hu (by simpa only [norm_sub_rev] using he)
  have hs : ‖u + v‖ ≤ 2 + e :=
    (norm_add_le _ _).trans (by linarith)
  calc
    _ = ‖(u - v) * (u + v)‖ := by congr 1; ring
    _ = ‖u - v‖ * ‖u + v‖ := norm_mul _ _
    _ ≤ e * (2 + e) := mul_le_mul he hs (norm_nonneg _) he0
    _ = _ := by ring

theorem norm_squaredValue_le_one {u : ℂ} (hu : ‖u‖ ≤ 1) (s : ℕ) :
    ‖squaredValue u s‖ ≤ 1 := by
  induction s with
  | zero => simpa using hu
  | succ s ih =>
    rw [squaredValue_succ, norm_pow]
    have h0 := norm_nonneg (squaredValue u s)
    simpa only [pow_two, one_mul] using
      mul_le_mul ih ih h0 (by norm_num : (0 : ℝ) ≤ 1)

/-- Exact squaring with the seed error charged through every stage. -/
theorem squaring_error {u v : ℂ} {e : ℝ} (hu : ‖u‖ ≤ 1)
    (he : ‖u - v‖ ≤ e) (s : ℕ) :
    ‖squaredValue u s - squaredValue v s‖ ≤ squaringRadius e s := by
  induction s with
  | zero => simpa only [squaredValue_zero, squaringRadius] using he
  | succ s ih =>
    rw [squaredValue_succ, squaredValue_succ]
    exact square_error (norm_squaredValue_le_one hu s) ih

/-- The entire trace is checked against the same seed and the same square operation.
No sign premise for unused future radii is needed; used radii have actual norm bounds. -/
theorem squaring_trace_error {u : ℂ} (hu : ‖u‖ ≤ 1) (acc : ℕ → ℂ)
    (e : ℝ) (r : ℕ → ℝ) (hseed : ‖u - acc 0‖ ≤ e) (s : ℕ)
    (hstep : ∀ j < s, ‖acc (j + 1) - acc j ^ 2‖ ≤ r j) :
    ‖squaredValue u s - acc s‖ ≤ roundedRadius e r s := by
  induction s with
  | zero => simpa only [squaredValue_zero, roundedRadius] using hseed
  | succ s ih =>
    have hp := ih (fun j hj => hstep j (Nat.lt_succ_of_lt hj))
    have hs : ‖acc s ^ 2 - acc (s + 1)‖ ≤ r s := by
      simpa only [norm_sub_rev] using hstep s (Nat.lt_succ_self s)
    rw [squaredValue_succ]
    calc
      _ = ‖(squaredValue u s ^ 2 - acc s ^ 2) +
          (acc s ^ 2 - acc (s + 1))‖ := by congr 1; abel
      _ ≤ ‖squaredValue u s ^ 2 - acc s ^ 2‖ +
          ‖acc s ^ 2 - acc (s + 1)‖ := norm_add_le _ _
      _ ≤ _ := add_le_add (square_error (norm_squaredValue_le_one hu s) hp) hs

/-- The exact exponential, rather than the Taylor sample, has norm at most one. -/
theorem norm_exp_le_one {w : ℂ} (hw : w.re ≤ 0) : ‖Complex.exp w‖ ≤ 1 := by
  simpa only [Complex.norm_exp, Real.exp_zero] using Real.exp_le_exp.mpr hw

/-- A positive dyadic denominator preserves the horizontal sign. -/
theorem scaled_re_nonpos {w : ℂ} (hw : w.re ≤ 0) (s : ℕ) :
    (w / (2 ^ s : ℕ)).re ≤ 0 := by
  simpa only [Complex.div_natCast_re] using
    div_nonpos_of_nonpos_of_nonneg hw (Nat.cast_nonneg (2 ^ s))

/-- Reconstruction is an exact exp identity, with precisely s squarings. -/
theorem exponential_reconstruct (w : ℂ) (s : ℕ) :
    squaredValue (Complex.exp (w / (2 ^ s : ℕ))) s = Complex.exp w := by
  have hK : ((2 ^ s : ℕ) : ℂ) ≠ 0 := by
    exact_mod_cast (pow_ne_zero s (by decide : (2 : ℕ) ≠ 0))
  unfold squaredValue
  rw [← Complex.exp_nat_mul]
  congr 1
  field_simp [hK]

/-- The parent's exact Taylor guard is applied at the reduced argument, not w. -/
theorem scaled_seed_error {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (s M : ℕ)
    (hguard : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖Complex.exp (w / (2 ^ s : ℕ)) - taylorValue (w / (2 ^ s : ℕ)) M‖ ≤
      taylorTail (B / (2 ^ s : ℕ)) M := by
  apply exponential_tail _ M hguard
  simpa only [norm_div, Complex.norm_natCast] using
    div_le_div_of_nonneg_right hw (Nat.cast_nonneg (2 ^ s))

/-- Scaling reduces the Taylor input, but reconstruction must still be paid for. -/
theorem scaled_exp_error {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (hre : w.re ≤ 0)
    (s M : ℕ) (hguard : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖Complex.exp w - scaledTaylor w s M‖ ≤ scaledRadius B s M := by
  have h := squaring_error (norm_exp_le_one (scaled_re_nonpos hre s))
    (scaled_seed_error hw s M hguard) s
  simpa only [exponential_reconstruct, scaledTaylor, scaledRadius] using h

/-- A rounded Taylor seed and every rounded square remain separately charged.
This does not certify the arithmetic used to produce acc, e_seed, or r. -/
theorem scaled_exp_trace_error {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (hre : w.re ≤ 0)
    (s M : ℕ) (hguard : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e_seed : ℝ) (r : ℕ → ℝ)
    (hseed : ‖taylorValue (w / (2 ^ s : ℕ)) M - acc 0‖ ≤ e_seed)
    (hstep : ∀ j < s, ‖acc (j + 1) - acc j ^ 2‖ ≤ r j) :
    ‖Complex.exp w - acc s‖ ≤
      roundedRadius (taylorTail (B / (2 ^ s : ℕ)) M + e_seed) r s := by
  have h0 : ‖Complex.exp (w / (2 ^ s : ℕ)) - acc 0‖ ≤
      taylorTail (B / (2 ^ s : ℕ)) M + e_seed := by
    calc
      _ = ‖(Complex.exp (w / (2 ^ s : ℕ)) - taylorValue (w / (2 ^ s : ℕ)) M) +
          (taylorValue (w / (2 ^ s : ℕ)) M - acc 0)‖ := by congr 1; abel
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add (scaled_seed_error hw s M hguard) hseed)
  have h := squaring_trace_error (norm_exp_le_one (scaled_re_nonpos hre s))
    acc _ r h0 s hstep
  simpa only [exponential_reconstruct] using h

/-- Elementary rational majorant for the reconstruction radius. -/
theorem one_add_pow_mul_remaining_le_one {e : ℝ} (he : 0 ≤ e) (n : ℕ) :
    (1 + e) ^ n * (1 - (n : ℝ) * e) ≤ 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hp : 0 ≤ (1 + e) ^ n := pow_nonneg (by linarith) n
    have hdrop : 0 ≤ (1 + e) ^ n * (((n : ℝ) + 1) * e ^ 2) :=
      mul_nonneg hp (mul_nonneg (by positivity) (sq_nonneg e))
    rw [pow_succ, Nat.cast_succ]
    nlinarith [hdrop]

/-- A true precision guard is distinct from Taylor-tail admissibility. -/
theorem squaringRadius_le_fraction {e : ℝ} (he : 0 ≤ e) (s : ℕ)
    (hsmall : ((2 ^ s : ℕ) : ℝ) * e < 1) :
    squaringRadius e s ≤ (((2 ^ s : ℕ) : ℝ) * e) / (1 - ((2 ^ s : ℕ) : ℝ) * e) := by
  rw [squaringRadius_eq]
  apply (le_div_iff₀ (by linarith)).mpr
  nlinarith [one_add_pow_mul_remaining_le_one he (2 ^ s)]

/-- In the small-radius regime reconstruction costs at most twice K times the seed error. -/
theorem squaringRadius_le_twice {e : ℝ} (he : 0 ≤ e) (s : ℕ)
    (hsmall : ((2 ^ s : ℕ) : ℝ) * e ≤ 1 / 2) :
    squaringRadius e s ≤ 2 * ((2 ^ s : ℕ) : ℝ) * e := by
  have hp : 0 ≤ ((2 ^ s : ℕ) : ℝ) * e := mul_nonneg (Nat.cast_nonneg _) he
  apply (squaringRadius_le_fraction he s (by linarith)).trans
  apply (div_le_iff₀ (by linarith : 0 < 1 - ((2 ^ s : ℕ) : ℝ) * e)).mpr
  nlinarith [mul_nonneg hp (show 0 ≤ 1 - 2 * (((2 ^ s : ℕ) : ℝ) * e) by linarith)]

/-- Finite precision test with no exp or log evaluation on the right. -/
theorem scaled_exp_error_le_twice {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (hre : w.re ≤ 0)
    (s M : ℕ) (hguard : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (hsmall : ((2 ^ s : ℕ) : ℝ) * taylorTail (B / (2 ^ s : ℕ)) M ≤ 1 / 2) :
    ‖Complex.exp w - scaledTaylor w s M‖ ≤
      2 * ((2 ^ s : ℕ) : ℝ) * taylorTail (B / (2 ^ s : ℕ)) M := by
  apply (scaled_exp_error hw hre s M hguard).trans
  exact squaringRadius_le_twice
    (taylorTail_nonneg (div_nonneg ((norm_nonneg w).trans hw) (Nat.cast_nonneg _)) M) s hsmall

/-- Even one exact squaring can cost strictly more than twice the seed error. -/
theorem quadratic_radius_control :
    squaringRadius (1 / 10) 1 = 21 / 100 ∧ (2 : ℝ) * (1 / 10) < 21 / 100 := by
  norm_num [squaringRadius]

/-- Dropping the true unit-disk premise invalidates the one-step allowance. -/
theorem outside_unit_disk_control :
    (21 / 10 : ℝ) ^ 2 - 2 ^ 2 > 2 * (1 / 10) + (1 / 10) ^ 2 := by norm_num

/-- An early local rounding error is amplified by later squarings. -/
theorem early_rounding_control :
    roundedRadius 0 (fun j => if j = 0 then 1 / 10 else 0) 2 = 21 / 100 := by
  norm_num [roundedRadius]

/-- An empty Taylor polynomial is not repaired by repeated squaring. -/
theorem empty_seed_control (s : ℕ) :
    scaledTaylor 0 s 0 = 0 ∧ ‖Complex.exp 0 - scaledTaylor 0 s 0‖ = 1 := by
  simp [scaledTaylor, squaredValue, taylorValue]

/-- At zero exponent the one-term seed reconstructs exactly at every scale. -/
theorem zero_exponent_exact (s : ℕ) : scaledTaylor 0 s 1 = 1 ∧ scaledRadius 0 s 1 = 0 := by
  simp [scaledTaylor, squaredValue, taylorValue, scaledRadius, taylorTail, squaringRadius_eq]

end
end GRWTSK.Analysis.ErrorBounds.ComplexExpScaling
