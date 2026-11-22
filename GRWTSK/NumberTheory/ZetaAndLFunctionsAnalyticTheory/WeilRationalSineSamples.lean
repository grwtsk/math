/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaOutput
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Tactic

/-!
# Rational sine traces returned to the original supported source modes

A small-argument cubic remainder and exact triple-angle steps certify the
actual Real.sin at a rational phase. Every rounding step has an explicit
rational allowance. Bounds on pi, normalization and position are separate.
The source is the existing zeroExtendedSine, including its support boundary.
Finite signed combinations and both translation orientations are retained.

SOURCE_PROOF_CANDIDATE. Lean elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. The adjacent record
contains the complete argument, exact upstream locators, and consumers.
-/
set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RationalSineSamples

open OddRootProjection OddSineForm OddGammaOutput

/-- Exact triple-angle polynomial, used only with explicit error propagation. -/
def triple (s : ℚ) : ℚ := 3 * s - 4 * s ^ 3

/-- Rational conditions only; the target sine inequality is NOT a field. -/
def TraceValid (q : ℚ) (k : ℕ) (v e : Fin (k + 1) → ℚ) : Prop :=
  |q / 3 ^ k| ≤ 1 ∧
  |(q / 3 ^ k - (q / 3 ^ k) ^ 3 / 6) - v 0| + |q / 3 ^ k| ^ 5 / 100 ≤ e 0 ∧
  (∀ i, |v i| ≤ 1) ∧
  (∀ i : Fin k, 9 * e i.castSucc + |triple (v i.castSucc) - v i.succ| ≤ e i.succ)

instance (q : ℚ) (k : ℕ) (v e : Fin (k + 1) → ℚ) :
    Decidable (TraceValid q k v e) := by
  unfold TraceValid
  infer_instance

/-- On [-1,1], the exact cubic has Lipschitz constant 9. -/
theorem triple_lipschitz {a b : ℝ} (ha : |a| ≤ 1) (hb : |b| ≤ 1) :
    |(3 * a - 4 * a ^ 3) - (3 * b - 4 * b ^ 3)| ≤ 9 * |a - b| := by
  have ha2 : a ^ 2 ≤ 1 := (sq_le_one_iff_abs_le_one a).mpr ha
  have hb2 : b ^ 2 ≤ 1 := (sq_le_one_iff_abs_le_one b).mpr hb
  have hs0 : 0 ≤ a ^ 2 + a * b + b ^ 2 := by
    nlinarith [sq_nonneg (a + b), sq_nonneg a, sq_nonneg b]
  have hs3 : a ^ 2 + a * b + b ^ 2 ≤ 3 := by
    nlinarith [sq_nonneg (a - b)]
  have hf : |3 - 4 * (a ^ 2 + a * b + b ^ 2)| ≤ 9 :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  rw [show (3 * a - 4 * a ^ 3) - (3 * b - 4 * b ^ 3) =
    (a - b) * (3 - 4 * (a ^ 2 + a * b + b ^ 2)) by ring, abs_mul]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left hf (abs_nonneg (a - b))

/-- A finite rational trace certifies the actual sine, including every rounding step. -/
theorem trace_sound (q : ℚ) (k : ℕ) (v e : Fin (k + 1) → ℚ)
    (h : TraceValid q k v e) :
    |Real.sin (q : ℝ) - (v (Fin.last k) : ℝ)| ≤ (e (Fin.last k) : ℝ) := by
  obtain ⟨hq, hseed, hv, hstep⟩ := h
  let z : ℝ := (q : ℝ) / 3 ^ k
  have hz : |z| ≤ 1 := by exact_mod_cast hq
  have hs : |(z - z ^ 3 / 6) - (v 0 : ℝ)| + |z| ^ 5 / 100 ≤ (e 0 : ℝ) := by
    exact_mod_cast hseed
  have hi : ∀ i : Fin (k + 1),
      |Real.sin (3 ^ i.val * z) - (v i : ℝ)| ≤ (e i : ℝ) := by
    refine Fin.induction ?_ ?_
    · simpa only [Fin.val_zero, pow_zero, one_mul] using
        ((abs_sub_le (Real.sin z) (z - z ^ 3 / 6) (v 0)).trans
          (by linarith [Real.sin_bound hz]))
    · intro i ih
      have hb : |(v i.castSucc : ℝ)| ≤ 1 := by exact_mod_cast hv i.castSucc
      have hc := triple_lipschitz (Real.abs_sin_le_one (3 ^ i.val * z)) hb
      have hp : 9 * (e i.castSucc : ℝ) +
          |(3 * (v i.castSucc : ℝ) - 4 * (v i.castSucc : ℝ) ^ 3) - (v i.succ : ℝ)| ≤
            (e i.succ : ℝ) := by
        have hpq := hstep i
        simp only [triple] at hpq
        exact_mod_cast hpq
      have hid : 3 ^ i.succ.val * z = 3 * (3 ^ i.val * z) := by
        simp only [Fin.val_succ, pow_succ]
        ring
      rw [hid, Real.sin_three_mul]
      apply (abs_sub_le _ (3 * (v i.castSucc : ℝ) - 4 * (v i.castSucc : ℝ) ^ 3) _).trans
      nlinarith
  have hend := hi (Fin.last k)
  have hzq : 3 ^ k * z = (q : ℝ) := by
    dsimp [z]
    field_simp
  simpa only [Fin.val_last, hzq] using hend

