# Regression for the spectral-coordinate sign

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.SpectralProductDivisorReturn.arithmeticCoordinate_negative_anchor`.
Source: [SpectralProductDivisorReturn.lean](../SpectralProductDivisorReturn.lean).
Pins, digests, comparison and reproduction: [context](../../../FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.provenance/context.md).

For the imported arithmeticCoordinate(z)=1/2+i*z and anchor(beta)=i*beta, arithmeticCoordinate(anchor(-3/2))=2. Expand the real and imaginary parts and use i squared equals minus one.

This regression prevents silently identifying Program 6's plus-sign coordinate with Program 8's earlier minus-sign convention. No nonreal-character evenness is assumed. The positive-beta growth bound is a separate theorem and is not applied at this negative beta. Elementary algebra, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
