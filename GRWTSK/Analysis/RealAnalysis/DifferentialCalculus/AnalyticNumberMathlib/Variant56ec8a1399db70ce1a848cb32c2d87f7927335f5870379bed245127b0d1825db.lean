-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Certificate.Variantcc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Certificate.Variantcc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f","mathematical_subject":"Analysis.Calculus","original_sha256":"cc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumberMathlib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Certificate.Variantcc74bce76cf816f3223d44983c46109ef5b5c040f09f377497959d67e7b8c40f

