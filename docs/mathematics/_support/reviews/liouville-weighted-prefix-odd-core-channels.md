# Odd-core channelization: a proved subpolynomial channel energy and the exact cross-core frontier

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** This note selects a genuinely nontrivial source-matched channelization and proves its whole-channel weighted energy has an all-positive-rate bound. The assignment groups all integers with the same odd core, so the proof uses the exact Liouville identity `lambda(2n)=-lambda(n)` along complete two-adic chains. The channel count is linear, however, and the complete signed cross-channel packet is exactly the unresolved distinct-odd-core supplier. Thus the construction advances the channel investigation without proving `WeightedPrefixSquareAllRate`, `UniformEnergySupplier`, the endpoint estimate, or RH.

Prepared from `grwtsk/math/main` at the publication parent recorded in the static target. Research scope: `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

Compilation, expected-type checking, fresh-kernel replay, native execution, and transitive axiom audit remain `NOT_RUN`.

## 1. Unchanged weighted-prefix source

Let

\[
L_k=\sum_{n\le k}\lambda(n),
\qquad
J_N=\sum_{k=1}^{N}\frac{L_k^2}{k(k+1)}.
\]

The generalized channel formalism uses the original prefix inventory `1,...,N`, the original activation `n<=k`, the actual Liouville coefficient, and the nonnegative weight

\[
w_k=\frac1{k(k+1)}.
\]

For any channel map, it gives the exact identity

\[
J_N=E_N+C_N,
\]

where `E_N` is the sum of complete signed channel-prefix squares and `C_N` retains both orientations of every cross-channel product.

## 2. Select the odd-core channels

Every positive integer has a unique factorization

\[
n=2^a q,
\qquad q\text{ odd}.
\]

Assign `n` to the channel labeled by its odd core `q`. At prefix `k`, the signed amplitude in channel `q` is

\[
\begin{aligned}
B_q(k)
&=\sum_{\substack{a\ge0\\2^a q\le k}}\lambda(2^a q)\\
&=\lambda(q)\sum_{a=0}^{A_q(k)}(-1)^a,
\end{aligned}
\]

where `A_q(k)` is the largest active exponent. Therefore

\[
B_q(k)=
\begin{cases}
\lambda(q),&A_q(k)\text{ even},\\
0,&A_q(k)\text{ odd},
\end{cases}
\]

and in all cases

\[
\boxed{|B_q(k)|\le1.}
\tag{1}
\]

This is actual-source cancellation inside each channel. No random sign, Fourier transform, or independence premise is used.

## 3. All-positive-rate channel-energy bound

The whole-channel energy is

\[
E_N^{\rm odd}
=\sum_{k=1}^{N}\frac1{k(k+1)}
  \sum_{\substack{q\le N\\q\text{ odd}}}B_q(k)^2.
\]

A channel with `q>k` has zero amplitude. There are exactly `ceil(k/2)` positive odd integers at most `k`, and equation (1) gives

\[
\sum_q B_q(k)^2\le\left\lceil\frac k2\right\rceil
\le\frac{k+1}{2}.
\]

Consequently

\[
\begin{aligned}
E_N^{\rm odd}
&\le\sum_{k=1}^{N}
  \frac{(k+1)/2}{k(k+1)}\\
&=\frac12\sum_{k=1}^{N}\frac1k.
\end{aligned}
\]

Thus

\[
\boxed{0\le E_N^{\rm odd}\le\frac12 H_N.}
\tag{2}
\]

For every `eta>0`, the elementary inequality

\[
\log x\le\frac{x^\eta}{\eta}
\qquad(x\ge1)
\]

and `H_N<=1+log(N+1)` imply

\[
\boxed{
E_N^{\rm odd}
\le A_\eta (N+1)^\eta,
\qquad
A_\eta=\frac12\left(1+\frac1\eta\right).
}
\tag{3}
\]

This establishes the requested genuinely source-specific all-positive-rate channel-energy estimate.

## 4. Exact cross-channel frontier

Let `C_N^{odd}` be the complete signed cross-channel energy. The generic reconstruction gives

\[
\boxed{J_N=E_N^{\rm odd}+C_N^{\rm odd}.}
\tag{4}
\]

Since the first term is nonnegative and satisfies (3), the following two statements are equivalent:

\[
J_N=O_\eta((N+1)^\eta)\quad\forall\eta>0,
\]

and

\[
\boxed{
C_N^{\rm odd}=O_\eta((N+1)^\eta)
\quad\forall\eta>0.
}
\tag{5}
\]

The cross term is the complete packet between distinct odd cores. It is not estimated by the channel-energy proof and must not be dropped or replaced by a random expectation.

## 5. Cardinality obstruction to generic Cauchy

Every positive odd `q<=N` occurs as the channel of `n=q`. Hence the occupied-channel count is exactly

\[
\boxed{K_N=\left\lceil\frac N2\right\rceil.}
\tag{6}
\]

The generic finite Cauchy inequality gives only

\[
\begin{aligned}
J_N
&\le K_NE_N^{\rm odd}\\
&\le\left\lceil\frac N2\right\rceil\frac{H_N}{2},
\end{aligned}
\tag{7}
\]

which has rate one. Therefore the all-positive-rate channel-energy estimate does not by itself prove the original target: the paid channel count is too large. This is a quantitative obstruction, not merely a missing optimization.

The result also clarifies randomization. Orthogonal random multipliers on the odd-core channels have second moment exactly `E_N^{odd}`, but the deterministic Liouville square is `E_N^{odd}+C_N^{odd}`. Randomization erases the signed quantity that remains to be controlled.

## 6. Relation to earlier orbit work

The same `E_N^{odd}` is the complete same-odd-core packet from `LiouvilleWeightedPrefixTwoAdicChains.lean`. The present argument supplies a direct channel-amplitude proof of the harmonic bound and identifies it inside the generalized channel API.

The growing-prime-free-core construction extends this pattern: its internal channel energy is bounded by `kappa(P_N) H_N`, and logarithmic prime families keep that allowance subpower. Their occupied core count remains exponent one, so the same Cauchy obstruction persists. The odd-core case is selected here because both the channel energy and the exact linear count have elementary source proofs without a prime-counting input.

## 7. Formalization boundary

The Lean source proves the exact `J_N=E_N+C_N` reconstruction, the conditional all-rate transfer from the harmonic bound, the equivalence between cross-channel and full discrete suppliers once the energy estimate is supplied, and the paid-cardinality Cauchy ceiling.

The following source-exact finite facts remain named propositions pending pinned elaboration:

- correctness and uniqueness of the `padicValNat` odd-core map;
- the alternating channel-amplitude formula;
- the unit amplitude bound;
- exact occupied-channel count `ceil(N/2)`;
- the bound `E_N^{odd}<=H_N/2`;
- the elementary harmonic all-rate estimate.

They are propositions, not axioms or accepted theorems.

Current status:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- odd-core channel energy bound: `ANALYTICALLY_PROVED / LEAN_INTERFACE_OPEN`;
- distinct odd-core cross supplier: `UNPROVED`;
- weighted-prefix supplier: `UNPROVED`;
- uniform energy: `UNPROVED`;
- RH: `UNPROVED`.
