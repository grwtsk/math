# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticNumberMathlib.Variantcc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `919d132ef4953826a1518d448abf8d49f47eacb5` · SHA-256 `cc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.Mathlib.Certificate
import AnalyticNumber.Mathlib.GeometricSeries
import AnalyticNumber.Mathlib.ExponentialSeries
import AnalyticNumber.Mathlib.Compactness
import AnalyticNumber.Mathlib.IntervalArithmetic
import AnalyticNumber.Mathlib.BaselSeries

/-!
# Mathlib-backed AnalyticNumber import surface

This import contains actual Mathlib-backed analytic proofs. It is separate
from the core `AnalyticNumber` import so the existing authority-only
architecture remains lightweight.

All theorem names listed here are proof-carrying Mathlib-backed results.
Certificate-only smoke tests live under the Examples import surface and are
intentionally excluded from this file.

Theorem index:

* GeometricSeries:
    complex_geometric_series_summable
    complex_geometric_series_abs_summable
    complex_geometric_series_hasSum
    one_sub_inv_analyticAt
    geometric_series_through_boundary_calculus
* ExponentialSeries:
    complex_exp_series_summable
    complex_exp_series_hasSum
    complex_exp_analyticAt
    complex_exp_differentiableAt
    exponential_series_through_boundary_calculus
* Compactness:
    real_Icc_isCompact
    continuousOn_Icc_attains_max
    continuousOn_Icc_attains_min
    compactness_through_boundary_calculus
* IntervalArithmetic:
    sqrt_two_lower_bound
    sqrt_two_upper_bound
    sqrt_two_interval_enclosure
    sqrt_two_interval_through_boundary_calculus
* BaselSeries:
    basel_hasSum_pi_sq_div_six
    basel_partial_sum_10_eq
    basel_tail_bound_10
    basel_interval_enclosure_10
    basel_case_study_through_boundary_calculus
-/
```
