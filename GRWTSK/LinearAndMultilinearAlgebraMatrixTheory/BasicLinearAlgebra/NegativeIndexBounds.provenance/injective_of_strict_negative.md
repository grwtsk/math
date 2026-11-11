# GRWTSK.LinearAlgebra.NegativeIndexBounds.injective_of_strict_negative

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** Q(0)=0; L is K-linear; Q(Lx)<0 for every nonzero coefficient vector.

**Primary argument:** If Lx=Ly and x-y is nonzero, linearity gives L(x-y)=0. The strict-negative hypothesis then gives Q(0)<0, contradicting Q(0)=0. Thus x=y. No continuity, quadratic homogeneity, finite-dimensional ambient space or spectral theorem is used.

**Consumer:** Construct genuine negative frames without assuming their injectivity as an independent certificate field.

**Hostile control/limits:** The assertion fails for a constant negative function with Q(0)<0 and a zero map. Negativity only on selected coefficient vectors also does not suffice.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
