# Regular doubling-kernel projectors in half-shift coordinates

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / REGULAR_ORBIT_HALF_SHIFT_REINDEX_SOURCE_DRAFT / HALF_CONDUCTOR_DESCENT_OPEN / EVEN_HALF_SHIFT_ESTIMATE_OPEN / ODD_HALF_SHIFT_ESTIMATE_OPEN`

Owner: #718. Direct parent: #706 / draft PR #710.

## Exact source binding

```text
parent revision:
  52c627ee421c8be835c72ba1028d8d1f815cfbe1

parent tree:
  93ce7689d4df957c3f4a48a6bdb6838d7e363f81

candidate branch:
  research/rh-regular-orbit-half-shift-718-20261022

Lean source commit:
  b5a1ca8e4c7e06c68b73941cb14c04317bb87a02

Lean source tree:
  89bb95d25f3b34bafc363f1fea2eb651c7b4c42b

Lean source:
  GRWTSK/NumberTheory/Moebius/
    RegularOrbitHalfShiftReindex.lean

Lean source blob:
  1d364d10eec3026c64352f860bc63cb5e5d87bcf
```

## Exact shift sets

PR #710 defines the complete positive even- and odd-shift supports. The new source defines

```lean
positiveEvenHalfShiftSet b
nonnegativeOddHalfShiftSet b
```

by

\[
\{1,\ldots,\lfloor b/2\rfloor\}
\]

and

\[
\{0,\ldots,\lfloor(b+1)/2\rfloor-1\}.
\]

The source scripts the exact finite reindexings

```lean
sum_evenPositiveEndpointShiftSet_eq_halfShift
sum_oddPositiveEndpointShiftSet_eq_halfShift.
```

Thus

\[
h=2t
\]

indexes every positive even shift exactly once, while

\[
h=2t+1
\]

indexes every positive odd shift exactly once.

No shift is dropped and no endpoint range is enlarged.

## Exact phase extraction

For `k : ZMod (d*d)`, the source scripts

```lean
affineChowlaShiftPhase_two_mul
```

with

\[
e_{d^2}(k\,2t)=e_{d^2}((2k)t),
\]

and

```lean
affineChowlaShiftPhase_two_mul_add_one
```

with

\[
e_{d^2}(k(2t+1))
=
e_{d^2}(k)e_{d^2}((2k)t).
\]

Both shift-parity branches therefore expose the same doubled frequency already present in the half-index binary Chowla core.

The odd branch has one constant phase outside the complete half-shift sum. The source separately scripts

```lean
norm_affineChowlaShiftPhase_one
```

so that phase disappears only after the full odd-shift aggregate has been formed and its norm is taken.

## Reindexed aggregates

The source defines

```lean
twoKernelEvenHalfShiftAggregate
twoKernelOddHalfShiftAggregate.
```

Their mathematical forms are

\[
E_r(b,d,k)=
\sum_{1\le t\le b/2}
e_{d^2}((2k)t)\,
U_r(b,d,2t,2k),
\]

and

\[
O_r(b,d,k)=
\sum_{0\le t<(b+1)/2}
e_{d^2}((2k)t)\,
U_r(b,d,2t+1,2k).
\]

The load-bearing exact identities are

```lean
twoKernelEvenShiftAggregate_eq_halfShift

twoKernelOddShiftAggregate_eq_phase_mul_halfShift.
```

Mathematically,

\[
\operatorname{EvenShift}_r=E_r,
\]

\[
\operatorname{OddShift}_r=e_{d^2}(k)O_r.
\]

No termwise absolute value appears.

## Exact consumer preservation

The source defines half-shift orbit majorants

```lean
twoNonunitEvenHalfShiftOrbitMajorant
twoNonunitOddHalfShiftOrbitMajorant
```

and scripts exact equality with the PR #710 orbit surfaces:

```lean
twoNonunitEvenShiftOrbitMajorant_eq_halfShift

twoNonunitOddShiftOrbitMajorant_eq_halfShift.
```

It then defines endpoint surfaces

```lean
twoNonunitEvenHalfShiftEndpointMajorant
twoNonunitOddHalfShiftEndpointMajorant
```

and scripts

```lean
twoNonunitEvenHalfShiftEndpointMajorant_eq_existing

twoNonunitOddHalfShiftEndpointMajorant_eq_existing.
```

These identities preserve:

```text
canonical regular-orbit representatives
exceptional-orbit exclusion
both Möbius parity classes
all admissible shifts
square modulus d^2
exact endpoint support
1/d^2 normalization.
```

## Exact analytic equivalence

The source defines

```lean
DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget
DyadicNaturalScaleTwoNonunitOddHalfShiftBudget.
```

It scripts exact equivalences with the prior even- and odd-shift budgets:

```lean
dyadicEvenHalfShiftBudget_iff_evenShift

dyadicOddHalfShiftBudget_iff_oddShift.
```

The half-shift representation is therefore neither a stronger positive majorant nor a weaker diagnostic.

The source also scripts

```lean
regularOrbitBudget_of_evenHalf_and_oddHalf
```

and the downstream theorem

```lean
naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_halfShift.
```

Thus the current conditional path is

```text
pointwise ordinary-Mertens square-root envelope
+ mod-four unit-residue Mertens square-root energy
+ two-unit half-index supplier
+ even half-shift regular-orbit supplier
+ odd half-shift regular-orbit supplier
-> #588 natural-scale square-modulus congruence-L1 supplier.
```

No premise is inhabited.

## Next obstruction: half-conductor descent

Every reindexed phase and every half-index core uses the doubled frequency

\[
\ell=2k\pmod{d^2}.
\]

On the two-nonunit branch, multiplication by two is not invertible. Its image has half the cardinality of the full frequency group, and the kernel pair `k` and `k+H` has already been quotiented by canonical orbit representatives.

The natural next comparison is a descent from the doubled-frequency image in

\[
\mathbf Z/d^2\mathbf Z
\]

to a frequency family modulo

\[
d^2/2.
\]

The source types the required boundary as

```lean
HalfConductorDescentData
HalfConductorDescentSource
HalfConductorDescentAdapter.
```

Required fields keep separate:

```text
positivity of the half modulus
characterization of the doubling image
bijection between regular orbits and image fibres
phase descent for both half-shift branches
transport of the half-index core
separate handling of the exceptional frequency
endpoint/frequency normalization.
```

No descent value is constructed.

## Evidence

Established only at source-script level:

```text
SOURCE_DRAFT
EXACT_EVEN_HALF_SHIFT_REINDEX_SCRIPTED
EXACT_ODD_HALF_SHIFT_REINDEX_SCRIPTED
EXACT_DOUBLED_FREQUENCY_PHASE_EXTRACTION_SCRIPTED
EXACT_HALF_SHIFT_ORBIT_EQUALITIES_SCRIPTED
EXACT_HALF_SHIFT_ENDPOINT_EQUALITIES_SCRIPTED
EXACT_HALF_SHIFT_BUDGET_EQUIVALENCES_SCRIPTED
CONDITIONAL_DOWNSTREAM_TRANSPORT_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
HALF_CONDUCTOR_DESCENT
EVEN_HALF_SHIFT_ANALYTIC_ESTIMATE
ODD_HALF_SHIFT_ANALYTIC_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
MOD_FOUR_AP_MERTENS_ENERGY
TWO_UNIT_ANALYTIC_SUPPLIER
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, conductor descent, analytic estimate, merge, root admission, or RH claim occurred.
