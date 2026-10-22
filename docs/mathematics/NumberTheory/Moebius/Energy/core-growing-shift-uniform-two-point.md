# Uniform dyadic two-point prefixes supply the growing-shift packet

Issue: #693. Parent growing-shift packet: #688 / draft PR #690 at exact head `6e53704c84d73b6b751169365713a7a5c688eaaa`.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / UNIFORM_DYADIC_TWO_POINT_SOURCE_OPEN**.

## Terminal consumer

The exact RH-facing declaration is

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
```

with premise

```lean
SubpolynomialCoreGrowingShiftFirstDifferencePacket.
```

That premise is a one-sided subpolynomial bound on the complete signed core packet. The conditional endpoint remains inherited; no analytic premise is discharged here.

## Selected supplier

The selected source is the existing stronger finite-Chowla interface

```lean
SubpolynomialDyadicUniformMertensTwoPointPrefix.
```

At each dyadic scale it supplies one common subpolynomial envelope for every positive shift and every admissible prefix length below the right dyadic endpoint.

No fixed-shift, fixed-form, terminal-only, logarithmically averaged, or shift-averaged theorem is asserted to inhabit this source.

## Exact range restriction

The source defines

```lean
CoreGrowingShiftPrefixEnvelope
```

on the exact prefixes consumed by the core packet:

```text
mertensTwoPointPrefix(harmonicShiftLower(j,t)+k, t+1),
k < harmonicShiftCount(j,t).
```

It proves that every such prefix lies inside `DyadicMertensTwoPointEnvelope j U`. This pays the shift range and prefix-length compatibility exactly.

## Coefficient normalization

For `X=2^j`, the active harmonic coordinate begins at an integer at least `X`. Therefore every reciprocal first difference is nonnegative and satisfies

```text
harmonicShiftFirstDifference(j,t,k) <= X^-2.
```

At one core depth, with `H=logarithmicShiftThreshold j` and `N=harmonicShiftCount j t`:

- the anchor contains `H` prefix terms with the threshold first difference;
- the tail contains `N-H` prefix terms with their native first differences;
- `N<=X`.

Consequently

```text
|coreGrowingShiftFirstDifferenceDepth(j,t)|
 <= 2*N*U*X^-2
 <= 2*X*U*X^-2.
```

There are at most `2^(j+1)=2X` core depths. The source obtains the finite constant-four estimate

```text
|coreGrowingShiftFirstDifferencePacket(j)| <= 4*U.
```

## Supplier theorem

The source authors

```lean
subpolynomialCoreGrowingShiftFirstDifferencePacket_of_uniformTwoPoint
```

with dependency path

```text
SubpolynomialDyadicUniformMertensTwoPointPrefix
        ↓ exact range restriction
CoreGrowingShiftPrefixEnvelope
        ↓ reciprocal-square coefficient and depth-cardinality bounds
SubpolynomialCoreGrowingShiftFirstDifferencePacket
        ↓ inherited conditional theorem
RiemannHypothesis.
```

It also constructs the concrete adapter value

```lean
uniformDyadicTwoPointToCoreGrowingShiftAdapter.
```

## Proof classification

- exact finite range arithmetic;
- exact natural-number support comparison;
- exact reciprocal-difference positivity;
- deterministic reciprocal-square upper bound;
- finite triangle inequality for this stronger sufficient source;
- finite cardinality estimate;
- conditional reduction to the inherited RH-facing interface.

No limiting theorem, external computation, certificate, or literature theorem is used.

## Positivity classification

The reciprocal first-difference weights are nonnegative. The Möbius prefixes and complete packet remain signed. Absolute values enter only in the stronger supplier comparison after the exact signed packet has already been identified.

This does not reconstruct a positive RH criterion and does not assert a converse from the signed packet to the uniform absolute prefix envelope.

## Finite witness

The independently inspectable finite normalization is

```text
per-depth coefficient count <= X,
coefficient size <= X^-2,
core-depth count <= 2X,
outer normalization factor = 2,
```

which gives the constant `4`.

## Failure and information-loss cases

The theorem does not accept:

- cancellation for each fixed shift with constants depending on the shift;
- control only at the terminal admissible prefix;
- a theorem averaged over shifts without a maximal-prefix adapter;
- logarithmic averaging in a different variable;
- a source lacking one common constant over all dyadic shifts, depths, and prefix lengths.

Termwise absolute prefix control is sufficient but stronger than cancellation in the exact signed growing-shift packet.

## RH consequence

This increment constructs a reusable deterministic adapter. It does not prove the uniform source. Therefore it supplies a conditional RH route only and establishes no unconditional zero-location result.

## Provenance

- inherited arithmetic object: ordinary binary Möbius prefixes;
- inherited formal source: `DyadicMertensTwoPointEnvelope` and `SubpolynomialDyadicUniformMertensTwoPointPrefix`;
- inherited RH-facing packet: `coreGrowingShiftFirstDifferencePacket`;
- repository-specific contribution: exact restriction, coefficient normalization, constant-four packet comparison, and concrete adapter value;
- no scalar contributor allocation is asserted.

## Next obstruction

Prove or import, with exact quantifiers, `SubpolynomialDyadicUniformMertensTwoPointPrefix`, or construct a weaker source-faithful dispersion adapter that controls the signed weighted packet without requiring uniform absolute control of every intermediate prefix.
