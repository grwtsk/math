# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ExponentialSeries.Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5df4e8773134a0194d815c5b6a30940a5319b1e` · SHA-256 `396b0e0b4902873122610a680614ec8dced83e4393da744c5e42da4464242929`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ComplexExpSeriesHasSum.Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ComplexExpSeriesHasSum.Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"e4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Mathlib/ExponentialSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: the complex exponential series

Mathlib-backed formal proofs, for every `z : ℂ`:

* `Summable (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ))`;
* `HasSum (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ)) (Complex.exp z)`;
* `AnalyticAt ℂ Complex.exp z`;
* `DifferentiableAt ℂ Complex.exp z`.

The conjunction is packaged as a `MathlibProofCertificate` and recovered a
second time only through the analytic boundary calculus. No authority shell
is used as evidence.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ComplexExpSeriesHasSum.Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e

namespace AnalyticNumber
namespace MathlibBridge
namespace ExponentialSeries

/-- The exponential series sums to `Complex.exp z`. Mathlib proof via the
normed-algebra exponential (`NormedSpace.expSeries_div_hasSum_exp`) and the
bridge `Complex.exp_eq_exp_ℂ`. -/
theorem complex_exp_series_hasSum
    (z : ℂ) :
    HasSum
      (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ))
      (Complex.exp z) := by
  simpa [Complex.exp_eq_exp_ℂ] using NormedSpace.expSeries_div_hasSum_exp z

/-- The exponential series is summable. Mathlib proof. -/
theorem complex_exp_series_summable
    (z : ℂ) :
    Summable
      (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ)) :=
  (complex_exp_series_hasSum z).summable

/-- `Complex.exp` is analytic at every point. Mathlib proof: `Complex.exp`
is entire, and complex-differentiable functions are analytic. -/
theorem complex_exp_analyticAt
    (z : ℂ) :
    AnalyticAt ℂ Complex.exp z :=
  Complex.differentiable_exp.analyticAt z

/-- `Complex.exp` is differentiable at every point. Mathlib proof. -/
theorem complex_exp_differentiableAt
    (z : ℂ) :
    DifferentiableAt ℂ Complex.exp z :=
  Complex.differentiable_exp z

/-- Analytic context for the exponential-series claim. -/
def exponentialSeriesContext (_z : ℂ) :
    BoundaryCalculus.AnalyticContext where
  label := "Mathlib complex exponential series"
  finiteHash := 0

/-- The analytic claim: summability, the sum identity, analyticity, and
differentiability of `Complex.exp`. -/
def exponentialSeriesClaim
    (z : ℂ) :
    BoundaryCalculus.AnalyticClaim
      (exponentialSeriesContext z)
      (Authority.BoundaryKind.custom "complex-exponential-series") where
  label := "Mathlib proof: complex exponential series and analyticity"
  statement :=
    Summable
      (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ)) ∧
      HasSum
        (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ))
        (Complex.exp z) ∧
      AnalyticAt ℂ Complex.exp z ∧
      DifferentiableAt ℂ Complex.exp z

/-- The Mathlib-backed proof certificate for the exponential-series claim. -/
def exponentialSeriesMathlibProofCertificate
    (z : ℂ) :
    MathlibProofCertificate
      (exponentialSeriesContext z)
      (Authority.BoundaryKind.custom "complex-exponential-series")
      (exponentialSeriesClaim z) where
  theoremName := "complex exponential series"
  moduleName := "AnalyticNumber.Mathlib.ExponentialSeries"
  proof := by
    exact
      ⟨complex_exp_series_summable z,
        complex_exp_series_hasSum z,
        complex_exp_analyticAt z,
        complex_exp_differentiableAt z⟩

/-- The exponential-series theorem, transported through the boundary
calculus rather than returned directly. -/
theorem exponential_series_through_boundary_calculus
    (z : ℂ) :
    Summable
      (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ)) ∧
      HasSum
        (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ))
        (Complex.exp z) ∧
      AnalyticAt ℂ Complex.exp z ∧
      DifferentiableAt ℂ Complex.exp z :=
  mathlib_proof_through_boundary_calculus
    (exponentialSeriesMathlibProofCertificate z)

/-- Direct lower-layer ownership of the exponential-series claim is
impossible. -/
theorem exponential_series_no_direct_crossing
    (z : ℂ) :
    ¬ BoundaryCalculus.DirectOwns
      (exponentialSeriesContext z)
      (Authority.BoundaryKind.custom "complex-exponential-series")
      (exponentialSeriesClaim z) :=
  BoundaryCalculus.no_direct_analytic_crossing

end ExponentialSeries
end MathlibBridge
end AnalyticNumber
```
