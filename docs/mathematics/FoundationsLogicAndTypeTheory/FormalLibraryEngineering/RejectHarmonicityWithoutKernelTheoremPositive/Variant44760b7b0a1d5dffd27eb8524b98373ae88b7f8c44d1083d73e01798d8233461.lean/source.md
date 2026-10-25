# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHarmonicityWithoutKernelTheoremPositive.Variant44760b7b0a1d5dffd27eb8524b98373ae88b7f8c44d1083d73e01798d8233461

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f02d05bed81681e94adf8e85800c5126e44c43f5` · SHA-256 `44760b7b0a1d5dffd27eb8524b98373ae88b7f8c44d1083d73e01798d8233461`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : RationalHodgeHZeroAdapter pointCycleClass edgeHodge :=
  EdgeFixture.pointHZeroAdapter
example (x : ℚ × ℚ) : edgeHodge.IsHarmonic0 x ↔ edgeHodge.delta x = 0 :=
  EdgeFixture.edgeKernelExact.harmonic_iff_cocycle x
```
