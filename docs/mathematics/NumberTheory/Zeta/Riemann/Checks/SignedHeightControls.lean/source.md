# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SignedHeightControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64442f342d716faf8a8b8b5b3c134cebd91c46dd` · SHA-256 `ed037c84ea01219c77a0f0afb5b4235b46dd2bcb865612f29dc284e959f6ae88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight
import GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow

set_option autoImplicit false

/-!
# Synthetic signed-count and endpoint controls

These rational ordinate/weight records are NOT asserted to be zeta zeros.
They test finite accounting obstructions. The actual analytic application uses
the canonical ZeroPoint and source-derived multiplicities, not these records.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.SignedHeightControls

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds

/-- Synthetic distinct points with positive integer weights; a set is not a multiset
of identifiers. Multiplicity is kept explicitly for these finite controls only. -/
def allMass (S : Finset (ℚ × ℕ)) (T : ℚ) : ℕ :=
  ∑ a ∈ S.filter (fun a => |a.1| ≤ T), a.2

def positiveMass (S : Finset (ℚ × ℕ)) (T : ℚ) : ℕ :=
  ∑ a ∈ S.filter (fun a => 0 < a.1 ∧ a.1 ≤ T), a.2

def openPositiveMass (S : Finset (ℚ × ℕ)) (T : ℚ) : ℕ :=
  ∑ a ∈ S.filter (fun a => 0 < a.1 ∧ a.1 < T), a.2

/-- Two repeated roots have two distinct points but six units of analytic mass. -/
theorem repeated_pair_is_not_cardinality :
    ({((2 : ℚ), 3), (-2, 3)} : Finset (ℚ × ℕ)).card = 2 ∧
    allMass {((2 : ℚ), 3), (-2, 3)} 2 = 6 ∧
    positiveMass {((2 : ℚ), 3), (-2, 3)} 2 = 3 := by decide

/-- A boundary atom is counted completely by <=, and not at all by <. -/
theorem cutoff_atom_cannot_be_dropped :
    positiveMass {((2 : ℚ), 3), (-2, 3)} 2 = 3 ∧
    openPositiveMass {((2 : ℚ), 3), (-2, 3)} 2 = 0 := by decide

/-- Mere conjugate support with asymmetric weights does not prove equal masses. -/
theorem unequal_weights_break_doubling :
    allMass {((2 : ℚ), 1), (-2, 2)} 2 = 3 ∧
    2 * positiveMass {((2 : ℚ), 1), (-2, 2)} 2 = 2 := by decide

/-- Fixed points on the real axis would contribute an unpaired mass. The actual
zeta application excludes them by its maintained source theorem. -/
theorem real_axis_atom_breaks_doubling :
    allMass {((0 : ℚ), 1), (2, 1), (-2, 1)} 2 = 3 ∧
    2 * positiveMass {((0 : ℚ), 1), (2, 1), (-2, 1)} 2 = 2 := by decide

/-- Two found simple points do not certify exhaustion of a larger symmetric set. -/
theorem found_pair_does_not_give_upper_count :
    allMass {((2 : ℚ), 1), (-2, 1), (3, 1), (-3, 1)} 3 = 4 ∧
    allMass {((2 : ℚ), 1), (-2, 1)} 3 = 2 := by decide

/-- Symmetric difference of closed versus open conventions is two boundary units.
The half-boundary convention is a genuinely different rational quantity. -/
theorem half_boundary_is_not_closed :
    (2 * (0 + (3 : ℚ) / 2) + 3) = 6 ∧
    (0 + (3 : ℚ) / 2) ≠ 3 := by decide

/-- At the next even value, a non-strict threshold would wrongly allow four. -/
theorem strict_upper_is_essential : (4 : ℕ) ≤ 4 ∧ ¬ (4 : ℕ) < 4 := by decide

/-- These are complete finite windows, not estimates of the actual zeta count. -/
theorem target_two_window_controls :
    EvenIntegerWindow.check 1 3 1 = true ∧
    EvenIntegerWindow.check 1 4 1 = false ∧
    EvenIntegerWindow.check 0 3 1 = false := by decide

/-- The entire-function model respects conjugation with repeated roots.
No synthetic root is attached to the canonical zeta source. -/
theorem repeated_polynomial_conjugates (z : ℂ) :
    ((star z) ^ 2 + 4) ^ 3 = star ((z ^ 2 + 4) ^ 3) := by simp

/-- The canonical zero-height case uses real-axis exclusion, not a symmetry slogan. -/
theorem canonical_zero_height :
    CanonicalSignedHeight.positiveCount 0 = 0 ∧ CanonicalZeroDivisor.heightCount 0 = 0 :=
  CanonicalSignedHeight.counts_zero_of_nonpos le_rfl

end GRWTSK.RiemannHypothesis.Checks.SignedHeightControls
```
