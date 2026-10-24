# Goldbach: the continuous unit-interval coefficient

Status: source draft only. No Lean/Lake execution, kernel audit, major/minor-arc estimate, or Goldbach proof is represented here.

## Source

For

\[
S_N(x)=\sum_{0\le n\le N}1_{\mathbb P}(n)\log(n)e^{2\pi i n x},
\]

the added source states the exact finite identity

\[
\int_0^1 S_N(x)^2e^{-2\pi iNx}\,dx
 =
 \sum_{\substack{0\le p,q\le N\\p+q=N}}
 \log p\,\log q.
\]

The right side is the existing `goldbachLogMass N`, embedded in `ℂ`.

The implementation does not define a second exponential convention. It uses Mathlib's canonical Fourier monomials on `AddCircle 1`. The unit-interval character integral is derived from `fourierCoeff_fourier` and `fourierCoeff_eq_intervalIntegral`.

## Exact boundaries

- The target phase is negative. Omitting it extracts the wrong coefficient.
- Frequencies are integers and equality is literal, not modular.
- The sums are finite; no infinite-series or limit exchange occurs.
- Composite indices have zero weight.
- Positivity is connected to the existing actual `Nat.Prime` Goldbach count by the inherited weighted bridge.

## What remains open

This identity is algebraic/analytic bookkeeping. It supplies none of the estimates needed for strong Goldbach. Remaining work includes:

1. source-derived local congruence factors;
2. a declared major/minor-arc partition;
3. the main-term approximation with all endpoint and normalization terms;
4. a signed residual estimate uniform over every sufficiently large admissible even integer;
5. complete finite coverage below the analytic cutoff;
6. exact-head elaboration and trust replay of the entire stacked source.

A bound valid for almost all even integers, a density-one set, or a finite diagnostic sample does not discharge the universal target.
