# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.WeilResidualBudgetObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `398b99facdc174d9812ca2596f8bda9ac6766c87` · SHA-256 `e3497e5a6ce34a39dc25beccde4c824d923e447b4e3215d69e1dd1d9d16c9a5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A fixed negative witness forces a complete Weil comparison budget

This is one quantitative obstruction at the existing `ExactResidualComparison`
interface. All nine signed channels are retained. A nonnegative stage diagonal
cannot approximate a target diagonal below `-μ` with an absolute residual
budget smaller than `μ`.

Neither the target nor the stage is constructed from zeta arithmetic in this
module. In particular, this does not supply a negative zeta witness, a genuine
Weil explicit formula, the classical positivity criterion, or an unconditional
Riemann Hypothesis result.
-/

namespace GRWTSK.RiemannHypothesis

/-- The complete nonnegative triangle budget for the nine signed channels,
with no assumed cancellation or tail omission. -/
def ResidualFamily.absoluteBudget {T : Type*} (residuals : ResidualFamily T)
    (n : ℕ) (f g : T) : ℝ :=
  |residuals.source n f g| +
  |residuals.prime n f g| +
  |residuals.archimedean n f g| +
  |residuals.pole n f g| +
  |residuals.zero n f g| +
  |residuals.endpoint n f g| +
  |residuals.geometric n f g| +
  |residuals.mirror n f g| +
  |residuals.tail n f g|

theorem ResidualFamily.absoluteBudget_nonnegative {T : Type*}
    (residuals : ResidualFamily T) (n : ℕ) (f g : T) :
    0 ≤ residuals.absoluteBudget n f g := by
  unfold ResidualFamily.absoluteBudget
  positivity

/-- The signed residual total is bounded by the absolute sum of *all* channels. -/
theorem ResidualFamily.abs_total_le_absoluteBudget {T : Type*}
    (residuals : ResidualFamily T) (n : ℕ) (f g : T) :
    |residuals.total n f g| ≤ residuals.absoluteBudget n f g := by
  let a : ℝ := residuals.source n f g
  let b : ℝ := residuals.prime n f g
  let c : ℝ := residuals.archimedean n f g
  let d : ℝ := residuals.pole n f g
  let e : ℝ := residuals.zero n f g
  let k : ℝ := residuals.endpoint n f g
  let l : ℝ := residuals.geometric n f g
  let m : ℝ := residuals.mirror n f g
  let t : ℝ := residuals.tail n f g
  change |a + b + c + d + e + k + l + m + t| ≤
    |a| + |b| + |c| + |d| + |e| + |k| + |l| + |m| + |t|
  have h2 : |a + b| ≤ |a| + |b| := abs_add_le a b
  have h3 : |a + b + c| ≤ |a + b| + |c| := abs_add_le (a + b) c
  have h4 : |a + b + c + d| ≤ |a + b + c| + |d| :=
    abs_add_le (a + b + c) d
  have h5 : |a + b + c + d + e| ≤ |a + b + c + d| + |e| :=
    abs_add_le (a + b + c + d) e
  have h6 : |a + b + c + d + e + k| ≤ |a + b + c + d + e| + |k| :=
    abs_add_le (a + b + c + d + e) k
  have h7 : |a + b + c + d + e + k + l| ≤ |a + b + c + d + e + k| + |l| :=
    abs_add_le (a + b + c + d + e + k) l
  have h8 : |a + b + c + d + e + k + l + m| ≤
      |a + b + c + d + e + k + l| + |m| :=
    abs_add_le (a + b + c + d + e + k + l) m
  have h9 : |a + b + c + d + e + k + l + m + t| ≤
      |a + b + c + d + e + k + l + m| + |t| :=
    abs_add_le (a + b + c + d + e + k + l + m) t
  linarith

/-- Quantitative obstruction at one test vector and one stage: if the target
diagonal is at most `-μ` and the stage is nonnegative, the complete named
residual budget is at least `μ`. No assumption on the sign of the target
form is introduced. -/
theorem ExactResidualComparison.gap_le_absoluteBudget {T : Type*}
    (comparison : ExactResidualComparison T)
    (n : ℕ) (f : T) (μ : ℝ)
    (hnegative : comparison.target f f ≤ -μ)
    (hstage : 0 ≤ comparison.approximant n f f) :
    μ ≤ comparison.residuals.absoluteBudget n f f := by
  have hgap :
      μ ≤ -(comparison.target f f - comparison.approximant n f f) := by
    linarith
  calc
    μ ≤ -(comparison.target f f - comparison.approximant n f f) := hgap
    _ ≤ |comparison.target f f - comparison.approximant n f f| := neg_le_abs _
    _ = |comparison.residuals.total n f f| := by
      rw [comparison.identity n f f]
    _ ≤ comparison.residuals.absoluteBudget n f f :=
      comparison.residuals.abs_total_le_absoluteBudget n f f

/-- If the witness gap is positive and every stage is nonnegative, the full
nine-channel budget cannot decay to zero. This does not identify which of
the nine channels fails to decay. -/
theorem ExactResidualComparison.no_vanishing_absoluteBudget {T : Type*}
    (comparison : ExactResidualComparison T)
    (f : T) (μ : ℝ)
    (hμ : 0 < μ)
    (hnegative : comparison.target f f ≤ -μ)
    (hstage : ∀ n, 0 ≤ comparison.approximant n f f) :
    ¬ GRWTSK.Analysis.ErrorBounds.VanishesAtInfinity
      (fun n => comparison.residuals.absoluteBudget n f f) := by
  intro hvanishes
  obtain ⟨N, hN⟩ := hvanishes (μ / 2) (by linarith)
  have hlower := comparison.gap_le_absoluteBudget N f μ hnegative (hstage N)
  have hnonnegative := comparison.residuals.absoluteBudget_nonnegative N f f
  have hupper : comparison.residuals.absoluteBudget N f f ≤ μ / 2 := by
    simpa only [abs_of_nonneg hnonnegative] using hN N (le_refl N)
  linarith

/-! A rational sharpness fixture. Every omitted channel is exactly zero, while
the tail is -1. Dropping the tail would yield a false zero comparison budget. -/

private def tailOnlyResiduals : ResidualFamily Unit where
  source := fun _ _ _ => 0
  prime := fun _ _ _ => 0
  archimedean := fun _ _ _ => 0
  pole := fun _ _ _ => 0
  zero := fun _ _ _ => 0
  endpoint := fun _ _ _ => 0
  geometric := fun _ _ _ => 0
  mirror := fun _ _ _ => 0
  tail := fun _ _ _ => -1

private def tailOnlyComparison : ExactResidualComparison Unit where
  target := fun _ _ => -1
  approximant := fun _ _ _ => 0
  residuals := tailOnlyResiduals
  identity := by
    intro n f g
    norm_num [ResidualFamily.total, tailOnlyResiduals]

example (n : ℕ) :
    tailOnlyComparison.residuals.absoluteBudget n () () = (1 : ℝ) := by
  norm_num [tailOnlyComparison, tailOnlyResiduals, ResidualFamily.absoluteBudget]

end GRWTSK.RiemannHypothesis
```
