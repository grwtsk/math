# Regular doubling-kernel projectors as even/odd shift selectors

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / REGULAR_ORBIT_SHIFT_PARITY_SOURCE_DRAFT / EVEN_SHIFT_ESTIMATE_OPEN / ODD_SHIFT_ESTIMATE_OPEN`

Owner: #706. Direct parent: #698 / draft PR #701.

## Exact source binding

```text
parent revision:
  a8d7518867a20dc369847e978b203784d67bfa7d

parent tree:
  10cd8eba2e3e99bcd0931539111e62074bd2e9df

candidate branch:
  research/rh-regular-orbit-shift-parity-706-20261022

Lean source commit:
  7e43f7b4103bd0ad65a362893e5ed330491abe46

Lean source tree:
  18f59b06024a7f1fcebd26562f2f691976e37393

Lean source:
  GRWTSK/NumberTheory/Moebius/
    RegularOrbitShiftParityProjectors.lean

Lean source blob:
  d303d310da4e22708e8581cf968ff498c1f374f4
```

## Parent regular-orbit projectors

For a two-nonunit square modulus, let

\[
H=d^2/2\pmod {d^2},
\qquad
\operatorname{partner}(k)=k+H.
\]

For one Möbius parity class `r`, the parent source defines

\[
P_r(k)=A_r(k)+A_r(k+H),
\qquad
M_r(k)=A_r(k)-A_r(k+H).
\]

Before this increment, the exact projector formulas were

\[
P_r(k)=
\sum_h e_{d^2}(kh)(1+\eta_d(h))U_r(h,2k),
\]

\[
M_r(k)=
\sum_h e_{d^2}(kh)(1-\eta_d(h))U_r(h,2k).
\]

PR #697 proves

\[
\eta_d(h)=(-1)^h.
\]

This increment uses that proved identity. It does not infer parity selection merely from `eta_d(h)^2=1`.

## Exact shift partition

The source defines

```lean
evenPositiveEndpointShiftSet b
oddPositiveEndpointShiftSet b
```

by filtering the inherited finite support `positiveEndpointShiftSet b` with `Even h` and `Odd h`.

It scripts

```lean
evenPositiveEndpointShiftSet_union_odd

evenPositiveEndpointShiftSet_disjoint_odd.
```

Thus the shift support is an exact disjoint union:

\[
\boxed{
H_b^+=H_{b,\mathrm{even}}^+\sqcup H_{b,\mathrm{odd}}^+
}.
\]

No shift is dropped and no endpoint condition is changed.

## Selector identities

The source scripts

```lean
one_add_twoKernelShiftCharacter_eq_evenSelector

one_sub_twoKernelShiftCharacter_eq_oddSelector.
```

Mathematically,

\[
1+\eta_d(h)=
\begin{cases}
2,&h\text{ even},\\
0,&h\text{ odd},
\end{cases}
\]

and

\[
1-\eta_d(h)=
\begin{cases}
0,&h\text{ even},\\
2,&h\text{ odd}.
\end{cases}
\]

## Exact even/odd shift aggregates

The source defines

```lean
twoKernelEvenShiftAggregate

twoKernelOddShiftAggregate.
```

Their mathematical content is

\[
E_r(b,d,k)=
\sum_{\substack{h\in H_b^+\\h\text{ even}}}
 e_{d^2}(kh)U_r(b,d,h,2k),
\]

\[
O_r(b,d,k)=
\sum_{\substack{h\in H_b^+\\h\text{ odd}}}
 e_{d^2}(kh)U_r(b,d,h,2k).
\]

The complete sum over each shift parity is formed before any norm is applied.

The load-bearing identities are

```lean
twoKernelPairPlusAggregate_eq_two_mul_evenShift

twoKernelPairMinusAggregate_eq_two_mul_oddShift.
```

Therefore

\[
\boxed{P_r(k)=2E_r(b,d,k)},
\qquad
\boxed{M_r(k)=2O_r(b,d,k)}.
\]

These are exact finite equalities.

## Canonical regular-orbit majorant

The source defines

```lean
twoNonunitEvenShiftOrbitMajorant

