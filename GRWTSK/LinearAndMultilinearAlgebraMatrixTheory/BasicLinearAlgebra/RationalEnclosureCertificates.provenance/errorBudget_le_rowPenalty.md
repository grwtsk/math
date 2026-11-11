# errorBudget_le_rowPenalty

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.LinearAlgebra.RationalEnclosureCertificates.errorBudget_le_rowPenalty` in [canonical source](../RationalEnclosureCertificates.lean).
Exact hashes, pins, source correspondence and reproduction: [shared record](README.md).

For entrywise nonnegative symmetric E and every real x, sum_ij E_ij|x_i x_j| <= q_D(E)(x). Multiply 2|ab|<=a^2+b^2 by E_ij and sum every entry. Symmetry identifies the column-square sum with the row-square sum; cancel two. Consumer: bound Program 6's errorBudget without maximum-row scalarization. Omitting entries or symmetry invalidates this argument.

Standard inequality consequence; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review NOT_RUN. Math #1807 / research #47.
