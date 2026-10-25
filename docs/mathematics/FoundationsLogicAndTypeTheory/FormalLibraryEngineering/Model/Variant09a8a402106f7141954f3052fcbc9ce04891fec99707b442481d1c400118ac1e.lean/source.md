# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variant09a8a402106f7141954f3052fcbc9ce04891fec99707b442481d1c400118ac1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0395259a4976b9548be8836eea66e5452e4d9e19` · SHA-256 `09a8a402106f7141954f3052fcbc9ce04891fec99707b442481d1c400118ac1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure InfiniteTimeComputationModel where
  State : Type
  step : State -> State
  limitState : (Nat -> State) -> Option State
  stabilityPredicate : (Nat -> State) -> Prop

def EventuallyStable {α : Type} (x : Nat -> α) : Prop :=
  ∃ N, ∀ n, N ≤ n -> x n = x N

end Legacy
end Surface
```
