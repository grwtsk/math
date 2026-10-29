/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.ReedSolomonRefinement
import Mathlib

/-!
# Signed quadratic cells with descending whole-cell certificates

Bernstein controls represent an actual scalar quadratic, not a positive form.
Their maximum bounds the whole closed interval. De Casteljau bisection gives
nested upper certificates without discarding a negative control or a mixed term.
Three samples in normalized coordinates have a uniform 5/4 interpolation-error
factor. This does not make an arbitrary analytic function quadratic.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.ErrorBounds.QuadraticCellCertificate

/-- The three real Bernstein controls; all may be signed. -/
structure Controls where
  left : ℝ
  middle : ℝ
  right : ℝ

def curve (p : Controls) (t : ℝ) : ℝ :=
  (1 - t) ^ 2 * p.left + 2 * t * (1 - t) * p.middle + t ^ 2 * p.right

/-- Convert a literal a+b*x+c*x^2 on [lo,hi] to normalized controls. -/
def onInterval (a b c lo hi : ℝ) : Controls where
  left := a + b * lo + c * lo ^ 2
  middle := a + b * lo + c * lo ^ 2 + (hi - lo) * (b + 2 * c * lo) / 2
  right := a + b * hi + c * hi ^ 2

theorem curve_onInterval (a b c lo hi t : ℝ) :
    curve (onInterval a b c lo hi) t =
      a + b * (lo + (hi - lo) * t) + c * (lo + (hi - lo) * t) ^ 2 := by
  simp only [curve, onInterval]
  ring

/-- Both branches keep the same source quadratic, at different parameters. -/
def leftHalf (p : Controls) : Controls :=
  ⟨p.left, (p.left + p.middle) / 2,
    (p.left + 2 * p.middle + p.right) / 4⟩

def rightHalf (p : Controls) : Controls :=
  ⟨(p.left + 2 * p.middle + p.right) / 4,
    (p.middle + p.right) / 2, p.right⟩

theorem curve_leftHalf (p : Controls) (t : ℝ) :
    curve (leftHalf p) t = curve p (t / 2) := by
  simp only [curve, leftHalf]
  ring

theorem curve_rightHalf (p : Controls) (t : ℝ) :
    curve (rightHalf p) t = curve p ((1 + t) / 2) := by
  simp only [curve, rightHalf]
  ring

def upper (p : Controls) : ℝ := max p.left (max p.middle p.right)

private theorem controls_le_upper (p : Controls) :
    p.left ≤ upper p ∧ p.middle ≤ upper p ∧ p.right ≤ upper p :=
  ⟨le_max_left _ _, (le_max_left _ _).trans (le_max_right _ _),
    (le_max_right _ _).trans (le_max_right _ _)⟩

theorem curve_le_upper (p : Controls) {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    curve p t ≤ upper p := by
  obtain ⟨h0, hm, h1⟩ := controls_le_upper p
  have hmid : 0 ≤ 2 * t * (1 - t) :=
    mul_nonneg (mul_nonneg (by norm_num) ht0) (sub_nonneg.mpr ht1)
  calc
    curve p t ≤ (1 - t) ^ 2 * upper p +
        2 * t * (1 - t) * upper p + t ^ 2 * upper p :=
      add_le_add (add_le_add
        (mul_le_mul_of_nonneg_left h0 (sq_nonneg _))
        (mul_le_mul_of_nonneg_left hm hmid))
        (mul_le_mul_of_nonneg_left h1 (sq_nonneg _))
    _ = upper p := by ring

private theorem halves_upper_le (p : Controls) :
    upper (leftHalf p) ≤ upper p ∧ upper (rightHalf p) ≤ upper p := by
  obtain ⟨h0, hm, h1⟩ := controls_le_upper p
  constructor
  · change max p.left (max ((p.left + p.middle) / 2)
        ((p.left + 2 * p.middle + p.right) / 4)) ≤ upper p
    exact max_le h0 (max_le (by linarith) (by linarith))
  · change max ((p.left + 2 * p.middle + p.right) / 4)
        (max ((p.middle + p.right) / 2) p.right) ≤ upper p
    exact max_le (by linarith) (max_le (by linarith) h1)

/-- Depth means additional exact bisections, not a fitted polynomial degree. -/
def refinedUpper : ℕ → Controls → ℝ
  | 0, p => upper p
  | k + 1, p => max (refinedUpper k (leftHalf p)) (refinedUpper k (rightHalf p))

theorem curve_le_refinedUpper (k : ℕ) (p : Controls)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    curve p t ≤ refinedUpper k p := by
  induction k generalizing p t with
  | zero => exact curve_le_upper p ht0 ht1
  | succ k ih =>
    by_cases ht : t ≤ 1 / 2
    · have h := ih (leftHalf p) (t := 2 * t) (by linarith) (by linarith)
      rw [curve_leftHalf] at h
      have he : 2 * t / 2 = t := by ring
      rw [he] at h
      exact h.trans (le_max_left _ _)
    · have h := ih (rightHalf p) (t := 2 * t - 1) (by linarith) (by linarith)
      rw [curve_rightHalf] at h
      have he : (1 + (2 * t - 1)) / 2 = t := by ring
      rw [he] at h
      exact h.trans (le_max_right _ _)

/-- Extra refinement never increases the valid signed upper certificate. -/
theorem refinedUpper_succ_le (k : ℕ) (p : Controls) :
    refinedUpper (k + 1) p ≤ refinedUpper k p := by
  induction k generalizing p with
  | zero => exact max_le (halves_upper_le p).1 (halves_upper_le p).2
  | succ k ih => exact max_le_max (ih (leftHalf p)) (ih (rightHalf p))

theorem refinedUpper_antitone (p : Controls) : Antitone (fun k => refinedUpper k p) := by
  intro a b hab
  induction b generalizing a with
  | zero =>
    have ha : a = 0 := Nat.eq_zero_of_le_zero hab
    subst a
    exact le_rfl
  | succ b ih =>
    rcases Nat.eq_or_lt_of_le hab with he | hlt
    · subst a
      exact le_rfl
    · exact (refinedUpper_succ_le b p).trans (ih (Nat.le_of_lt_succ hlt))


/-- A second certificate, with no assumption that the source is nonnegative. -/
def negate (p : Controls) : Controls := ⟨-p.left, -p.middle, -p.right⟩

theorem curve_negate (p : Controls) (t : ℝ) : curve (negate p) t = -curve p t := by
  simp only [curve, negate]
  ring

def refinedLower (k : ℕ) (p : Controls) : ℝ := -refinedUpper k (negate p)

theorem refinedLower_le_curve (k : ℕ) (p : Controls)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) : refinedLower k p ≤ curve p t := by
  have h := curve_le_refinedUpper k (negate p) ht0 ht1
  rw [curve_negate] at h
  unfold refinedLower
  linarith

