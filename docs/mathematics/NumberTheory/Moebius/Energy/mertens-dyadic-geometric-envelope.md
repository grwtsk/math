# Geometric ordinary-Mertens envelope for the dyadic tail

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DYADIC_GEOMETRIC_TAIL_REDUCTION_SOURCE_DRAFT / POINTWISE_MERTENS_TO_GEOMETRIC_ADAPTER_OPEN / NONZERO_FREQUENCY_SUPPLIER_OPEN`

Owner: #615. Direct parent: #613 / PR #614. Zero-mode owner: #611 / PR #612. Natural-scale endpoint target: #586 / PR #588.

This increment performs the finite geometric-series step left open by the parity-Mertens dyadic reconstruction.

No Mertens estimate is proved.

## Exact source binding

```text
parent branch:
  research/rh-parity-mertens-dyadic-tail-613-20261021

parent revision:
  aff0d4b4cff6cfb77ff695fc894058f500b41bec

parent tree:
  2c06646c6b59b27a2ec33ca146af593a6c841d28

candidate branch:
  research/rh-mertens-dyadic-geometric-envelope-615-20261021

source commit:
  875c81686ae725acee68b1274ac795a8062a368c

source:
  GRWTSK/NumberTheory/Moebius/
    MertensDyadicGeometricEnvelope.lean

source blob:
  9f33e04573e08c17007ce76006b141d94af4e856
```

## Auditable pre-squared scale

For \(X=2^j\), define

\[
A_{j,\delta}
=
\sqrt X\,X^{\delta/4}.
\]

The source declaration is

```lean
dyadicMertensSquareRootEpsilonScale.
```

It scripts

\[
A_{j,\delta}^{2}
=
X\,X^{\delta/2}
\le
X\,X^\delta
\]

for \(\delta\ge0\).

The use of \(\delta/4\) before squaring and \(\delta/2\) after squaring is explicit. No exponent loss is hidden in prose.

## Geometric descendant envelope

The open proposition

```lean
DyadicOrdinaryMertensGeometricEnvelope
```

requires that for every \(\delta>0\), there exist constants

\[
C\ge0,
\qquad
0\le\rho<1,
\]

such that for every dyadic endpoint

\[
X\le b<2X
\]

and every \(t\ge0\),

\[
\left|
M\!\left(\left\lfloor\frac b{2^t}\right\rfloor\right)
\right|
\le
C A_{j,\delta}\rho^t,
\]

and simultaneously

\[
\left|
M\!\left(
\left\lfloor
\frac{\lfloor b/2\rfloor}{2^t}
\right\rfloor
\right)
\right|
\le
C A_{j,\delta}\rho^t.
\]

This is an explicit analytic premise. No inhabitant is constructed.

## Exact finite geometric comparison

The source theorem

```lean
finiteGeometricSum_le_invOneSub
```

uses the exact finite identity `geom_sum_mul_neg` to script

\[
\sum_{0\le t<L}\rho^t
\le
\frac1{1-\rho}.
\]

No infinite series is introduced.

The generic theorem

```lean
ordinaryMertensDyadicTailMass_le_geometric
```

then gives

\[
\operatorname{TailMass}(b)
\le
\frac{A}{1-\rho}
\]

whenever every descendant is bounded by \(A\rho^t\).

## Exact constant after squaring

Under the geometric Mertens envelope,

\[
\operatorname{TailMass}(b)
\le
\frac{C}{1-\rho}
\sqrt X\,X^{\delta/4}.
\]

Hence

\[
\operatorname{TailMass}(b)^2
\le
\left(\frac{C}{1-\rho}\right)^2
X\,X^{\delta/2}
\le
\left(\frac{C}{1-\rho}\right)^2
X\,X^\delta.
\]

The factor

\[
(1-\rho)^{-2}
\]

is retained exactly.

The same bound is scripted for the half-scale endpoint tail.

## Supplier transport

The load-bearing theorem is

```lean
dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope.
```

Thus

\[
\boxed{
\text{geometric ordinary-Mertens descendant envelope}
\Longrightarrow
\text{ordinary-Mertens dyadic-tail square-root energy}
}
\]

at source-script level.

It composes to

```lean
parityMertensSquareRootEnergy_of_geometricEnvelope
```

and, with the independent nonzero-frequency premise, to

```lean
naturalScaleCongruenceL1_of_geometricEnvelope_and_nonzero.
```

Therefore the lower-order collision route now has the explicit conditional path

```text
geometric ordinary-Mertens descendant envelope
+ nonzero square-modulus Fourier budget
-> ordinary dyadic-tail energy
-> parity-Mertens zero-mode energy
-> natural-scale square-modulus congruence L1
-> signed cross-collision supplier.
```

## Standard pointwise Mertens boundary

The source also names

```lean
OrdinaryMertensSquareRootPlusEpsilonEnvelope
```

for the standard pointwise form

\[
\forall\varepsilon>0,
\quad
|M(n)|
\le
C_\varepsilon\sqrt n\,n^\varepsilon.
\]

The proof-relevant type

```lean
PointwiseMertensToDyadicGeometricAdapter
```

owns the missing conversion from that pointwise statement to one uniform dyadic geometric envelope.

No value is constructed.

The distinction is deliberate: pointwise constants and real-power monotonicity must be organized into one ratio \(\rho<1\) uniformly over all descendants in the dyadic endpoint family. That conversion is plausible but is not treated as automatic evidence.

## Relation to #153 and #154

A #153 square-root/logarithmic Mertens envelope may be compared to the new pointwise proposition, but it still requires:

- threshold and finite-range reconciliation;
- conversion of logarithmic factors into an arbitrary positive power;
- the pointwise-to-geometric adapter.

The broad #154 condition \(\beta<5/6\) remains insufficient for the zero mode. Only exponents at the square-root-plus-epsilon scale can enter this route.

No #153 or #154 adapter value is constructed.

## Remaining obstruction

The zero-mode side is now separated into:

1. prove or import a standard ordinary Mertens square-root-plus-epsilon envelope;
2. construct `PointwiseMertensToDyadicGeometricAdapter`;
3. use the source-scripted finite geometric reduction.

The nonzero-frequency budget from #611 remains logically independent.

## Evidence

Established:

```text
SOURCE_DRAFT
FINITE_GEOMETRIC_SUM_REDUCTION_SOURCE_DRAFT
DYADIC_GEOMETRIC_TAIL_REDUCTION_SOURCE_DRAFT
GEOMETRIC_ENVELOPE_TO_PARITY_ZERO_MODE_SOURCE_DRAFT
```

Not established:

```text
POINTWISE_MERTENS_SQUARE_ROOT_PLUS_EPSILON_ENVELOPE
POINTWISE_MERTENS_TO_GEOMETRIC_ADAPTER
NONZERO_FREQUENCY_SUPPLIER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
