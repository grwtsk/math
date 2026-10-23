# Finite-sample support obstruction to all-order Walsh energy decay

Research date: 2026-10-22
Owner: grwtsk/math #630; arithmetic quantifier owner #441
Parent PR #638 head: 25bfa03581cdf14841fc0661e4af6a5550b1fe96
Evidence: PAPER_PROOF / SOURCE_REVIEW / NOT_LEAN_FORMALIZED / NOT_KERNEL_AUDITED

## Statement

Let N>0 and H be a finite shift set with k=|H|. For ANY
Boolean source z, let P be the empirical distribution of
the k-coordinate words over the N ordinary roots. Write
q=2^k and E=sum over all nonempty Walsh characters of
their squared empirical coefficients. Then

    E >= max(0, q/N - 1).

This applies in particular to the actual positive-index
Liouville source in LiouvilleWalshSourceBridge.lean.

## Proof

Finite Walsh Parseval gives

    1+E = q * sum_w P(w)^2.

The empirical distribution has at most N supported words.
For s=|support(P)|, Cauchy-Schwarz and sum_w P(w)=1 give
sum_w P(w)^2 >= 1/s >= 1/N. Hence E>=q/N-1.
Since E is a sum of squares, E>=0 as well.

The bound is purely finite and independent of the
arithmetic source. It is sharp whenever N<=q and the
observations occupy N distinct patterns with equal
frequency. For N=1 it gives E>=q-1, with equality
for every observed single word.

## Implications and scope

If q/N >= 1+delta along infinitely many sample sizes,
E cannot converge to zero. Thus any growing-window
all-order energy theorem must respect the support
feasibility condition limsup(q/N)<=1, at minimum.

The stronger condition q/N -> 0 is NOT a logical
necessity for energy decay: if N=q and every pattern
occurs exactly once, E=0. It may nevertheless be
useful as a sufficient sampling regime for particular
estimates.

This bound alone does not constrain fixed-order Chowla
at a fixed number of shifts, prove all-order decay,
bound odd-affine residual energy, or yield GUE/RH.

## Next formal proof obligation

Use the existing finite Parseval declaration
chiSquareAgainstUniform_eq_energy and empirical pattern
counts. Formalize:
1. support(cardinality) <= N;
2. sum of squared masses >= 1/N via finite Cauchy-Schwarz;
3. E>=q/N-1 and E>=0;
4. the exact positive-index Liouville specialization;
5. the sharp N=1 hostile fixture and the distinction
   between necessary limsup(q/N)<=1 and nonnecessary q/N->0.

No Lean compiler or kernel qualification was executed.
Do not merge PR #638 based on this note.
