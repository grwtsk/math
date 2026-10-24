# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ExponentialSeries.Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ebc70a6d29de26f4c24faa5e88f72668f100156` · SHA-256 `e4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
