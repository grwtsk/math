# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.HeightIndexedResidueControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cdfffa67ea0974e8dd68cae831f309b6dcfe5fd` · SHA-256 `4ef238862aaf313fabc6f2ab8edc0a997b6fd79ac9e7952b1e10c5f450b53315`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues

set_option autoImplicit false

/-!
# Cutoff and edge controls

These are pure theorem drafts, not executed fixtures or numerical zeta data.
No principal-value convention is added for a contour passing through a zero.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.HeightIndexedResidueControls

open scoped BigOperators
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open GRWTSK.RiemannHypothesis.HeightIndexedDivisor

noncomputable section

/-- Historical inventory compatibility does not assert equality of chosen height sequences. -/
theorem old_inventory_control (N : ℕ) :
    singularHeadAt N (contourHeight N) = singularHead N := singularHeadAt_old N

/-- At left cutoff zero, no negative-even point is inside, regardless of height. -/
theorem zero_left_prefix_control (T : ℝ) (k : ℕ) :
    trivialPoint k ∉ singularHeadAt 0 T := by
  rw [trivial_mem_headAt_iff]
  omega

/-- The same height can have different trivial inventories at different left cutoffs. -/
theorem independent_left_cutoff_control (T : ℝ) :
    trivialPoint 0 ∈ singularHeadAt 1 T ∧ trivialPoint 0 ∉ singularHeadAt 0 T := by
  simp only [trivial_mem_headAt_iff]
  omega

/-- A zero exactly at a proposed height violates admissibility, even though the head is closed. -/
theorem collision_rejects_avoidance (z : ZeroPoint) :
    ¬ (∀ w : ZeroPoint, height w ≠ height z) := by
  intro h
  exact h z rfl

/-- Height clearance controls any left cutoff independently. -/
theorem rounded_inventory_control (N J : ℕ) (T : ℝ)
    (herr : |T - separatedHeight J| ≤ heightClearance J / 2) :
    singularHeadAt N T = singularHeadAt N (separatedHeight J) :=
  singularHeadAt_rounded N J T herr

/-- An entire constant has no closed-contour contribution. -/
theorem constant_closed_control (l r T : ℝ) :
    boundaryIntegral (fun _ : ℂ => (1 : ℂ)) l r T = 0 :=
  boundaryIntegral_eq_zero_of_differentiable _ (by fun_prop) l r T

/-- Nevertheless its right parameter integral changes when the height changes. -/
theorem constant_right_changes :
    vertical (fun _ : ℂ => (1 : ℂ)) 2 3 -
      vertical (fun _ : ℂ => (1 : ℂ)) 2 2 = 2 := by
  norm_num [vertical, Complex.real_smul]

/-- Zero closed integral cannot justify discarding the upward-left correction. -/
theorem constant_right_is_not_closed :
    vertical (fun _ : ℂ => (1 : ℂ)) 2 2 ≠
      boundaryIntegral (fun _ : ℂ => (1 : ℂ)) (-1) 2 2 := by
  rw [constant_closed_control]
  norm_num [vertical, Complex.real_smul]

end
end GRWTSK.NumberTheory.Chebyshev.Checks.HeightIndexedResidueControls
```
