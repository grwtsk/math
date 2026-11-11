# decayWeight

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.decayWeight`.
Definition for every real A, natural k and complex z: exp(A*abs(Im z))/(1+norm(z))^k. The denominator is positive, including z=0. This is only a majorant, not a signed form.
Source specification: mandate RP-OC-01 weighted moment; actual attachment digest in [README.md](README.md).
Prior comparison: Alex Kontorovich, David Loeffler, Heather Macbeth and Sébastien Gouëzel, [FourierTransformDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Fourier/FourierTransformDeriv.lean), real-bilinear Fourier decay, blob `54260b884936c9479ca6a212d8b1c2bb8f4db37f`. No silent conversion from its real-frequency -2*pi normalization.
Consumer: the every-complex-frequency envelope, reflected-weight invariance and exact squared moment correspondence.
Local definition/consequence, not direct paper formalization. Argument, licenses, source-return boundary and pins: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
