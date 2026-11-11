# primitiveGRH_of_weighted_interval_certificate_coverage

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.WeilFiniteEnclosureReturn.primitiveGRH_of_weighted_interval_certificate_coverage` in [canonical source](../WeilFiniteEnclosureReturn.lean).
Exact hashes, source pins, OCERT-1 comparison and reproduction: [shared record](../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureCertificates.provenance/README.md).

The primitive Dirichlet target follows from exact-source finite-enclosure coverage on the dense dictionaries of supplied Program 2 EvaluationModels and the explicit arithmetic return. Unlike the generic consumer, no additional continuity premise is required: use `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.continuous_quadratic` and then primitiveGRH_of_interval_certificate_coverage.

The imported source was read at `86e182d7abbc9d9622be4b95037d735f0eb1917d`, `GRWTSK/FunctionalAnalysis/WeightedConjugatePairingTopology.lean`, blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b`. This is source-level theorem composition, not an assumption named continuity. Its proof is itself an unelaborated candidate, not verified by publication. The model is the FULL summable signed pairing, not its positive majorant. The actual arithmetic normed test spaces, Fourier evaluations, reflection/multiplicity data, density, enclosures, full Weil identity and universal coverage still require proofs. No GRH proof or realized arithmetic operator is claimed.

Standard conditional composition; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit, byte/runtime refinement and independent review NOT_RUN. Math #1807 / research #47.
