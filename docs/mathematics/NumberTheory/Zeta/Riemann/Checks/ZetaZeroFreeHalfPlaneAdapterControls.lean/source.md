# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ZetaZeroFreeHalfPlaneAdapterControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `982209b367d2abc5b2555e7659e8eb5ee3139686` · SHA-256 `bbe8e15f24c9f6546187e60daef6b9e93a753d81e5a398e71584fb3f2dae4a65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for the raw-zeta half-plane adapter

These finite controls distinguish a comparison theorem from a zero-free
supplier and retain the trivial-zero and threshold-order boundaries.
-/

namespace GRWTSK.RiemannHypothesis.Checks.ZetaZeroFreeHalfPlaneAdapterControls

open GRWTSK.RiemannHypothesis

/-- A reflection-stable two-point toy zero set away from the critical line. -/
def ToySymmetricZero (s : ℂ) : Prop :=
  s = (((3 : ℝ) / 5 : ℝ) : ℂ) ∨
    s = (((2 : ℝ) / 5 : ℝ) : ℂ)

/-- Generic strict right-half-plane exclusion for the toy zero set. -/
def ToyZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → ¬ ToySymmetricZero s

/-- Every toy zero lies on the critical line. -/
def ToyAllOnCriticalLine : Prop :=
  ∀ s : ℂ, ToySymmetricZero s → s.re = (1 / 2 : ℝ)

/-- The toy set is stable under functional-equation reflection. -/
theorem toySymmetricZero_reflect
    {s : ℂ} (hs : ToySymmetricZero s) :
    ToySymmetricZero (1 - s) := by
  rcases hs with h | h
  · subst s
    norm_num [ToySymmetricZero]
  · subst s
    norm_num [ToySymmetricZero]

/-- The toy set is zero-free to the right of `7/8`. -/
theorem toy_zeroFree_sevenEighths :
    ToyZeroFreeRightHalfPlane ((7 : ℝ) / 8) := by
  intro s hs hzero
  rcases hzero with h | h
  · subst s
    norm_num at hs
  · subst s
    norm_num at hs

/-- The same toy set is not concentrated on the critical line.  Thus reflection
symmetry plus a region strictly to the right of `1/2` does not, as pure logic,
force the critical-line conclusion. -/
theorem toy_not_allOnCriticalLine :
    ¬ ToyAllOnCriticalLine := by
  intro hline
  have h :=
    hline ((((3 : ℝ) / 5 : ℝ) : ℂ))
      (by simp [ToySymmetricZero])
  norm_num at h

/-- The actual trivial zero at `-2` prevents raw zeta nonvanishing in the
strict half-plane with boundary `-3`.  This is why the converse comparison is
restricted to nonnegative thresholds. -/
theorem raw_zeta_not_zeroFree_neg_three :
    ¬ RiemannZetaZeroFreeRightHalfPlane (-3) := by
  intro hfree
  have hz : riemannZeta (-2 : ℂ) = 0 := by
    simpa using (riemannZeta_neg_two_mul_nat_add_one 0)
  exact hfree (-2 : ℂ) (by norm_num) hz

/-- The reported `7/8` threshold cannot instantiate the parent
`σ ≤ 1/2` region-to-RH theorem. -/
theorem sevenEighths_not_at_or_left_of_half :
    ¬ ((7 : ℝ) / 8 ≤ (1 / 2 : ℝ)) := by
  norm_num

/-- The reported `11/12` threshold also cannot instantiate the parent
`σ ≤ 1/2` region-to-RH theorem. -/
theorem elevenTwelfths_not_at_or_left_of_half :
    ¬ ((11 : ℝ) / 12 ≤ (1 / 2 : ℝ)) := by
  norm_num

/-- The adapter remains conditional on an actual raw zero-free supplier. -/
theorem adapter_requires_raw_supplier :
    RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) →
      NontrivialZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  nontrivialZeroFreeRightHalfPlane_of_riemannZeta

end GRWTSK.RiemannHypothesis.Checks.ZetaZeroFreeHalfPlaneAdapterControls
```