theorem refinedLower_monotone (p : Controls) : Monotone (fun k => refinedLower k p) := by
  intro a b hab
  exact neg_le_neg (refinedUpper_antitone (negate p) hab)

/-- The actual curve stays in the two-sided returned interval. -/
theorem refinedLower_le_refinedUpper (k : ℕ) (p : Controls) :
    refinedLower k p ≤ refinedUpper k p :=
  (refinedLower_le_curve k p (t := 0) le_rfl (by norm_num)).trans
    (curve_le_refinedUpper k p (t := 0) le_rfl (by norm_num))

/-- The entire physical interval is covered, including coincident endpoints. -/
theorem quadratic_le_refinedUpper (a b c lo hi x : ℝ) (k : ℕ)
    (hlo : lo ≤ x) (hhi : x ≤ hi) :
    a + b * x + c * x ^ 2 ≤ refinedUpper k (onInterval a b c lo hi) := by
  by_cases he : hi = lo
  · have hx : x = lo := by linarith
    subst x
    simpa only [curve_onInterval, mul_zero, add_zero] using
      (curve_le_refinedUpper k (onInterval a b c lo hi)
        (t := 0) le_rfl (by norm_num))
  · have hd : 0 < hi - lo := by linarith
    have ht0 : 0 ≤ (x - lo) / (hi - lo) := div_nonneg (by linarith) hd.le
    have ht1 : (x - lo) / (hi - lo) ≤ 1 := (div_le_one hd).mpr (by linarith)
    have h := curve_le_refinedUpper k (onInterval a b c lo hi) ht0 ht1
    rw [curve_onInterval] at h
    have hx : lo + (hi - lo) * ((x - lo) / (hi - lo)) = x := by
      field_simp [ne_of_gt hd]
      <;> ring
    simpa only [hx] using h


theorem negate_onInterval (a b c lo hi : ℝ) :
    onInterval (-a) (-b) (-c) lo hi = negate (onInterval a b c lo hi) := by
  simp only [onInterval, negate]
  congr 1 <;> ring

theorem refinedLower_le_quadratic (a b c lo hi x : ℝ) (k : ℕ)
    (hlo : lo ≤ x) (hhi : x ≤ hi) :
    refinedLower k (onInterval a b c lo hi) ≤ a + b * x + c * x ^ 2 := by
  have h := quadratic_le_refinedUpper (-a) (-b) (-c) lo hi x k hlo hhi
  rw [negate_onInterval] at h
  unfold refinedLower
  linarith

/-- A quadratic reconstructed from its actual three normalized observations. -/
def fromSamples (y0 ym y1 : ℝ) : Controls :=
  ⟨y0, 2 * ym - (y0 + y1) / 2, y1⟩

theorem three_sample_reconstruction (p : Controls) :
    fromSamples (curve p 0) (curve p (1 / 2)) (curve p 1) = p := by
  cases p
  simp only [fromSamples, curve]
  congr 1 <;> ring

