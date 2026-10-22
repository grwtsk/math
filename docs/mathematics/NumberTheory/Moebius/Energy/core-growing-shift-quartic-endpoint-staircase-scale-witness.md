# Conditional cubic-scale witness for the active staircase

Issue: #816. Parent staircase layer: #793 / draft PR #796.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CONDITIONAL_CUBIC_SCALE_WITNESS_ONLY**.

## Exact terminal observable

The parent branch identifies the active binary-prefix square energy with the unweighted staircase

\[
E_j^{\mathrm{stair}}
 = \sum_{0<h<2^{j+1}}
   \sum_{b\in[L_j(h),U_j(h))}
   M_2(h,b+1)^2.
\]

The new source records the exact decomposition

\[
E_j^{\mathrm{stair}}=D_j+O_j,
\]

where `D_j` is the nonnegative quartic diagonal and `O_j` is the signed four-point off-diagonal.

## Explicit conditional premises

The source introduces two proof-bearing structures.

`ActiveStaircaseDiagonalCubicLowerBound` requires constants `c>0` and `J_D` such that

\[
c(2^j)^3\le D_j
\]

for every `j>=J_D`.

`ActiveStaircaseOffDiagonalRelativeLowerBound` requires `0<=theta<1` and `J_O` such that

\[
-\theta D_j\le O_j
\]

for every `j>=J_O`.

Neither premise is asserted unconditionally. In particular, the previously proved coarse upper bound on `D_j` supplies no lower bound.

## Cubic lower bound

For `j>=max(J_D,J_O)`, exact algebra gives

\[
\begin{aligned}
E_j^{\mathrm{stair}}
 &=D_j+O_j\\
 &\ge (1-\theta)D_j\\
 &\ge (1-\theta)c(2^j)^3.
\end{aligned}
\]

This is authored as

```lean
activeStaircaseCubicLowerBound_of_diagonal_offDiagonal
```

with positive constant `(1-theta)*c`.

## Scale mismatch

The current positive staircase source asks, for every `delta>0`, for

\[
E_j^{\mathrm{stair}}
 \le \bigl(C_\delta 2^j(2^j)^\delta\bigr)^2.
\]

At `delta=1/4`, the right side has scale `(2^j)^(5/2)`. The source authors the elementary dyadic escape theorem that every fixed multiple of this envelope is eventually smaller than every positive cubic multiple.

Consequently,

```lean
ActiveStaircaseCubicLowerBound
  -> not SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy.
```

The named conditional disposition is

```lean
ActiveStaircaseNaturalScaleMismatchWitness
```

and the contradiction theorem is

```lean
activeStaircase_subpolynomial_refutedAt_randomScaleWitness
```

## Mathematical interpretation

A squarefree-pair density theorem is expected to act on the diagonal premise. A sufficiently uniform growing-family four-point Chowla, corrected-Elliott, or `U^2` theorem is expected to act on the relative off-diagonal premise. Both require exact adapters: fixed-form cancellation is not enough, and a citation is not a proof edge.

Under those premises the positive staircase route is refuted at its current `X^(2+o(1))` normalization. This does not refute RH, Chowla, corrected Elliott, or any signed pre-Cauchy route.

## Surviving frontier

The source-faithful analytic frontier returns to the signed growing-shift packet before the Cauchy--Schwarz reduction that produced the positive square energy. In repository terms, the relevant surviving architecture is the signed dispersion interface initiated at #476 and its later exact growing-shift representations.

## Nonclaims

No squarefree-pair density theorem, growing-family four-point theorem, diagonal lower bound, off-diagonal relative bound, Lean/Lake replay, kernel acceptance, merge, RH proof, or disproof of RH is claimed.
