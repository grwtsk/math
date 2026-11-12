# weilRightArithmeticIntegrand

Stable source-local ID: `WFAL-v1-D1`. Version: 1. Date: 2026-11-11 (America/Los_Angeles).
Local attribution: grwtsk contributors. Primary MSC2020: 11M41; secondary 11M06, 30E20.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weilRightArithmeticIntegrand`.
Source: [WeilFiniteArithmeticLine.lean](../WeilFiniteArithmeticLine.lean).
Source SHA-256: `3774884047db719f1105b3d83e2e93ef4385088a680914693f661f8b2f4d99fc`.

## Typed statement and scope

Definition on positive levels N, characters chi, arbitrary complex W and real t. It is precisely the arithmetic RHS of weighted_completed_logDeriv_pair at s=2+i*t, including log(N), actual parity and both convergent prime-power series.

## Individual provenance and prior-art comparison

Inspected source dependencies: DirichletWeilIntegrand.lean: weighted_completed_logDeriv_pair, gammaParity_inverse; WeilGammaData.lean: gammaParity.

Math source pin: `53ae5532a7f973dcd1225972d58875c2330bd228`. Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is an assembly/specialization of those formal sources, not a newly claimed paper theorem. No new paper is directly adapted; existing individual paper-to-declaration lineage is retained in the dependencies' provenance records and is not relabeled as independently verified. No corpus-wide absence or novelty claim.

Consumer/source return: weilRightArithmeticIntegral and intervalIntegrable_weilRightArithmeticIntegrand.

## Proof, falsification boundary and evidence

The complete argument is in [README.md](README.md). No primitivity or regularity is built into the definition; its identification and integrability are supplied by the subsequent theorems.

Source status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**. Elaboration, dependency build, fresh kernel replay, transitive axiom audit, printed-statement correspondence and independent review: **NOT_RUN**. Manual source inspection is not any of those checks. No proof-execution command was run. No new axiom or admitted proof is authored.

Coordination: math#1801, scope comment 6817660391. No RP-OC registry migration or other program advance is asserted.
