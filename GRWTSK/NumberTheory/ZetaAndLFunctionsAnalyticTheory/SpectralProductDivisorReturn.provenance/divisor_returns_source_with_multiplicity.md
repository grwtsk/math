# Supply the concrete orders to Program 4's general divisor return

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.SpectralProductDivisorReturn.divisor_returns_source_with_multiplicity`.
Source: [SpectralProductDivisorReturn.lean](../SpectralProductDivisorReturn.lean).
Pins, digests, comparison and reproduction: [context](../../../FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.provenance/context.md).

Assume beta nonzero, U open, G_c=exp(h)*F on U, and exp(h) and F analytic at every point of U. The SAME constructed divisor identifies source zero locations and its weights equal analyticOrderAt(F,z) at every support location. Apply the newly published Program 4 finiteDivisor_source_return with divisor_identifies_model and the symmetric divisor_multiplicity_eq_order equality.

The underlying analytic mechanism is preservation of order under a nonvanishing analytic multiplier on an actual neighborhood. This implementation reuses the general theorem instead of duplicating its proof. Repeated roots remain repeated. Neither an arithmetic return identity nor analyticity is inferred from a zero list. Standard composition, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
