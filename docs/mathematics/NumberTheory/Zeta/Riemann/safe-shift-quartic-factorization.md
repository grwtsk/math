# Exact quartic factorization of the safe-shift positive source

The axial/transverse decomposition now factors the horizontal defect and height exactly.

Write

a = Re(s)-1/2,
t = Im(s).

For each prime-power source event, normalize the axial vertical coordinate by a^2 and the transverse vertical coordinate by a*t. The previously proved vanishing theorems make these total definitions valid at a=0 and t=0.

Because all three y-coordinates in a stage share the same scalar factor, determinant multilinearity gives exact oriented-area identities

A_oriented = a^2 * A_normalized,
T_oriented = a*t * T_normalized.

Squaring gives the exact positive Gram factorizations

axialGram_n = a^4 * A_n,
transverseGram_n = a^2*t^2 * T_n,

where A_n and T_n are themselves squared Gram volumes and hence nonnegative.

Therefore

Q_n
 = a^4 A_n + 3 a^2 t^2 T_n.

This is no longer only a parity or zero-locus match: the monomial factors of the target quartic have been exposed exactly.

Since

-witnessTrace(a,t)/4 = a^4 + 3 a^2 t^2,

the sole coefficient-alignment problem is now explicit. If A_n=T_n=lambda_n, then

Q_n = lambda_n * (-witnessTrace(a,t)/4)

exactly.

For an asymptotic proof it is enough to prove that A_n and T_n converge to the same positive source-derived limit, or to prove that their difference belongs to the complete residual with decay to zero while one common coefficient converges positively.

This coefficient alignment—not positivity, parity, prime selection, or monomial factorization—is now the central arithmetic/analytic obstruction.
