# Canonical square-tent atom stage and square-root Gram lift

Issue: #495  
Parent: #488  
Stack parent: PR #491

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Exact finite atom stage

The stage is not chosen by cardinality. It reuses the existing finite source
inventory

[
operatorname{primePowerPairs}(n)
=
{(k,p):k>0, p	ext{ prime},n^2<p^kle(n+1)^2}.
]

Each pair is mapped injectively to the source-faithful atom

[
(k,p)longmapsto(p,k).
]

The resulting finite atom set is the dynamically sized fourth witness
channel for square stage (n).

The source proves a bijection between the existing pair inventory and the
stage witness indices. No prime-power atom is duplicated or identified by
cardinality alone.

## Logarithmic realization

For a selected atom,

[
lambda(p,k)=klog p,
]

and the source drafts the exact identity

[
e^{lambda(p,k)}=p^k.
]

Define the linear logarithmic tent test

[
g_n(u)=
operatorname{tent}
igl(operatorname{squareCenter}(n),
      operatorname{squareRadius}(n),
      e^uigr).
]

Then on one atom,

[
g_n(klog p)
=
operatorname{squareWeight}(n,p^k).
]

Using the existing prime-power bijection and
(Lambda(p^k)=log p), the source drafts

[
R_n(g_n)
=
operatorname{squareTentMangoldt}(n).
]

This constructs the previously open `AtomStageAlignment n`.

## Exact positive Gram lift

The tent test is independently nonnegative. Define

[
a_n(u)=sqrt{g_n(u)}.
]

On every source atom,

[
a_n(klog p)^2=g_n(klog p).
]

Hence

[
Q_n(a_n)
=
sum_{(p,k)}
log p,a_n(klog p)^2
=
operatorname{squareTentMangoldt}(n).
]

Therefore

[
oxed{R_n(g_n)=Q_n(a_n)}
]

with (a_n=sqrt{g_n}).

This is the correct quadraticization. It is a typed change of test.

It is not the same-test statement

[
R_n(g_n)=Q_n(g_n),
]

which remains false in general and is retained as a hostile control.

## Noncircularity

The square root is taken only of the explicit nonnegative triangular tent
weight. It is not a square root of:

- the Weil form;
- the signed quartic witness;
- a zero-divisor term;
- an unknown limiting form;
- the desired RH conclusion.

Thus positivity of the finite Gram is sourced independently of target
positivity.

## Three-plus-one interpretation

The three fixed phases remain the triangular base.

The finite set of prime-power atoms is the internal index of the dynamically
sized fourth witness channel. Its cardinality changes with the arithmetic
stage.

## What this discharges

The previous exact obstruction was

[
R_{S_n}(f_n)=operatorname{squareTentMangoldt}(n).
]

That source alignment is now constructed at source-draft level.

The previous same-test quadraticization residual is not asserted to vanish.
Instead, the new square-root lift supplies a distinct exact bridge

[
R(g)=Q(sqrt g).
]

## Next obstruction

Combine this exact positive prime-power Gram with the canonical signed
explicit-formula ledger from #488. The remaining comparison is no longer a
prime-source identification problem; it is the signed spectral correction

[
P_n+Z_n+T_n
]

and its relation to the chosen quartic/Weil consumer.

No theorem here proves that signed correction is nonnegative or tends to
zero.

## Nonclaims

No PNT, no Weil-form identity, no signed-quartic comparison, no zero-free
threshold improvement, and no RH result are established.
