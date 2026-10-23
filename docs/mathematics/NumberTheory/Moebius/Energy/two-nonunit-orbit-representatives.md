# Canonical orbit representatives and the exceptional doubling-kernel frequency

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXCEPTIONAL_ORBIT_ISOLATION_SOURCE_DRAFT / REGULAR_ORBIT_REPRESENTATIVE_SOURCE_DRAFT`

Owner: #671. Direct parent: #660 / draft PR #662.

This bounded increment advances only the two-nonunit square-modulus branch. It separates the exceptional doubling-kernel orbit from every regular two-element orbit and replaces the complete nonzero-frequency family by one exceptional term plus one canonical representative per regular orbit.

No analytic estimate is proved.

## Exact source binding

```text
parent branch:
  research/rh-two-nonunit-kernel-pair-660-20261022

parent revision:
  1c27e2cd64137cb185851563160d7963f2df7b30

parent tree:
  5a3c862ca2b624a0fe65d602caf1baccce16f0a8

candidate branch:
  research/rh-two-nonunit-orbit-representatives-671-20261022

source commit:
  05a70a08850a7461f8352ea5a9528c957b4a8cff

source tree:
  9a7e438a03fa545498f0b2a3fde41475ebf05170

source:
  GRWTSK/NumberTheory/Moebius/
    HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean

source blob:
  f92375adf3f6459197ab05c106e31fc01e6a31ed
```

## Parent order-two kernel

For a positive two-nonunit square-modulus parameter `d`, put

\[
N=d^2,
\qquad
H=N/2\pmod N.
\]

The parent source scripts

\[
H\ne0,
\qquad
H+H=0,
\]

and defines

\[
\operatorname{partner}(k)=k+H.
\]

It also proves

\[
2\operatorname{partner}(k)=2k\pmod N.
\]

The orbit \(\{0,H\}\) is exceptional because zero is excluded from the live nonzero-frequency consumer while \(H\) remains included.

## Canonical regular representatives

The source defines

```lean
twoKernelRegularOrbitRepresentativeSet d
```

by requiring

```text
k != 0
partner(k) != 0
k.val < partner(k).val.
```

Thus:

- the exceptional orbit contributes no regular representative;
- both members of every regular orbit are nonzero;
- exactly one orientation of each regular orbit is selected by the canonical `ZMod.val` order;
- the representative set and its partner image are disjoint.

Supporting declarations include:

```lean
twoKernelPartner_ne_self
twoKernelPartner_injective
regularFrequency_representative_or_partner
partner_not_mem_representativeSet
representativeSet_disjoint_partnerImage
exceptional_not_mem_representativeSet
exceptional_not_mem_partnerImage
```

## Exact nonzero-frequency partition

The load-bearing finite-set identity is

```lean
nonzeroFrequencySet_eq_exceptional_union_regularOrbits
```

with mathematical content

\[
(\mathbf Z/N\mathbf Z)\setminus\{0\}
=
\{H\}\sqcup R\sqcup(R+H),
\]

where \(R\) is the canonical regular-representative set.

The generic sum theorem is

```lean
sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits
```

and states

\[
\boxed{
\sum_{k\ne0}f(k)
=
f(H)+\sum_{k\in R}\bigl(f(k)+f(k+H)\bigr).
}
\]

This is exact finite reindexing. No inequality or analytic hypothesis is used.

## Exceptional frequency

The source defines

```lean
twoNonunitExceptionalKernelAggregate
```

at the nonzero frequency \(H\). Since \(2H=0\), the half-index core is evaluated at zero base frequency. The remaining oscillation is the order-two shift character from the parent source:

\[
\boxed{
A_r(H)=\sum_h\eta_d(h)\,U_r(h,0).
}
\]

The theorem is

```lean
twoNonunitExceptionalKernelAggregate_eq_shiftCharacter
```

and the exceptional consumer surfaces are

```lean
twoNonunitExceptionalKernelFrequencyMajorant
twoNonunitExceptionalKernelEndpointMajorant
```

No estimate of this branch is claimed.

## Regular orbits

For one regular representative \(k\), the parent projectors are

\[
P_r(k)=A_r(k)+A_r(k+H),
\qquad
M_r(k)=A_r(k)-A_r(k+H).
\]

The source defines

```lean
twoNonunitRegularOrbitMajorant
```

using norms only after these signed transforms have been formed. It scripts

```lean
regularOrbit_frequencyPair_le_projectorMajorant
```

so the two original frequency contributions in one complete regular orbit are controlled together.

The regular endpoint surface is

```lean
twoNonunitRegularOrbitEndpointMajorant
```

## Modulus and endpoint comparison

The exact one-modulus reindexing is recorded by

```lean
twoNonunitOrbitDecomposedModulusMajorant
twoNonunitOrbitDecomposedModulusMajorant_eq_halfIndex
```

and the sufficient projector surface by

```lean
twoNonunitOrbitRepresentativeModulusMajorant
halfIndexNonzeroModulusMajorant_le_orbitRepresentative
```

At endpoint level, the source scripts

```lean
twoNonunitHalfIndexEndpointMajorant_le_exceptional_add_regular
```

while preserving the exact square moduli, endpoint support, both parity classes, nonzero-frequency scope, and `1/d^2` normalization.

## Separate analytic suppliers

The source defines

```lean
DyadicNaturalScaleTwoNonunitExceptionalKernelBudget
DyadicNaturalScaleTwoNonunitRegularOrbitBudget
```

and proves the conditional recombination

```lean
twoNonunitHalfIndexBudget_of_exceptional_and_regular
```

Therefore

\[
\boxed{
\text{exceptional-kernel budget}
+
\text{regular-orbit budget}
\Longrightarrow
\text{original two-nonunit half-index budget}.
}
\]

The downstream theorem is

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_orbitSplit
```

so the complete conditional path is

```text
pointwise Mertens zero-mode premise
+ two-unit half-index budget
+ exceptional-kernel budget
+ regular-orbit budget
-> #588 natural-scale square-modulus congruence-L1 supplier.
```

No premise is inhabited.

## Typed analytic boundaries

The source defines separate proof-producing adapters and conservative source profiles:

```lean
ToTwoNonunitExceptionalKernelBudgetAdapter
TwoNonunitExceptionalKernelAnalyticData
TwoNonunitExceptionalKernelAnalyticSource
TwoNonunitExceptionalKernelAnalyticAdapter

ToTwoNonunitRegularOrbitBudgetAdapter
TwoNonunitRegularOrbitAnalyticData
TwoNonunitRegularOrbitAnalyticSource
TwoNonunitRegularOrbitAnalyticAdapter
```

The exceptional and regular branches cannot silently substitute for one another.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
EXACT_EXCEPTIONAL_ORBIT_ISOLATION_SCRIPTED
CANONICAL_REGULAR_REPRESENTATIVES_SCRIPTED
EXACT_NONZERO_FREQUENCY_PARTITION_SCRIPTED
EXACT_GENERIC_ORBIT_SUM_REINDEX_SCRIPTED
EXCEPTIONAL_SHIFT_CHARACTER_FORM_SCRIPTED
REGULAR_PAIR_PROJECTOR_COMPARISON_SCRIPTED
CONDITIONAL_BRANCH_RECOMBINATION_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
EXCEPTIONAL_KERNEL_ESTIMATE
REGULAR_ORBIT_ESTIMATE
TWO_UNIT_ANALYTIC_SUPPLIER
POINTWISE_MERTENS_ENVELOPE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, merge, root admission, or RH claim occurred.