/-- These are polynomial evaluation symbols for the existing bounded RS code. -/
theorem rs_encode_curve
    (code : GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement.QuadraticEvaluationCode ℝ)
    (p : Controls) (i : Fin 4) :
    code.encode ![p.left, 2 * (p.middle - p.left), p.left - 2 * p.middle + p.right] i =
      curve p (code.nodes i) := by
  rw [code.encode_apply]
  change p.left + code.nodes i * (2 * (p.middle - p.left)) +
    code.nodes i ^ 2 * (p.left - 2 * p.middle + p.right) = _
  unfold curve
  ring

private theorem lagrange_abs_sum_le {t : ℝ} (h0 : 0 ≤ t) (h1 : t ≤ 1) :
    |(1 - t) * (1 - 2 * t)| + |4 * t * (1 - t)| + |t * (2 * t - 1)| ≤ 5 / 4 := by
  have hm : 0 ≤ 4 * t * (1 - t) :=
    mul_nonneg (mul_nonneg (by norm_num) h0) (sub_nonneg.mpr h1)
  by_cases hh : t ≤ 1 / 2
  · have hl : 0 ≤ (1 - t) * (1 - 2 * t) := mul_nonneg (by linarith) (by linarith)
    have hr : t * (2 * t - 1) ≤ 0 := mul_nonpos_of_nonneg_of_nonpos h0 (by linarith)
    rw [abs_of_nonneg hl, abs_of_nonneg hm, abs_of_nonpos hr]
    nlinarith [sq_nonneg (2 * t - 1 / 2)]
  · have hl : (1 - t) * (1 - 2 * t) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
    have hr : 0 ≤ t * (2 * t - 1) := mul_nonneg h0 (by linarith)
    rw [abs_of_nonpos hl, abs_of_nonneg hm, abs_of_nonneg hr]
    nlinarith [sq_nonneg (2 * t - 3 / 2)]

/-- Uniform error on the whole interval, not just agreement at the three samples. -/
theorem three_sample_error (p : Controls) (y0 ym y1 ε : ℝ)
    (hε : 0 ≤ ε)
    (h0 : |y0 - curve p 0| ≤ ε)
    (hm : |ym - curve p (1 / 2)| ≤ ε)
    (h1 : |y1 - curve p 1| ≤ ε)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    |curve (fromSamples y0 ym y1) t - curve p t| ≤ (5 / 4) * ε := by
  have hid : curve (fromSamples y0 ym y1) t - curve p t =
      ((1 - t) * (1 - 2 * t)) * (y0 - curve p 0) +
      (4 * t * (1 - t)) * (ym - curve p (1 / 2)) +
      (t * (2 * t - 1)) * (y1 - curve p 1) := by
    simp only [curve, fromSamples]
    ring
  rw [hid]
  calc
    _ ≤ |((1 - t) * (1 - 2 * t)) * (y0 - curve p 0)| +
        |(4 * t * (1 - t)) * (ym - curve p (1 / 2))| +
        |(t * (2 * t - 1)) * (y1 - curve p 1)| :=
      (abs_add _ _).trans (add_le_add_right (abs_add _ _) _)
    _ ≤ |(1 - t) * (1 - 2 * t)| * ε + |4 * t * (1 - t)| * ε +
        |t * (2 * t - 1)| * ε := by
      simp only [abs_mul]
      exact add_le_add (add_le_add
        (mul_le_mul_of_nonneg_left h0 (abs_nonneg _))
        (mul_le_mul_of_nonneg_left hm (abs_nonneg _)))
        (mul_le_mul_of_nonneg_left h1 (abs_nonneg _))
    _ = (|(1 - t) * (1 - 2 * t)| + |4 * t * (1 - t)| + |t * (2 * t - 1)|) * ε := by ring
    _ ≤ (5 / 4) * ε := mul_le_mul_of_nonneg_right (lagrange_abs_sum_le ht0 ht1) hε

theorem curve_le_observed_certificate (p : Controls) (y0 ym y1 ε : ℝ)
    (k : ℕ) (hε : 0 ≤ ε)
    (h0 : |y0 - curve p 0| ≤ ε) (hm : |ym - curve p (1 / 2)| ≤ ε)
    (h1 : |y1 - curve p 1| ≤ ε) {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    curve p t ≤ refinedUpper k (fromSamples y0 ym y1) + (5 / 4) * ε := by
  have he := (abs_le.mp (three_sample_error p y0 ym y1 ε hε h0 hm h1 ht0 ht1)).1
  have hu := curve_le_refinedUpper k (fromSamples y0 ym y1) ht0 ht1
  linarith

/-- A concrete strict reduction; endpoint-only sampling would incorrectly return zero. -/
theorem concave_control :
    refinedUpper 0 ⟨0, 2, 0⟩ = 2 ∧ refinedUpper 1 ⟨0, 2, 0⟩ = 1 ∧
      curve ⟨0, 2, 0⟩ (1 / 2) = 1 := by
  norm_num [refinedUpper, upper, leftHalf, rightHalf, curve]

end GRWTSK.Analysis.ErrorBounds.QuadraticCellCertificate
