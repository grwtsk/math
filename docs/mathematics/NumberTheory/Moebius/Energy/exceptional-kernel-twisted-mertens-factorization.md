# Exceptional doubling-kernel frequency as a twisted Mertens square

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXCEPTIONAL_TWISTED_MERTENS_FACTORIZATION_SOURCE_DRAFT / TWISTED_MERTENS_SQUARE_ROOT_ENERGY_OPEN`

Owner: #681. Direct parent: #671 / draft PR #672.

This increment advances only the exceptional nonzero frequency on the two-nonunit square-modulus branch. It does not alter the regular-orbit supplier.

## Exact source binding

```text
parent branch:
  research/rh-two-nonunit-orbit-representatives-671-20261022

parent revision:
  f631c32bc02beb54a909bdcbf357ac559104e53b

parent tree:
  ff2f95c770b0ecfdb53b11ab116afe077f095d84

candidate branch:
  research/rh-exceptional-twisted-mertens-681-20261022

Lean source commit:
  4bc412fe75bb00e20f869769a5b651d090b655e1

Lean source tree:
  b0bcd81f5547a88efc3fd53cf6ae49cbd6f1f6ce

Lean source:
  GRWTSK/NumberTheory/Moebius/
    ExceptionalKernelTwistedMertensFactorization.lean

Lean source blob:
  3a01c66e12ea60342eedff098909d1116a4fd255
```

## Exceptional frequency

For a positive two-nonunit square-modulus parameter \(d\), let

\[
N=d^2,
\qquad
H=N/2\pmod N.
\]

The parent source proves that \(H\neq0\), \(2H=0\), and that the exceptional parity-\(r\) aggregate is

\[
A_r(H)
=
\sum_h \eta_d(h)\,U_r(h,0),
\]

where

\[
\eta_d(h)=e_N(Hh)
\]

is an order-two additive character and \(U_r(h,0)\) is the half-index affine core at zero doubled frequency.

The exceptional frequency remains nonzero. Only its doubled core frequency is zero.

## Order-two character algebra

The source scripts

```lean
twoKernelShiftCharacter_add
```

with

\[
\eta_d(m+n)=\eta_d(m)\eta_d(n).
\]

Together with the already-scripted relation

\[
\eta_d(m)^2=1,
\]

the source obtains

```lean
twoKernelShiftCharacter_sub_eq_mul
```

with

\[
\eta_d(n-m)=\eta_d(m)\eta_d(n)
\]

for \(m\le n\).

No identification with \((-1)^h\), a mod-\(4\) character, or any named Dirichlet character is used.

## One-point twisted Mertens prefix

The source defines

```lean
exceptionalKernelTwistedMertensPrefix b d r
```

as the existing parity one-point Möbius Fourier sum evaluated at the kernel frequency:

\[
T_r(b,d)
=
\sum_{\substack{1\le u\le b\\u\equiv r\;(2)}}
\mu(u)\,
 e_{d^2}\!\left(H\left\lfloor\frac u2\right\rfloor\right).
\]

This is a one-point arithmetic sum. No two-point correlation remains in its definition.

## Exact diagonal

For every term in this prefix, the order-two character squares to one. The source scripts

```lean
exceptionalKernelTwistedMertensTerm_sq
```

and then

```lean
parityOnePointMobiusFourierDiagonal_kernel_eq_squarefree.
```

Thus the exceptional Fourier diagonal is exactly

\[
Q_r(b)
=
\sum_{\substack{1\le u\le b\\u\equiv r\;(2)}}
\mu(u)^2.
\]

The diagonal is retained. It is not discarded or treated as an error term of unknown sign.

## Exact square-minus-diagonal factorization

The source reuses two exact repository identities:

1. the signed residue-convolution Fourier transform equals the sum of all growing-shift affine correlations;
2. the same Fourier transform equals the one-point Fourier square minus its diagonal.

It scripts

```lean
twoNonunitExceptionalKernelAggregate_eq_signedFourier
```

and the load-bearing theorem

```lean
twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal.
```

Mathematically,

\[
\boxed{
A_r(H)
=
T_r(b,d)^2-Q_r(b).
}
\]

No absolute value occurs before this identity.

This proves that the exceptional orbit is not a genuinely new growing-shift binary correlation once the order-two kernel frequency has been isolated. Its remaining analytic input is a one-point twisted Mertens estimate plus an elementary squarefree diagonal.

## Exact consumer-surface equality

The source defines

```lean
exceptionalKernelTwistedMertensFrequencyMajorant
exceptionalKernelTwistedMertensEndpointMajorant
```

and scripts

```lean
exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing
exceptionalKernelTwistedMertensEndpointMajorant_eq_existing.
```

Therefore the new one-point normalization is exactly the exceptional surface from PR #672. It changes no modulus, parity, endpoint, normalization, or evidence state.

## New analytic premise

The source defines

```lean
DyadicTwoKernelTwistedMertensSquareRootEnergy.
```

For every δ>0 it requires one constant \(C_\delta\) such that, for every dyadic endpoint \(X=2^j\le b<2X\), every effective two-nonunit square modulus, and both parities,

\[
\left\lVert T_r(b,d)\right\rVert^2
\le
C_\delta X X^\delta.
\]

No value of this proposition is constructed.

## Conditional exceptional-budget transport

The diagonal satisfies the inherited elementary bounds

\[
0\le Q_r(b)\le b.
\]

The effective square-modulus weights satisfy the inherited finite bound

\[
\sum_{d^2<b}\frac1{d^2}\le2.
\]

Using these facts and

\[
|T_r^2-Q_r|
\le
|T_r|^2+Q_r,
\]

the source scripts

```lean
exceptionalKernelBudget_of_twistedMertensSquareRootEnergy.
```

The transported constant is explicit at source level: the proof uses \(2(C_\delta+2)\).

Hence

\[
\boxed{
\text{twisted one-point Mertens square-root energy}
\Longrightarrow
\text{exceptional-kernel natural-scale budget}.
}
\]

## Downstream route

The source scripts

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_twistedExceptional_regular.
```

