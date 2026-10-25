# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0c6609cbdf4b1b54d3a927f9978693873ed7c21` · SHA-256 `04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Discovery

theorem edge_minimize_mv : ∃ m : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv : ∃ M : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ M := by
  interval_maximize_mv
```
