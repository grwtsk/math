# norm_fourier_integral_le_decay

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.norm_fourier_integral_le_decay`.
For every supported compact scoped-C-infinity f, real A, natural k and complex z, norm(F(z)) <= derivativeL1Cost f k * decayWeight A k z. Divide the preceding multiplied inequality only by the proved positive (1+norm(z))^k.
Sources: mandate RP-OC-01; [multiplied bound](norm_fourier_integral_mul_one_add_pow_le.md) and its individually mapped FTC/support dependencies. Prior comparison: Alex Kontorovich, David Loeffler, Heather Macbeth and Sébastien Gouëzel, [FourierTransformDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Fourier/FourierTransformDeriv.lean), real-bilinear decay and normalization, blob `54260b884936c9479ca6a212d8b1c2bb8f4db37f`.
Consumer: WeilCorrelationDecay applies this to the original correlation and existing WeightedConjugatePairing. The explicit divisor moment remains an independent hypothesis.
Full analytic argument, exact source hashes, authorship/license map and arithmetic boundary: [README.md](README.md). No direct paper-formalization or novelty claim.
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