/-- Phase uncertainty is paid after the rational sine trace. -/
theorem trace_with_phase (q : ℚ) (k : ℕ) (v e : Fin (k + 1) → ℚ)
    (h : TraceValid q k v e) {x d : ℝ} (hx : |x - (q : ℝ)| ≤ d) :
    |Real.sin x - (v (Fin.last k) : ℝ)| ≤ d + (e (Fin.last k) : ℝ) :=
  (abs_sub_le _ (Real.sin (q : ℝ)) _).trans
    (add_le_add ((Real.abs_sin_sub_sin_le x q).trans hx) (trace_sound q k v e h))

/-- Square comparisons certify the original inverse-square-root normalization. -/
theorem inv_sqrt_bounds {T l u : ℝ} (hT : 0 < T) (hl : 0 ≤ l) (hu : 0 ≤ u)
    (hl2 : T * l ^ 2 ≤ 1) (hu2 : 1 ≤ T * u ^ 2) :
    l ≤ 1 / Real.sqrt T ∧ 1 / Real.sqrt T ≤ u := by
  have hs : 0 < Real.sqrt T := Real.sqrt_pos.mpr hT
  have hsl : (l * Real.sqrt T) ^ 2 = T * l ^ 2 := by
    rw [mul_pow, Real.sq_sqrt hT.le]
    ring
  have hsu : (u * Real.sqrt T) ^ 2 = T * u ^ 2 := by
    rw [mul_pow, Real.sq_sqrt hT.le]
    ring
  constructor
  · apply (le_div_iff₀ hs).mpr
    nlinarith [mul_nonneg hl hs.le]
  · apply (div_le_iff₀ hs).mpr
    nlinarith [mul_nonneg hu hs.le]

theorem inv_sqrt_midpoint {T l u : ℝ} (hT : 0 < T) (hl : 0 ≤ l) (hu : 0 ≤ u)
    (hl2 : T * l ^ 2 ≤ 1) (hu2 : 1 ≤ T * u ^ 2) :
    |1 / Real.sqrt T - (l + u) / 2| ≤ (u - l) / 2 := by
  obtain ⟨hlo, hup⟩ := inv_sqrt_bounds hT hl hu hl2 hu2
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- All scalar output arithmetic is rational; the phase center may be rounded separately. -/
def phaseCenter (T p t : ℚ) (n : ℕ) : ℚ := p * (n : ℚ) * t / T

def phaseRadius (T ep t : ℚ) (n : ℕ) : ℚ := |(n : ℚ) * t / T| * ep

theorem phase_error (T p t ep : ℚ) (n : ℕ) (hp : |Real.pi - (p : ℝ)| ≤ (ep : ℝ)) :
    |Real.pi * (n : ℝ) * (t : ℝ) / (T : ℝ) - (phaseCenter T p t n : ℝ)| ≤
      (phaseRadius T ep t n : ℝ) := by
  simp only [phaseCenter, phaseRadius, Rat.cast_mul, Rat.cast_div, Rat.cast_natCast, Rat.cast_abs]
  rw [show Real.pi * (n : ℝ) * (t : ℝ) / (T : ℝ) -
      (p : ℝ) * (n : ℝ) * (t : ℝ) / (T : ℝ) =
      (Real.pi - (p : ℝ)) * ((n : ℝ) * (t : ℝ) / (T : ℝ)) by ring, abs_mul]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_right hp
    (abs_nonneg ((n : ℝ) * (t : ℝ) / (T : ℝ)))

