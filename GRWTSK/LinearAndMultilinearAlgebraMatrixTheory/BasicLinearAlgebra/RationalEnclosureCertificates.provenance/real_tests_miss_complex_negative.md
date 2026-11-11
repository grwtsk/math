# real_tests_miss_complex_negative

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.LinearAlgebra.RationalEnclosureCertificates.real_tests_miss_complex_negative` in [canonical source](../RationalEnclosureCertificates.lean).
Exact hashes, pins, source correspondence and reproduction: [shared record](README.md).

H=[[1,2i],[-2i,1]] has nonnegative Hermitian quadratic on every real vector but value -2 at (1,i). On real vectors the imaginary mixed terms have zero real part and the value is x_0^2+x_1^2; direct substitution gives the negative complex value. Consumer: hostile control against replacing complex tests by real coefficient vectors. This synthetic matrix is not an arithmetic zero or GRH counterexample; the Lean control was not executed.

Standard countermodel; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review NOT_RUN. Math #1807 / research #47.
