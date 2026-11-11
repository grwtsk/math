# Explicit bound on each closed ball

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.norm_le_on_ball_of_anchor_bound`.
Source: [FiniteSpectralAnchorGrowth.lean](../FiniteSpectralAnchorGrowth.lean).
Pins, digests, dated comparison and reproduction: [context](../FiniteSpectralProductMultiplicity.provenance/context.md).

Under beta>0, real r, norm(logDeriv(G_r,i*beta))<=M and norm(z-i*beta)<=R, the bound is exp(M*R+(R^2/2)*(M/beta)). The hypotheses imply M>=0 and R>=0. Squaring the nonnegative radius inequality and multiplying by nonnegative M/beta bounds the quadratic term; likewise bound the linear term and use exp monotonicity.

For a family with the same beta and M, this is a common bound on every ball regardless of index dimension. It is the missing estimate connecting earlier Program 8 modules, not an implementation of Montel or a proof that an arithmetic family has that M. Novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
