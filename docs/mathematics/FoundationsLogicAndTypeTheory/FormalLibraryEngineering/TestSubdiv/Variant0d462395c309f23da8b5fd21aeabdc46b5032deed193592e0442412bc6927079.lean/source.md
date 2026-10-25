# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSubdiv.Variant0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10d7f96c8dbf65a2a3b9ffbc41d877505c43cddf` · SHA-256 `0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  Test interval_bound_subdiv tactic
-/
import LeanCert.Tactic.IntervalAuto

open LeanCert.Core
open Set

-- Simple test - should work without subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_bound_subdiv

-- This should also work with subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x + x ≤ 2 := by
  interval_bound_subdiv

-- Test with transcendental - should work
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x ≤ 1 := by
  interval_bound_subdiv

-- Test on larger interval
example : ∀ x ∈ Icc (0 : ℝ) 2, x * x ≤ 4 := by
  interval_bound_subdiv

-- Test with exp (needs Taylor depth)
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound_subdiv 15

-- Note: Lower bounds not yet implemented for interval_bound_subdiv
-- The x*x - x case would need lower bound support
```
