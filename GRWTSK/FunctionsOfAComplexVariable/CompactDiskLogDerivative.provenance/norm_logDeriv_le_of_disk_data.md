# GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.norm_logDeriv_le_of_disk_data

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../CompactDiskLogDerivative.lean](../CompactDiskLogDerivative.lean).
Source Git blob: `7046ee1ab0f9ad820dba46ecdd604fa7e3f31db7`.
Source SHA-256: `c38f206c0be11e7f29b8aa8074e87a57fe8746b8c582a4ba7644535adda4bb40`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem norm_logDeriv_le_of_disk_data (f : ℂ → ℂ) (M eta delta : ℝ)
    (hM : 1 ≤ M) (heta : 0 < eta) (hdelta : 0 < delta)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (4 : ℝ)))
    (hbound : ∀ w ∈ closedBall 0 (4 : ℝ), ‖f w‖ ≤ M)
    (hfloor : eta ≤ ‖f 0‖) (z : ℂ) (hz : ‖z‖ ≤ 9 / 4)
    (hsep : ∀ a ∈ closedBall 0 (11 / 4 : ℝ), f a = 0 → delta ≤ ‖z - a‖) :
    f z ≠ 0 ∧
      ‖logDeriv f z‖ ≤ (1 + Real.log (M / eta)) *
        (80 + (1 / delta + 1) / Real.log (16 / 11 : ℝ))
```

## Argument, provenance, and consumer

Derive both the principal-part and analytic regular-factor costs; supply source nonvanishing and a bound on the whole logarithmic derivative. Consumed by the centered theorem.

Exact reused declarations: The preceding two new declarations; BlaschkeQuotientLogarithm.exists_log_from_quotient; NormalizedLogDerivativeBound.norm_logDeriv_of_factorization.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Requires actual disk ceiling and positive anchor/distance floor. It derives the logarithm and its normalization. It does not infer growth from divisor data alone.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.norm_logDeriv_le_of_disk_data
```
