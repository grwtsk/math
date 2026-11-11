# Conditional return to the existing primitive-Dirichlet source target

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.SpectralProductDivisorReturn.satisfiesGRH_of_local_spectral_returns`.
Source: [SpectralProductDivisorReturn.lean](../SpectralProductDivisorReturn.lean).
Pins, digests, comparison and reproduction: [context](../../../FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.provenance/context.md).

Fix an existing Program 10 PrimitiveDirichletSource. For each natural n supply a finite real spectrum, nonzero anchor beta_n, complex slope, domain U_n and exact return from G_n to source.lFunction(1/2+i*z) through an exponential factor. Assume every zero of that actual analytically continued L-function with 0<Re(s)<1 has its spectral coordinate in some U_n. Then source.SatisfiesGRH, the existing open-strip proposition, follows.

Given such a zero, use exhaustive coverage to select n. The exact inverse-coordinate identity transports its zero equation. source_reality_of_local_return makes that coordinate real; Program 6's coordinate-on-line equivalence gives Re(s)=1/2. No new GRH predicate is introduced, and no boundary or completed-source equivalence is claimed.

Both the local source identities and all-height coverage are unsupplied arithmetic hypotheses. The argument is not an unconditional GRH proof, a finite verification of a universal premise, or a construction of arithmetic spectra. Pole/conductor/gamma/parity/prime-power completion data remain upstream obligations rather than omitted terms of a substitute form. Novelty UNASSESSED, no novelty claim. Elaboration, kernel replay, axiom audit, arithmetic certification and independent review NOT_RUN.
