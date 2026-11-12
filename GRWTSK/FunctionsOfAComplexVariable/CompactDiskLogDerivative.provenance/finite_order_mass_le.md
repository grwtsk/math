# GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.finite_order_mass_le

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../CompactDiskLogDerivative.lean](../CompactDiskLogDerivative.lean).
Source Git blob: `7046ee1ab0f9ad820dba46ecdd604fa7e3f31db7`.
Source SHA-256: `c38f206c0be11e7f29b8aa8074e87a57fe8746b8c582a4ba7644535adda4bb40`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem finite_order_mass_le (f : ℂ → ℂ) (M : ℝ) (hM : 1 ≤ M)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (4 : ℝ))) (hf0 : f 0 ≠ 0)
    (hbound : ∀ w ∈ sphere 0 (4 : ℝ), ‖f w‖ ≤ M)
    (S : Finset ℂ) (hS : ∀ w ∈ S, ‖w‖ ≤ 11 / 4) :
    (∑ w ∈ S, (analyticOrderNatAt f w : ℝ)) ≤
      Real.log (M / ‖f 0‖) / Real.log (16 / 11 : ℝ)
```

## Argument, provenance, and consumer

Convert the SAME analytic source's finite natural orders into its integer disk divisor and compare every finite subset with the genuine Jensen mass. Consumed by norm_logDeriv_le_of_disk_data.

Exact reused declarations: JensenFiniteMultiplicity.finite_divisor_sum_le_jensen; CompactZeroInventory.AnalyticContext.actual_order.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Analyticity on the closed radius-4 disk, M>=1, a nonzero center and actual boundary ceiling remain explicit. No assigned multiplicities, totalized unsupported finsum, or zero-free region is asserted.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.finite_order_mass_le
```
