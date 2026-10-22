# Pre-Gram Mellin-normalized dyadic packing

The raw safe dyadic packing was rejected because the exact Mellin dilation already makes its total positive Gram mass summable.

The successor removes only that known source dilation before the final Gram.

The repository already proves

dirichletBlock(X,w)
 = exp((1-w) log X) * action(X,mellinTest(w)).

Define the normalized dyadic source to be the existing unit-interval action. This is not an inverse fit: the factor removed is the exact analytic coordinate change already proved in MellinReadout.

For each actual zero, define safe plus/minus/center actions, split them into reflection-even and reflection-odd channels, and build axial/transverse three-point packings from consecutive dyadic windows.

Chebyshev gives a uniform, rather than decaying, action bound. Therefore the earlier summability no-go does not automatically apply to this normalized geometry.

The exact quartic monomial structure survives:

axialActionGram_j = a^4 A_j^A,
transverseActionGram_j = a^2 t^2 T_j^A,

so

Q_j^A = a^4 A_j^A + 3 a^2 t^2 T_j^A,

with A_j^A,T_j^A nonnegative.

The next question is now meaningful and noncircular: does the normalized action source have persistent/common Gram mass across windows, or does it collapse for an independent arithmetic reason? That must be answered from the centered discrepancy/action identities, not from RH or from the final Gram itself.
