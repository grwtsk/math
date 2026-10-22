# Aggregate endpoint Fourier kernel for the signed growing-shift packet

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #840  
Parent: draft PR #838 at `d9ccacbaca79d9d97fa45ee834d2a6ee1ef69092`

This note records an exact finite coordinate reduction. It does not provide an
arithmetic estimate, a literature adapter, a Lean elaboration result, or a
Riemann-hypothesis proof.

## 1. Starting point

The parent layer expresses the surviving signed RH-facing packet as a strict
endpoint bilinear form and then as an exact two-dimensional discrete Fourier
sum.

At scale

\[
X=2^j,
\qquad
Y=2^{j+1},
\qquad
H=\operatorname{logarithmicShiftThreshold}(j),
\]

the retained prefix range is

\[
H+1\le N<Y-H.
\]

At one prefix `N`, the ordinary endpoint support is

\[
1\le n\le N,
\qquad
n<m<Y,
\]

and the difference `h=m-n` satisfies

\[
\max(1,X-N)\le h<Y-N.
\]

The endpoint kernel is the exact clamped reciprocal first difference

\[
K_j(N,n,m)
=
\Delta_j(N,m-n).
\]

The parent frequency packet retained an outer sum over every prefix:

\[
\sum_N
Y^{-2}
\sum_{r,s}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat K_{j,N}(r,s).
\]

Here `f_j` is the zero-padded Möbius vector on `ZMod Y`.

The Möbius frequency factors do not depend on `N`. Therefore the prefix sum can
be absorbed exactly into the kernel before any analytic estimate.

## 2. Exact active-prefix interval

For fixed strict endpoints

\[
1\le n<m<Y,
\]

define

\[
L_j(n,m)
=
\max\!\left(
H+1,
\max\!\left(n, X-(m-n)\right)
\right),
\]

and

\[
U_j(n,m)
=
\min\!\left(
Y-H,
Y-(m-n)
\right).
\]

The source defines

```lean
coreGrowingShiftEndpointActivePrefixSet
coreGrowingShiftEndpointAggregatePrefixLower
coreGrowingShiftEndpointAggregatePrefixUpper
coreGrowingShiftEndpointExplicitPrefixSet
```

and authors the exact identity

\[
\boxed{
\operatorname{ActivePrefixes}_j(n,m)
=
[L_j(n,m),U_j(n,m)).
}
\]

The proof is natural-number support algebra only.

The lower endpoint combines three obligations:

1. `N` belongs to the genuine core prefix range;
2. the left endpoint has already appeared, so `n <= N`;
3. the shift is at least the active lower shift, equivalently
   `X-(m-n) <= N`.

The upper endpoint combines:

1. the right edge of the genuine core prefix range;
2. the no-wrap shift bound `N < Y-(m-n)`.

No interval is enlarged and no endpoint is replaced asymptotically.

The theorem is

```lean
coreGrowingShiftEndpointActivePrefixSet_eq_explicit
```

with explicit hypotheses

```text
1 <= n
n < m
m < 2^(j+1).
```

## 3. Aggregate ordinary kernel

The exact ordinary endpoint coefficient is

\[
A_j(n,m)
=
\sum_{N\in\operatorname{ActivePrefixes}_j(n,m)}
K_j(N,n,m).
\]

The source defines

```lean
coreGrowingShiftEndpointAggregateKernel
```

and proves, on strict endpoint support,

\[
\boxed{
A_j(n,m)
=
\sum_{L_j(n,m)\le N<U_j(n,m)}
K_j(N,n,m).
}
\]

This is recorded as

```lean
coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval
```

The formula exposes the next coefficient-analysis problem without yet
splitting the clamped reciprocal first difference into cases or telescoping
it.

## 4. Aggregate zero-padded kernel

On the cyclic ambient interval `ZMod Y`, define

\[
K^{\mathrm{agg},0}_j(x,y)
=
\sum_{H+1\le N<Y-H}
K^0_{j,N}(x,y),
\]

