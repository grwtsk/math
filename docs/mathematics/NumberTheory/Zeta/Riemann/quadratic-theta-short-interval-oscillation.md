# Short-interval theta-error oscillation

The anchor-to-uniform problem has now been reduced to one classical-looking
short-interval estimate.

The exact shell identity is

[
	hetaError(u)+	hetaShellError(u)=	hetaError(2u).
]

Hence, once the cancellation estimate is known at the anchor (u=X), uniform
control for all (uin[X,2X]) follows from

[
|	hetaError(2u)-	hetaError(2X)|
le
S X^{2ho-1+eta/2}.
]

The new source interface is
`DyadicThetaErrorOscillationAt rho`.  The Lean reduction proves

[
oxed{
	ext{anchor cancellation at }ho
+
	ext{theta-error oscillation at }ho
Longrightarrow
	ext{uniform shell cancellation at }ho
}
]

and therefore, together with the prime endpoint formulation,

[
oxed{
	ext{prime endpoint cancellation}
+
	ext{short-interval oscillation}
Longrightarrow
	exttt{QuadraticThetaSourceRecurrenceAt}(ho).
}
]

For (ho=7/8), the required exponent is

[
2ho-1+eta/2 = 3/4+eta/2.
]

For every (eta<1/2), this is strictly less than (1).

The file also records what is obtainable unconditionally from the current
general-purpose source.  Monotonicity of (	heta), together with Chebyshev's
global upper bound, gives only

[
|	hetaError(2u)-	hetaError(2X)|
le
(4log 4+2)X
]

for (Xle ule2X).  Thus this route stays at linear scale and does not supply
the required (X^{3/4+arepsilon}) oscillation.

This does not prove that no stronger theorem can be extracted from richer
Fourier/quartic data.  It shows that monotonicity plus the global Chebyshev
bound is insufficient as the uniformization mechanism.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SHORT_INTERVAL_OSCILLATION_SUFFICES / MONOTONICITY_ONLY_LINEAR`.