Therefore the current conditional dependency is

```text
pointwise ordinary-Mertens square-root envelope
+ two-unit half-index supplier
+ exceptional twisted-Mertens square-root energy
+ regular-orbit supplier
-> #588 natural-scale square-modulus congruence-L1 supplier.
```

Every analytic premise remains open.

## Character-twisted Mertens boundary

The source defines

```lean
ToTwoKernelTwistedMertensSquareRootEnergyAdapter
CharacterTwistedMertensSourceData
CharacterTwistedMertensSource
CharacterTwistedMertensAdapter.
```

A future ordinary or Dirichlet-character Mertens theorem must still prove:

- identification of the repository order-two kernel character;
- both parity classes;
- the exact effective two-nonunit modulus family;
- square-root-plus-ε scale;
- one constant on each complete dyadic family;
- the endpoint convention used here.

No named theorem or literature citation receives an adapter value.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
ORDER_TWO_CHARACTER_ADD_LAW_SCRIPTED
EXCEPTIONAL_DIAGONAL_EQUALS_SQUAREFREE_SCRIPTED
EXCEPTIONAL_SIGNED_FOURIER_IDENTITY_REUSED
EXCEPTIONAL_TWISTED_SQUARE_MINUS_DIAGONAL_SCRIPTED
EXACT_EXCEPTIONAL_SURFACE_EQUALITY_SCRIPTED
CONDITIONAL_EXCEPTIONAL_BUDGET_TRANSPORT_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ORDER_TWO_CHARACTER_IDENTIFIED_WITH_A_NAMED_CHARACTER
TWISTED_MERTENS_SQUARE_ROOT_ENERGY
REGULAR_ORBIT_ESTIMATE
TWO_UNIT_ANALYTIC_SUPPLIER
POINTWISE_ORDINARY_MERTENS_ENVELOPE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, merge, root admission, or RH claim occurred.
