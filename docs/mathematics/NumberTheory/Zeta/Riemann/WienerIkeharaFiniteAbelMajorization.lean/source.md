# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaFiniteAbelMajorization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `976f8e599a1c4cb673ec3d78d36f07ead8244352` · SHA-256 `a34200acdaa894f0d273e95e1ae6e2f4c44d09a8c45067fa736a29e5483b2b1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original mathematical work under MIT (repository LICENSE).
Formalization assistance: OpenAI ChatGPT.
Classical Abel summation is credited to Niels Henrik Abel; the
specific Fourier-logarithmic application follows the maintained
PrimeNumberTheoremAnd/Wiener.lean of Alex Kontorovich, Terry Tao
and collaborators, with upstream Apache-2.0 attribution retained.
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Genuine discrete Abel majorization for Chebyshev-weighted sums

The missing Wiener--Ikehara uniform logarithmic estimate is a
weighted-majorization consequence of the Chebyshev prefix envelope.
It is NOT enough to know only that the Schwartz Fourier transform
decays pointwise; the arithmetic weights must be summed uniformly
in the large scale T.

This module supplies an independent exact FINITE Abel identity and
one quantitatively useful majorization theorem:

  If A(n)=sum_{k<n} a(k) <= C*n, and w(n)>=0 and is antitone,
  then sum_{k<n} a(k)*w(k) <= C * sum_{k<n} w(k).

The identity holds for arbitrary signed real coefficients a(k), and
the inequality needs only the prefix upper bound, not an extra
hypothesis that each coefficient a(k)<=C.

This is a genuine finite combinatorial-analytic theorem. It does not
claim the remaining infinite weighted von Mangoldt estimate. That
requires an exact monotonicity proof for
  W_T(x) = 1/[x*(1+(log(x/T)/(2*pi))^2)]
and the infinite one-dimensional integral comparison.

No extra axiom or structure field asserts bound_sum_log',
limiting_cor_schwartz, weak PNT or RH.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis

open Finset

/-- Actual prefix cumulative arithmetic sum; no abstract free
envelope with a target-fitted value. -/
def wienerAbelPrefix (a : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n, a k

theorem wienerAbelPrefix_succ
    (a : ℕ → ℝ) (n : ℕ) :
    wienerAbelPrefix a (n + 1) =
      wienerAbelPrefix a n + a n := by
  simp [wienerAbelPrefix, Finset.sum_range_succ]

/-- Exact finite summation by parts with right-endpoint weight w(n).
The right hand side retains n+1 prefix sums; these are precisely
the ones controlled by the Chebyshev linear envelope. -/
theorem wienerAbel_finite_identity
    (a w : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.range n, a k * w k) =
      wienerAbelPrefix a n * w n +
        ∑ k ∈ Finset.range n,
          wienerAbelPrefix a (k + 1) *
            (w k - w (k + 1)) := by
  induction n with
  | zero =>
      simp [wienerAbelPrefix]
  | succ n ih =>
      rw [Finset.sum_range_succ]
      rw [Finset.sum_range_succ]
      rw [wienerAbelPrefix_succ]
      rw [ih]
      ring

/-- A numerical identity: the differences telescope exactly when
the prefix envelope is A(n)=n. No limiting argument is used. -/
theorem wienerAbel_linear_telescoping
    (w : ℕ → ℝ) (n : ℕ) :
    (n : ℝ) * w n +
      (∑ k ∈ Finset.range n,
        ((k + 1 : ℕ) : ℝ) * (w k - w (k + 1))) =
      ∑ k ∈ Finset.range n, w k := by
  induction n with
  | zero =>
      simp
  | succ n ih =>
      rw [Finset.sum_range_succ]
      rw [Finset.sum_range_succ]
      simp only [Nat.cast_add, Nat.cast_one]
      nlinarith [ih]

/-- Genuine uniform FINITE Abel majorization.

One prefix bound with the same C for EVERY n controls EVERY finite
weighted sum for any nonnegative nonincreasing sequence of weights.
No pointwise bound on a(k) and no convergence of an infinite sum
is silently assumed.
-/
theorem wienerAbel_weighted_le_linear_envelope
    (a w : ℕ → ℝ) (C : ℝ)
    (hC : 0 ≤ C)
    (hprefix : ∀ n : ℕ,
      wienerAbelPrefix a n ≤ C * (n : ℝ))
    (hwpos : ∀ n : ℕ, 0 ≤ w n)
    (hwanti : ∀ n : ℕ, w (n + 1) ≤ w n)
    (n : ℕ) :
    (∑ k ∈ Finset.range n, a k * w k) ≤
      C * (∑ k ∈ Finset.range n, w k) := by
  have hdiff (k : ℕ) : 0 ≤ w k - w (k + 1) :=
    sub_nonneg.mpr (hwanti k)
  have hhead :
      wienerAbelPrefix a n * w n ≤
        (C * (n : ℝ)) * w n :=
    mul_le_mul_of_nonneg_right (hprefix n) (hwpos n)
  have hparts :
      (∑ k ∈ Finset.range n,
        wienerAbelPrefix a (k + 1) *
          (w k - w (k + 1))) ≤
        (∑ k ∈ Finset.range n,
          (C * ((k + 1 : ℕ) : ℝ)) *
            (w k - w (k + 1))) := by
    apply Finset.sum_le_sum
    intro k _hk
    exact mul_le_mul_of_nonneg_right
      (hprefix (k + 1)) (hdiff k)
  calc
    (∑ k ∈ Finset.range n, a k * w k) =
        wienerAbelPrefix a n * w n +
          (∑ k ∈ Finset.range n,
            wienerAbelPrefix a (k + 1) *
              (w k - w (k + 1))) :=
      wienerAbel_finite_identity a w n
    _ ≤ (C * (n : ℝ)) * w n +
          ∑ k ∈ Finset.range n,
            (C * ((k + 1 : ℕ) : ℝ)) *
              (w k - w (k + 1)) :=
      add_le_add hhead hparts
    _ = C * ((n : ℝ) * w n +
          ∑ k ∈ Finset.range n,
            ((k + 1 : ℕ) : ℝ) * (w k - w (k + 1))) := by
      simp only [mul_add, Finset.mul_sum]
      ring
    _ = C * (∑ k ∈ Finset.range n, w k) := by
      rw [wienerAbel_linear_telescoping]

end GRWTSK.RiemannHypothesis
```
