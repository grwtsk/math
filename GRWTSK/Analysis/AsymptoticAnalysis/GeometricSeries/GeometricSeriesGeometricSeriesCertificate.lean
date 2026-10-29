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
