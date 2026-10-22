# Symmetric triangular kernel correction

The previous coefficient construction used only nonnegative frequencies.  That
is enough for a coefficient-budget heuristic, but it is not yet the actual
Fejer-type kernel.

The source now defines the symmetric coefficient profile

[
w_N(k)=
egin{cases}
1-|k|/N,& |k|<N,\\
0,& |k|ge N,
end{cases}
qquad kinmathbf Z.
]

It proves symmetry

[
w_N(-k)=w_N(k),
]

finite support, nonnegativity, the unit bound, and exact agreement with the
previous one-sided weights on (kge0).

The actual trigonometric polynomial is now explicit:

[
K_N(t)=
sum_{|k|le N}
w_N(k)e^{2pi i k t}.
]

The endpoint frequencies have zero weight, so the effective support is
(|k|<N).

Two analytic claims are isolated:

1. `SymmetricTriangularKernelClosedFormClaim`, corresponding to the classical
   Fejer identity
   [
   K_N(t)=rac1Nleft(rac{sin(pi Nt)}{sin(pi t)}ight)^2;
   ]
2. `SymmetricTriangularKernelDecayClaim`, an off-boundary estimate of order
   (1/(N t^2)).

The latter is sufficient, after integrating a prefix indicator, for the
previous harmonic (1/d) leakage model.

No closed-form identity or pointwise decay estimate is claimed yet.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SYMMETRIC_TRIANGULAR_KERNEL_DEFINED / CLOSED_FORM_AND_DECAY_OPEN`.
