# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.EnclosedKernelControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd077dad24f7af608a87ae7586bfdc6eb47774a8` · SHA-256 `4d27a745b78a4acf8a1dd112b8abb7e858ea4bc56e05223c6c845b39d7778308`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.LegendreEnclosedKernel

set_option autoImplicit false

/-!
# Controls for finite enclosed-kernel source budgets

The scalar and parameter examples are deliberately not declared to be zeta
zeros or arithmetic reconstructions. They distinguish the proof obligations;
no control constructs an explicit formula or an omitted-zero bound.
Source draft: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.EnclosedKernelControls

open GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel
open GRWTSK.NumberTheory.Chebyshev.LegendreEnclosedKernel

noncomputable section

/-- A favorable signed remainder can pass a margin that the symmetric bound loses. -/
theorem signed_remainder_retained :
    (2 : ℝ) + 3 ≤ 5 ∧ 0 < (2 : ℝ) + 3 - 1 ∧ ¬ 0 < (2 : ℝ) - |3| - 1 := by
  constructor
  · simpa using source_lower_bound 5 2 0 0 0 0 3 0 0 3
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  · norm_num

/-- A negative omitted remainder can exactly erase an apparently positive main term. -/
theorem omitted_remainder_control :
    (0 : ℂ) = (2 : ℂ) - 0 + 0 + (-2) ∧ 0 < (2 : ℝ) ∧ ¬ 0 < (0 : ℝ) := by
  norm_num

/-- Matching the real coordinate does not establish complex source equality. -/
theorem same_real_part_is_not_identity :
    Complex.I.re = (0 : ℂ).re ∧ Complex.I ≠ (0 : ℂ) := by
  norm_num

/-- A real source cannot be reconstructed by I with zero complex error. -/
theorem imaginary_defect_cannot_have_zero_error (q : ℝ) :
    ¬ ‖(q : ℂ) - Complex.I‖ ≤ 0 := by
  intro h
  have hi := (Complex.abs_im_le_norm ((q : ℂ) - Complex.I)).trans h
  norm_num at hi

/-- A remainder may pay the imaginary defect, but then that error is not zero. -/
theorem charged_imaginary_remainder_control :
    |((0 : ℂ) - Complex.I + 0).im| ≤ (0 : ℝ) + 0 + 1 := by
  exact source_imaginary_error 0 0 Complex.I Complex.I 0 0 Complex.I 0 0 1
    (by ring) (by simp) (by simp) (by simp)

/-- A lower bound on the real remainder alone is not a complex-norm bound. -/
theorem one_sided_does_not_bound_imaginary :
    (0 : ℝ) ≤ ((100 : ℂ) * Complex.I).re ∧ ¬ ‖(100 : ℂ) * Complex.I‖ ≤ 0 := by
  norm_num [norm_mul]

/-- An empty included family has zero included error, not a proved zero complement. -/
theorem empty_included_family (n : ℕ) :
    squareFiniteSum n (∅ : Finset ℕ) (fun _ => 1) (fun _ => 0) = 0 ∧
    squareEnclosureBudget n (∅ : Finset ℕ) (fun _ => 1) (fun _ => 0) (fun _ => 1) = 0 := by
  simp [squareFiniteSum, squareEnclosureBudget]

/-- Identical coordinates with changed multiplicities give different sums, even with zero radii. -/
theorem wrong_multiplicity_control :
    squareFiniteSum 1 ({0} : Finset ℕ) (fun _ => 1) (fun _ => 1) = 3 ∧
    squareFiniteSum 1 ({0} : Finset ℕ) (fun _ => 2) (fun _ => 1) = 6 := by
  norm_num [squareFiniteSum, squareKernel_one]

end
end GRWTSK.NumberTheory.Chebyshev.Checks.EnclosedKernelControls
```
