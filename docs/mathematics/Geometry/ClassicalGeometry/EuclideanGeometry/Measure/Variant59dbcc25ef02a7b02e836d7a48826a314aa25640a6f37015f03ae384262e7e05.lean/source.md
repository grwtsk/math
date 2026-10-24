# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Measure.Variant59dbcc25ef02a7b02e836d7a48826a314aa25640a6f37015f03ae384262e7e05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a28d879be571cb076de76761fae6326fa8ec41c` · SHA-256 `59dbcc25ef02a7b02e836d7a48826a314aa25640a6f37015f03ae384262e7e05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Weiyi Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Weiyi Wang
-/
module

public import Mathlib.Geometry.Euclidean.Volume.Measure

open MeasureTheory Measure Module

/-- show the scaling factor equals to the ratio between the volume of `d`-dimensional
`Metric.ball` with Euclidean metric and with sup metric (i.e. a cube), or explicitly,
$\pi^{d/2} / (2^d \Gamma (d/2+1))$. -/
proof_wanted MeasureTheory.Measure.addHaarScalarFactor_hausdorffMeasure_eq (d : ℕ) :
    addHaarScalarFactor (volume : Measure (EuclideanSpace ℝ (Fin d))) μH[d] =
    volume (Metric.ball (0 : EuclideanSpace ℝ (Fin d)) 1) / volume (Metric.ball (0 : Fin d → ℝ) 1)
```
