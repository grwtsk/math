# Signed dyadic Möbius pair kernel

Owners: #362, #357, #354, #350, #347, #343, #335, and #334 / RH-E02.  
Canonical target: #15.  
Stacked parent: draft PR #360 at
`c90e918f668cfd9e04974a9c79283a72df121e1a`, tree
`c3e51c6f19052fd6cb7787d1abe395cb36b26425`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the source-specific decomposition implemented in
`GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean`.
Unlike the preceding criterion reductions, this increment expands the actual
Möbius source and isolates a signed pair correlation. It does not estimate that
correlation.

## 1. Existing finite-scale target

Retain the actual Mertens prefix

\[
M_n=\sum_{1\le a\le n}\mu(a)
\]

and the existing positive density

\[
b_n=\frac{M_n^2}{n(n+1)}.
\]

For \(N=2^j\), the dyadic block from PR #360 is

\[
B_j=\sum_{N\le n<2N}\frac{M_n^2}{n(n+1)}.
\tag{1}
\]

The exact arithmetic supplier isolated there is

\[
\forall\delta>0\ \exists D_\delta\ge0\ \forall j,
\qquad
B_j\le D_\delta N^\delta.
\tag{2}
\]

At source-draft level, (2) is equivalent to the all-positive weighted
Mertens-square family and conditionally feeds the existing RH-E02 endpoint.
No estimate in this note establishes (2).

## 2. Exact pair kernel

Expanding the square in (1) gives

\[
M_n^2=\sum_{a\le n}\sum_{b\le n}\mu(a)\mu(b).
\]

The new source keeps a common final inventory \(1\le a,b\le2N\) and zeros
coefficients which have not yet entered. Finite interchange of the three sums
produces

\[
\boxed{
B_j=
\sum_{1\le a,b\le2N}
\mu(a)\mu(b)K_j(a,b),
}
\tag{3}
\]

where

\[
K_j(a,b)
=
\sum_{\substack{N\le n<2N\\a\le n,\ b\le n}}
\frac1{n(n+1)}.
\tag{4}
\]

This is a finite source identity. It uses the repository's actual
`moebiusReal`, `pickupMertensPrefix`, and half-open dyadic ownership. No model
sequence or asymptotic replacement occurs.

## 3. Closed reciprocal form

Put

\[
L_j(a,b)=\max\{N,a,b\}.
\]

Since

\[
\frac1{n(n+1)}=\frac1n-\frac1{n+1},
\]

the kernel telescopes exactly:

\[
\boxed{
K_j(a,b)=
\begin{cases}
L_j(a,b)^{-1}-(2N)^{-1},&\max(a,b)<2N,\\[4pt]
0,&\max(a,b)\ge2N.
\end{cases}
}
\tag{5}
\]

The terminal subtraction \(-(2N)^{-1}\) is part of the kernel. Deleting it
changes (3). The right endpoint is excluded, so a coefficient born at \(2N\)
has zero kernel in block \(j\).

The kernel is symmetric and nonnegative. It also satisfies the elementary
bound

\[
0\le K_j(a,b)\le N^{-1}.
\tag{6}
\]

These properties do not themselves provide the missing signed cancellation.

## 4. Diagonal and ordered off-diagonal

Define

\[
D_j=\sum_{1\le a\le2N}\mu(a)^2K_j(a,a)
\tag{7}
\]

and the complete ordered signed off-diagonal

\[
X_j=
\sum_{\substack{1\le a,b\le2N\\a\ne b}}
\mu(a)\mu(b)K_j(a,b).
\tag{8}
\]

The new source proves

\[
\boxed{B_j=D_j+X_j.}
\tag{9}
\]

Equation (8) is ordered: both \((a,b)\) and \((b,a)\) occur. It is signed:
no absolute value is placed around \(\mu(a)\mu(b)\), around a row sum, or
around the complete correlation.

Replacing (8) by

\[
\sum_{a\ne b}|\mu(a)\mu(b)|K_j(a,b)
\]

would destroy the cancellation problem and demand a much stronger, generally
false substitute.

## 5. The diagonal is paid unconditionally

