# Parity Mertens reconstruction from ordinary dyadic descendants

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PARITY_MERTENS_DYADIC_RECONSTRUCTION_SOURCE_DRAFT / ORDINARY_MERTENS_DYADIC_TAIL_SUPPLIER_OPEN`

Owner: #613. Direct parent: #611 / PR #612. Zero-mode consumer: #607 / PR #608. Natural-scale endpoint target: #586 / PR #588.

This increment removes an unnecessary conceptual separation between ordinary and parity-restricted Mertens prefixes. The parity prefixes are reconstructed exactly from ordinary Mertens values at dyadically descending arguments.

No ordinary Mertens estimate is proved.

## Exact source binding

```text
parent branch:
  research/rh-zero-nonzero-fourier-split-611-20261021

parent revision:
  d90c33f93929061b96e2173b8bc1eacf00baa145

parent tree:
  5fad404e17f059cb769920e3d9512841450d177e

candidate branch:
  research/rh-parity-mertens-dyadic-tail-613-20261021

source commit:
  5512427c2b27a9fc0dfeb05109fad61ab06d85ac

source tree:
  f7cd039bcdf0de6306aff2c3a518f1f91224ddad

source:
  GRWTSK/NumberTheory/Moebius/
    ParityMertensDyadicReconstruction.lean

source blob:
  e3ba490203252a0dfeefa13441d56ca4fa6622ae
