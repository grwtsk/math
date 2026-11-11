# summable_norm_correlation_of_moment

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilCorrelationDecay.lean](../WeilCorrelationDecay.lean); `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.summable_norm_correlation_of_moment`.
For arbitrary index type, complex locations z_i, nonnegative weights m_i, compact smooth supported f and every natural k, summability of the entire moment m_i*w(z_i)^2 implies absolute summability of m_i times the original correlation transform. Multiply the preceding norm bound and apply the summable comparison test.
Canonical source identity: [WeilCorrelationFourier.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean), grwtsk contributors, `fourier_correlation_eq_reflected_product`, blob `8b2afb9be022253be047c4e47cbd42d51134dee1`. Pinned comparison API: `Summable.of_norm_bounded` already used in [WeightedConjugatePairing.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/FunctionalAnalysis/WeightedConjugatePairing.lean), blob `727272783e1502265da0cb4281bd5c793a924e69`.
Consumer: test-function portion of zero-sum convergence. The actual arithmetic divisor and its moment finiteness are NOT supplied. A finite head or fixed tolerance is not the premise.
Full argument, exact source and dependency pins/licenses, and open source application: [README.md](README.md). Local consequence, no direct paper/novelty claim.
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
