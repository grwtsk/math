# Triangular integer-frequency partition closed

The final finite support identity in the autocorrelation branch is now
source-proved.

The proof splits each integer (k\in[-N,N]) into four cases:

1. (k=-N) or (k=N), the zero-weight endpoints;
2. (-N<k<0), represented uniquely as (k=-d) with (1\le d<N);
3. (k=0);
4. (0<k<N), represented uniquely as (k=d) with (1\le d<N).

The natural/integer bridge uses `Int.natAbs` explicitly.

Consequently the repository now derives

[
oxed{
	exttt{triangularAssembledFrequencySum}
=
	exttt{symmetricTriangularKernel}.
}
]

Combining this with the previously proved pair partition, offset reindexing,
diagonal evaluations, and Fourier phase identities discharges

[
oxed{
K_N(t)
=
rac1N G_N(t)overline{G_N(t)}.
}
]

Thus the autocorrelation component of the Fejer closed form is closed at source
level.

The remaining kernel theorem is the off-boundary sine conversion of the
geometric-series quotient.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
AUTOCORRELATION_IDENTITY_SOURCE_PROVED / OFF_BOUNDARY_SINE_CONVERSION_OPEN`.
