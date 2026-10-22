# Nonsquarefree cancellation for the divisor-square Möbius identity

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DIVISOR_SQUARE_IDENTITY_SOURCE_CONSTRUCTED / SIEVED_CROSS_COLLISION_ESTIMATE_OPEN`

Owner: #546. Direct parent: #543 / PR #544.

This increment closes the elementary arithmetic identity at source level by proving exact cancellation for positive nonsquarefree inputs.

## Exact source binding

```text
parent revision:
  1f3308b249a843a7a9b08d347769e3230b6a9223

candidate branch:
  research/rh-nonsquarefree-divisor-cancellation-546-20261021

source commit:
  3d57ea85948d3a310e88b39470d007f42fa7ae7d

source tree:
  8c75c77c28924e264668f0ab4ed49ba7cc80df8d

source:
  GRWTSK/NumberTheory/Moebius/
    SquareDivisorMobiusNonsquarefreeCancellation.lean

source blob:
  c678bcce50e6b77ef650960e43572bb490cbe50c
```

## Support reduction

The source defines
```lean
squareDivisorMobiusSupport m
```
as the divisors (dmid m) satisfying both
[
d^2mid m,qquad mathrm{Squarefree}(d).
]

Because nonsquarefree (d) have (mu(d)=0), the source script establishes
[
operatorname{squareDivisorMobiusSum}(m)
=
sum_{dinoperatorname{support}(m)}mu(d).
]

This is a finite exact support reduction.

## Prime-square witness

From
[

egmathrm{Squarefree}(m),
]
the source extracts
[
exists p	ext{ prime},qquad p^2mid m
]
using Mathlib's
```lean
Nat.squarefree_iff_prime_squarefree.
```

The corresponding source theorem is
```lean
exists_prime_square_dvd_of_not_squarefree.
```

## Prime toggle

For one fixed prime-square witness (p), define
[
T_p(d)=
egin{cases}
d/p,&pmid d,\
pd,&p
mid d.
end{cases}
]

The source defines
```lean
squareDivisorPrimeToggle.
```

On the squarefree square-divisor support, the source scripts establish:

```lean
squareDivisorPrimeToggle_mem_support
squareDivisorPrimeToggle_involutive_on_support
squareDivisorPrimeToggle_ne_self_on_support.
```

The support-preservation proof uses:
- squarefreeness of (d);
- coprimality of (p) and (d) when (p
mid d);
- (p^2mid m);
- (d^2mid m);
- finite divisibility only.

No asymptotic or density statement appears.

## Sign reversal

For squarefree support terms, Möbius multiplicativity gives
[
mu(pd)=mu(p)mu(d)=-mu(d)
]
when (p
mid d).

For (pmid d), squarefreeness implies
[
p
mid d/p,
]
and writing (d=p(d/p)) gives the reverse sign relation.

The source theorem is
```lean
moebiusReal_add_toggle_eq_zero.
```

## Finite involution cancellation

Mathlib's
```lean
Finset.sum_involution
```
is applied to the support with the toggle above.

The resulting source theorem is
```lean
sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd.
```

Combining this with the prime-square witness yields
```lean
squareDivisorMobiusSum_eq_zero_of_not_squarefree.
```

Thus, at source level,
[
m>0,quad 
egmathrm{Squarefree}(m)
Longrightarrow
sum_{d^2mid m}mu(d)=0.
]

## Construction of the previously open suppliers

The source defines a value
```lean
nonSquarefreeSquareDivisorMobiusCancellation
```
of the certificate type introduced in PR #544.

It then constructs
```lean
squarefreeDivisorSquareMobiusIdentity
```
of the parent supplier from PR #539.

Finally,
```lean
squarefreeIndicatorReal_eq_squareDivisorMobiusSum
```
wraps the complete positive-integer identity.

This removes the elementary divisor-square identity from the open mathematical frontier, subject to exact-head Lean elaboration.

## Remaining RH-facing arithmetic

The sieve identity does not prove any correlation estimate.

The open cross-collision quantity remains the divisor-sieved signed family
[
mu(x)mu(x+2h)
sum_{d^2mid x+h}mu(d)
]
across the repository's complete growing shift/prefix/endpoint geometry.

A future supplier must still control that signed family quantitatively.

## Evidence

Established at source-script level:
```text
SOURCE_DRAFT
DIVISOR_SQUARE_IDENTITY_SOURCE_CONSTRUCTED
```

Not established:
```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
SIEVED_CROSS_COLLISION_ESTIMATE_PROVED
```

No Lean/Lake execution, proof-term acceptance, kernel audit, analytic estimate, merge, or RH claim occurred.
