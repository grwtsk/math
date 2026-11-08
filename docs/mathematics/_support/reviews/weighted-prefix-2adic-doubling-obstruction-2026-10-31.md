# A complete-multiplicativity and doubling obstruction to the weighted Liouville prefix supplier

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** This note proves a new elementary *countermodel to a proposed inference*, not a counterexample to the Riemann Hypothesis. Complete multiplicativity, absolute coefficient one, and the exact doubling sign reversal `a(2n)=-a(n)` together **do not** imply any all-positive-rate weighted-prefix energy bound. The original Liouville target `WeightedPrefixSquareAllRate` is still unproved; the distinction is the actual odd-prime coefficients. No Lean proof, kernel check, native executor, or additional RH assumption is claimed.

## 1. Original mathematical target and source identity

At `grwtsk/math/main@266aa6a034a32dd55e9dccb06872859a662dca08` the existing definitions in `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixSquareCriterion.lean` (blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`) are

\[
L(x)=\sum_{1\le n\le x}\lambda(n),\quad
J(T)=\int_1^{e^T}\frac{L(x)^2}{x^2}\,dx,\quad
\operatorname{WeightedPrefixSquareAllRate}:\ 
\forall\eta>0\ \exists A_\eta\ge0\ \forall T\ge0:\ J(T)\le A_\eta e^{\eta T},
\]

where `lambda(n)` is the **actual Liouville function** with `lambda(p)=-1` at every prime, including all odd primes. At integer cutoffs the exact finite moment is

\[
J_N=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}=J(\log(N+1)),\quad N\ge1.
\]

The continuous/discrete identity is analytically elementary by the integer-birth partition, but remains a named Lean-source qualification target in the cited file. The source `LiouvilleWeightedPrefixDoubling.lean` (blob `d3e65086541a95b27edf6faad3d47a956dce92c7`) proves finite source proof candidates for the exact negative doubling packet and the bounded diagonal-plus-doubling remainder, with `WeightedPrefixSquareShiftIdentity` as an explicit predecessor. The complete signed non-doubling remainder remains unrestricted at the RH-required scale.

## 2. An adversarial *completely multiplicative* arithmetic function

For every integer `n>=1` define

\[
a(n)=(-1)^{v_2(n)},
\]

where `v_2(n)` is the exact exponent of `2` in `n`. Because `v_2(mn)=v_2(m)+v_2(n)` for positive integers, this is completely multiplicative and satisfies, for every positive `n`,

\[
|a(n)|=1,\quad a(2n)=-a(n),\quad
 a(2)=-1,\quad a(p)=+1\text{ for every odd prime }p.
\tag{1}
\]

The last equality is precisely why this is **NOT** the Liouville function; it is an adversarial model that preserves the exact arithmetic form of the doubling sign and square-one coefficient facts but not the actual odd-prime signs.

Put `A(N)=sum_(1<=n<=N) a(n)` with `A(0)=0`. Partition the full inventory into odd integers (`a(n)=+1`) and even integers (`a(2m)=-a(m)`) to obtain the **exact all-integer recurrence**

\[
A(N)=\left\lceil\frac N2\right\rceil-A\!\left(\left\lfloor\frac N2\right\rfloor\right).
\tag{2}
\]

In particular, `A(1)=1` and, for all `r>=1`,

\[
A(2^r)=2^{r-1}-A(2^{r-1}).
\]

A direct induction supplies the *exact closed form*

\[
\boxed{A(2^r)=\frac{2^r+2(-1)^r}{3}.}\tag{3}
\]

Thus, for every `k>=1`, writing `N=4^k`, we have

\[
\boxed{A(N)=\frac{N+2}{3}\ge\frac N3.}\tag{4}
\]

No probabilistic signs, asymptotic estimate or numerical approximation is used in (1)–(4).

## 3. Complete lower bound for weighted-prefix energy

Define the genuine quadratic weight applied to this *adversarial* sequence by

\[
J_N[a]=\sum_{m=1}^N\frac{A(m)^2}{m(m+1)}.
\]

Fix `N=4^k` and `M=floor(N/6)`. Every coefficient has absolute value one, hence the prefix is 1-Lipschitz on integer steps:

\[
A(m)\ge A(N)-(N-m)\quad(1\le m\le N).
\]

For **every** integer `m` in the complete last block `N-M <= m <= N`, (4) and `M<=N/6` give

\[
A(m)\ge \frac N3-M\ge\frac N6.
\]

There are exactly `M+1>N/6` terms in that block. Moreover `m(m+1)<=N(N+1)<=2N^2`. Each term therefore obeys

\[
\frac{A(m)^2}{m(m+1)}\ge
  \frac{(N/6)^2}{2N^2}=\frac1{72}.
\]

Summing those **actual nonnegative weighted squares** produces the completely explicit rigorous lower bound

\[
\boxed{J_{4^k}[a]\ge\frac{4^k}{432}\quad(k\ge1).}\tag{5}
\]

For every `0<eta<1` and every finite constant `C`, choose `k` large enough that `(4^k)^(1-eta)>432C`. Then (5) implies `J_(4^k)[a]>C(4^k)^eta`. Therefore **no** analogue of `WeightedPrefixSquareAllRate` follows from the joint structural inputs in (1).

This is not merely the trivial constant-sign countermodel `a(n)=1`, which violates doubling. The adversarial sequence satisfies complete multiplicativity AND the true all-`n` doubling identity simultaneously. It demonstrates that the exact doubled-pair negative credit does not control the remaining signed non-doubling term without additional odd-prime arithmetic information.

## 4. Two independent mathematical checks

**Finite recurrence check.** For `N=4,16,64,256`, (3) gives exact prefixes `A(N)=2,6,22,86`. These can be recomputed directly by enumerating `v2(n)` for each positive integer, without probabilistic sampling.

**Dirichlet-series check, not a replacement proof of growth.** For `Re(s)>1`, complete multiplicativity and the Euler factors give

\[
\sum_{n=1}^\infty\frac{a(n)}{n^s}
=\zeta(s)\frac{1-2^{-s}}{1+2^{-s}},
\]

whose polar factor at `s=1` has residue `(1-1/2)/(1+1/2)=1/3`. This agrees with the positive mean appearing in (3). Deriving the finite inequality (5) does **not** require a Tauberian theorem or any analytic continuation of this Dirichlet series.

## 5. What the existing external inputs genuinely supply

The independent Alpöge--Furman / Anthropic zeta23 theorem (arXiv:2608.13637, `anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`) gives asymptotic positive *proportions* of simple zeros on the line and of distinct zeros, including the Montgomery--Taylor optimizations. It does not exclude one exceptionally placed off-line zero at unbounded height, and it does not estimate the full Liouville non-doubling aggregate. The exact counting/zero-type comparison is already in `TwoThirdsCanonicalMultiplicityBridge.lean`, `AnthropicMontgomeryTaylorNumericalGate.lean`, and `CofinalTwoUnitNumericalReflectionGap.lean` (last blob `b32437383f21a4d44f23b4f56f843c0e19725927`). The cofinal strict two-unit gap has a **conditional** implication to RH; no actual cofinal certificate family has been constructed.

The externally checked QuasiRiemannTracker zeta/Dirichlet bound `Re(s)>theta_*` with `theta_*=0.8733819666133` is inspected and linked in the prior source note `liouville-actual-spectral-zero-free-return.md` (blob `865b57cd3a852e9e32773ffcf6bc926ce36e57a3`). Together with the *separate classical analytic zero-free-to-Liouville summatory estimate*, it supports at most a fixed-rate bound

\[
J(T)\ll_\eta e^{\eta T}\quad\text{for every }\eta>2\theta_*-1
=0.7467639332266.
\]

The analytic transfer has **not** been compiled in the local Lean closure. In particular no all-positive-rate estimate follows for arbitrarily small `eta`. The original target would exclude every off-critical Riemann-zeta zero and is RH-equivalent via the Liouville Dirichlet series `zeta(2s)/zeta(s)` and its Mellin transform.

## 6. Precise research frontier and acceptance

The existing finite exact identity and doubled-pair payment can be written, with `M=floor(N/2)`, as

\[
\begin{aligned}
J_N[\lambda]&=B_N+R_N,\\
B_N&=\sum_{m=M+1}^{N}\frac1m+\frac{2M-N}{N+1},\\
0&\le B_N\le1,\\
R_N&=2\!\sum_{\substack{1\le m<n\le N\\n\ne2m}}
\lambda(m)\lambda(n)\left(\frac1n-\frac1{N+1}\right).
\end{aligned}
\]

All original ordinary shifts, the cutoff at `N+1`, and both orientations are retained. Consequently the all-positive-rate weighted-prefix bound is equivalent to the same family of bounds for `R_N`. This is not an independent estimate of `R_N`—it identifies the exact missing arithmetic cancellation. Proof of that estimate for actual `lambda(p)=-1` **at all odd primes**, or the equivalent unconditional cofinal numerical/zero-exclusion premise, would finish the selected RH route. No such supplier is proved here.

**Source acceptance:** Mathematical proof (1)–(5) and exact finite source reduction are self-contained. Newly authored Lean declaration: **none**. This note is research/source analysis, not a kernel proof or an automatic numerical certification. Existing Lean declarations retain `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`; no local compilation, fresh replay, transitive axiom audit, publication authority escalation, runner, or scheduler is claimed.