where every `K^0_{j,N}` is already zero off the exact strict endpoint support.

The source declaration is

```lean
coreGrowingShiftEndpointAggregateKernelZeroPad
```

and zero padding commutes exactly with aggregation:

\[
\boxed{
K^{\mathrm{agg},0}_j(x,y)
=
A_j(x_{\mathrm{val}},y_{\mathrm{val}}).
}
\]

The right side is interpreted in `Complex`.

The declarations are

```lean
coreGrowingShiftEndpointAggregateKernelZeroPad_eq_cast
coreGrowingShiftEndpointAggregateKernelZeroPad_eq_explicitInterval
```

The strict upper-triangle support is retained:

\[
x_{\mathrm{val}}\not<y_{\mathrm{val}}
\quad\Longrightarrow\quad
K^{\mathrm{agg},0}_j(x,y)=0.
\]

This is authored as

```lean
coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt
```

Thus prefix aggregation does not reinsert the quartic diagonal and does not
introduce cyclic wrap-around.

## 5. Real-space packet collapse

Let

\[
f_j(x)
=
\begin{cases}
\mu(x_{\mathrm{val}}),&1\le x_{\mathrm{val}}<Y,\\
0,&x_{\mathrm{val}}=0.
\end{cases}
\]

The prefix-indexed endpoint packet is exactly

\[
\sum_N\sum_{x,y}
f_j(x)f_j(y)K^0_{j,N}(x,y).
\]

Finite Fubini gives

\[
\boxed{
\sum_N\sum_{x,y}
f_j(x)f_j(y)K^0_{j,N}(x,y)
=
\sum_{x,y}
f_j(x)f_j(y)K^{\mathrm{agg},0}_j(x,y).
}
\]

The source introduces

```lean
coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex
```

and proves

```lean
coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateZeroPadded
```

or mathematically,

\[
\boxed{
\left(
\operatorname{EndpointBilinearPacket}_j
:\mathbb C
\right)
=
\sum_{x,y}
f_j(x)f_j(y)K^{\mathrm{agg},0}_j(x,y).
}
\]

No arithmetic sign is removed during the transposition.

## 6. Aggregate two-dimensional DFT

Define

\[
\widehat K^{\mathrm{agg}}_j(r,s)
=
\operatorname{DFT}_x
\operatorname{DFT}_y
K^{\mathrm{agg},0}_j(r,s).
\]

The declaration is

```lean
coreGrowingShiftEndpointAggregateKernelDFT2
```

Linearity of the finite DFT gives

\[
\boxed{
\widehat K^{\mathrm{agg}}_j(r,s)
=
\sum_{H+1\le N<Y-H}
\widehat K_{j,N}(r,s).
}
\]

The source records a generic linearity theorem

```lean
finiteZModKernelDFT2_sum
```

and its specialization

```lean
coreGrowingShiftEndpointAggregateKernelDFT2_eq_sum
```

This is an equality of finite transforms. It is not an estimate.

## 7. Collapsed frequency packet

The new complex packet is

\[
\mathcal F_j^{\mathrm{agg}}
=
Y^{-2}
\sum_{r,s\in\mathbb Z/Y\mathbb Z}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat K^{\mathrm{agg}}_j(r,s).
\]

The definitions are

```lean
coreGrowingShiftSignedEndpointAggregateFourierPacketComplex
coreGrowingShiftSignedEndpointAggregateFourierPacket
```

Applying the parent generic two-dimensional DFT identity directly to the
single aggregate kernel gives

```lean
coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex_eq_fourier
```

and therefore

\[
\boxed{
\left(
\operatorname{EndpointBilinearPacket}_j
:\mathbb C
\right)
=
\mathcal F_j^{\mathrm{agg}}.
}
\]

The prior prefix-indexed frequency packet and the aggregate-kernel packet are
exactly equal:

