# Pointwise ordinary-Mertens envelope to a dyadic geometric descendant envelope

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / POINTWISE_TO_GEOMETRIC_ADAPTER_SOURCE_DRAFT / POINTWISE_MERTENS_ENVELOPE_OPEN / NONZERO_FREQUENCY_SUPPLIER_OPEN`

Owner: #617. Direct parent: #615 / PR #616. Parity reconstruction: #613 / PR #614. Zero/nonzero split: #611 / PR #612.

This increment constructs, at source-script level, the pointwise-to-geometric adapter left open by PR #616.

It does not prove the pointwise Mertens envelope.

## Exact source binding

```text
parent branch:
  research/rh-mertens-dyadic-geometric-envelope-615-20261021

parent revision:
  771492a1d5d464f579d1a3c0147532ef182119ab

parent tree:
  3821ddb57d2653bc3ec023deba76e20a79e8a831

candidate branch:
  research/rh-pointwise-mertens-geometric-617-20261021

source commit:
  414ef467dba93835ef00008dffb25b5afec392b5

source tree:
  dd358e9ab9b6ec4580919af6033ebc1086168753

source:
  GRWTSK/NumberTheory/Moebius/
    MertensPointwiseToDyadicGeometric.lean

source blob:
  870cb01d8a80bc6b5cb9cbf9feaa98670c87597f
```

## Input proposition

The parent proposition

```lean
OrdinaryMertensSquareRootPlusEpsilonEnvelope
```

has the mathematical content

\[
\forall\varepsilon>0,\ \exists C_\varepsilon\ge0,\ \forall n\ge0,
\qquad
|M(n)|
\le
C_\varepsilon\sqrt n\,n^\varepsilon.
\]

This proposition remains uninhabited.

## Explicit target parameters

For the target loss \(\delta>0\), the source defines

\[
\varepsilon=\frac\delta8,
\qquad
\alpha=\frac12+\varepsilon,
\]

through

```lean
pointwiseMertensDyadicEpsilon
pointwiseMertensDyadicExponent.
```

The endpoint constant factor is

\[
K_\delta=2^\alpha,
\]

and the geometric ratio is

\[
\rho_\delta=K_\delta^{-1}=2^{-\alpha}.
\]

The declarations are

```lean
pointwiseMertensDyadicConstantFactor
pointwiseMertensDyadicRatio
pointwiseMertensDyadicRatio_eq_rpow_neg.
```

The source scripts

\[
0\le\rho_\delta<1.
\]

The strict inequality is essential for the finite geometric-tail theorem from PR #616.

## Exact floor/cast comparison

For \(X=2^j\), \(b<2X\), and any natural descendant satisfying

\[
n\le\left\lfloor\frac b{2^t}\right\rfloor,
\]

the source scripts

\[
(n:\mathbb R)
\le
\frac{2X}{2^t}.
\]

The declaration is

```lean
cast_dyadicDescendant_le_upperModel.
```

The proof retains natural floor division until the `Nat.cast_div_le` comparison. No equality between floor division and real division is asserted.

## Real-power decomposition

For positive \(x\), the source scripts

\[
\sqrt x\,x^{\delta/8}
=
x^{1/2+\delta/8}.
\]

It then scripts

\[
\left(\frac{2X}{2^t}\right)^\alpha
=
2^\alpha X^\alpha\rho_\delta^t.
\]

The load-bearing declarations are

```lean
sqrt_mul_rpow_eq_totalExponent
upperModel_rpow_eq_geometric.
```

Because \(X\ge1\),

\[
X^{1/2+\delta/8}
\le
\sqrt X\,X^{\delta/4}.
\]

This is recorded by

```lean
dyadic_totalExponent_le_parentScale.
```

Thus the exponent slack is explicit:

```text
pointwise epsilon: delta/8
parent pre-squared loss: delta/4
post-squaring loss used downstream: delta/2 <= delta.
```

## Descendant-wise transport

The theorem

```lean
ordinaryMertens_descendant_le_geometric
```

scripts the bound

\[
|M(n)|
\le
C_\varepsilon 2^\alpha
\sqrt X\,X^{\delta/4}
\rho_\delta^t
\]

whenever

\[
n\le\left\lfloor\frac b{2^t}\right\rfloor,
\qquad
b<2X.
\]

The case \(n=0\) is separated before positive-base real-power identities are used.

The same theorem applies to

\[
n=\left\lfloor
\frac{\lfloor b/2\rfloor}{2^t}
\right\rfloor
\]

because this descendant is bounded by \(\lfloor b/2^t\rfloor\).

## Constructed adapter

The source scripts

```lean
dyadicOrdinaryMertensGeometricEnvelope_of_pointwise
```

and constructs

```lean
pointwiseMertensToDyadicGeometricAdapter :
  PointwiseMertensToDyadicGeometricAdapter.
```

Therefore the previously open formal bridge is now source-constructed:

\[
\boxed{
\text{pointwise }M(x)=O_\varepsilon(x^{1/2+\varepsilon})
\Longrightarrow
\text{uniform dyadic geometric descendant envelope}
}.
\]

This is conditional on the input proposition. It does not establish that proposition.

## Downstream composition

The source additionally scripts

```lean
parityMertensSquareRootEnergy_of_pointwise
```

and

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero.
```

Hence the current conditional path is

```text
ordinary pointwise Mertens square-root-plus-epsilon envelope
-> dyadic geometric descendant envelope
-> ordinary dyadic-tail energy
-> parity-Mertens zero-mode energy

plus

independent nonzero-frequency Fourier budget

-> natural-scale square-modulus congruence L1
-> signed lower-order cross-collision supplier.
```

## Remaining mathematical frontier

The zero-mode route now has no remaining representation, parity-localization, tail-summation, or pointwise-to-geometric adapter gap.

Its only analytic premise is the pointwise statement

\[
|M(n)|\ll_\varepsilon n^{1/2+\varepsilon}.
\]

That premise is RH-scale and remains open in this repository.

The nonzero-frequency supplier remains logically independent.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
EXACT_FLOOR_CAST_COMPARISON_SCRIPTED
EXPLICIT_GEOMETRIC_RATIO_SCRIPTED
POINTWISE_TO_GEOMETRIC_ADAPTER_SOURCE_DRAFT
DOWNSTREAM_ZERO_MODE_TRANSPORT_SOURCE_DRAFT
```

Not established:

```text
POINTWISE_MERTENS_SQUARE_ROOT_PLUS_EPSILON_ENVELOPE
NONZERO_FREQUENCY_SUPPLIER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic Mertens estimate, merge, or RH claim occurred.
