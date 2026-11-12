# GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.norm_logDeriv_le_of_disk_data_centered

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../CompactDiskLogDerivative.lean](../CompactDiskLogDerivative.lean).
Source Git blob: `7046ee1ab0f9ad820dba46ecdd604fa7e3f31db7`.
Source SHA-256: `c38f206c0be11e7f29b8aa8074e87a57fe8746b8c582a4ba7644535adda4bb40`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem norm_logDeriv_le_of_disk_data_centered (f : ℂ → ℂ) (c z : ℂ)
    (M eta delta : ℝ) (hM : 1 ≤ M) (heta : 0 < eta) (hdelta : 0 < delta)
    (hf : AnalyticOnNhd ℂ f (closedBall c (8 : ℝ)))
    (hbound : ∀ w ∈ closedBall c (8 : ℝ), ‖f w‖ ≤ M)
    (hfloor : eta ≤ ‖f c‖) (hz : ‖z - c‖ ≤ 3)
    (hsep : ∀ a ∈ closedBall c (11 / 2 : ℝ), f a = 0 → delta ≤ ‖z - a‖) :
    f z ≠ 0 ∧
      ‖logDeriv f z‖ ≤ (1 + Real.log (M / eta)) *
        (80 + (2 / delta + 1) / Real.log (16 / 11 : ℝ))
```

## Argument, provenance, and consumer

Transport the literal source by c+2w, derive the derivative factor 2, and pay the rescaled gap. Consumed by DirichletHorizontalLogDerivative.norm_logDeriv_poleCleared_on_separated_height.

Exact reused declarations: norm_logDeriv_le_of_disk_data; the complex HasDerivAt chain rule and logDeriv definition.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Radii are 8,11/2,3; constants are conservative, not the sharper 8/6/3 written bound. The source F is not replaced by an unconnected normalized model.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.norm_logDeriv_le_of_disk_data_centered
```
