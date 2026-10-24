# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.GeometricSeries.Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a8bf4cad1248047a66c08139b1ee0987245a766` · SHA-256 `e1c4b030d947186a6edf9ce302ecd1b2dcf69626a6c8743fc6f04f8ecc8b108b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ComplexGeometricSeriesSummable.Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ComplexGeometricSeriesSummable.Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"d773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Concrete/GeometricSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import AnalyticNumber.BoundaryCalculus

/-!
# Mathlib-backed certificate: the complex geometric series

This is the first nontrivial Mathlib-backed analytic theorem in the project:

  for `z : ℂ` with `‖z‖ < 1`, the series `∑ n, z ^ n` is absolutely summable
  and has sum `(1 - z)⁻¹`.

It is the local Euler-factor / Neumann-series fact behind identities of the
form `1 + q + q² + ⋯ = (1 - q)⁻¹` for `‖q‖ < 1`.

The Mathlib proofs live in the three `complex_geometric_series_*` theorems.
They are then packaged as a proof-carrying `AnalyticCertificate` of kind
`Authority.BoundaryKind.absoluteConvergence`, and the same proposition is
recovered a second time only through
`AnalyticNumber.BoundaryCalculus.analytic_boundary_calculus` applied to the
authority token. Direct lower-layer ownership of the claim remains
impossible.

The umbrella `import Mathlib` can be narrowed (for example to
`Mathlib.Analysis.SpecificLimits.Normed` plus `Mathlib.Analysis.Complex.Basic`)
after `#check` exploration on the pinned toolchain.

This file deliberately asserts nothing about ζ, RH, zero location, analytic
continuation, functional equations, trace formulas, or global Euler products.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ComplexGeometricSeriesSummable.Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93

namespace AnalyticNumber
namespace Concrete
namespace GeometricSeries

/-- The complex geometric series is summable for `‖z‖ < 1`. Mathlib proof. -/
theorem complex_geometric_series_summable
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => z ^ n) :=
  summable_geometric_of_norm_lt_one hz

/-- The complex geometric series is absolutely summable for `‖z‖ < 1`.
Mathlib proof via `norm_pow` and the real geometric series at `r = ‖z‖`. -/
theorem complex_geometric_series_abs_summable
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => ‖z ^ n‖) := by
  simpa [norm_pow] using summable_geometric_of_lt_one (norm_nonneg z) hz

/-- The complex geometric series sums to `(1 - z)⁻¹` for `‖z‖ < 1`.
Mathlib proof. -/
theorem complex_geometric_series_hasSum
    {z : ℂ} (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) :=
  hasSum_geometric_of_norm_lt_one hz

/-- Analytic context for the geometric-series claim. `finiteHash` is metadata
only and is never used as proof input. -/
def geometricSeriesContext (_z : ℂ) :
    BoundaryCalculus.AnalyticContext where
  label := "complex geometric series |z| < 1"
  finiteHash := 0

/-- The analytic claim: absolute summability together with the sum formula. -/
def geometricSeriesClaim
    (z : ℂ) (_hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticClaim
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence where
  label := "absolute convergence and sum of complex geometric series"
  statement :=
    Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹)

/-- Proof-carrying certificate for the geometric-series claim. The `sound`
field is the actual analytic proposition and `soundProof` is built from the
Mathlib theorems above, not from `True`/`trivial`. -/
def geometricSeriesCertificate
    (z : ℂ) (hz : ‖z‖ < 1) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.absoluteConvergence
  label := "Mathlib proof: complex geometric series"
  publicHash := 0
  sound := (geometricSeriesClaim z hz).statement
  soundProof := by
    exact
      ⟨complex_geometric_series_abs_summable hz,
        complex_geometric_series_hasSum hz⟩

