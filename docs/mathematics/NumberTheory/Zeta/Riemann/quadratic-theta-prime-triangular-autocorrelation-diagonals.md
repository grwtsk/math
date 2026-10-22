# Triangular autocorrelation diagonals

The autocorrelation identity is now reduced to an explicit finite partition.

For fixed offset (d), the positive diagonal consists of pairs

[
(a,b)=(b+d,b),qquad 0le b<N-d.
]

Every such pair contributes the same phase:

[
e^{2pi i(b+d)t},
overline{e^{2pi i b t}}
=
e^{2pi i d t}.
]

Therefore the source proves

[
oxed{
sum_{b<N-d}
e^{2pi i(b+d)t}
overline{e^{2pi i b t}}
=
(N-d)e^{2pi i d t}.
}
]

The negative-offset diagonal is the conjugate expression, and

[
rac{N-d}{N}
]

is proved to equal the previously defined triangular coefficient for (d<N).

Thus both the phase algebra and the multiplicity on every individual
autocorrelation diagonal are closed.

The only remaining autocorrelation theorem is
`GeometricBlockDiagonalPartitionClaim`: partition the full double sum
(G_N(t)overline{G_N(t)}) into the zero, positive, and negative offset
diagonals.  No analytic estimate is involved in that remaining step.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
AUTOCORRELATION_DIAGONALS_PROVED / DOUBLE_SUM_PARTITION_OPEN`.
