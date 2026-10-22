# Nonzero parity Fourier modes as residue-class variance

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PARSEVAL_RESIDUE_VARIANCE_SOURCE_DRAFT / RESIDUE_VARIANCE_SUPPLIER_OPEN / SQUAREFREE_DIAGONAL_NONZERO_L1_OPEN`

Owner: #621. Direct parent: #617 / PR #618. Zero/nonzero split: #611 / PR #612. Parity/Fourier factorization: #607 / PR #608.

This increment replaces the opaque nonzero-frequency Möbius Fourier energy by an exact residue-class variance observable. The squarefree diagonal from the parity factorization is retained as a distinct unresolved term.

No analytic estimate is proved.

## Exact source binding

```text
parent branch:
  research/rh-pointwise-mertens-geometric-617-20261021

parent revision:
  0f98cd9101bd57fb193ea4b6655a52c6461e44c0

parent tree:
  24d71a9ba7f5ba7037606518313c08e9a405ff96

candidate branch:
  research/rh-parity-residue-variance-621-20261021

source commit:
  d65e429f0c63e8f684fdb5fa21bf8b0205814fb7

source:
  GRWTSK/NumberTheory/Moebius/
    ParityFourierResidueVariance.lean

source blob:
  80d12207b3194c9ff6b88f041ca963a1fdda6ea8
```

## Residue buckets

Fix an endpoint \(b\), a positive square-modulus parameter \(d\), a parity \(r\in\{0,1\}\), and put

\[
q=d^2.
\]

For \(a\in\mathbf Z/q\mathbf Z\), define

\[
A_r(b,d,a)
=
\sum_{\substack{1\le u\le b\\
u\equiv r\pmod2\\
\lfloor u/2\rfloor\equiv a\pmod q}}
\mu(u).
\]

The source declaration is

```lean
parityMertensResidueBucket.
```

No absolute value is taken inside the bucket.

The exact partition theorem

```lean
sum_parityMertensResidueBucket
```

scripts

\[
\sum_{a\bmod q} A_r(b,d,a)=M_r(b),
\]

where \(M_r(b)\) is the parity-restricted Mertens prefix from PR #612.

## Fourier regrouping

The one-point Fourier sum from PR #608 is

\[
S_r(b,d,k)
=
\sum_{\substack{1\le u\le b\\u\equiv r\pmod2}}
\mu(u)
\,e_q\!\left(k\left\lfloor\frac u2\right\rfloor\right).
\]

The source theorem

```lean
parityOnePointMobiusFourierSum_eq_residueBuckets
```

scripts the exact regrouping

\[
S_r(b,d,k)
=
\sum_{a\bmod q} A_r(b,d,a)e_q(ka).
\]

All endpoint, parity, and square-modulus data are preserved.

## Finite additive Parseval

The source first scripts the standard character orthogonality

\[
\sum_{k\bmod N}
\overline{e_N(ka)}e_N(kc)
=
\begin{cases}
N,&a=c,\\
0,&a\ne c,
\end{cases}
\]

through

```lean
stdAddChar_conj_mul_orthogonality.
```

It then scripts the finite Parseval identity

```lean
stdAddChar_parseval_norm_sq
```

with

\[
\sum_{k\bmod N}
\left|
\sum_{a\bmod N}F(a)e_N(ka)
\right|^2
=
N\sum_{a\bmod N}|F(a)|^2.
\]

Specializing to the Möbius residue buckets gives

```lean
sum_norm_sq_parityOnePointMobiusFourierSum
```

and

\[
\sum_{k\bmod q}|S_r(b,d,k)|^2
=
q\sum_{a\bmod q}|A_r(b,d,a)|^2.
\]

This is exact finite algebra, not a large-sieve estimate.

## Exact zero-mode subtraction

Define the residue energy

\[
E_r(b,d)=\sum_{a\bmod q}|A_r(b,d,a)|^2
\]

and the residue variance

\[
V_r(b,d)
=
E_r(b,d)-\frac{M_r(b)^2}{q}.
\]

The source declarations are

```lean
parityMertensResidueEnergy
parityMertensResidueVariance.
```

The zero frequency is subtracted exactly. The load-bearing theorem

```lean
normalized_nonzero_parityFourierEnergy_eq_residueVariance
```

scripts

\[
\boxed{
\frac1q
\sum_{\substack{k\bmod q\\k\ne0}}
|S_r(b,d,k)|^2
=
V_r(b,d)
}.
\]

Therefore `variance` is not being used as a name for the full Fourier energy; it is exactly the nonzero-frequency energy after removing \(k=0\).

The source also scripts

```lean
parityMertensResidueVariance_nonneg.
```

## Separate squarefree diagonal

The parity factorization in PR #608 contains

\[
D_r(b,d,k)
=
\sum_{\substack{1\le u\le b\\u\equiv r\pmod2}}
\mu(u)^2
\,e_q\!\left(2k\left\lfloor\frac u2\right\rfloor\right).
\]

This increment deliberately does not fold that object into the Möbius residue variance.

It defines

```lean
paritySquarefreeDiagonalNonzeroFourierL1
```

with mathematical content

\[
\frac1q
\sum_{\substack{k\bmod q\\k\ne0}}
|D_r(b,d,k)|.
\]

No estimate of this term is claimed.

## Modulus and endpoint majorants

For one square modulus, define

\[
\mathcal R(b,d)
=
\frac12\left(
V_0(b,d)+V_1(b,d)
+L^{\mathrm{diag}}_0(b,d)
+L^{\mathrm{diag}}_1(b,d)
\right).
\]

The source declaration is

```lean
parityResidueVarianceDiagonalModulusMajorant.
```

Using only

\[
|S_r^2-D_r|
\le
|S_r|^2+|D_r|,
\]

Parseval, and the exact zero-mode subtraction, the source scripts

```lean
parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal.
```

Summing over the effective square-modulus support \(d^2<b\) yields

```lean
parityFourierNonzeroFrequencyEndpointMajorant_le_residueVarianceDiagonal.
```

No cancellation estimate is used in either comparison.

## New analytic supplier

The source defines

```lean
DyadicNaturalScaleParityResidueVarianceDiagonalBudget.
```

It requires, for every \(\delta>0\), a constant \(C_\delta\ge0\) such that on \(X=2^j\le b<2X\),

\[
\sum_{d^2<b}\mathcal R(b,d)
\le
C_\delta X^{1+\delta}.
\]

The source theorem

```lean
nonzeroParityFourierBudget_of_residueVarianceDiagonal
```

scripts

\[
\boxed{
\text{residue variance + diagonal budget}
\Longrightarrow
\text{nonzero parity-Fourier budget}
}.
\]

The supplier remains uninhabited.

## Composition with the zero mode

PR #618 source-scripts the complete zero-mode transport from the conditional pointwise Mertens envelope

\[
|M(x)|\ll_\varepsilon x^{1/2+\varepsilon}.
\]

This increment composes that route with the residue-variance supplier through

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_residueVarianceDiagonal.
```

