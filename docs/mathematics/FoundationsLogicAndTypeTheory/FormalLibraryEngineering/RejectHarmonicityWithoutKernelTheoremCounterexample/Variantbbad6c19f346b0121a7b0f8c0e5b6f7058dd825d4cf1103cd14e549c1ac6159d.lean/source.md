# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHarmonicityWithoutKernelTheoremCounterexample.Variantbbad6c19f346b0121a7b0f8c0e5b6f7058dd825d4cf1103cd14e549c1ac6159d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23b8a470e51b8f0b9f4261b026a3cded84cbb85c` · SHA-256 `bbad6c19f346b0121a7b0f8c0e5b6f7058dd825d4cf1103cd14e549c1ac6159d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
-- Cocycle→harmonic follows algebraically even without positivity; the converse does not.
def degenerateHodge : TwoTermHodgeData ℚ ℚ ℚ where
  delta := LinearMap.id
  deltaStar := 0
example : degenerateHodge.IsHarmonic0 1 ∧ degenerateHodge.delta 1 ≠ 0 := by
  constructor
  · simp [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      degenerateHodge]
  · norm_num [degenerateHodge]
example : ¬ HarmonicKernelExact degenerateHodge := by
  intro K
  have h : degenerateHodge.IsHarmonic0 1 := by
    simp [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      degenerateHodge]
  have hc := (K.harmonic_iff_cocycle 1).1 h
  norm_num [degenerateHodge] at hc
example (A : TwoTermHodgeData ℚ ℚ ℚ) (x : ℚ) (hx : A.delta x = 0) :
    A.IsHarmonic0 x := by
  change A.deltaStar (A.delta x) = 0
  rw [hx, map_zero]
```
