/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.NewtonDisk
import GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Rational Newton-disk margins from certified center jets

The Boolean calculation does not verify values of f, derivatives, or a uniform
second-derivative bound. Those independent analytic estimates are explicit in
`Estimates`. Once supplied, the algebraic criterion constructs a unique simple
zero, not only a small residual or a hypothetical fixed point.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk

open Metric Set
open RationalComplexEnclosure
open GRWTSK.Analysis.ComplexAnalysis.NewtonDisk

structure Data where
  inverse : Coordinates
  value : Coordinates
  derivative : Coordinates
  valueError : ℚ
  derivativeError : ℚ
  secondBound : ℚ
  deriving DecidableEq

/-- A conservative rational norm bound; not the Euclidean squared-ball predicate. -/
def magnitude (u : Coordinates) : ℚ := |u.1| + |u.2|

def residual (p : Data) : ℚ :=
  magnitude (mul p.inverse p.value) + magnitude p.inverse * p.valueError

def contraction (R : ℚ) (p : Data) : ℚ :=
  magnitude (sub one (mul p.inverse p.derivative)) +
    magnitude p.inverse * (p.derivativeError + p.secondBound * R)

/-- Nonzero radius, strict contraction, and closed-disk self-map margin. -/
def Valid (R : ℚ) (p : Data) : Prop :=
  0 < R ∧ 0 ≤ p.valueError ∧ 0 ≤ p.derivativeError ∧ 0 ≤ p.secondBound ∧
    contraction R p < 1 ∧ residual p + contraction R p * R ≤ R

instance instDecidableValid (R : ℚ) (p : Data) : Decidable (Valid R p) := by
  unfold Valid
  infer_instance

def check (R : ℚ) (p : Data) : Bool := decide (Valid R p)

/-- Actual analytic information, never asserted by a successful rational check. -/
def Estimates (f : ℂ → ℂ) (c : Coordinates) (R : ℚ) (p : Data) : Prop :=
  ‖f (toComplex c) - toComplex p.value‖ ≤ (p.valueError : ℝ) ∧
  ‖deriv f (toComplex c) - toComplex p.derivative‖ ≤ (p.derivativeError : ℝ) ∧
  ∀ z ∈ closedBall (toComplex c) (R : ℝ), ‖deriv (deriv f) z‖ ≤ (p.secondBound : ℝ)

theorem check_iff_valid (R : ℚ) (p : Data) : check R p = true ↔ Valid R p := by
  simp only [check, decide_eq_true_eq]

theorem magnitude_nonneg (u : Coordinates) : 0 ≤ magnitude u :=
  add_nonneg (abs_nonneg _) (abs_nonneg _)

theorem norm_le_magnitude (u : Coordinates) : ‖toComplex u‖ ≤ (magnitude u : ℝ) := by
  simpa [toComplex, magnitude] using Complex.norm_le_abs_re_add_abs_im (toComplex u)

theorem checked_contraction_nonneg {R : ℚ} {p : Data} (hc : check R p = true) :
    0 ≤ contraction R p := by
  obtain ⟨hR, _, hD, hL, _, _⟩ := (check_iff_valid R p).mp hc
  exact add_nonneg (magnitude_nonneg _) (mul_nonneg (magnitude_nonneg _)
    (add_nonneg hD (mul_nonneg hL hR.le)))

/-- The center residual includes uncertainty in the actual function value. -/
theorem residual_bound {f : ℂ → ℂ} {c : Coordinates} {R : ℚ} {p : Data}
    (he : Estimates f c R p) :
    ‖toComplex p.inverse * f (toComplex c)‖ ≤ (residual p : ℝ) := by
  let A := toComplex p.inverse
  have hE : (0 : ℝ) ≤ p.valueError := (norm_nonneg _).trans he.1
  calc
    _ = ‖A * toComplex p.value + A * (f (toComplex c) - toComplex p.value)‖ := by
      congr 1; dsimp [A]; ring
    _ ≤ ‖A * toComplex p.value‖ + ‖A * (f (toComplex c) - toComplex p.value)‖ := norm_add_le _ _
    _ ≤ (magnitude (mul p.inverse p.value) : ℝ) +
        (magnitude p.inverse : ℝ) * (p.valueError : ℝ) := by
      apply add_le_add
      · simpa only [A, toComplex_mul] using norm_le_magnitude (mul p.inverse p.value)
      · rw [norm_mul]
        exact mul_le_mul (norm_le_magnitude _) he.1 (norm_nonneg _) (by exact_mod_cast magnitude_nonneg p.inverse)
    _ = _ := by simp only [residual, Rat.cast_add, Rat.cast_mul]

