# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.OrderedRings.Variant582dc95e55c2fcf9195c78f7990fa2842ea7404e994720edc0eb335c75573879

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b82e8b68f6cbe5db7bbc8ed1d02ecd1a5c503716` · SHA-256 `582dc95e55c2fcf9195c78f7990fa2842ea7404e994720edc0eb335c75573879`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
