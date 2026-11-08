# Local prime-star Gram compensation in the original Möbius source

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-02.
Formalization assistance: OpenAI ChatGPT. Source proof candidate only.

## 1. Correction retained

The complete point-spectrum interval attached to a prime dilation is a valid
operator theorem on a nonseparable counting-ℓ² carrier. It does not estimate
the original Möbius causal Gram. The repository also now contains the stronger
correction that the outside-only prime-dilation all-rate upper supplier is
impossible: the removed negative packet is exponentially large and the signed
outside source is forced to compensate it positively.

The correct next question is therefore local and signed:

> Where, inside the original Gram, is the compensating positive mass forced to
> appear?

The answer below is an exact finite star-square identity. It localizes a large
part of the compensation in the prime-prime Type-II packet attached to the
same parent.

## 2. One prime-dilation star

Fix a positive integer `q` and a finite set `P` such that every `p∈P` is prime
and `p∤q`. Let

\[
  V(P,q)=\{q\}\cup\{pq:p\in P\}.
\]

For the unchanged causal response `r_n(u)` and actual Möbius coefficient
`μ(n)`, define the restricted waveform

\[
  F_{P,q}(u)=\sum_{n\in V(P,q)}\mu(n)r_n(u).
\]

Complete multiplicativity on the squarefree prime extension gives

\[
  \mu(pq)=-\mu(q)\qquad(p\in P).
\]

Thus

\[
  F_{P,q}(u)=\mu(q)\left(r_q(u)-\sum_{p\in P}r_{pq}(u)\right).
\]

Let

\[
  K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du.
\]

For `T≥0`, every `K_T(m,n)≥0` when `m,n>0`.

## 3. Exact block decomposition

Define the literal star diagonal

\[
 D_{P,q}(T)=\sum_{n\in V(P,q)}\mu(n)^2K_T(n,n).
\]

Define the positive parent-child credit, retaining both orientations,

\[
 B_{P,q}(T)=
 -\sum_{p\in P}\left[
   \mu(q)\mu(pq)K_T(q,pq)+
   \mu(pq)\mu(q)K_T(pq,q)
 \right].
\]

Since `K_T` is symmetric and `μ(pq)=-μ(q)`, this is

\[
 B_{P,q}(T)=2\mu(q)^2\sum_{p\in P}K_T(q,pq)\ge0.
\]

Define the complete ordered child-child packet

\[
 C_{P,q}(T)=
 \sum_{\substack{p,r\in P\\p\ne r}}
   \mu(pq)\mu(rq)K_T(pq,rq).
\]

All child coefficients have the same sign, so

\[
 C_{P,q}(T)=
 \mu(q)^2\sum_{p\ne r}K_T(pq,rq)\ge0.
\]

Expanding the literal square gives the exact identity

\[
 \boxed{
 \int_0^T F_{P,q}(u)^2\,du
   =D_{P,q}(T)-B_{P,q}(T)+C_{P,q}(T).
 }
 \tag{1}
\]

No orientation, diagonal, squareful zero, causal birth, or original kernel is
removed. The left side is nonnegative, hence

\[
 \boxed{
 C_{P,q}(T)\ge B_{P,q}(T)-D_{P,q}(T).
 }
 \tag{2}
\]

If all vertices lie in the original endpoint inventory through `T`, then the
star diagonal is a sub-sum of the original diagonal. The maintained bound
`pickupDiagonal(T)≤2T²` yields

\[
 \boxed{
 C_{P,q}(T)\ge B_{P,q}(T)-2T^2.
 }
 \tag{3}
\]

This improves the earlier global forced-compensation inequality for one star:
there is no `96 ε^{-2}e^{εT}` sparse-sector loss. The compensation is forced
inside the children of the same parent before any global partition.

## 4. Terminal prime-star consequence

Take `q=1` and

\[
 P_T=\{p\text{ prime}:e^{T-3}<p\le e^{T-2}\}.
\]

The existing source-bound PNT argument gives, for each fixed
`0<ε<1/2` and all sufficiently large `T`,

\[
 B_{P_T,1}(T)\ge c\frac{e^{T/2}}{T},
 \qquad
 c=(2-\log4)(e-1)e^{-2}>0.
\]

Equation (3) therefore gives

\[
 C_{P_T,1}(T)
 \ge c\frac{e^{T/2}}{T}-2T^2.
 \tag{4}
\]

In particular, after increasing the threshold,

\[
 C_{P_T,1}(T)\ge\frac c2\frac{e^{T/2}}T.
\]

Consequently, for every fixed `ε<1/2`,

\[
 \frac{C_{P_T,1}(T)}{e^{\varepsilon T}}\longrightarrow+\infty.
\]

This is not an RH obstruction. It is a method obstruction:

- the negative prime-star packet cannot be bounded separately and discarded;
- the positive prime-prime Type-II packet cannot be required to be
  all-positive-rate small separately;
- the arithmetic target must retain their signed cancellation, together with
  the remaining original sectors.

The PNT-to-credit input is already established in the companion outside-rate
review as an ordinary unconditional argument. It is not promoted here to a new
kernel-checked Lean theorem.

## 5. Relation to the point-spectrum interval

A prime dilation `q↦pq` has logarithmic spectral width

\[
 \log(pq)-\log q=\log p.
\]

The interval multiplier realizes every point of that interval as an orthogonal
coordinate eigenline. The original response vectors are not orthogonal:
whenever `T>log(pq)`, their causal Gram `K_T(q,pq)` is strictly positive.
Therefore the interval multiplier cannot be used as a source-preserving
orthogonalization of the Möbius response system without an explicit defect.
The star identity (1) is precisely the source-side covariance that an
orthogonal coordinate model erases.

There is also no uniform lower control of causal credit by interval width
alone. For fixed `p`, the width remains `log p` as `q` grows, while the response
amplitudes scale like `q^{-1/2}` and the overlap can tend to zero. Spectral width
is a grading invariant, not an arithmetic cancellation estimate.

## 6. Impact on the least-prime Type-II route

The maintained least-prime partition separates rough, mixed, and complete
Type-II packets. The star theorem identifies a mandatory positive subpacket of
the Type-II sector. A viable compensation theorem must therefore estimate a
joint signed block such as

\[
 -B_{P,q}+C_{P,q}+\text{remaining mixed/composite terms},
\]

rather than impose independent upper bounds on `B` or `C`.

The next bounded research step is to iterate the star-square decomposition over
parents `q`, with a disjoint parent assignment (for example by least selected
prime-free core), then determine whether cross-parent terms admit a source-exact
signed upper bound. Absolute summation over parents would recreate an
exponential family loss and is not a valid closure.

## 7. Verification boundary

The attached Lean module is a source proof candidate. It formalizes:

- arbitrary finite restricted response energy and complete Gram equality;
- nonnegativity of every finite restricted Gram;
- the exact diagonal/parent-child/child-child star partition;
- actual Möbius signs on every prime-dilation child;
- nonnegativity of the credit and child Type-II packet;
- inequalities (2) and (3).

Not run:

- Lean parsing/elaboration or compilation;
- exact expected-type checks;
- fresh independent kernel replay;
- transitive axiom audit;
- native execution.

The PNT asymptotic consequence, complete endpoint supplier, uniform energy, and
Riemann Hypothesis remain unproved in Lean. Source publication is also blocked
in the present environment because the active GitHub connection exposes only
read operations.  The package was first derived against main
`243870dbf54b13d3efac596079afcda89585afe9`; before final disposition, current
main `72ce6b0412abbadbabc61aff39f99f603654d481` was re-read and all five pinned
dependency blobs were unchanged.  Exact bytes and that current expected parent
are retained.