/-- Exact source normalization, not a replacement sine model. -/
theorem normalized_error (T : ℝ) (n : ℕ) {t q a s ep ea es : ℝ}
    (ht : t ∈ Set.Icc (-T) T)
    (hp : |Real.pi * (n : ℝ) * t / T - q| ≤ ep)
    (ha : |1 / Real.sqrt T - a| ≤ ea)
    (hs : |Real.sin q - s| ≤ es) :
    |zeroExtendedSine T n t - a * s| ≤ ea + |a| * (ep + es) := by
  let x := Real.pi * (n : ℝ) * t / T
  have hsin : |Real.sin x - s| ≤ ep + es :=
    (abs_sub_le _ (Real.sin q) _).trans
      (add_le_add ((Real.abs_sin_sub_sin_le x q).trans hp) hs)
  have hnorm : |(1 / Real.sqrt T - a) * Real.sin x| ≤ ea := by
    rw [abs_mul]
    exact ((mul_le_mul_of_nonneg_left (Real.abs_sin_le_one x)
      (abs_nonneg (1 / Real.sqrt T - a))).trans (by simpa using ha))
  rw [zeroExtendedSine, if_pos ht]
  have hid : Real.sin x / Real.sqrt T - a * s =
      (1 / Real.sqrt T - a) * Real.sin x + a * (Real.sin x - s) := by ring
  change |Real.sin x / Real.sqrt T - a * s| ≤ _
  rw [hid]
  exact (abs_add _ _).trans
    (add_le_add hnorm (by simpa only [abs_mul] using
      mul_le_mul_of_nonneg_left hsin (abs_nonneg a)))

/-- A sample at a center transports across the support boundary using the
PROVED global source Lipschitz estimate, not an unverified branch decision. -/
theorem source_position_error (T : ℝ) (hT : 0 < T) (n : ℕ)
    {x t value e d K : ℝ}
    (hK : |Real.pi * (n : ℝ) / T| / Real.sqrt T ≤ K)
    (hx : |x - t| ≤ d) (ht : |zeroExtendedSine T n t - value| ≤ e) :
    |zeroExtendedSine T n x - value| ≤ K * d + e := by
  have hK0 : 0 ≤ K := (by positivity : 0 ≤ |Real.pi * (n : ℝ) / T| / Real.sqrt T).trans hK
  have hdiff := (lipschitzWith_zeroExtendedSine T hT n).dist_le_mul x t
  rw [Real.dist_eq, Real.dist_eq, Real.toNNReal_of_nonneg (by positivity)] at hdiff
  have hbound : |zeroExtendedSine T n x - zeroExtendedSine T n t| ≤ K * d :=
    hdiff.trans ((mul_le_mul_of_nonneg_right hK (abs_nonneg _)).trans
      (mul_le_mul_of_nonneg_left hx hK0))
  exact (abs_sub_le _ (zeroExtendedSine T n t) _).trans (add_le_add hbound ht)

/-- Signed finite synthesis is retained; absolute values are used only in its error. -/
theorem finiteSine_sample_error {M : ℕ} (T t : ℝ) (c p e : Fin M → ℝ)
    (h : ∀ i, |zeroExtendedSine T (i.val + 1) t - p i| ≤ e i) :
    |finiteSine T c t - ∑ i, c i * p i| ≤ ∑ i, |c i| * e i := by
  unfold finiteSine
  rw [← Finset.sum_sub_distrib]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro i _
  rw [← mul_sub, abs_mul]
  exact mul_le_mul_of_nonneg_left (h i) (abs_nonneg _)

/-- Both original prime orientations are sampled, with separate errors. -/
theorem paired_shift_sample {f : ℝ → ℝ} {t r p m ep em : ℝ}
    (hp : |f (t + r) - p| ≤ ep) (hm : |f (t - r) - m| ≤ em) :
    |f (t + r) + f (t - r) - (p + m)| ≤ ep + em := by
  rw [show f (t + r) + f (t - r) - (p + m) =
    (f (t + r) - p) + (f (t - r) - m) by ring]
  exact (abs_add _ _).trans (add_le_add hp hm)

/-- The complete symmetric gamma difference retains its center and both shifts. -/
theorem symmetric_difference_sample {f : ℝ → ℝ} {t r z p m ez ep em : ℝ}
    (hz : |f t - z| ≤ ez) (hp : |f (t + r) - p| ≤ ep) (hm : |f (t - r) - m| ≤ em) :
    |symmetricDifference r f t - (2 * z - p - m)| ≤ 2 * ez + ep + em := by
  have hid : symmetricDifference r f t - (2 * z - p - m) =
      2 * (f t - z) - (f (t + r) - p) - (f (t - r) - m) := by
    unfold symmetricDifference
    ring
  rw [hid]
  have h2 : |2 * (f t - z)| ≤ 2 * ez := by
    simpa only [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      mul_le_mul_of_nonneg_left hz (by norm_num : (0 : ℝ) ≤ 2)
  exact (abs_sub _ _).trans
    (add_le_add ((abs_sub _ _).trans (add_le_add h2 hp)) hm)

end GRWTSK.NumberTheory.WeilQuadraticForm.RationalSineSamples
