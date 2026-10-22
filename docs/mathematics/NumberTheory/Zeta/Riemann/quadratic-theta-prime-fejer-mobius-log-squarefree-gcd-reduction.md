# Squarefree common-divisor stratification of the Fejér Möbius-log frontier

## Binding

```text
parent:
  fb59dca733213b33765244b192d42ea74bb1d542

route:
  RH-G01

issue:
  #463
```

This packet is an exact arithmetic reindexing. It does not add a new analytic
hypothesis and does not claim a seven-eighths-to-three-quarters descent.

## Starting point

The preceding packet writes the shifted centered von Mangoldt correlation as a
centering-preserving divisor sum

\[
\Lambda(n)-1
  =-1+\sum_{d\mid n}\mu(d)\log(n/d)
\]

and attaches modulus \(1\) to the centering anchor. A pair of attached moduli
\(d,e\) occurring at shift \(h\) lies in one progression modulo
\(\operatorname{lcm}(d,e)\).

The remaining target is a signed aggregate of size

\[
O\!\left(X^{3/2}(\log X)^4\right).
\]

## 1. Remove inactive Möbius moduli

Mathlib proves

\[
\mu(d)\ne0\iff d\ \text{is squarefree}.
\]

Therefore every non-squarefree divisor term vanishes identically. The source
defines

```lean
centeredMobiusLogSquarefreeDivisorIndexSet
centeredMobiusLogSquarefreeDivisorIndexSum
```

and proves

```lean
centeredMobiusLogSquarefreeDivisorIndexSum_eq_centeredVonMangoldt
```

or, mathematically,

\[
-1+\sum_{\substack{d\mid n\\ d\ \mathrm{squarefree}}}
  \mu(d)\log(n/d)
  =\Lambda(n)-1.
\]

The centering anchor is not filtered out.

## 2. Active pair block

The squarefree-active pair block keeps the anchor, left genuine, right genuine,
and genuine-genuine channels inside one signed sum. It is proved equal both to

\[
(\Lambda(n)-1)(\Lambda(n+h)-1)
\]

and to the previous full divisor-pair block. Thus the support reduction changes
no value.

## 3. Common squarefree divisor

For an active augmented pair \(u,v\), write

\[
D(u)=
\begin{cases}
1,&u=\mathrm{none},\\
d,&u=\mathrm{some}(d),
\end{cases}
\qquad
g=\gcd(D(u),D(v)).
\]

Every active attached modulus is positive and squarefree. Hence \(g\) is
positive and squarefree.

Because the pair occurs at \(n\) and \(n+h\),

\[
D(u)\mid n,\qquad D(v)\mid n+h,
\]

so

\[
\boxed{g\mid h}.
\]

Consequently every active pair belongs to a class indexed by a squarefree
divisor \(g\) of the positive shift \(h\).

## 4. Primitive coprime moduli

Define

\[
d'=\frac{D(u)}g,\qquad
e'=\frac{D(v)}g.
\]

The source proves

\[
\boxed{\gcd(d',e')=1}.
\]

Both \(d'\) and \(e'\) remain squarefree, and so does their product. The exact
square-removal identity is

\[
D(u)D(v)=g^2d'e'.
\]

Combining this with \(\gcd(D(u),D(v))\operatorname{lcm}(D(u),D(v))
=D(u)D(v)\) identifies the LCM progression modulus with one common-divisor
factor and one primitive coprime product.

This is the arithmetic shape needed for a later Type I/II or large-sieve
argument: a squarefree \(g\mid h\) and a coprime reduced pair \((d',e')\).

## 5. Exact gcd stratification

The packet defines

```lean
centeredMobiusLogSquarefreePairGCDClassIndexSet
centeredMobiusLogSquarefreePairGCDClassBlock
centeredMobiusLogSquarefreeGCDPairBlock
```

and uses finite fiberwise summation to prove, for \(h>0\),

\[
\sum_{\substack{g\mid h\\g\ \mathrm{squarefree}}}
  \sum_{\substack{\text{active }(u,v)\\
                  \gcd(D(u),D(v))=g}}
  T_n(u)T_{n+h}(v)
=
(\Lambda(n)-1)(\Lambda(n+h)-1).
\]

No term is dropped and no absolute value is inserted.

## 6. Aggregate and supplier equivalence

The Fejér-weighted positive-shift aggregate in squarefree-gcd form is

```lean
nonAliasingFejerMobiusLogSquarefreeGCDAggregate
```

and is proved exactly equal to

```lean
nonAliasingFejerMobiusLogLCMProgressionAggregate.
```

The new frontier proposition is

```lean
SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound.
```

The source proves

```lean
mobiusLogSquarefreeGCDBound_iff_lcmProgressionBound
```

and supplies the existing partial-discrepancy adapter. The new proposition
therefore has exactly the same logical strength as the preceding open
supplier.

## Exact remaining obligation

Prove

\[
\sum_h\sum_n w(n)w(n+h)
\sum_{\substack{g\mid h\\g\ \mathrm{squarefree}}}
\sum_{\substack{\text{active }(u,v)\\
                \gcd(D(u),D(v))=g}}
T_n(u)T_{n+h}(v)
\ll X^{3/2}(\log X)^4
\]

at the concrete cutoff

\[
N=\left\lceil X^{1/4}\right\rceil.
\]

The next proof must obtain the missing half-power from cancellation within or
across the primitive coprime strata. Merely grouping by \(g\), counting
progression points, or estimating the anchor and genuine channels separately
retains exponent \(2\).

A natural next formal increment is an exact split of the squarefree
\(g\)-classes at \(g\le\sqrt X\), with separate Type I and Type II supplier
interfaces that preserve the centered signed sum.

## Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
MOBIUS_SQUAREFREE_SUPPORT_REDUCTION_SOURCE_PROVED
SQUAREFREE_SHIFT_GCD_STRATIFICATION_SOURCE_PROVED
PRIMITIVE_COPRIME_REDUCED_MODULI_SOURCE_PROVED
SEVEN_EIGHTHS_SQUAREFREE_GCD_STRATIFIED_BOUND_OPEN
```

No Lean/Lake elaboration, kernel audit, Möbius cancellation estimate,
large-sieve theorem, threshold descent, zero-free theorem at \(1/2\), or
Riemann Hypothesis result is claimed.
