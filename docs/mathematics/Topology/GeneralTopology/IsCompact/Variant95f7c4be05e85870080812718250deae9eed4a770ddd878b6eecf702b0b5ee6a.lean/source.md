# Complete source: GRWTSK.Topology.GeneralTopology.IsCompact.Variant95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d5404176a7386bdb8006bb958b6eea9ba2c7505` · SHA-256 `95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Instances.Real
import Mathlib.Topology.Algebra.Order.Compact
import Mathlib.Tactic.LibrarySearch

example (f : ℝ → ℝ) {K : Set ℝ} (hK : IsCompact K) : ∃ x ∈ K, ∀ y ∈ K, f x ≤ f y := by
  fail_if_success exact?
  apply? -- Verify that this includes: `refine IsCompact.exists_forall_le hK ?_ ?_`
```
