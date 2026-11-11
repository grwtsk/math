# decayWeight_sq

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.decayWeight_sq`.
For all A,k,z, the squared majorant equals exp(2*A*abs(Im z))/(1+norm(z))^(2*k). Uses exponent addition and natural power multiplication.
Source: exact mandate RP-OC-01 moment normalization. Exponential dependency/comparison: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo and Calle Sönne, [ExpDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ExpDeriv.lean), blob `4f23138d60cf767cc436cb60b942fd6c2e3409ea`, and its imported exp_add API.
Consumer: exact identification of the weight in the conditional full signed-pairing bound. Norm is radial, not a height-only cutoff; the imaginary displacement is retained.
Local consequence, no direct paper/novelty claim. Argument, pin and license details: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
