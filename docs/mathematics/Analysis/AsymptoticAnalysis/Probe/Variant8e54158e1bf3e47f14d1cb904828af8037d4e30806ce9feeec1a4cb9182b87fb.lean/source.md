# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Probe.Variant8e54158e1bf3e47f14d1cb904828af8037d4e30806ce9feeec1a4cb9182b87fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68909dd41ef131f3f3f37449340e7cbd3a279cae` · SHA-256 `8e54158e1bf3e47f14d1cb904828af8037d4e30806ce9feeec1a4cb9182b87fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.RingTheory.PowerSeries.Log
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Tactic

#check Summable.le_tsum
#check Summable.le_tsum'
#check Summable.tsum_eq_zero_iff
#check PowerSeries.coeff_X
#check PowerSeries.derivative_X
#check PowerSeries.substAlgHom
#check PowerSeries.coe_substAlgHom
#check MeasureTheory.integral_dirac
#check MeasureTheory.integrable_dirac
#check Matrix.posSemidef_diagonal_iff
#check PowerSeries.constantCoeff_logOf
#check PowerSeries.coeff_mul_X_pow
#check PowerSeries.derivative_subst
#check PowerSeries.deriv_log
#check PowerSeries.coeff_zero_eq_constantCoeff
```