Thus the current conditional dependency is

```text
pointwise ordinary-Mertens square-root-plus-epsilon envelope
+
parity Möbius residue-variance / squarefree-diagonal budget

-> parity zero mode + nonzero Fourier modes
-> natural-scale square-modulus congruence L1
-> signed lower-order cross-collision supplier.
```

## Relation to large sieve and dispersion

The nonzero Möbius term is now expressed as an exact residue-class variance. This is the appropriate consumer shape for:

- square-modulus large-sieve estimates;
- Bombieri--Vinogradov or dispersion estimates for multiplicative functions;
- local Fourier/Gowers mean-square estimates;
- conductor-uniform L-function inputs after an explicit additive/residue transport.

No theorem from any of those programs is imported or claimed sufficient here.

The remaining nonzero analytic work is split into two explicit parts:

1. bound the parity Möbius residue variance \(V_r(b,d)\) in aggregate over \(d^2<b\);
2. bound the squarefree-diagonal nonzero-frequency L1 term.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
EXACT_RESIDUE_REGROUPING_SCRIPTED
FINITE_PARSEVAL_SCRIPTED
EXACT_ZERO_MODE_SUBTRACTION_SCRIPTED
RESIDUE_VARIANCE_NONNEGATIVITY_SCRIPTED
NONZERO_FOURIER_TO_VARIANCE_DIAGONAL_COMPARISON_SCRIPTED
```

Not established:

```text
RESIDUE_VARIANCE_SUPPLIER
SQUAREFREE_DIAGONAL_NONZERO_L1_BOUND
POINTWISE_MERTENS_ENVELOPE
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
