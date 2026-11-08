# Complete two-adic chains in the weighted Liouville prefix square

**Attribution:** grwtsk contributors. **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`. **Date:** 2026-10-31.

**Disposition:** new unconditional source-specific reduction.  The complete contribution of every pair of Liouville indices having the same odd part is nonnegative and at most harmonic size.  Hence the RH-strength weighted-prefix supplier is equivalent, up to an all-positive-rate allowance, to the signed correlations between distinct odd cores.  This does not prove that remaining estimate, `UniformEnergySupplier`, or RH.

## 1. Original weighted pair form

Let

\[
K_N(m,n)=\frac1{\max(m,n)}-\frac1{N+1}.
\]

The predecessor finite identity is

\[
J_N=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}
   =\sum_{m,n\le N}\lambda(m)\lambda(n)K_N(m,n).
\tag{1}
\]

No diagonal, orientation or terminal face is removed.

Every positive integer has a unique representation `n=2^a q` with `q` odd.  Since

\[
\lambda(2^a q)=(-1)^a\lambda(q),
\]

the contribution from one odd core `q` is independent of the unknown sign `lambda(q)`.

## 2. Exact one-chain evaluation

Let `A=A_N(q)` be defined by

\[
2^Aq\le N<2^{A+1}q.
\]

The complete ordered chain packet is

\[
C_{N,q}=\sum_{0\le a,b\le A}(-1)^{a+b}
 \left(\frac1{2^{\max(a,b)}q}-\frac1{N+1}\right).
\tag{2}
\]

Group the first term by `k=max(a,b)`.  For `k>=1`, the ordered pairs with maximum `k` are `(k,b)`, `0<=b<=k`, and `(a,k)`, `0<=a<k`.  Their signed coefficient is

\[
(-1)^k\left(\sum_{b=0}^k(-1)^b+\sum_{a=0}^{k-1}(-1)^a\right)=(-1)^k.
\]

The constant terminal face contributes

\[
-\frac1{N+1}\left(\sum_{a=0}^A(-1)^a\right)^2
=
\begin{cases}
-1/(N+1),&A\text{ even},\\
0,&A\text{ odd}.
\end{cases}
\]

Therefore

\[
\boxed{
C_{N,q}=\frac1q\sum_{k=0}^A\frac{(-1)^k}{2^k}
      -\frac{\mathbf 1_{2\mid A}}{N+1}
=
\frac{2}{3q}\left(1-(-\tfrac12)^{A+1}\right)
      -\frac{\mathbf 1_{2\mid A}}{N+1}.
}
\tag{3}
\]

The alternating geometric partial sum lies between `1/2` and `1`.  If `A` is even, the terminal subtraction is strictly smaller than the final positive scale `1/(2^Aq)`.  Thus

\[
\boxed{0\le C_{N,q}\le\frac1q.}
\tag{4}
\]

There is no exceptional set and no asymptotic threshold.

## 3. Complete internal packet

Let `I_N` be the sum of (2) over all odd `q<=N`.  Unique two-adic factorization partitions exactly the ordered pairs with the same odd core, so

\[
0\le I_N\le\sum_{\substack{q\le N\\q\text{ odd}}}\frac1q
\le H_N.
\tag{5}
\]

In particular `I_N=O(log(2+N))`, which is bounded by `C_eta (N+1)^eta` for every `eta>0`.

Define the exact remaining packet

\[
R_N^{\rm odd}=J_N-I_N.
\tag{6}
\]

Then

\[
\boxed{R_N^{\rm odd}\le J_N\le R_N^{\rm odd}+H_N.}
\tag{7}
\]

Consequently the all-positive-rate endpoint estimate for `J_N` is equivalent to the same estimate for `R_N^{odd}`.  This strictly sharpens the predecessor `nonDoublingRemainder`: every ratio `4,8,16,...` within one odd core has now been paid, not merely the adjacent doubling edge.

## 4. Causal interpretation

For each odd `q`, define the complete chain waveform

\[
h_q(u)=\sum_{a\ge0}(-1)^a r_{2^a q}(u),
\]

where only finitely many terms are born.  The active responses decrease with `a`, so the alternating-series inequality gives `h_q(u)>=0`.  The original waveform is exactly

\[
F_\lambda(u)=\sum_{q\text{ odd}}\lambda(q)h_q(u).
\tag{8}
\]

Thus `I_N` is the positive diagonal energy of the compressed odd-core sources, while `R_N^{odd}` is their complete signed cross energy.  This is a lossless regrouping, not a proof of cancellation.  Removing the Euler factor at two cannot by itself weaken an RH-equivalent target.

## 5. Formal source boundary

The Lean source defines the literal pair kernel, same-core and distinct-core packets, explicit two-adic chain packet, closed form, and endpoint all-rate interfaces.  It proves the algebraic packet decomposition and the logical equivalence between distinct-core and full endpoint suppliers, conditional on five named finite/elementary propositions:

1. unique two-adic orbit reindexing;
2. exact chain closed form (3);
3. internal bounds (5);
4. predecessor weighted-prefix pair-form identity;
5. harmonic subpower growth.

These are named propositions, not axioms.  Compilation, expected-type checking, fresh-kernel replay and transitive axiom audit are `NOT_RUN`.  The distinct-odd-core supplier, weighted-prefix supplier, uniform energy, complete endpoint estimate and RH remain unproved.

## 6. Next arithmetic step

The remaining packet is

\[
R_N^{\rm odd}=
\sum_{\substack{q\ne r\le N\\q,r\text{ odd}}}
\lambda(q)\lambda(r)
\sum_{a,b\ge0\atop 2^aq,2^br\le N}
(-1)^{a+b}K_N(2^aq,2^br).
\tag{9}
\]

The inner compressed kernel is nonnegative because it is the Gram of the nonnegative chain waveforms `h_q,h_r`.  The unresolved cancellation is therefore exactly the parity balance between distinct odd cores.  A usable theorem must estimate (9) as one growing signed aggregate before outer absolute values; fixed-shift or termwise logarithmic savings remain insufficient.
