# Order-two kernel pairing on the two-nonunit square-modulus branch

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / TWO_NONUNIT_KERNEL_PAIR_SOURCE_DRAFT / TWO_NONUNIT_KERNEL_PAIR_ESTIMATE_OPEN`

Owner: #660. Direct parent: #642 / PR #648.

This increment advances only the square-modulus parameters for which multiplication by two is not invertible. It does not drop those parameters and does not pretend that the doubled-frequency map is a permutation.

## Exact source binding

```text
parent revision:
  e092fd7a19f3455e08056786225f8ef66c8d6e92

parent tree:
  50664caddcd5b50492dffbf265c098a4ba5f08df

candidate branch:
  research/rh-two-nonunit-kernel-pair-660-20261022

source commit:
  ba2e3c93384d19748d0fe62c3f44947037abf90b

source tree:
  21649d99f3a0af33bcce33acb5f302019e511c85

source:
  GRWTSK/NumberTheory/Moebius/
    HalfIndexAffineChowlaTwoNonunitKernelPair.lean

source blob:
  d75d91bfe3e3c5f3c1b1ead1ddb4e4135147179f
```

## The two-nonunit branch

The source defines

```lean
TwoNonunitSquareModulusParameter d
```

as the negation of the two-unit predicate from PR #648.

It scripts

```lean
squareModulus_even_of_twoNonunit
```

so the complementary branch has

\[
N=d^2\quad\text{even}.
\]

No converse classification by the parity of `d` is required by the live theorem layer.

## Order-two doubling kernel

Define

\[
H=\frac{N}{2}\pmod N.
\]

The source declaration is

```lean
twoKernelFrequency d.
```

It scripts:

```lean
twoKernelFrequency_add_self_eq_zero

twoKernelFrequency_ne_zero.
```

Hence

\[
H+H=0,
\qquad H\ne0.
\]

The frequency partner is

```lean
twoKernelPartner d k = k + H.
```

The source proves:

```lean
twoKernelPartner_involutive

doubledSquareModulusFrequency_partner.
```

Thus

\[
\operatorname{partner}(\operatorname{partner}(k))=k
\]

and

\[
2(k+H)=2k\pmod N.
\]

## Exceptional kernel orbit

The source retains the exact exceptional orbit:

```lean
twoKernelPartner_zero

twoKernelPartner_kernel_eq_zero.
```

Thus

\[
0\longleftrightarrow H.
\]

This is why the partner map is not promoted to an equivalence on the nonzero-frequency set: zero is excluded but `H` is not.

The later endpoint majorant therefore continues to sum over the complete original nonzero-frequency set, including `H`.

## Order-two shift character

Define

\[
\eta_d(h)=e_N(Hh).
\]

The source declaration is

```lean
twoKernelShiftCharacter.
```

It scripts

```lean
twoKernelShiftCharacter_sq
```

with

\[
\eta_d(h)^2=1.
\]

No identification with `(-1)^h` is imported or assumed.

The partner shift phase factors as

\[
e_N((k+H)h)=e_N(kh)\eta_d(h),
\]

through

```lean
affineChowlaShiftPhase_partner.
```

## Partner aggregate

For the half-index shift aggregate

\[
A_r(k)
=
\sum_h e_N(kh)U_r(h,2k),
\]

the source scripts

```lean
halfIndexAffineChowlaShiftAggregate_partner.
```

Mathematically:

\[
A_r(k+H)
=
\sum_h e_N(kh)\eta_d(h)U_r(h,2k).
\]

The core frequency is unchanged because `2(k+H)=2k`; only the order-two shift character changes.

## Pair-sum and pair-difference projectors

The source defines

```lean
twoKernelPairPlusAggregate

twoKernelPairMinusAggregate
```

with

\[
P_r(k)=A_r(k)+A_r(k+H),
\qquad
M_r(k)=A_r(k)-A_r(k+H).
\]

The exact projector formulas are

```lean
twoKernelPairPlusAggregate_eq_projector