/-- Center derivative uncertainty and disk-wide derivative variation are both paid. -/
theorem contraction_bound {f : ℂ → ℂ} {c : Coordinates} {R : ℚ} {p : Data}
    (hc : check R p = true) (he : Estimates f c R p)
    (ha : ∀ z ∈ closedBall (toComplex c) (R : ℝ), AnalyticAt ℂ f z)
    {z : ℂ} (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖1 - toComplex p.inverse * deriv f z‖ ≤ (contraction R p : ℝ) := by
  obtain ⟨hR, _, hD, hL, _, _⟩ := (check_iff_valid R p).mp hc
  have hR' : (0 : ℝ) ≤ R := by exact_mod_cast hR.le
  have hv := derivative_variation hR'
    (fun u hu => (ha u hu).deriv.differentiableAt.hasDerivAt) he.2.2 hz
  have hd : ‖deriv f z - toComplex p.derivative‖ ≤
      (p.derivativeError : ℝ) + (p.secondBound : ℝ) * (R : ℝ) := by
    have ht : ‖deriv f z - toComplex p.derivative‖ ≤
        ‖deriv f z - deriv f (toComplex c)‖ +
          ‖deriv f (toComplex c) - toComplex p.derivative‖ := by
      simpa only [dist_eq_norm] using dist_triangle (deriv f z) (deriv f (toComplex c)) (toComplex p.derivative)
    exact ht.trans (by linarith [he.2.1])
  have hd0 : (0 : ℝ) ≤ (p.derivativeError : ℝ) + (p.secondBound : ℝ) * (R : ℝ) :=
    (norm_nonneg _).trans hd
  calc
    _ = ‖(1 - toComplex p.inverse * toComplex p.derivative) +
        toComplex p.inverse * (toComplex p.derivative - deriv f z)‖ := by congr 1; ring
    _ ≤ ‖1 - toComplex p.inverse * toComplex p.derivative‖ +
        ‖toComplex p.inverse * (toComplex p.derivative - deriv f z)‖ := norm_add_le _ _
    _ ≤ (magnitude (sub one (mul p.inverse p.derivative)) : ℝ) +
        (magnitude p.inverse : ℝ) * ((p.derivativeError : ℝ) + (p.secondBound : ℝ) * (R : ℝ)) := by
      apply add_le_add
      · simpa only [toComplex_sub, toComplex_one, toComplex_mul] using
          norm_le_magnitude (sub one (mul p.inverse p.derivative))
      · rw [norm_mul, norm_sub_rev]
        exact mul_le_mul (norm_le_magnitude _) hd (norm_nonneg _) (by exact_mod_cast magnitude_nonneg p.inverse)
    _ = _ := by simp only [contraction, Rat.cast_add, Rat.cast_mul]

/-- The actual estimates and rational guards yield a unique zero with analytic order one. -/
theorem check_sound {f : ℂ → ℂ} {c : Coordinates} {R : ℚ} {p : Data}
    (hc : check R p = true) (he : Estimates f c R p)
    (ha : ∀ z ∈ closedBall (toComplex c) (R : ℝ), AnalyticAt ℂ f z) :
    ∃ z ∈ closedBall (toComplex c) (R : ℝ), f z = 0 ∧ analyticOrderAt f z = 1 ∧
      ∀ v ∈ closedBall (toComplex c) (R : ℝ), f v = 0 → v = z := by
  obtain ⟨hR, _, _, _, hk, hm⟩ := (check_iff_valid R p).mp hc
  obtain ⟨z, hz, hfz, hdfz, hu⟩ := exists_unique_zero
    (by exact_mod_cast hR.le) (by exact_mod_cast checked_contraction_nonneg hc)
    (by exact_mod_cast hk)
    (fun u hu => (ha u hu).differentiableAt.hasDerivAt)
    (fun u hu => contraction_bound hc he ha hu) (residual_bound he)
    (by exact_mod_cast hm)
  exact ⟨z, hz, hfz, (ha z hz).analyticOrderAt_eq_one_of_zero_deriv_ne_zero hfz hdfz, hu⟩

/-- The interval is closed: the criterion permits a simple root on its boundary. -/
theorem closed_margin_control :
    check 1 ⟨one, (-1, 0), one, 0, 0, 0⟩ = true := by decide

/-- Strict contractivity cannot be replaced by a non-strict bound. -/
theorem unit_defect_rejected :
    check 1 ⟨one, zero, zero, 0, 0, 0⟩ = false := by decide

end GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk
