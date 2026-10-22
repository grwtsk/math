# ABC exceptional-set geometry linearization

Issue: #417. Historical stacked parent: PR #416 at
`30de583ca78cc19d42137e23d8589d1e4def36b2`. The current dependency binding uses
the repaired parent merged at `80db0048b815c621caac268be0dbb6adf8cd49f7`.

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
LATTICE_ESTIMATE_OPEN**.

## Mathematical source and attribution

This adapter follows the opening algebraic and arithmetic steps in Proposition
4.1 of Christian Bernert, Tim Browning, Jared Duker Lichtman, and Joni
Teräväinen, *Bounds on the exceptional set in the abc conjecture*,
arXiv:2410.12234v2 (2026).

The paper acknowledges Bhavik Mehta for assistance using Lean to verify parts
of an earlier version. The finite anatomic-box architecture reused here is
adapted from the Apache-2.0 Lean work of Bhavik Mehta and Arend Mellendijk, as
recorded in PR #413 and its source headers. Those implementation credits are
kept distinct from authorship of the 2026 proposition.

## Existing box equation and primitive source

For parameters

```text
p = (a₀,b₀,c₀,A,B,C) : Parameters d
```

and a point `q ∈ boxFinset p`, the repository already stores

```text
totalA(q) + totalB(q) = totalC(q),
```

where

```text
totalA = a₀ ∏ᵢ aᵢ^(i+1),
totalB = b₀ ∏ᵢ bᵢ^(i+1),
totalC = c₀ ∏ᵢ cᵢ^(i+1).
```

It also stores pairwise coprimality of the three unweighted support carriers

```text
a₀ ∏ᵢ aᵢ,
b₀ ∏ᵢ bᵢ,
c₀ ∏ᵢ cᵢ.
```

Lean coordinates are zero-based, so `i.val+1` is the source-paper index and
the exponent printed as `i` in the paper.

## Selected and complementary monomials

For a selected finite set `I : Finset (Fin d)`, define

```text
selected(I,x)   = ∏_(i∈I)  xᵢ^(i.val+1),
complement(I,x) = ∏_(i∈Iᶜ) xᵢ^(i.val+1).
```

The complement is literal inside the finite type `Fin d`. Mathlib's finite
complement-product identity gives

```text
complement(I,x) * selected(I,x) = monomial(x).
```

No division, truncation, or asymptotic argument is used.

## Proposition 4.1 factors and equation

For selected sets `I,I',I''`, the source defines

```text
a' = a₀ * complement(I,a),   x = selected(I,a),
b' = b₀ * complement(I',b),  y = selected(I',b),
c' = c₀ * complement(I'',c), z = selected(I'',c).
```

The finite partition identities give exact reconstructions

```text
a' * x = totalA,
b' * y = totalB,
c' * z = totalC.
```

Substitution into the inherited box equation yields

```text
a' * x + b' * y = c' * z.
```

This theorem is proved first for `q ∈ boxFinset p` and then inherited by the
strict `paperBoxFinset` from PR #416 using its subset theorem. No alternative
additive-triple or box source is introduced.

## Positivity

Strict source-paper dyadic membership is

```text
A < x ≤ 2A.
```

It directly implies `0 < x`, including when the dyadic scale itself is zero.
Finite products of positive coordinates are positive. Together with residual
positivity already present in `PaperAdmissible`, this proves

```text
0 < a', 0 < x,
0 < b', 0 < y,
0 < c', 0 < z.
```

`PositiveGeometryLinearization` packages these six facts with the exact linear
equation. Positivity is not used as a substitute for coprimality.

## Primitivity

The inherited `SupportPrimitive` premise is stronger than the two
three-variable gcd statements printed in Proposition 4.1.

First, replacing each positive paper exponent by an arbitrary positive power
does not change prime support. Therefore pairwise coprimality of the three
unweighted support carriers implies pairwise coprimality of
`totalA,totalB,totalC`.

Second, each coefficient and selected variable divides its corresponding
total by the exact reconstruction identities. Coprimality descends along
divisors, giving pairwise coprimality of

```text
(a',b',c')
```

and separately of

```text
(x,y,z).
```

The source paper only asks for the weaker exact predicates

```text
gcd(gcd(a',b'),c') = 1,
gcd(gcd(x,y),z) = 1.
```

`GeometryPaperPrimitivity` records exactly these two statements, while
`GeometryPairwisePrimitivity` retains the stronger inherited information for
reuse. A hostile fixture records that three-variable gcd one does not imply
pairwise coprimality in general. No converse from the two paper joint-gcd
predicates to the inherited pairwise support predicate is supplied. The
stronger all-dimension supplier family from PR #416 remains an unresolved
interface; this algebraic adapter does not establish its bridge from the paper.

`PrimitivePositiveGeometryLinearization` now packages:

1. positivity of all six factors;
2. stronger pairwise primitivity, hence the exact paper gcd predicates;
3. the equation `a'x+b'y=c'z`.

Thus every algebraic and primitivity input explicitly stated before the
Heath--Brown estimate has a source-level proof script.

## Remaining open proof boundary

The paper next invokes additional mathematics not supplied by this increment:

1. the Heath--Brown primitive lattice-point estimate

   ```text
   O(1 + XYZ / max(|a'|X, |b'|Y, |c'|Z));
   ```

2. divisor-fibre lifting from one `(x,y,z)` to the selected monomial
   coordinates;
3. summation over complementary coordinates;
4. replacement of dyadic products by the Proposition 2.1 parameter bounds;
5. the complete Proposition 4.1 supplier from PR #416.

The positive primitive equation is therefore the input to the
geometry-of-numbers proof, not the estimate itself.

## Hostile boundaries

The following mutations are rejected:

- treating Lean index `i.val` as the paper monomial exponent instead of using
  `i.val+1`;
- using a non-complementary or overlapping coordinate partition;
- introducing a second additive equation rather than reusing `boxFinset`;
- claiming positivity from a closed dyadic interval without the stored total
  positivity or the strict paper interval;
- claiming primitivity from positivity or from the equation alone;
- conflating pairwise coprimality with the weaker three-variable gcd predicate;
- calling the algebraic reconstruction a lattice-point estimate;
- inferring Proposition 4.1, the exceptional-set theorem, or abc from this
  finite adapter.

## Verification boundary

The source contains closed proof scripts for the finite product partition,
three coordinate reconstructions, positivity of all six factors, pairwise and
source-exact primitivity, and the combined positive primitive equation. They
are subject to exact-type, generated-declaration, transitive-import, axiom,
and native-dependency acceptance gates. Replay targets v0.1 and v0.2 retain
their frozen historical source identities. Target v0.3 binds the current
source and repaired inherited dependencies while preserving those historical
targets byte for byte. These passive specifications contain no execution
results or acceptance receipts.
