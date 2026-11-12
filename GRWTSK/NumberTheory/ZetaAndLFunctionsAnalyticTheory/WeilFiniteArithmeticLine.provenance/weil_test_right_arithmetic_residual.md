# weil_test_right_arithmetic_residual

Stable source-local ID: `WFAL-v1-03`. Version: 1. Date: 2026-11-11 (America/Los_Angeles).
Local attribution: grwtsk contributors. Primary MSC2020: 11M41; secondary 11M06, 30E20.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_test_right_arithmetic_residual`.
Source: [WeilFiniteArithmeticLine.lean](../WeilFiniteArithmeticLine.lean).
Source SHA-256: `3774884047db719f1105b3d83e2e93ef4385088a680914693f661f8b2f4d99fc`.

## Typed statement and scope

For every primitive chi, positive source-avoiding T, A>=0 and unchanged admissible f supported in [-A,A], the finite pole-adjusted zero sum minus J(T,W_f) is literally orientedHorizontalBoundary(completedLFunction chi,f,T).

## Individual provenance and prior-art comparison

Inspected source dependencies: weil_finite_right_arithmetic_identity; WeilContourWeight.lean: analyticOnNhd_correlation_contour_weight; WeilHorizontalEdges.lean: orientedHorizontalBoundary_eq.

Math source pin: `53ae5532a7f973dcd1225972d58875c2330bd228`. Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is an assembly/specialization of those formal sources, not a newly claimed paper theorem. No new paper is directly adapted; existing individual paper-to-declaration lineage is retained in the dependencies' provenance records and is not relabeled as independently verified. No corpus-wide absence or novelty claim.

Consumer/source return: exists_primitive_finite_arithmetic_error_vanishes.

## Proof, falsification boundary and evidence

The complete argument is in [README.md](README.md). No absolute-square substitution off the critical line. The original weight is preserved; reflected Fourier pairing is the existing correlation_contour_weight_eq_reflected_product.

Source status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**. Elaboration, dependency build, fresh kernel replay, transitive axiom audit, printed-statement correspondence and independent review: **NOT_RUN**. Manual source inspection is not any of those checks. No proof-execution command was run. No new axiom or admitted proof is authored.

Coordination: math#1801, scope comment 6817660391. No RP-OC registry migration or other program advance is asserted.
