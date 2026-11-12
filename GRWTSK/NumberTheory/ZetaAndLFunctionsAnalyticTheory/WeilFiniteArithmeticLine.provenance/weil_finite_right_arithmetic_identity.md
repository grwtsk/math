# weil_finite_right_arithmetic_identity

Stable source-local ID: `WFAL-v1-02`. Version: 1. Date: 2026-11-11 (America/Los_Angeles).
Local attribution: grwtsk contributors. Primary MSC2020: 11M41; secondary 11M06, 30E20.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_finite_right_arithmetic_identity`.
Source: [WeilFiniteArithmeticLine.lean](../WeilFiniteArithmeticLine.lean).
Source SHA-256: `3774884047db719f1105b3d83e2e93ef4385088a680914693f661f8b2f4d99fc`.

## Typed statement and scope

For every primitive chi, T>0 avoiding all source zeros on both horizontal lines, and entire W, S(T,W)-P_N(W)=H(T,W)+J(T,W). S uses the existing heightWindow and zeroMultiplicity; P_N retains W(0)+W(1) exactly at N=1.

## Individual provenance and prior-art comparison

Inspected source dependencies: WeilRectangleResidues.lean: weil_rectangle_residue_identity; DirichletWeilIntegrand.lean: weighted_completed_logDeriv_pair; Mathlib intervalIntegral.integral_comp_neg and integral_sub at the exact pin.

Math source pin: `53ae5532a7f973dcd1225972d58875c2330bd228`. Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is an assembly/specialization of those formal sources, not a newly claimed paper theorem. No new paper is directly adapted; existing individual paper-to-declaration lineage is retained in the dependencies' provenance records and is not relabeled as independently verified. No corpus-wide absence or novelty claim.

Consumer/source return: weil_test_right_arithmetic_residual and completedZeta_finite_arithmetic_residual.

## Proof, falsification boundary and evidence

The complete argument is in [README.md](README.md). The height-avoidance premise is explicit here and discharged from the source-selected sequence later. No integral/index comparison is assumed. This is finite source return, not the infinite arithmetic Weil identity.

Source status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**. Elaboration, dependency build, fresh kernel replay, transitive axiom audit, printed-statement correspondence and independent review: **NOT_RUN**. Manual source inspection is not any of those checks. No proof-execution command was run. No new axiom or admitted proof is authored.

Coordination: math#1801, scope comment 6817660391. No RP-OC registry migration or other program advance is asserted.
