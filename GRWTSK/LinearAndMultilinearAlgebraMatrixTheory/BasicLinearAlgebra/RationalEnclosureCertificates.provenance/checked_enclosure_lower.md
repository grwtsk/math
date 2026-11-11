# checked_enclosure_lower

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.LinearAlgebra.RationalEnclosureCertificates.checked_enclosure_lower` in [canonical source](../RationalEnclosureCertificates.lean).
Exact hashes, pins, source correspondence and reproduction: [shared record](README.md).

If the true real matrix H is enclosed by packet P and intervalCheck P C=true, then -epsilon q_G(x)<=q_H(x) for every real x. Decode the radius guard and Gram acceptance; reuse checked_rational_matrix_nonneg, Program 6's absolute error bound and the rowPenalty bound. Combine the lower inequalities. The enclosure is an independent premise. The guard does not certify metric positivity, arithmetic source identity or certificate existence. Consumer: error-safe finite matrix lower bounds, not GRH or runtime verification.

Standard conditional consequence; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, axiom audit, byte refinement and independent review NOT_RUN. Math #1807 / research #47.
