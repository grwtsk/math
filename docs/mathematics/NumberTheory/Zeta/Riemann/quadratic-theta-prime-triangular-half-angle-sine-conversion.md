# Triangular half-angle sine conversion

The remaining sine conversion is now reduced to a unit-phase cancellation.

The source establishes the elementary identity

[
e^{2ix}-1
=
2i,e^{ix}sin x.
]

Applied to the geometric denominator and numerator, this gives

[
z(t)-1
=
2i,e^{pi i t}sin(pi t),
]

and

[
z(t)^N-1
=
2i,e^{pi iNt}sin(pi Nt).
]

On the off-boundary interval (0<|t|le1/2), the denominator sine is already
known to be nonzero, so the geometric-series quotient becomes

[
oxed{
G_N(t)
=
e^{pi i(N-1)t}
rac{sin(pi Nt)}{sin(pi t)}.
}
]

Therefore the only remaining step in
`TriangularGeometricBlockSineNormOffBoundaryClaim`
is to cancel the unit phase with its conjugate.

That final sub-obligation is named
`TriangularPhaseConjugateCancellationClaim`.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
HALF_ANGLE_SINE_CONVERSION_SOURCE_WRITTEN / PHASE_CONJUGATE_CANCELLATION_OPEN`.