Mathlib's elementary Möbius coefficient bound, already exposed in the
repository, gives

\[
|\mu(a)|\le1,
\qquad
\mu(a)^2\le1.
\]

Together with (6) and at most \(2N\) inventory positions,

\[
0\le D_j
\le
\sum_{1\le a\le2N}N^{-1}
=2.
\tag{10}
\]

The constant 2 is intentionally simple. Formula (5) permits sharper diagonal
budgets, but sharpening a bounded term does not address the arithmetic
obstruction. The diagonal is not called cancellation and is not merged into
the unknown supplier.

## 6. Exact remaining arithmetic proposition

The new source names

\[
\mathsf{PairSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\qquad
X_j\le C_\delta N^\delta.
\tag{11}
\]

It proves

\[
\boxed{
\mathsf{PairSubpoly}
\iff
\mathsf{DyadicBlockSubpoly}.
}
\tag{12}
\]

For the block-to-pair direction, (9) and \(D_j\ge0\) give

\[
X_j\le B_j.
\]

For the pair-to-block direction, (9), (10), and \(N^\delta\ge1\) give

\[
B_j
\le2+C_\delta N^\delta
\le(C_\delta+2)N^\delta.
\]

Thus the unpaid arithmetic debt is no longer a positive square or a generic
finite-horizon condition. It is the upper bound on the actual ordered signed
Möbius pair correlation (8).

## 7. Conditional RH chain

Composing (12) with the inherited reductions gives

```text
subpolynomial signed dyadic pair correlation
  -> subpolynomial positive dyadic block masses
  -> subpolynomial completed dyadic prefixes
  -> subpolynomial cumulative weighted Mertens square
  -> all-positive weighted Mertens-square family
  -> reciprocal increment mean squares
  -> reciprocal compensated correlations
  -> pickup energy abscissa zero
  -> conditional RH endpoint.
```

The terminal theorem in the new module consumes `PairSubpoly`. It does not
construct a witness for (11), and no converse from RH is claimed.

## 8. What can now attack the supplier

The kernel (5) exposes several source-specific avenues without identifying any
of them as a completed estimate:

1. **Max-shell decomposition.** Since the kernel depends on
   \(\max(a,b)\), the ordered square can be grouped by the later member of the
   pair. This produces signed correlations between one Möbius coefficient and
   the preceding Mertens prefix.
2. **Coprime and common-factor splitting.** The pair set can be partitioned by
   \(d=\gcd(a,b)\). Möbius support eliminates repeated prime factors, while
   the kernel remains explicit. A useful theorem must retain the resulting
   signs and all divisor multiplicities.
3. **Prime-filter expansion.** The existing finite prime-note cascade gives a
   squarefree subset representation of each coefficient. The pair kernel can
   be lifted to pairs of prime subsets, but positivity of the resulting Gram
   form is not an upper bound on (8).
4. **Bilinear or Type-II estimates.** The half-open dyadic scale is now exact,
   so a bilinear decomposition can target (8) block by block. Any proposed
   estimate must be uniform in `j` and valid for every positive exponent.
5. **Mellin sampling.** Formula (5) is a discrete integral kernel and can be
   compared with the retained Mellin packets elsewhere in the repository.
   Such a comparison requires an exact source-return theorem; common scale
   notation is not enough.

The next substantive theorem should estimate (8), or decompose it into terms
for which a known mean-value theorem applies. Further equivalent criteria do
not pay the arithmetic debt.

## 9. Verification boundary

Finite exact-rational diagnostics checked the pair expansion, kernel closed
form, diagonal/off-diagonal split, and diagonal budget on every length-eight
stream over `{-1,0,1}` at the first three dyadic scales. Separate checks used
independently generated Möbius values through 4096 and hostile mutations which
removed the terminal kernel subtraction, replaced the signed off-diagonal by
absolute values, or closed the dyadic right endpoint.

Those checks are not Lean parsing, elaboration, proof-term acceptance, a
transitive axiom/native audit, or an infinite pair-correlation estimate.
Exact-head elaboration, generated-declaration reconciliation, independent
mathematical review, and immutable trust acceptance remain required.

The source status remains

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**
