# Prime-power atoms before exponent collapse

Issue: #478  
Parent: #467  
Stack parent: PR #474  
Base commit: `f959e93a97170efa96c5edcc52dcc18964bf6156`

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Selected obligation

The prime-exponent lattice from #467 is the correct PNT-free algebraic scale
skeleton, but it is not a source-faithful replacement for prime-power atoms.

The source object in this increment is

[
mathcal A_K=K^{({(p,m):p	ext{ prime}, mge1})}.
]

For integral coefficients there is a natural collapse

[
C:mathcal A_{mathbf Z}	oigoplus_pmathbf Z e_p,
qquad
C(delta_{(p,m)})=m e_p.
]

Exponent-one atoms give a section, hence the collapse is surjective.

## Exact obstruction witness

For every prime (p),

[
w_p=delta_{(p,2)}-2delta_{(p,1)}
]

is nonzero in the atom module but

[
C(w_p)=0.
]

Therefore the exponent lattice is a quotient of the atom source, not an
equivalent source.

For an atom readout (phi) to factor through this quotient, it must satisfy

[
phi(p,m)=m,phi(p,1)
]

on every prime ray. An arbitrary explicit-formula test evaluated at
(mlog p) has no such automatic linearity law.

The source includes the hostile nonlinear readout

[
phi(p,m)=m^2,
]

which fails the necessary condition at (m=2).

## Three fixed phases plus one channel

The parent layer fixes a triangular phase base with three positions.

This increment permits a finite set of prime-power atoms to populate the
fourth *witness channel*. A stage carries a finite atom set and the witness
index is the corresponding finite subtype.

Thus the intended shape remains

[
sum_{	ext{triangle state}}mathrm{WitnessFiber}(	ext{state}),
]

not a symmetric four-vertex phase tuple. The witness channel may change size
between stages.

## Why this matters downstream

The witness rejects any route that first collapses a prime-power explicit
formula to net prime exponents and later attempts to reconstruct a general
nonlinear test readout.

The obstruction appears in exact source transport for:

- zeta and L-function explicit formulas;
- von Mangoldt correlations used in prime tuples and Goldbach;
- distribution-in-progressions sources;
- pair-correlation and trace-formula prime sides;
- broader local Euler factors whose (p^m) coefficients contain Frobenius or
  Satake powers.

It does not prove or refute any of those conjectures.

## Nonclaims

No PNT, explicit formula, prime-distribution estimate, positive Gram,
Weil-form comparison, OpenAI theorem transport, zero-free threshold
improvement, or RH claim is made.

## Next obstruction

The next supplier must attach an independently defined arithmetic readout to
this atom module—e.g. the exact von Mangoldt/test-function coefficient—and
prove its comparison with a quadratic consumer while keeping the complete
prime-power source visible.
