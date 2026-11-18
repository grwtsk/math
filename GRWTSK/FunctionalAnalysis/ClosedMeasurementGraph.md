# Complete energy graphs and bounded signed perturbations

Local attribution: grwtsk contributors.
Owner: [ClosedMeasurementGraph.lean](ClosedMeasurementGraph.lean).
Namespace: `GRWTSK.FunctionalAnalysis.ClosedMeasurementGraph`.
Subject: unbounded operators and graph/form topology (MSC 47A05, 47A07).

## Exact mathematical construction

Given normed spaces H,E,F over a real-or-complex field, bounded linear
observations A_i:H->F and R_i:E->F define the SUBMODULE
`graph={(x,y): forall i, R_i y=A_i x}`. `graph_isClosed` proves closedness
as the intersection of closed equalizers. `graph_complete` derives
completeness from actual CompleteSpace instances for H and E.

`Separates` asserts joint separation of energy vectors by ALL R_i.
`input_injective` derives faithfulness of the input projection. `operator`
uses the existing Mathlib `Submodule.toLinearPMap`; `operator_graph`
discharges its valid-graph condition and `operator_isClosed` proves
Mathlib's actual closed-operator predicate. No competing operator API or
assumed closedness field is introduced.

`graphEnergy=||x||^2+||y||^2` lies between the squared product max norm and
twice that norm. `exists_energy_limit` retains ALL observation equations
and gives convergence in that energy. `bounded_perturbation_graph_bounds`
proves the explicit two-sided estimates after adding b(x), with
`|b(x)|<=C||x||^2`, C>=0. The inequality works even without assuming b is
quadratic; a quadratic-form application must separately supply its
sesquilinear structure.

`invisible_vector_obstruction` proves that nonzero unseen energy makes
the observation relation multivalued. Graph closedness alone does not
fix this, nor does it imply density of the partial-operator domain.

## Provenance and actual consumer

The primary argument is the local closed-equalizer proof above. The exact
Mathlib APIs are from the pinned `Topology/Algebra/Module/LinearPMap.lean`
and `LinearAlgebra/LinearPMap.lean`. Barry Simon's supplied 2018 Kato review,
Section 10, pp.200--206, supplies the methodological distinction between
closed forms, their representation, and positivity; its Theorems 10.5,
10.6, 10.8 and 10.12 are NOT asserted as adapted Lean results here.
PDF SHA-256: `a19894fb242db62b033a9276acdef422e4ec609aec2b84c1edfc49af890983c0`.

The intended original-source consumer is the gamma translation-energy
domain in `WeilFixedWindowSemibounded`. Its cutoff maps, joint separation,
exact integral/domain correspondence, density and self-adjoint association
remain OPEN. The source-specific norm estimates are supplied by that
module, but do not instantiate those remaining analytic constructions.
This is a completed general graph argument at source-candidate level,
not completion of the original maximal gamma-domain formalization.
Related issue: [math#1258](https://github.com/grwtsk/math/issues/1258).

## Evidence and limits

Source base: `grwtsk/math@c93bb944b56366ad636ddec0eadc0fadd0d6fe57`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; pins and root imports unchanged.
This is a **SOURCE_PROOF_CANDIDATE**. Elaboration, exact expected signatures,
fresh kernel replay, transitive axiom audit, and independent mathematical
review: **NOT_RUN**. No earlier source-bound acceptance is overwritten.
No theorem-level novelty is claimed; prior-art completeness is UNASSESSED.
Publication and finite diagnostics are not proof acceptance. Coordination:
[math#1837](https://github.com/grwtsk/math/issues/1837).
