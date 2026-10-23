# Logarithmic-loss maximal adapter

The weighted Fourier audit shows that the ordinary Sobolev route collides at
the critical (1/2) threshold.  A logarithmic maximal theorem is still
compatible with the nonlinear descent.

The recurrence target already allows arbitrary (eta>0).  Therefore a bound

[
|	hetaError(2u)-	hetaError(2X)|
le
S X^{Q(ho)}(log X)^2
]

is sufficient.  For every (eta>0),

[
(log X)^2le X^{eta/2}
]

for all sufficiently large (X), so the estimate becomes

[
|	hetaError(2u)-	hetaError(2X)|
le
S X^{Q(ho)+eta/2}.
]

The new Lean module defines
`DyadicThetaErrorLogSqOscillationAt rho` and proves

[
oxed{
	exttt{DyadicThetaErrorLogSqOscillationAt}(ho)
Longrightarrow
	exttt{DyadicThetaErrorOscillationAt}(ho).
}
]

It also defines
`PrimeFourierLogSqMaximalReadoutAt rho` and proves that such a readout,
together with prime endpoint cancellation, yields the nonlinear recurrence.

For the first contraction,

[
Q(7/8)=3/4.
]

Thus it is enough to prove the uniform endpoint estimate

[
oxed{
|	hetaError(2u)-	hetaError(2X)|
ll
X^{3/4}(log X)^2,
qquad Xle ule2X.
}
]

The logarithm is not the obstruction.  The unresolved content is the
(X^{3/4}) power saving itself.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
LOGARITHMIC_MAXIMAL_LOSS_ABSORBED / POWER_EXPONENT_REMAINS_OPEN`.
