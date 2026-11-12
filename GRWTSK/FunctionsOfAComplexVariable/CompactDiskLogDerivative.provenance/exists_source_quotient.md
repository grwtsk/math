# GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.exists_source_quotient

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../CompactDiskLogDerivative.lean](../CompactDiskLogDerivative.lean).
Source Git blob: `7046ee1ab0f9ad820dba46ecdd604fa7e3f31db7`.
Source SHA-256: `c38f206c0be11e7f29b8aa8074e87a57fe8746b8c582a4ba7644535adda4bb40`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem exists_source_quotient (f : ℂ → ℂ)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (4 : ℝ))) (hf0 : f 0 ≠ 0) :
    ∃ (S : Finset ℂ) (g : ℂ → ℂ),
      (∀ w : ℂ, w ∈ S ↔ ‖w‖ ≤ 11 / 4 ∧ f w = 0) ∧
      AnalyticOnNhd ℂ g (closedBall 0 (3 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ),
        f w = g w * ∏ a ∈ S, (factor 3 a w) ^ analyticOrderNatAt f a)
```

## Argument, provenance, and consumer

Construct the complete inner zero set and its global removed quotient, including nonzero removable values and exact closed-disk factorization. Consumed by norm_logDeriv_le_of_disk_data.

Exact reused declarations: CompactZeroInventory.AnalyticContext.zeros, mem_zeros, positive_order, finite_order; FiniteBlaschkeRemoval.exists_removed_quotient.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

No complete zero inventory or quotient extension is an input. The produced finite set is noncomputable, not a numerical enumeration.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative.exists_source_quotient
```
