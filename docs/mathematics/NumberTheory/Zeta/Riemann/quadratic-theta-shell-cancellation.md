# Dyadic theta shell cancellation

The nonlinear frontier can be stated directly in prime-shell coordinates.

For a current-octave point (uin[X,2X]), define

[
S(u)=	heta(2u)-	heta(u)-u.
]

The identity

[
	heta(2u)-2u
=
(	heta(u)-u)+S(u)
]

is exact. Since doubling maps ([X,2X]) bijectively onto the next octave
([2X,4X]), the source recurrence introduced in
`QuadraticThetaRecurrenceSupplier.lean` is equivalent to one statement:
the new theta shell must cancel the inherited theta error to quadratic order.

At threshold (ho), for every (eta>0), the required estimate is

[
|(	heta(u)-u)+S(u)|+1
le
K A^2/X
+
R X^{2ho-1+eta/2},
]

whenever (A) bounds (|	heta(u)-u|+1) on the current octave.

Therefore the remaining two nonlinear suppliers are now explicit:

* (ho=7/8): shell cancellation must produce exponent (3/4);
* (ho=3/4): shell cancellation must produce exponent (1/2).

The new Lean module proves both directions of the equivalence between this
shell-cancellation statement and `QuadraticThetaSourceRecurrenceAt rho`.
It also composes the two shell suppliers with the existing two-step theorem
to recover the conditional RH endpoint.

This does **not** prove either cancellation estimate. It removes an abstraction
layer and identifies the missing arithmetic statement: a new dyadic prime shell
must almost negate the error inherited from all earlier shells, with the
uncancelled part bounded at the quadratic scale (A^2/X) plus a residual of the
same descended exponent.

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SHELL_RECURRENCE_EQUIVALENCE_TYPED / PRIME_SHELL_CANCELLATION_OPEN`.