```

## Pointwise Möbius identity at the prime two

For every natural number \(m\), the source scripts

```lean
moebiusReal_two_mul_eq_parity
```

with mathematical content

\[
\mu(2m)=
\begin{cases}
-\mu(m),&m\text{ odd},\\
0,&m\text{ even}.
\end{cases}
\]

The odd case uses multiplicativity at the coprime pair \(2,m\). The even case uses the square divisor \(4\mid 2m\), so \(2m\) is not squarefree.

The zero case is retained explicitly. The invalid unconditional rule

\[
\mu(2m)=-\mu(m)
\]

is not used.

## Even-prefix reindexing

The source proves

```lean
parityMertensPrefix_even_eq_sum_two_mul
```

by the finite bijection

\[
u\longleftrightarrow m=u/2
\]

between positive even \(u\le b\) and positive \(m\le b/2\).

Combining the bijection with the pointwise identity gives

```lean
parityMertensPrefix_even_eq_neg_odd_half
```

or

\[
E(b)=-O(\lfloor b/2\rfloor),
\]

where

\[
E(b)=\sum_{\substack{1\le n\le b\\n\text{ even}}}\mu(n),
\qquad
O(b)=\sum_{\substack{1\le n\le b\\n\text{ odd}}}\mu(n).
\]

## Odd-prefix recursion

Since

\[
M(b)=E(b)+O(b),
\]

the source proves

```lean
parityMertensPrefix_odd_recurrence
```

with exact formula

\[
O(b)=M(b)+O(\lfloor b/2\rfloor).
\]

This is an exact arithmetic identity. No asymptotic estimate, smoothing, or approximation appears.

## Finite dyadic reconstruction

Define

```lean
ordinaryMertensDyadicTail b L
```

by

\[
T_L(b)=\sum_{0\le t<L}M\!\left(\left\lfloor\frac b{2^t}\right\rfloor\right).
\]

The theorem

```lean
parityMertensPrefix_odd_eq_dyadicTail_add_remainder
```

scripts the exact finite recursion

\[
O(b)
=
T_L(b)
+
O\!\left(\left\lfloor\frac b{2^L}\right\rfloor\right)
\]

for every finite depth \(L\).

The terminal length is

```lean
ordinaryMertensDyadicLength b
```

with value

\[
L(b)=\lfloor\log_2 b\rfloor+1.
\]

The source separately proves

```lean
endpoint_div_two_pow_dyadicLength_eq_zero
```

using the strict inequality

\[
b<2^{\lfloor\log_2b\rfloor+1}.
\]

Therefore the terminal remainder is exactly zero, yielding

```lean
parityMertensPrefix_odd_eq_ordinaryDyadicTail
```

and

\[
\boxed{
O(b)=
\sum_{0\le t<L(b)}
M\!\left(\left\lfloor\frac b{2^t}\right\rfloor\right)
}.
\]

The corresponding even identity is

```lean
parityMertensPrefix_even_eq_neg_ordinaryDyadicTail_half
```

or

\[
E(b)=
-
\sum_{0\le t<L(\lfloor b/2\rfloor)}
M\!\left(
\left\lfloor
\frac{\lfloor b/2\rfloor}{2^t}
\right\rfloor
\right).
\]

## Absolute dyadic-tail mass

The source defines

```lean
ordinaryMertensDyadicTailMass b
```

by

\[
A(b)=
\sum_{0\le t<L(b)}
\left|
M\!\left(\left\lfloor\frac b{2^t}\right\rfloor\right)
\right|.
\]

Finite triangle inequality gives

```lean
abs_parityMertensPrefix_odd_le_dyadicTailMass
```

and

```lean
abs_parityMertensPrefix_even_le_dyadicTailMass_half.
```

Thus

\[
|O(b)|\le A(b),
\qquad
|E(b)|\le A(\lfloor b/2\rfloor).
\]

## Conditional ordinary-tail supplier

The open proposition

```lean
DyadicOrdinaryMertensTailSquareRootEnergy
```

requires, for every \(\delta>0\), one constant \(C_\delta\ge0\) such that for every dyadic block \(X=2^j\le b<2X\),

\[
A(b)^2\le C_\delta X X^\delta
\]

and

\[
A(\lfloor b/2\rfloor)^2\le C_\delta X X^\delta.
\]

The two inequalities are stated at the common ambient endpoint scale. This is an explicit analytic premise, not a theorem produced by the finite reconstruction.

## Transport to the zero-mode supplier

The source proves

```lean
parityMertensSquareRootEnergy_of_ordinaryDyadicTail
```

and therefore

\[
\boxed{
\text{ordinary dyadic-tail square-root energy}
\Longrightarrow
\text{parity Mertens square-root energy}.
}
\]

This closes the arithmetic localization bridge that was left abstract in PR #612. The remaining zero-mode analytic task is now expressed entirely in terms of ordinary Mertens values.

The source also proves

```lean
naturalScaleCongruenceL1_of_ordinaryDyadicTail_and_nonzero.
```

Hence

\[
\boxed{
\text{ordinary Mertens dyadic-tail supplier}
+
\text{nonzero Fourier supplier}
\Longrightarrow
\text{#588 natural-scale congruence-}L^1\text{ supplier}.
}
\]

## Relation to ordinary Mertens conjectures and repository suppliers

This increment does not assert that any existing ordinary-Mertens premise automatically controls the dyadic absolute tail.

In particular:

- #153 supplies a square-root/logarithmic ordinary-Mertens envelope only conditionally and still requires a geometric dyadic-tail summation theorem;
- #154's broad threshold \(eta<5/6\) is not sufficient for this square-root-scale zero mode;
- Weak Mertens or Gonek--Hejhal-type quadratic information still needs a theorem controlling this exact finite dyadic tail;
- #609's moving-window/tail Mertens square energies remain a neighboring quadratic object, not an automatic supplier.

The next bounded analytic comparison should prove that a suitably uniform ordinary-Mertens envelope at exponent \(1/2+\varepsilon\) controls \(A(b)\) by a convergent dyadic geometric sum. That theorem is not claimed here.

## Failure boundaries

This increment does not prove:

- an ordinary Mertens square-root estimate;
- the ordinary dyadic-tail supplier;
- the parity Mertens supplier unconditionally;
- the nonzero-frequency supplier;
- a Weak Mertens localization theorem;
- a Gonek--Hejhal localization theorem;
- RH.

The exact reconstruction also does not show equivalence between ordinary and parity Mertens estimates. It proves a one-way conditional reduction after the dyadic absolute-tail premise is supplied.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
PARITY_MERTENS_DYADIC_RECONSTRUCTION_SOURCE_DRAFT
ORDINARY_DYADIC_TAIL_TO_PARITY_REDUCTION_SOURCE_DRAFT
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ORDINARY_MERTENS_DYADIC_TAIL_SUPPLIER
NONZERO_FREQUENCY_SUPPLIER
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
