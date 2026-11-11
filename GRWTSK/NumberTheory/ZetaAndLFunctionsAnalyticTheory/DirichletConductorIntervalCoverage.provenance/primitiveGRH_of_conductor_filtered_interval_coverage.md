# `primitiveGRH_of_conductor_filtered_interval_coverage`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates.primitiveGRH_of_conductor_filtered_interval_coverage`.
Canonical source: [../DirichletConductorIntervalCoverage.lean](../DirichletConductorIntervalCoverage.lean).
Source SHA-256: `c18685efb3f7580716f94fc2e28cf6ce94d5d97542ce1b4ab39133affc54ff33`.

## Statement and quantifiers

Use the existing actual primitive Dirichlet source and GRH target. Supply a topological test space at every natural support radius, a dense dictionary, continuous original forms, and the existing ArithmeticWindowModel for each nonprincipal source. Each code supplies a finite real matrix, coordinates, and a fixed rational nonnegative metric value. A strictly positive source scale restores any conductor normalization: scale(source)*quadratic(matrix,coordinates) <= originalForm(encodedCode).

A sound source-enclosure oracle and the original rational Gram check must accept packets for EVERY principal source OR nonprincipal conductor below conductorCutoff(A), every window A, every code and every dyadic accuracy. The packet metric must equal the fixed code metric, and its tolerance must equal that requested accuracy. With the explicitly supplied all-test return from the full original forms to PrimitiveDirichletGRH, conclude that unchanged target.

## Primary analytical argument

Split on the principal-or-below-cutoff disjunction. In that branch Program 10's nonneg_of_certified_packets, with the finite matrix value itself as consumer and a reflexive comparison, proves each encoded matrix value nonnegative. Multiply by the positive source scale and use the original-source lower comparison. Continuity and density extend to every test in the specified window. Outside that branch the source is nonprincipal and its actual conductor is at least the exact cutoff; the original Program 7 arithmetic bound and model.source_eq supply positivity directly. Apply the retained returnsToArithmetic premise.

No division by the metric value occurs, so zero/singular metric directions are included. The source scale is fixed at a source and does not change with accuracy. A natural nonprincipal choice is log(2*q), but identification of q with the primitive conductor must still be supplied when constructing the model. The principal source is not passed to the q>=2 tail estimate; it stays in residual packet coverage with both applicable poles.

## Source comparison, consumers and hostile cases

Exact inspection base: grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8. Reuse Program 10's IntervalMatrixCertificateConsumer.nonneg_of_certified_packets and WeilFiniteEnclosureReturn, and Program 7's unchanged ArithmeticWindowModel and primitiveArithmeticValue_nonneg_of_cutoff. See [the companion source comparison](../DirichletConductorTailBudgets.provenance/README.md) for pins and exact-source reproduction.

This is a conditional interface composition, not a new Weil criterion or proof of residual positivity. Finite positive prefixes do not give universal coverage. A sound checker does not produce certificates. A finite matrix does not represent the whole test space without the explicit return. Real-only tests cannot replace complex tests; callers must use complete realification where needed. An inflated imprimitive modulus does not instantiate the primitive source. The test dictionary, actual arithmetic enclosures, full smooth-domain coverage and completed explicit-formula return are still unsupplied.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Elaboration/build, fresh kernel replay, transitive axiom audit, runtime refinement and independent analytical review: `NOT_RUN`. No novelty, arithmetic sign or GRH status is promoted. Coordination: math#1804 and #1807; research#50.