twoKernelPairMinusAggregate_eq_projector.
```

They have mathematical content

\[
P_r(k)
=
\sum_h e_N(kh)(1+\eta_d(h))U_r(h,2k),
\]

and

\[
M_r(k)
=
\sum_h e_N(kh)(1-\eta_d(h))U_r(h,2k).
\]

The source then scripts the inverse transform:

```lean
halfIndexAggregate_eq_half_pairPlus_add_pairMinus

halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus.
```

Thus

\[
A_r(k)=\frac{P_r(k)+M_r(k)}2,
\qquad
A_r(k+H)=\frac{P_r(k)-M_r(k)}2.
\]

This is exact finite algebra.

## Cancellation-preserving sufficient majorant

The source defines

```lean
twoNonunitKernelPairFrequencyMajorant
```

from the four norms

\[
|P_0|,\ |M_0|,\ |P_1|,\ |M_1|.
\]

Using the exact inverse transform and the triangle inequality only after the pair projectors are formed, it scripts

```lean
halfIndexAffineChowlaFrequencyMajorant_le_kernelPair.
```

The new endpoint surface is

```lean
twoNonunitKernelPairEndpointMajorant.
```

It preserves:

```text
the complete original nonzero-frequency set;
the exceptional kernel frequency;
both parity classes;
all positive shifts;
the exact endpoint support;
the exact square modulus;
the exact 1/d^2 normalization.
```

The finite comparison is

```lean
twoNonunitHalfIndexEndpointMajorant_le_kernelPair.
```

This is a sufficient stronger interface, not an equivalence claim.

## All-scale supplier

The new analytic proposition is

```lean
DyadicNaturalScaleTwoNonunitKernelPairBudget.
```

The source scripts

```lean
twoNonunitHalfIndexBudget_of_kernelPair.
```

Therefore

\[
\boxed{
\text{two-nonunit kernel-pair budget}
\Longrightarrow
\text{original two-nonunit half-index budget}.
}
\]

Together with the two-unit branch and the pointwise-Mertens zero-mode premise, the source scripts

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_kernelPair.
```

Thus

\[
\boxed{
\begin{aligned}
&\text{pointwise Mertens square-root envelope}\\
&+\text{ two-unit half-index budget}\\
&+\text{ two-nonunit kernel-pair budget}\\
&\Longrightarrow
\text{natural-scale square-modulus congruence-}L^1.
\end{aligned}
}
\]

No premise is constructed.

## Analytic adapter boundary

The source defines

```lean
ToTwoNonunitKernelPairBudgetAdapter

TwoNonunitKernelPairAnalyticData

TwoNonunitKernelPairAnalyticSource

TwoNonunitKernelPairAnalyticAdapter.
```

A candidate theorem must match:

```text
even square moduli;
the complete nonzero-frequency family;
the exceptional kernel frequency;
the order-two shift character;
pair-sum/pair-difference cancellation;
both parity classes;
endpoint/frequency/modulus aggregation;
the natural-scale normalization.
```

No named Chowla, Elliott, large-sieve, local-Fourier, or L-function theorem receives an adapter value.

## Scope boundary

This increment does not:

```text
choose one representative per kernel orbit;
reindex the nonzero-frequency set by partner orbits;
identify eta_d(h) with (-1)^h;
perform full 2-adic conductor descent;
prove either pair-projector estimate;
prove the pointwise Mertens premise;
prove RH.
```

The next possible structural increment is an orbit-representative or conductor descent that treats the exceptional orbit separately. That work is not included here.

## Evidence

Established:

```text
SOURCE_DRAFT
TWO_NONUNIT_KERNEL_PAIR_SOURCE_DRAFT
EVEN_SQUARE_MODULUS_CONSEQUENCE_SCRIPTED
ORDER_TWO_KERNEL_SCRIPTED
EXCEPTIONAL_KERNEL_ORBIT_RETAINED
PARTNER_AGGREGATE_FORMULA_SCRIPTED
PAIR_PROJECTOR_FORMULAS_SCRIPTED
POINTWISE_MAJORANT_COMPARISON_SCRIPTED
CONDITIONAL_DOWNSTREAM_TRANSPORT_SCRIPTED
```

Not established:

```text
TWO_NONUNIT_KERNEL_PAIR_ESTIMATE
TWO_UNIT_ANALYTIC_SUPPLIER
POINTWISE_MERTENS_ENVELOPE
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
