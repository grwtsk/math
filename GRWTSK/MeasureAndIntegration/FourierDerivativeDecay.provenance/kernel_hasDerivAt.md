# kernel_hasDerivAt

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source-private helper: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean), namespace `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay`, source name `kernel_hasDerivAt`; no generated private name asserted.
For every complex z and real t, the real-variable derivative of exp(I*z*t) is exp(I*z*t)*(I*z). The real-to-complex cast has derivative one; apply constant multiplication and the complex exponential chain rule.
Primary sources: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo and Calle Sönne, [ExpDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ExpDeriv.lean), `HasDerivAt.cexp`, blob `4f23138d60cf767cc436cb60b942fd6c2e3409ea`; Sébastien Gouëzel and Yourong Zang, [RealDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/RealDeriv.lean), `Complex.ofRealCLM.hasDerivAt` usage, blob `dbf10e546853b9445331d48263c6e3d73f506393`.
Consumer: the product derivative in fourier_integral_deriv; correct plus-sign convention is retained. Local consequence; no novelty or direct paper claim. Argument and licenses: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
