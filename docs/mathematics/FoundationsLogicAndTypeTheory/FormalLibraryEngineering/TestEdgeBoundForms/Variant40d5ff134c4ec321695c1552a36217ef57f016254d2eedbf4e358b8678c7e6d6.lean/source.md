# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeBoundForms.Variant40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1f8cd83eba9f4bb390866a55431690edd7d1c7b` · SHA-256 `40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.IntervalAuto

theorem edge_bound_setof : ∀ x ∈ {x : ℝ | (0:ℝ) ≤ x ∧ x ≤ 1}, x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_and : ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 → x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_arrow : ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 → x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_decimal : ∀ x ∈ Set.Icc (-0.5:ℝ) (1/3), x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_scientific : ∀ x ∈ Set.Icc (0:ℝ) (2.5:ℝ), x ≤ (3 : ℚ) := by
  interval_bound
```
