# GRWTSK.NumberTheory.WeilNegativeIndexReturn.primitiveGRH_of_zero_indices

Local mathematical attribution: grwtsk contributors.
Source: [WeilNegativeIndexReturn.lean](../WeilNegativeIndexReturn.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** All source/window indices vanish, with the homogeneity hypotheses above, and an explicit returnsToArithmetic map from universal nonnegativity of these exact forms to the pre-existing PrimitiveDirichletGRH.

**Primary argument:** Convert universal zero index into universal nonnegativity using all_window_index_zero_iff; apply the supplied arithmetic return. The result uses the unchanged actual primitive-character target, not an invented equivalent predicate.

**Consumer:** The final backward-chain interface for Program 3 after its arithmetic realization and universal sign obligations are discharged.

**Hostile control/limits:** returnsToArithmetic is an unproved input here. It must concern the full prime-power, conductor, gamma/parity and both applicable pole terms on genuine test domains. This is not a proof of GRH.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
