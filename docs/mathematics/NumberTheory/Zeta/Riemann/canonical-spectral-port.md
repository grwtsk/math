# Canonical spectral correction as the fixed positive Gram

Issue: #506  
Parent: #495  
Stack parent: PR #496

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Exact finite-stage identity

The previous two increments established

[
Q_n(a_n)=S_n
]

for the canonical source-faithful square-root atom stage, and

[
-S_n+P_n+Z_n+T_n=0
]

for the canonical complete square-tent explicit formula.

Define the signed spectral correction

[
C_n=P_n+Z_n+T_n.
]

Combining the two exact source identities gives

[
oxed{
C_n=S_n=Q_n(a_n).
}
]

The source drafts this both as a complex identity and through the real part.
It also proves that (C_n) is real and

[
C_nge0
]

at every canonical square stage.

This is a finite-stage arithmetic/spectral positivity theorem. It is not a
global Weil-positivity theorem.

## Fixed canonical family

The sequence is fixed before any candidate zero is supplied:

[
	ext{stage}(j)=	ext{squareAtomStage}(j+2),
]

[
	ext{test}(j)=	ext{squareRootAmplitude}(j+2).
]

Thus the arithmetic witness family cannot be selected after inspecting
((alpha,gamma)).

## Remaining quartic bridge

The earlier generic quartic extraction allowed arbitrary stage and test
families.

This increment defines the stricter comparison

[
C_{j+2}
=
w_j H(alpha,gamma)+e_j,
]

where

[
w_j	o L>0,qquad e_j	o0,
]

and

[
H(alpha,gamma)
=
-4alpha^2(alpha^2+3gamma^2).
]

Only (w_j), (e_j), and their convergence remain supplied data. The stage
and positive source are no longer hypotheses.

Such a comparison automatically constructs the previous generic
`QuarticExtraction`, hence forces

[
alpha=0.
]

If a comparison is supplied for every actual nontrivial zeta zero at

[
alpha=Re(s)-rac12,qquad gamma=Im(s),
]

the existing RH-facing criterion yields the canonical Riemann Hypothesis
proposition.

This remains a conditional reduction. No comparison family is constructed.

## Hostile control

A `CanonicalQuarticComparison 1 0` is impossible: the fixed-family theorem
would force (1=0). This confirms that the comparison record cannot be
inhabited arbitrarily merely because its finite source is positive.

## Three-plus-one interpretation

The canonical source stage remains the dynamically sized fourth witness
channel. The first three phases remain the fixed triangular base.

## Next obstruction

Construct the actual comparison

[
C_{j+2}
=
w_j H(alpha,gamma)+e_j
]

from the zeta source, with one source-independent positive limiting scale and
a complete error tending to zero.

At this point the missing supplier is no longer:

- prime-power source identification;
- prime-power positivity;
- prime-power atom completeness;
- complete square-tent zero-divisor identity;
- finite zero-tail decay;
- or stage-family selection.

It is the analytic comparison between the fixed canonical spectral
correction and the signed quartic witness.

## Nonclaims

No such comparison is constructed, no Weil-form equivalence is proved, no
PNT is used, no zero-free threshold is improved, and RH is not proved
unconditionally.
