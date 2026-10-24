# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalAbsoluteControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ab566877985349b4616536697e665f9f72e773f` · SHA-256 `8f45248f4b7d8d25ada92189da9005ed2dfcf9ac48858a23f6a47ed6cac667b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula

set_option autoImplicit false

/-!
# Controls for canonical absolute summation

Synthetic finite records below are NOT asserted to be zeta zeros. These proof
scripts have not been executed. They retain cutoff, coefficient, low-height,
multiplicity and arithmetic-normalization distinctions.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalAbsoluteControls

open scoped BigOperators
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.NumberTheory.Chebyshev.TentSource

/-- An atom exactly at the cutoff is in the closed count. -/
theorem cutoff_counts_equal_atom :
    finiteCountingMass ({false, true} : Finset Bool)
      (fun b => if b then (3 : ℝ) else 2)
      (fun b => if b then (2 : ℝ) else 1) 2 = 1 := by
  classical
  norm_num [finiteCountingMass]

/-- The strict complement cannot also contain that atom. -/
theorem cutoff_not_strict_tail : ¬ (2 : ℝ) < 2 := by norm_num

/-- Two locations carry three units of multiplicity, even at equal heights. -/
theorem multiplicity_not_cardinality :
    finiteCountingMass ({false, true} : Finset Bool) (fun _ => (3 : ℝ))
      (fun b => if b then (2 : ℝ) else 1) 3 = 3 ∧
      ({false, true} : Finset Bool).card = 2 := by
  classical
  norm_num [finiteCountingMass]

/-- Equal signed height does not identify full complex locations. -/
theorem same_height_distinct_locations :
    ((0 : ℂ) + 3 * Complex.I).im = ((1 : ℂ) + 3 * Complex.I).im ∧
      (0 : ℂ) + 3 * Complex.I ≠ (1 : ℂ) + 3 * Complex.I := by
  constructor
  · norm_num
  · intro h
    have hr := congrArg Complex.re h
    norm_num at hr

/-- Totalized inverse height would erase a positive zero-height weight. -/
theorem zero_height_inverse_is_zero : (3 : ℝ) / (0 : ℝ) ^ 2 = 0 := by norm_num

theorem zero_height_count_is_not_zero :
    finiteCountingMass ({false} : Finset Bool) (fun _ => (0 : ℝ))
      (fun _ => (3 : ℝ)) 2 = 3 := by
  classical
  norm_num [finiteCountingMass]

/-- An enlarged upper bound cannot be reported after deleting its factor. -/
theorem scale_cannot_be_dropped (u : ℝ) (hu : 0 < u) : ¬ 2 * u ≤ u := by linarith

/-- A finite observed singleton fails completeness for this two-record model. -/
theorem missing_record_rejected :
    ¬ (∀ i : Bool, (3 : ℝ) ≤ 3 → i ∈ ({false} : Finset Bool)) := by
  intro h
  have ht := h true le_rfl
  simpa using ht

/-- Synthetic W=1, h=5, full zero sum=3, C=-1, finite zero sum=1.
Omitting the signed correction changes the arithmetic defect. -/
theorem signed_correction_retained :
    |(1 : ℝ) - (5 - 1 - 1)| = 2 ∧ |(1 : ℝ) - (5 - 1)| = 3 := by norm_num

/-- The first square stage still lies outside the analytic tent domain. -/
theorem first_square_outside_domain : ¬ 1 < squareCenter 1 - squareRadius 1 := by
  rw [center_sub_radius]
  norm_num

end GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalAbsoluteControls
```
