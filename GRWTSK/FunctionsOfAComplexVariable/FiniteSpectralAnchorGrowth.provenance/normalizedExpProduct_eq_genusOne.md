# Exact genus-one rewriting of the normalized product

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.normalizedExpProduct_eq_genusOne`.
Source: [FiniteSpectralAnchorGrowth.lean](../FiniteSpectralAnchorGrowth.lean).
Pins, digests, dated comparison and reproduction: [context](../FiniteSpectralProductMultiplicity.provenance/context.md).

For real indexed roots, beta nonzero and complex c,z, G_c(z) equals the anchored genus-one product with parameters (lambda_j-a)^(-1) and slope logDeriv(G_c,a), where a=i*beta. For each index, 1-(z-a)/(lambda_j-a)=(z-lambda_j)/(a-lambda_j). Multiplying gives the normalized root product. Combining the exponential factors yields exponent (logDeriv(G_c,a))*(z-a)+(z-a)*sum_j(lambda_j-a)^(-1)=c*(z-a), using the existing finite logarithmic derivative identity.

Consumer: the entire growth bound for the ACTUAL normalized product. Finite product multiplication, inversion and exp_sum are standard APIs; this is not a matrix or infinite regularized determinant theorem. Omitting the slope correction changes the function. Novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
