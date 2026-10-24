# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalZetaDivisorControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83319bde85c44ef6faa1b4ebf4c02ec6c0098608` · SHA-256 `dbf6d240245a39ce9191de30cf4b309eeb4c5948d5717053bc2b3fe54fd102c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalZetaTent
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions

set_option autoImplicit false

/-! Scope controls, not examples of certified numerical zeta zeros.
The polynomial and complex-coordinate fixtures are explicitly synthetic.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalZetaDivisorControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

/-- A real trivial zero cannot become a canonical nontrivial record. -/
theorem trivial_point_excluded : ¬ NontrivialZetaZero (-2) :=
  trivial_zero_is_excluded.2

/-- The pole remains excluded even with a totalized zeta function. -/
theorem pole_point_excluded : ¬ NontrivialZetaZero 1 := pole_is_excluded

/-- Source-bound analytic multiplicities cannot be set to zero by metadata. -/
theorem canonical_weight_not_zero (z : ZeroPoint) : multiplicity z ≠ 0 :=
  (multiplicity_pos z).ne'

/-- The closed cutoff includes a point exactly at its absolute height. -/
theorem boundary_atom_retained (z : ZeroPoint) : z ∈ heightHead (height z) :=
  point_mem_own_head z

/-- A negative cutoff cannot manufacture an observed zero. -/
theorem negative_cutoff_empty : heightHead (-1) = ∅ :=
  heightHead_eq_empty_of_neg (by norm_num)

/-- Natural conversion alone is unsafe: the identically zero germ has infinite
analytic order, yet its natural-order conversion is zero. It is not zeta. -/
theorem infinite_order_conversion_control :
    analyticOrderAt (fun _ : ℂ => (0 : ℂ)) 0 = ⊤ ∧
      analyticOrderNatAt (fun _ : ℂ => (0 : ℂ)) 0 = 0 := by
  have ht : analyticOrderAt (fun _ : ℂ => (0 : ℂ)) 0 = ⊤ :=
    analyticOrderAt_eq_top.mpr (Filter.Eventually.of_forall (fun _ => rfl))
  exact ⟨ht, by simp [analyticOrderNatAt, ht]⟩

/-- Synthetic double root: one point and analytic multiplicity two are different. -/
theorem polynomial_double_root_control :
    analyticOrderNatAt (fun z : ℂ => z ^ 2) 0 = 2 := by
  have ho : analyticOrderAt (fun z : ℂ => z ^ 2) 0 = (2 : ℕ∞) := by
    simpa only [sub_zero] using
      (analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 2))
  simp [analyticOrderNatAt, ho]

/-- Synthetic conjugate coordinates share absolute height but are distinct points. -/
theorem equal_absolute_height_distinct_points :
    |((1 / 2 : ℂ) + 11 * Complex.I).im| =
      |((1 / 2 : ℂ) - 11 * Complex.I).im| ∧
      (1 / 2 : ℂ) + 11 * Complex.I ≠ (1 / 2 : ℂ) - 11 * Complex.I := by
  constructor
  · norm_num
  · intro he
    have hi := congrArg Complex.im he
    norm_num at hi

end GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalZetaDivisorControls
```
