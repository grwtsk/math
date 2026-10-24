# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidualSquareBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed12daac7e86e83783d641c3755a882db6a9bc1f` · SHA-256 `8c5f5f6c74ca5d1a637bba63b0dc27dc8f39a0a2e51e40927ac60017a65f74ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridEnergy
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

def greenResidualA (k : ℤ) : ℝ :=
  (1 / (2 * Real.pi * |(k : ℝ)|)) *
    (3 / (2 * Real.pi * |(k : ℝ)|))

def greenResidualB (k r : ℤ) : ℝ :=
  (1 / (2 * Real.pi * |(k : ℝ)|)) *
    (1 / (2 * |(r : ℝ)|))

def greenResidualC (X : ℕ) (k : ℤ) : ℝ :=
  (1 / (2 * Real.pi * |(k : ℝ)|)) *
    (1 / (2 * (X : ℝ)))

theorem sq_add_three_le_three_sq_sum
    {a b c : ℝ} :
    (a + b + c)^2 ≤ 3 * (a^2 + b^2 + c^2) := by
  nlinarith [sq_nonneg (a - b), sq_nonneg (a - c), sq_nonneg (b - c)]

/-- Pointwise nonalias squared bound with every term retained. -/
theorem sq_norm_greenCenteringResidual_le_residue
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0)
    (R : GreenCenteredResidue X k) (hr : R.r ≠ 0) :
    ‖greenCenteringResidual X k‖^2 ≤
      3 * (greenResidualA k ^ 2 +
        greenResidualB k R.r ^ 2 +
        greenResidualC X k ^ 2) := by
  have h := norm_greenCenteringResidual_le_residue hX hk R hr
  have hrewrite :
      (1 / (2 * Real.pi * |(k : ℝ)|)) *
        (3 / (2 * Real.pi * |(k : ℝ)|) +
          1 / (2 * |(R.r : ℝ)|) +
          1 / (2 * (X : ℝ))) =
      greenResidualA k + greenResidualB k R.r + greenResidualC X k := by
    unfold greenResidualA greenResidualB greenResidualC
    ring
  rw [hrewrite] at h
  have hnonneg :
      0 ≤ greenResidualA k + greenResidualB k R.r + greenResidualC X k := by
    unfold greenResidualA greenResidualB greenResidualC
    positivity
  calc
    ‖greenCenteringResidual X k‖^2 ≤
        (greenResidualA k + greenResidualB k R.r +
          greenResidualC X k)^2 := by nlinarith [norm_nonneg (greenCenteringResidual X k)]
    _ ≤ 3 * (greenResidualA k ^ 2 +
        greenResidualB k R.r ^ 2 +
        greenResidualC X k ^ 2) := sq_add_three_le_three_sq_sum

def greenAliasResidualA (k : ℤ) : ℝ := greenResidualA k
def greenAliasResidualD (k : ℤ) : ℝ :=
  (1 / (2 * Real.pi * |(k : ℝ)|)) * Real.log 2

theorem sq_add_two_le_two_sq_sum {a b : ℝ} :
    (a + b)^2 ≤ 2 * (a^2 + b^2) := by
  nlinarith [sq_nonneg (a - b)]

/-- Pointwise alias squared bound, again with no cross term dropped. -/
theorem sq_norm_greenCenteringResidual_le_aliasing
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk0 : k ≠ 0)
    (hk : GreenMeshAliasing X k) :
    ‖greenCenteringResidual X k‖^2 ≤
      2 * (greenAliasResidualA k ^ 2 +
        greenAliasResidualD k ^ 2) := by
  have h := norm_greenCenteringResidual_le_aliasing hX hk0 hk
  have hrewrite :
      (1 / (2 * Real.pi * |(k : ℝ)|)) *
        (3 / (2 * Real.pi * |(k : ℝ)|) + Real.log 2) =
      greenAliasResidualA k + greenAliasResidualD k := by
    unfold greenAliasResidualA greenAliasResidualD greenResidualA
    ring
  rw [hrewrite] at h
  have hnonneg :
      0 ≤ greenAliasResidualA k + greenAliasResidualD k := by
    unfold greenAliasResidualA greenAliasResidualD greenResidualA
    positivity
  calc
    ‖greenCenteringResidual X k‖^2 ≤
        (greenAliasResidualA k + greenAliasResidualD k)^2 := by
      nlinarith [norm_nonneg (greenCenteringResidual X k)]
    _ ≤ 2 * (greenAliasResidualA k ^ 2 +
        greenAliasResidualD k ^ 2) := sq_add_two_le_two_sq_sum

end GRWTSK.RiemannHypothesis
```
