# Complete source: GRWTSK.Topology.GeneralTopology.IsCompact.Varianta37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d55b1fadfad188758a9038fb40a7746095b318` · SHA-256 `a37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Topology.Order.Compact

-- TODO: uses sorry, but is hidden behind the `apply?`
/-- warning: declaration uses 'sorry' -/
#guard_msgs(warning, drop info) in
example (f : ℝ → ℝ) {K : Set ℝ} (_hK : IsCompact K) : ∃ x ∈ K, ∀ y ∈ K, f x ≤ f y := by
  fail_if_success exact?
  apply? -- Verify that this includes: `refine IsCompact.exists_forall_le _hK ?_ ?_`
```
