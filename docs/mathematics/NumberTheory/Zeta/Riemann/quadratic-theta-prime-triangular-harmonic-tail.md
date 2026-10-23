# Harmonic tail model for triangular smoothing

The triangular/Fejer kernel has global tails, so the correct target is not
compact support.  The natural pointwise model away from the transition is a
leakage decaying like inverse lattice distance.

At normalized cutoff (N), this gives a schematic contribution

[
rac{X/N}{d}
]

at lattice distance (d) from the boundary.  Summing over (d) produces

[
rac{X}{N}sum_{dle X}rac1d
]

and therefore only a harmonic logarithm.

The new source defines

[
	exttt{triangularHarmonicTailMajorant}
=
Crac{X}{N}log(4X),H_X,
]

where (H_X) is the harmonic number, and proves using Mathlib's
`harmonic_le_one_add_log` that

[
oxed{
	exttt{tailMajorant}
le
Crac{X}{N}log(4X)(1+log X).
}
]

Thus the tail does not introduce a new power exponent.

With the balanced cutoff

[
Nasymp X^{1/3},
]

the power remains

[
X^{2/3}
]

up to logarithms, strictly below the (X^{3/4}) target.

The remaining theorem is now
`TriangularHarmonicTailDecayClaim`: prove the actual triangular smoothing tail
obeys the required pointwise (1/d)-type leakage estimate.  This is a more
faithful analytic supplier than exact localization.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
HARMONIC_TAIL_AGGREGATION_PROVED / POINTWISE_TRIANGULAR_TAIL_DECAY_OPEN`.
