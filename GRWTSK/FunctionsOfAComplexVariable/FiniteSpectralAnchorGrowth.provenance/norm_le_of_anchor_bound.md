# One anchor bounds the entire finite spectral product

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.norm_le_of_anchor_bound`.
Source: [FiniteSpectralAnchorGrowth.lean](../FiniteSpectralAnchorGrowth.lean).
Pins, digests, dated comparison and reproduction: [context](../FiniteSpectralProductMultiplicity.provenance/context.md).

Let beta>0 and the original slope r be real. If norm(logDeriv(G_r,i*beta))<=M, then for every complex z, norm(G_r(z))<=exp(M*norm(z-i*beta)+(norm(z-i*beta)^2/2)*(M/beta)). The existing imaginary-anchor identity bounds the full reciprocal-square spectral mass by M/beta. The exact genus-one rewrite allows use of norm_resolventProduct_le; multiply the slope and mass inequalities by their nonnegative factors and apply monotonicity of exp.

Consumer: dimension-independent local boundedness. The existing nonreal-slope obstruction forbids dropping r real. No actual arithmetic bound M, determinant identity, normal-family subsequence or convergence is supplied. Standard finite-product estimate, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
