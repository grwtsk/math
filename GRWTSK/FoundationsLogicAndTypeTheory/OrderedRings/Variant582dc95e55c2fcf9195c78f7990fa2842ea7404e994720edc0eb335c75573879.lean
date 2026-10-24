/-
ACCESS-RAMP-1 / AR-MATHLIB-SQUARE-1: uncompiled direct consumer candidate.

Uses the unchanged upstream declaration `sq_nonneg` from mathlib4 at
db584cd6d46c92f209a44c0f1c829460d327499d,
Mathlib/Algebra/Order/Ring/Unbundled/Basic.lean.
Mathlib supplies the formal artifact; the elementary square-order fact has
classical mathematical provenance. Historical priority is not assigned here.

Local delta: apply the upstream fact to an affine real expression. The upstream
proof is imported and its declaration name is preserved. This anonymous example
does not introduce or claim a new original theorem.
Candidate code: OpenAI Codex, at the user's direction, 2026-10-08.
Lean 4.33.0 / root dependency lock. Checker/consumer receipts pending.
Record: registry/mathematics/origins/ACCESS-RAMP-1-origin-1/ramps/mathlib-square.json
-/
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.Ring.Unbundled.Basic

namespace GRWTSK.AccessRamps.OrderedRings

example (x : ℝ) : 0 ≤ (2 * x + 1) ^ 2 :=
  sq_nonneg (2 * x + 1)

-- Next consumer: nonnegativity of a sum of two affine squares follows by
-- applying the same imported fact twice and the upstream addition order law.
example (x y : ℝ) : 0 ≤ (2 * x + 1) ^ 2 + (3 * y - 1) ^ 2 :=
  add_nonneg (sq_nonneg (2 * x + 1)) (sq_nonneg (3 * y - 1))

end GRWTSK.AccessRamps.OrderedRings
