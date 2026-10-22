# Fourier maximal barrier for the 7/8 -> 3/4 step

The Fourier route now has a quantitative obstruction.

The existing source proves an exact Parseval identity for the dyadic Green
residual.  That is an (L^2) statement.  The short-interval theorem needed for
nonlinear descent is a uniform/maximal statement.

A naive reconstruction from (N_X) Fourier modes has Cauchy--Schwarz cost

[
sqrt{N_X}.
]

At the current energy scale

[
E_X asymp X^{-1+eta},
]

lifting the normalized residual back to theta scale gives the schematic bound

[
Xsqrt{N_XE_X}.
]

If (N_Xasymp X^eta), this has exponent

[
M(eta)=rac{1+eta}{2}
]

(up to the available (eta)-slack).

Hence

[
M(1)=1,qquad
M(1/2)=3/4.
]

The Lean source proves exactly

[
M(eta)le3/4
iff
etale1/2.
]

The exact Green source frame also has

[
operatorname{atomCount}(X)=X+1.
]

This does **not** prove a lower bound saying every Fourier reconstruction needs
(X) frequencies.  It does show that a naive full-resolution reconstruction
naturally lives at bandwidth exponent (1), where Cauchy--Schwarz returns only
linear-scale control and therefore gives no (7/8	o3/4) improvement.

The new interface
`PrimeFourierMaximalReadoutAt rho`
records the genuinely missing theorem:

[
	ext{prime-only Fourier energy bound}
Longrightarrow
	ext{short-interval theta-error oscillation at }ho.
]

The source proves that this maximal readout, together with the already isolated
prime endpoint cancellation, yields
`QuadraticThetaSourceRecurrenceAt rho`.

A successful Fourier proof must therefore contribute at least one genuinely
new ingredient: effective bandwidth (O(X^{1/2+arepsilon})), weighted
Fourier/Sobolev control, a Carleson-type maximal inequality avoiding the raw
(sqrt N) loss, or direct arithmetic cancellation for partial prime sums.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FOURIER_MAXIMAL_EXPONENT_BARRIER_TYPED / MAXIMAL_READOUT_OPEN`.
