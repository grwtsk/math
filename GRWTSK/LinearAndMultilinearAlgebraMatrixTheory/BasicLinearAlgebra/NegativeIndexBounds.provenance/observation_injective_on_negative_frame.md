# GRWTSK.LinearAlgebra.NegativeIndexBounds.observation_injective_on_negative_frame

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** observe:V -> W and L:K^n -> V are K-linear; Q is nonnegative on the entire kernel of observe; Q(Lx)<0 for every x!=0.

**Primary argument:** If observe(Lx)=observe(Ly), the image of x-y is in the observation kernel. When x-y is nonzero, that vector has both nonnegative and strictly negative Q-value. Contradiction proves injectivity of observe composed with L. This argument even derives injectivity without using an additional frame-injectivity premise.

**Consumer:** Convert control on the whole observation kernel into a dimension bound on all negative frames.

**Hostile control/limits:** Testing only finitely many vectors in the kernel is not the stated hypothesis. For indefinite forms an isotropic vector is not automatically in the radical.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
