# Triangular integer-frequency partition

The last autocorrelation rewrite has been reduced to the support partition of the
integer interval.

The source now proves coefficient-level identification on all three interior
pieces:

[
w_N(d)=rac{N-d}{N},qquad 1le d<N,
]

[
w_N(-d)=rac{N-d}{N},
]

and

[
w_N(0)=1.
]

It also proves the positive- and negative-frequency sums agree exactly with the
two sums in `triangularAssembledFrequencySum`.

The endpoint frequencies (k=pm N) already have coefficient zero.

Thus the only remaining finite statement is
`TriangularIntegerFrequencyPartitionClaim`:

[
[-N,N]_{mathbf Z}
=
{-N,N}
sqcup
{-N<k<0}
sqcup
{0}
sqcup
{0<k<N},
]

expressed using the repository finsets.

Once that support identity is supplied, the source proves
`TriangularAssembledFrequencyKernelClaim`, which discharges the full
autocorrelation identity.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FREQUENCY_COEFFICIENTS_IDENTIFIED / INTEGER_INTERVAL_PARTITION_OPEN`.
