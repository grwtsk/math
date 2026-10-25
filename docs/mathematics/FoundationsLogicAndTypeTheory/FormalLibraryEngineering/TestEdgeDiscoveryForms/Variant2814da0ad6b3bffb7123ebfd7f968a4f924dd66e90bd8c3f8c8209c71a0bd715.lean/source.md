# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeDiscoveryForms.Variant2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5d38cb0c48b92ce15ec156d8336c450935a2dc7` · SHA-256 `2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Discovery

theorem edge_minimize_and : ∃ m : ℚ, ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 → x * x ≥ m := by
  interval_minimize

theorem edge_maximize_and : ∃ M : ℚ, ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 → x * x ≤ M := by
  interval_maximize

theorem edge_minimize_arrow : ∃ m : ℚ, ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 → x * x ≥ m := by
  interval_minimize

theorem edge_root_add_neg : ∃ x ∈ Set.Icc (0:ℝ) 2, x * x + -2 = 0 := by
  interval_roots

theorem edge_argmax_identity : ∃ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, y ≤ x := by
  interval_argmax
```