```lean
coreGrowingShiftSignedEndpointFourierPacketComplex_eq_aggregate
coreGrowingShiftSignedEndpointFourierPacket_eq_aggregate
```

The imaginary part again cancels only after the complete signed frequency
sum:

```lean
coreGrowingShiftSignedEndpointAggregateFourierPacketComplex_im
```

No termwise reality claim is made.

## 8. RH-facing identity

The exact real packet identity is

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{coreGrowingShiftSignedEndpointAggregateFourierPacket}(j).
}
\]

The declaration is

```lean
coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointAggregateFourier
```

The source-facing premise is

```lean
SubpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket
```

and the source authors the exact equivalence

```text
aggregate-kernel Fourier source
        <->
prefix-indexed Fourier source
        <->
strict endpoint-bilinear source
        <->
signed staircase source
        <->
signed growing-shift first-difference source.
```

The direct theorem is

```lean
subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket_iff_fourier
```

and the inherited conditional endpoint is

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket
```

No value of the new source proposition is constructed.

## 9. Analytic boundary after aggregation

The source profile is

```lean
SignedEndpointAggregateFourierSource
```

with proof-producing adapter

```lean
ToCoreGrowingShiftSignedEndpointAggregateFourierPacket
```

The obligations are kept separate:

```text
source statement
exact prefix aggregation
explicit active-prefix interval
exact zero padding
right-endpoint no-wrap
DFT sign and normalization
aggregate-kernel transform
strict-support preservation
low-anchor-clamp preservation
signed two-frequency cancellation
all-scale uniformity
finite small-scale control
```

There is deliberately no `crossPrefixCancellation` field. Prefix cancellation
has already been performed exactly inside the aggregate kernel.

A future theorem must estimate the single signed two-frequency form. It may not
replace it by a positive frequency norm merely because the prefix coordinate
has disappeared.

## 10. Information-loss boundary

The exact operation is

\[
\sum_N K_{j,N}
\quad\text{before estimation}.
\]

The following stronger operation is not substituted:

\[
\sum_N |K_{j,N}|.
\]

The finite hostile witness

```lean
signedEndpointAggregatePrefixCancellation_hostileWitness
```

records that two prefix contributions may cancel exactly while their termwise
absolute mass is positive.

The branch also does not introduce:

- Parseval or Plancherel;
- Cauchy--Schwarz;
- a Hilbert--Schmidt norm;
- an operator norm;
- a diagonal term;
- a rectangular support enlargement;
- modular endpoint subtraction;
- a Chowla or corrected-Elliott adapter;
- a large-sieve or dispersion estimate.

## 11. Evidence classification

Repository-proved in this source draft, subject to later elaboration and trust
review:

- the explicit active-prefix interval;
- exact ordinary and zero-padded prefix aggregation;
- strict-support preservation;
- finite Fubini into one aggregate bilinear kernel;
- DFT linearity across the prefix family;
- exact aggregate-kernel frequency representation;
- exact equivalence with the prior RH-facing source.

Still open:

- Lean/Lake elaboration;
- kernel acceptance;
- transitive trust audit;
- external replay;
- an arithmetic estimate for the aggregate kernel;
- a signed frequency cancellation theorem;
- an all-scale supplier;
- the Riemann Hypothesis.

Evidence state:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_AGGREGATE_KERNEL_FOURIER_ESTIMATE_OPEN
```

## 12. Next obstruction

The live object is now one spectral kernel rather than a prefix-indexed family:

\[
\boxed{
Y^{-2}
\sum_{r,s}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat K^{\mathrm{agg}}_j(r,s).
}
\]

The next deterministic question is whether the explicit interval sum

\[
A_j(n,m)
=
\sum_{L_j(n,m)\le N<U_j(n,m)}
\Delta_j(N,m-n)
\]

has a closed boundary-term formula after splitting the low-anchor clamp from
the literal reciprocal tail.

That computation should be performed before applying a positive norm. It may
reveal additional cancellation or low-rank structure in the aggregate kernel.