/-- Authority token carrying the geometric-series certificate. -/
def geometricSeriesToken
    (z : ℂ) (hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticAuthorityToken
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence
      (geometricSeriesClaim z hz) where
  certificate := geometricSeriesCertificate z hz
  boundaryMatches := rfl
  statementMatches := rfl

/--
The geometric-series proposition, recovered exclusively through the analytic
boundary calculus applied to the authority token.

The direct Mathlib proofs live inside the certificate; this theorem
demonstrates that the framework transports the claim only through the token.
-/
theorem geometric_series_through_boundary_calculus
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) :=
  BoundaryCalculus.analytic_boundary_calculus
    (Γ := geometricSeriesContext z)
    (b := Authority.BoundaryKind.absoluteConvergence)
    (q := geometricSeriesClaim z hz)
    ⟨geometricSeriesToken z hz⟩

/-- Direct lower-layer ownership of the geometric-series claim is impossible. -/
theorem geometric_series_no_direct_crossing
    {z : ℂ} (hz : ‖z‖ < 1) :
    ¬ BoundaryCalculus.DirectOwns
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence
      (geometricSeriesClaim z hz) :=
  BoundaryCalculus.no_direct_analytic_crossing

/-! ## Partial sums

The finite partial sums of the geometric series converge to `(1 - z)⁻¹`.
This is routed through its own certificate of kind
`Authority.BoundaryKind.custom "geometric-partial-sums-converge"`.
-/

/-- Partial sums of the complex geometric series tend to `(1 - z)⁻¹`.
Mathlib proof via `HasSum.tendsto_sum_nat`. -/
theorem finite_partial_geometric_sum_tends_to_inverse
    {z : ℂ} (hz : ‖z‖ < 1) :
    Filter.Tendsto
      (fun N : ℕ => ∑ n ∈ Finset.range N, z ^ n)
      Filter.atTop
      (nhds ((1 - z)⁻¹)) :=
  (complex_geometric_series_hasSum hz).tendsto_sum_nat

/-- The analytic claim for convergence of the finite partial sums. -/
def partialSumClaim
    (z : ℂ) (_hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticClaim
      (geometricSeriesContext z)
      (Authority.BoundaryKind.custom "geometric-partial-sums-converge") where
  label := "partial sums of complex geometric series converge to (1 - z)⁻¹"
  statement :=
    Filter.Tendsto
      (fun N : ℕ => ∑ n ∈ Finset.range N, z ^ n)
      Filter.atTop
      (nhds ((1 - z)⁻¹))

/-- Proof-carrying certificate for partial-sum convergence. -/
def partialSumCertificate
    (z : ℂ) (hz : ‖z‖ < 1) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.custom "geometric-partial-sums-converge"
  label := "Mathlib proof: geometric partial sums converge"
  publicHash := 0
  sound := (partialSumClaim z hz).statement
  soundProof := by
    exact finite_partial_geometric_sum_tends_to_inverse hz

/-- Authority token carrying the partial-sum certificate. -/
def partialSumToken
    (z : ℂ) (hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticAuthorityToken
      (geometricSeriesContext z)
      (Authority.BoundaryKind.custom "geometric-partial-sums-converge")
      (partialSumClaim z hz) where
  certificate := partialSumCertificate z hz
  boundaryMatches := rfl
  statementMatches := rfl

/-- Partial-sum convergence, recovered exclusively through the analytic
boundary calculus applied to the partial-sum token. -/
theorem partial_sums_through_boundary_calculus
    {z : ℂ} (hz : ‖z‖ < 1) :
    Filter.Tendsto
      (fun N : ℕ => ∑ n ∈ Finset.range N, z ^ n)
      Filter.atTop
      (nhds ((1 - z)⁻¹)) :=
  BoundaryCalculus.analytic_boundary_calculus
    (Γ := geometricSeriesContext z)
    (b := Authority.BoundaryKind.custom "geometric-partial-sums-converge")
    (q := partialSumClaim z hz)
    ⟨partialSumToken z hz⟩

end GeometricSeries
end Concrete
end AnalyticNumber
```
