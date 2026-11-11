# nonneg_of_scaled_dyadic_lower

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.LinearAlgebra.RationalEnclosureCertificates.nonneg_of_scaled_dyadic_lower` in [canonical source](../RationalEnclosureCertificates.lean).
Exact hashes, pins, source correspondence and reproduction: [shared record](README.md).

For fixed mass>=0, if a>=-2^-k mass at every k, then a>=0, including mass=0. Handle zero mass directly; otherwise choose dyadic tolerance below delta/mass and apply the existing small-error order theorem. Consumer: metric-weighted accuracy completion. A fixed nonzero error or uncontrolled accuracy-dependent mass does not give this conclusion.

Standard order consequence; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review NOT_RUN. Math #1807 / research #47.