twoNonunitOddShiftOrbitMajorant.
```

For one canonical regular frequency representative, they retain both Möbius parity classes:

\[
\mathcal E(b,d,k)=\lVert E_0\rVert+\lVert E_1\rVert,
\]

\[
\mathcal O(b,d,k)=\lVert O_0\rVert+\lVert O_1\rVert.
\]

It then scripts

```lean
twoNonunitRegularOrbitMajorant_eq_even_add_odd.
```

The factor two in the projector identities exactly cancels the inherited factor `1/2` in the regular-orbit majorant, giving

\[
\boxed{
\operatorname{RegularOrbitMajorant}(b,d,k)
=
\mathcal E(b,d,k)+\mathcal O(b,d,k)
}.
\]

## Exact endpoint split

The source defines

```lean
twoNonunitEvenShiftEndpointMajorant

twoNonunitOddShiftEndpointMajorant.
```

Both retain:

```text
all effective two-nonunit square moduli
one canonical representative per regular orbit
both Möbius parity classes
the doubled core frequency
exact endpoint support
the 1/d^2 normalization.
```

It scripts

```lean
twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd.
```

Hence

\[
\boxed{
\operatorname{RegularOrbitEndpoint}(b)
=
\operatorname{EvenShiftEndpoint}(b)
+
\operatorname{OddShiftEndpoint}(b)
}.
\]

The exceptional orbit remains outside both terms and is handled by the separate mod-four Mertens branch.

## Separate analytic suppliers

The source defines

```lean
DyadicNaturalScaleTwoNonunitEvenShiftBudget

DyadicNaturalScaleTwoNonunitOddShiftBudget.
```

It scripts

```lean
regularOrbitBudget_of_even_and_odd_shift.
```

Thus

```text
even-shift regular-orbit budget
+ odd-shift regular-orbit budget
-> canonical regular-orbit budget.
```

Neither budget is proved.

The conditional downstream theorem is

```lean
naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_shiftParity.
```

Therefore the complete current route is

```text
pointwise ordinary-Mertens envelope
+ mod-four unit-residue Mertens energy
+ two-unit half-index supplier
+ even-shift regular-orbit supplier
+ odd-shift regular-orbit supplier
-> #588 natural-scale square-modulus congruence-L1 supplier.
```

No premise is inhabited.

## Analytic adapter boundary

The source types

```lean
ToTwoNonunitEvenShiftBudgetAdapter
ToTwoNonunitOddShiftBudgetAdapter

TwoNonunitEvenShiftAnalyticData
TwoNonunitOddShiftAnalyticData.
```

A future theorem must preserve the complete selected shift-parity sum before norms, canonical regular representatives, the separate exceptional orbit, both Möbius parity classes, doubled frequency, square-modulus range, endpoint aggregation, and natural-scale normalization.

No fixed-form Chowla, corrected Elliott, local-Fourier, large-sieve, Bombieri--Vinogradov, or L-function theorem is assigned an adapter value.

## Evidence

Established only at source-script level:

```text
SOURCE_DRAFT
EXACT_SHIFT_PARITY_PARTITION_SCRIPTED
EXACT_PROJECTOR_SELECTOR_IDENTITIES_SCRIPTED
PAIR_SUM_EQUALS_TWICE_EVEN_SHIFT_SCRIPTED
PAIR_DIFFERENCE_EQUALS_TWICE_ODD_SHIFT_SCRIPTED
EXACT_REGULAR_ORBIT_MAJORANT_SPLIT_SCRIPTED
EXACT_REGULAR_ENDPOINT_SPLIT_SCRIPTED
CONDITIONAL_SHIFT_PARITY_RECOMBINATION_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
POINTWISE_ORDINARY_MERTENS_ENVELOPE
MOD_FOUR_UNIT_RESIDUE_MERTENS_SQUARE_ROOT_ENERGY
TWO_UNIT_ANALYTIC_SUPPLIER
EVEN_SHIFT_REGULAR_ORBIT_ESTIMATE
ODD_SHIFT_REGULAR_ORBIT_ESTIMATE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, merge, root admission, or RH claim occurred.
