# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5ebca74ef359ddafc93fcbbde51d9cf31abe2ae` · SHA-256 `c66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.All
import Mathlib.Data.Real.Basic

/-! # Exact endpoint-preserving Gamma bridges -/

namespace Mathematics.GammaBridge

universe u

/-- An exact bridge carries its endpoints as fixed predicates. -/
structure Exact (State : Type u) where
  id : GammaBridgeId
  path : ℝ → State
  left : State
  right : State
  left_endpoint : path 0 = left
  right_endpoint : path 1 = right

end Mathematics.GammaBridge
```
