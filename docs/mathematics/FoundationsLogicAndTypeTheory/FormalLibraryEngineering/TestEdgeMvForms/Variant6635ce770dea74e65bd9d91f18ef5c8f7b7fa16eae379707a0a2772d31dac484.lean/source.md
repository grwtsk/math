# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeMvForms.Variant6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9287759f0bbf82b0fc4764196886096ad3a6f54` · SHA-256 `6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Discovery

theorem edge_minimize_mv_and :
    ∃ m : ℚ,
      ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 →
      ∀ y : ℝ, (0:ℝ) ≤ y ∧ y ≤ 1 →
      x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_minimize_mv_arrow :
    ∃ m : ℚ,
      ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 →
      ∀ y : ℝ, (0:ℝ) ≤ y → y ≤ 1 →
      x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv_setof :
    ∃ M : ℚ,
      ∀ x ∈ {x : ℝ | (0:ℝ) ≤ x ∧ x ≤ 1},
      ∀ y ∈ {y : ℝ | (0:ℝ) ≤ y ∧ y ≤ 1},
      x + y ≤ M := by
  interval_maximize_mv
```
