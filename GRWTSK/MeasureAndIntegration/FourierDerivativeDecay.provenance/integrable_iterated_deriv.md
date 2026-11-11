# integrable_iterated_deriv

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.integrable_iterated_deriv`.
For compact scoped-C-infinity f and every natural k, deriv^[k] f is integrable against Lebesgue measure. Smoothness gives continuity and the private support induction gives compact support.
Primary source: Sébastien Gouëzel and Floris van Doorn, [ContDiff/Deriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Deriv.lean), `ContDiff.iterate_deriv`, blob `ede41b77d146105bee637d6db9b91a1a21a48547`; support dependency mapped in [compactSupport_iterated_deriv.md](compactSupport_iterated_deriv.md).
Consumer: non-totalized interpretation of every derivative norm in the cost and application of the existing complex Fourier envelope.
Local consequence, not direct paper formalization. Complete argument, upstream licenses, pins and source limitations: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
