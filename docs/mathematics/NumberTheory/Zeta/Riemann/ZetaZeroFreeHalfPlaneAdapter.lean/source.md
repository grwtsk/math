# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b996c1af5d4ed31484a7a1765ebb92bcde21159` · SHA-256 `bbb7df3b06ab6e940f812477a3b9bf84e2967f9fdafd91cf0e06c4738e9de5eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroFreeHalfPlaneCriterion
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Raw zeta nonvanishing and the nontrivial-zero half-plane criterion

External zero-free statements are commonly written directly as nonvanishing of
`riemannZeta`.  The stacked parent criterion is deliberately stated instead for
`NontrivialZetaZero`, because that is the exact zero predicate used by the
canonical Riemann-hypothesis target.

This module gives the comparison at its true scope.  Raw nonvanishing always
implies the nontrivial-zero statement.  Conversely, at a nonnegative threshold,
a zero in the region cannot be a negative-even trivial zero, and Mathlib's
totalized value at `1` is nonzero.  Hence the two predicates agree there.

No zero-free estimate is proved or imported.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_SUPPLIERS_UNREVIEWED.
-/

namespace GRWTSK.RiemannHypothesis

/-- Direct nonvanishing of Mathlib's totalized Riemann zeta function in the
strict right half-plane `σ < re(s)`. -/
def RiemannZetaZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → riemannZeta s ≠ 0

/-- A smaller threshold is the stronger raw nonvanishing statement. -/
theorem riemannZetaZeroFreeRightHalfPlane_mono
    {a b : ℝ} (hab : a ≤ b)
    (ha : RiemannZetaZeroFreeRightHalfPlane a) :
    RiemannZetaZeroFreeRightHalfPlane b := by
  intro s hbs
  exact ha s (lt_of_le_of_lt hab hbs)

/-- Raw zeta nonvanishing implies the corresponding source-bound statement
about actual nontrivial zeros at every threshold. -/
theorem nontrivialZeroFreeRightHalfPlane_of_riemannZeta
    {σ : ℝ}
    (hfree : RiemannZetaZeroFreeRightHalfPlane σ) :
    NontrivialZeroFreeRightHalfPlane σ := by
  intro s hsigma hs
  exact hfree s hsigma hs.1

/-- Real part of the canonical negative-even trivial-zero representative. -/
theorem negativeEven_realPart (n : ℕ) :
    (((-2 : ℂ) * ((n : ℂ) + 1)).re) =
      -2 * ((n : ℝ) + 1) := by
  norm_num

/-- Every negative-even trivial-zero representative has nonpositive real part. -/
theorem negativeEven_realPart_nonpos (n : ℕ) :
    (((-2 : ℂ) * ((n : ℂ) + 1)).re) ≤ 0 := by
  rw [negativeEven_realPart]
  have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
  nlinarith

/-- At a nonnegative threshold, excluding all nontrivial zeros is enough to
exclude every zeta zero in the strict right half-plane.

The proof uses the threshold only to rule out the negative-even trivial zeros.
The point `s = 1` is ruled out by Mathlib's theorem
`riemannZeta_one_ne_zero`. -/
theorem riemannZetaZeroFreeRightHalfPlane_of_nontrivial
    {σ : ℝ} (hσ : 0 ≤ σ)
    (hfree : NontrivialZeroFreeRightHalfPlane σ) :
    RiemannZetaZeroFreeRightHalfPlane σ := by
  intro s hsigma hzero
  apply hfree s hsigma
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨n, rfl⟩
    have hnonpos := negativeEven_realPart_nonpos n
    linarith
  · intro hsone
    subst s
    exact riemannZeta_one_ne_zero hzero

/-- For nonnegative thresholds, the raw and nontrivial-zero formulations are
exactly equivalent. -/
theorem riemannZetaZeroFreeRightHalfPlane_iff_nontrivial
    {σ : ℝ} (hσ : 0 ≤ σ) :
    RiemannZetaZeroFreeRightHalfPlane σ ↔
      NontrivialZeroFreeRightHalfPlane σ := by
  constructor
  · exact nontrivialZeroFreeRightHalfPlane_of_riemannZeta
  · exact riemannZetaZeroFreeRightHalfPlane_of_nontrivial hσ

/-- The standard nonvanishing theorem gives the raw strict half-plane
`re(s) > 1`. -/
theorem riemannZetaZeroFreeRightHalfPlane_one :
    RiemannZetaZeroFreeRightHalfPlane 1 := by
  intro s hs
  exact riemannZeta_ne_zero_of_one_le_re (le_of_lt hs)

/-- Every threshold at least one inherits the standard raw nonvanishing
statement. -/
theorem riemannZetaZeroFreeRightHalfPlane_of_one_le
    {σ : ℝ} (hσ : 1 ≤ σ) :
    RiemannZetaZeroFreeRightHalfPlane σ :=
  riemannZetaZeroFreeRightHalfPlane_mono hσ
    riemannZetaZeroFreeRightHalfPlane_one

/-- Raw zeta nonvanishing in `re(s) > 1/2` is exactly canonical RH.

This is a comparison theorem.  It constructs neither side. -/
theorem riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis :
    RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) ↔
      _root_.RiemannHypothesis := by
  rw [riemannZetaZeroFreeRightHalfPlane_iff_nontrivial (by norm_num)]
  exact nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis

/-- The raw half-plane formulation terminates in the independently fixed
repository target rather than a replacement proposition. -/
theorem Target.statement_iff_riemannZetaZeroFreeRightHalfPlane_half :
    Target.Statement ↔
      RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) := by
  rw [Target.statement_eq_mathlib]
  exact riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.symm

/-- Exact ordering of the two external-result thresholds currently named by
issue #187. -/
theorem sevenEighths_lt_elevenTwelfths :
    ((7 : ℝ) / 8) < (11 : ℝ) / 12 := by
  norm_num

/-- A raw theorem at `7/8` implies the weaker raw theorem at `11/12`. -/
theorem riemannZetaZeroFreeRightHalfPlane_sevenEighths_to_elevenTwelfths
    (h : RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8)) :
    RiemannZetaZeroFreeRightHalfPlane ((11 : ℝ) / 12) :=
  riemannZetaZeroFreeRightHalfPlane_mono
    sevenEighths_lt_elevenTwelfths.le h

/-- The `7/8` threshold lies strictly to the right of the critical line. -/
theorem half_lt_sevenEighths :
    (1 / 2 : ℝ) < (7 : ℝ) / 8 := by
  norm_num

/-- The `11/12` threshold also lies strictly to the right of the critical line. -/
theorem half_lt_elevenTwelfths :
    (1 / 2 : ℝ) < (11 : ℝ) / 12 := by
  norm_num

end GRWTSK.RiemannHypothesis
```
