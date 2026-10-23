# Von Mangoldt prime-power Gram to the signed quartic witness

Issue: #483  
Parent: #478  
Stack parent: PR #480  
Base commit: `953c477df53352393f6f6b6f0e8c1690508b29d6`

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Exact arithmetic source

For one source-faithful prime-power atom

[
a=(p,m),qquad mge1,
]

define

[
n(a)=p^m,qquad
lambda(a)=mlog p.
]

Mathlib's exact von Mangoldt identities give

[
Lambda(p^m)=Lambda(p)=log p.
]

The exponent (m) changes the test location, not the von Mangoldt coefficient.

For a finite stage (S) and real test (f), define the linear readout

[
R_S(f)=
sum_{ain S}Lambda(n(a))f(lambda(a))
]

and the finite quadratic source

[
Q_S(f)=
sum_{ain S}Lambda(n(a))f(lambda(a))^2.
]

Since every von Mangoldt atom weight is nonnegative,

[
Q_S(f)ge0
]

exactly, without PNT, a zero-free region, or an asymptotic prime estimate.

## Named quadratic consumer

The target is the already existing signed quartic

[
H(alpha,gamma)
=
operatorname{witnessTrace}(alpha,gamma)
=
-4alpha^2(alpha^2+3gamma^2).
]

The new comparison record does **not** assert a comparison exists. It stores
one when independently supplied:

[
Q_{S_n}(f_n)
=
w_nH(alpha,gamma)+e_n,
]

with

[
w_n	o L>0,qquad e_n	o0.
]

The nonnegativity of every (Q_{S_n}) then implies

[
H(alpha,gamma)ge0.
]

The existing quartic theorem gives

[
H(alpha,gamma)ge0
iff
alpha=0.
]

Thus a supplied comparison family forces (alpha=0).

For every actual nontrivial zeta zero

[
s=sigma+igamma,qquad alpha=sigma-rac12,
]

the source-draft terminal theorem consumes such a family and yields the
repository's canonical Riemann Hypothesis proposition.

## What was discharged

The pre-existing generic extraction theorem required an arbitrary source
sequence (W_n) and a separate proof (W_nge0).

This increment fixes

[
W_n=Q_{S_n}(f_n)
]

and derives (W_nge0) from the exact von Mangoldt prime-power Gram.
Therefore source positivity is no longer a caller-supplied premise on this
route.

## What remains open

The decisive comparison remains unsupplied:

[
Q_{S_n}(f_n)
=
w_nH(alpha,gamma)+e_n
]

with source-independent construction, positive limiting weight, and complete
error tending to zero.

In particular, this increment does not prove that the finite prime Gram is
the Weil form, a screw form, an OpenAI detector, or an explicit-formula
quadratic.

## Prime-power and three-plus-one boundaries

The test is evaluated at (mlog p), so the source must retain the atom
((p,m)) until a factorization theorem permits quotienting.

The first three phases remain the fixed triangular base. The finite
prime-power stage occupies the dynamically sized fourth witness channel; it
is not a fourth triangle vertex.

## Hostile controls

- (Lambda(p^m)) is (log p), not (mlog p).
- (p^m) is not replaced by (m) copies of (p) before an arbitrary test.
- positive finite Gram does not imply the signed quartic is positive without
  the comparison identity and error decay.
- there is no comparison extraction at ((alpha,gamma)=(1,0)), because the
  quartic is strictly negative there.
- no finite stage is promoted to global Weil positivity or RH.

## Nonclaims

No PNT, explicit-formula theorem, prime-distribution estimate, OpenAI theorem
transport, global Weil comparison, zero-free improvement, or unconditional
RH result is claimed.

## Next obstruction

Construct a source-faithful comparison theorem relating the prime-power
readout/Gram to the actual explicit-formula or Weil quadratic consumer, with
all gamma, pole, trivial-zero, nontrivial-zero, endpoint and tail terms
retained and a complete error that tends to zero.
