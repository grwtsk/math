# quadratic_realification

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.LinearAlgebra.RationalEnclosureCertificates.quadratic_realification` in [canonical source](../RationalEnclosureCertificates.lean).
Exact hashes, pins, source correspondence and reproduction: [shared record](README.md).

For every complex H,v, q_R(H)(split v)=Re(sum_ij conj(v_i)H_ij v_j). Expand each real part and reassemble all four blocks [Re H,-Im H;Im H,Re H]. Finite-sum additivity uses pinned Complex.reAddGroupHom. Consumer: full complex-direction return. Hermitian H makes the real part the complete Hermitian value; that assumption is not required for this algebraic equality. Imaginary couplings cannot be discarded.

Standard algebraic consequence; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review NOT_RUN. Math #1807 / research #47.
