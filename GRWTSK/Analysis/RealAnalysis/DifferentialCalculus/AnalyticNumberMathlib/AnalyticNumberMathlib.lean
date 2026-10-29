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
