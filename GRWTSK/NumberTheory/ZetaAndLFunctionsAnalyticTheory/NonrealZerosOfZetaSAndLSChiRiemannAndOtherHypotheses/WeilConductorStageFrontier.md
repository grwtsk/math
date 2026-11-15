# A sharper conductor frontier for the original primitive Weil stages

grwtsk contributors · 2026-11-14

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
The source baseline is `ccf78022aa8be2d9bcf31485f3377821c41e4d18`. The consumer
is `DirichletStageChain.PrimitiveStageLower` in
[WeilDirichletStageChain.lean](../WeilDirichletStageChain.lean), using the exact
`primitiveArithmeticValue` from [WeilConductorFrontier.lean](../WeilConductorFrontier.lean).

## 1. A finite bound on the original signed arithmetic term

Let $L>0$ be the full support length. Translate the support interval to
$(0,L)$ and extend $f\in L^2(0,L;\mathbb C)$ by zero. Translation preserves
the physical mass $E(f)=\|f\|_2^2$ and correlation
$C_f(r)=\int_{\mathbb R}\overline{f(x)}f(x+r)\,dx$. For any Dirichlet character
$\chi$, write its signed prime term as

$$
P_{\chi,L}(f)=2\sum_{2\le n<e^L}\frac{\Lambda(n)}{\sqrt n}
\operatorname{Re}\bigl(\overline{\chi(n)}C_f(\log n)\bigr).
$$

This is `CharacterWindow.twistedPrime` at radius $T=L/2$. The endpoints of
the support and a shift of exactly $L$ have zero overlap measure. The sum
has the actual von Mangoldt weights, complex phases and ramified zero values.

Put $X_0=e^{L/2}$ and $\Psi(X)=\sum_{2\le n\le X}\Lambda(n)$. Define the
finite constants

$$
D(L)=\max\left(\{0\}\cup
  \left\{\frac{\Psi(n)-\Psi(X_0)}{n}:X_0<n<e^L,\;\Lambda(n)>0\right\}\right),
\qquad
B(L)=2\sum_{2\le n\le X_0}\frac{\Lambda(n)}{\sqrt n}+X_0 D(L).
$$

**Claim.** For every $L>0$, every $\chi$ and every such $f$,
$|P_{\chi,L}(f)|\le B(L)E(f)$.

For $\log n\le L/2$, Cauchy–Schwarz gives $|C_f(\log n)|\le E(f)$.
For each remaining shift $r=\log n$, every pair $y=x+r$ in $(0,L)$ crosses
from the left half to the right. Set $a(x)=e^{-x/2}$ on the left half and
$b(y)=e^{-(L-y)/2}$ on the right half. Apply

$$
2|f(x)||f(y)|\le\frac{b(y)}{a(x)}|f(x)|^2
                  +\frac{a(x)}{b(y)}|f(y)|^2 .
$$

Multiply by $\Lambda(n)/\sqrt n$, integrate over the overlap, and sum over
the long shifts. The two coefficients of $|f|^2$ on their respective halves are

$$
X_0\frac{\sum_{X_0<n<e^{L-x}}\Lambda(n)}{e^{L-x}}
\quad (0<x<L/2),\qquad
X_0\frac{\sum_{X_0<n<e^y}\Lambda(n)}{e^y}
\quad (L/2<y<L).
$$

In either row the denominator is $X\in(X_0,e^L)$. If the numerator is
nonzero, replace $X$ in the denominator by the largest prime power in
$(X_0,X)$. This gives a ratio at most $D(L)$. The two half-interval
integrals sum to at most $X_0D(L)E(f)$. No extra factor of two occurs in the
long-shift bound, since each coefficient applies on just one half. The
argument uses $|\chi(n)|\le1$ only to bound the displayed signed form.

The ordinary prime number theorem gives $D(L)\le1+o(1)$ as $L\to\infty$,
uniformly over the whole interval $[X_0,e^L)$. In fact
$D(L)\ge[\Psi(e^L-)-\Psi(X_0)]/e^L=1+o(1)$ by using the last active
prime power. Abel summation and $\Psi(X)=O(X)$ bound the short sum by
$O(e^{L/4})$. Thus $B(L)=(1+o(1))e^{L/2}$. The finite bound above has no
asymptotic threshold to certify. An elementary estimate independent of
the prime number theorem is

$$
B(L)\le (\log 4)\big(e^{L/2}+4e^{L/4}\big).
$$

Here $\Psi(X)\le (\log 4)X$ follows from the lcm proof in WMC-1 of
[WeilMovingConductorWindow.md](WeilMovingConductorWindow.md). Inserting it
in the Abel identity gives $\sum_{n\le X}\Lambda(n)/\sqrt n\le(2\log 4)\sqrt X$.

## 2. Return to the exact stages

Fix a primitive nonprincipal $\chi$ of actual conductor $q>1$ and parity
$a=0,1$ determined by $\chi(-1)=(-1)^a$. On the original finite gamma-form
domain the primitive value at radius $T=L/2$ obeys

$$
Q_{\chi,L}(f)\ge\big(\log q+\gamma_{1,a}-B(L)\big)E(f),\qquad
\gamma_{1,a}=\psi(1/4+a/2)-\log\pi.
$$

Indeed the exact scalar is `gammaConstant q a` $=\log q+\gamma_{1,a}$,
and the entire $
\int_{r>0}e^{-(a+1/2)r}(1-e^{-2r})^{-1}\|f(\cdot+r)-f\|_2^2\,dr$
is nonnegative. Here $\gamma_{1,1}=\gamma_{1,0}+\pi$. The source bound
`gammaConstant_lower_sharp` also gives $\gamma_{1,a}\ge-11/2$ for both
parities. All these constants use the primitive conductor, which equals
the modulus under the actual `IsPrimitive` hypothesis.

For $j\in\mathbb N$ put $L_j=2(j+1)$. The exact inequality

$$
\log q\ge B(L_j)-\gamma_{1,a}-2^{-j} \tag{1}
$$

supplies `PrimitiveStageLower χ hp hn j` for **every** admissible real odd
test at that stage by restricting the preceding full complex estimate.
Consequently the conjunction

$$
q<\texttt{conductorFrontier}(j+1),\qquad
\log q<B(L_j)-\gamma_{1,a}-2^{-j} \tag{2}
$$

is the residual set of nonprincipal primitive stages for a supplier using
both the existing frontier and (1). A sign supplier on (2), for every $j$
and every actual primitive nonprincipal $\chi$, suffices for the unchanged
`SmallConductorStages` contract. At equality in (1) the stage is covered.
For a rational-enclosure implementation, an upper enclosure for $B$ and
a lower enclosure for $\gamma_{1,a}$ give the same implication.

In particular, for fixed $0<\vartheta<1$ and $0<\mu<1-\vartheta$, all
sufficiently large conductors satisfy $Q_{\chi,L}(f)\ge\mu\log q\,E(f)$
on every $0<L\le 2\log(\vartheta\log q)$. To see uniformity on small
and large windows together, use $B(L)\le(1+\epsilon)e^{L/2}$ for $L$ above a
fixed threshold, with $(1+\epsilon)\vartheta<1-\mu$, and the elementary
estimate above for all smaller $L$. The constant $\gamma_{1,a}$ is bounded
below independently of $q$ and has room in the strict margin. This extends
the range $\vartheta<1/2$ in WMC-v4-11. It uses the same prime number theorem
as that argument. [WeilFlatBaselinePoleScale.md](WeilFlatBaselinePoleScale.md),
WFBP-v1-2, gives a second route to the leading upper coefficient by applying
weighted Schur on the whole window to $e^{-x/2}+e^{-(L-x)/2}$. The split
estimate here gives the explicit finite residual (2).

## 3. Sharpness for actual signed prime terms of either parity

For each $a=0,1$, consider the supremum of $P_{\chi,L}(f)/E(f)$ over all
primitive nonprincipal quadratic characters of parity $a$ and all nonzero
real smooth tests compactly supported in $(0,L)$ and odd about $L/2$.
Dividing that supremum by $e^{L/2}$ gives a limit of $1$ as $L\to\infty$.

To construct suitable characters, choose a nonzero integer $D$ of sign
$(-1)^a$ with $D\equiv5\pmod 8$ and $(D/p)=-1$ at every odd prime
$p\le e^L$. For each such $p$ a nonzero nonresidue class exists. The
Chinese remainder theorem gives the common class, and a representative
of either sign exists. Write $D=dm^2$ with signed squarefree $d$ and $m>0$.
Then $d\equiv5\pmod 8$ because $m$ is odd. Also $(d/p)=-1$ at every
specified odd prime, and $q=|d|>e^L$ since $q>1$ has no prime divisor
at most $e^L$ (the congruence also excludes divisibility by $2$).

Take $\chi(n)=\prod_{\ell\mid q}(n/\ell)$, the product of the local Legendre
characters over prime divisors of $q$. Each local factor is nontrivial,
so CRT on the unit groups shows that it cannot be induced from any
proper divisor of $q$. It has $\chi(-1)=(-1)^{(q-1)/2}=(-1)^a$, because
$d\equiv1\pmod4$. At odd primes $p\le e^L$, quadratic reciprocity gives
$\chi(p)=(d/p)=-1$. Explicitly the reciprocity sign is
$(-1)^{((p-1)/2)((q-1)/2)}$, which is the factor $(\operatorname{sgn}(d)/p)$
needed to pass from $(q/p)$ to $(d/p)$. At $p=2$, the supplementary law
gives $\chi(2)=(2/q)=-1$ since $q\equiv\pm5\pmod8$.

Let $P_L$ be the all-one self-adjoint translation operator of WFBP-v1-2,
with quadratic form $P_{1,L}$. The true $P_{\chi,L}(f)$ equals
$-P_{1,L}(f)$ plus the contribution from the even exponents of primes.
Indeed $\chi(p^k)=(-1)^k$ at every active prime power and there are no
ramified terms on this window. The magnitude of the discrepancy is at most

$$
4E(f)\sum_{p\le X_0}\frac{\log p}{p-1}=O((1+L)E(f)).
$$

For the sum, extend the active even exponents $2k$ to all $k\ge1$, sum
$\sum_k p^{-k}$, and use $1/(p-1)\le 2/p$ with Abel summation and
$\sum_{p\le X}\log p\le\Psi(X)=O(X)$.

By WFBP-v1-2, the real odd endpoint profile
$\phi_-(x)=e^{-x/2}-e^{-(L-x)/2}$ on $(0,L)$ has
$\langle\phi_-,P_L\phi_-\rangle/E(\phi_-)=-(1+o(1))e^{L/2}$.
The same coefficient holds for real smooth odd compact tests: normalize
the profile and approximate it by symmetric smooth cutoffs with $L^2$
error tending to zero as $L$ grows, then renormalize. The quadratic
error is $o(e^{L/2})$ since $\|P_L\|\le B(L)$ by Section 1.
Thus the actual signed prime term on these tests is
$(1+o(1))e^{L/2}E(f)$. Section 1 gives the matching uniform upper bound.
The realizing characters depend on $L$. The construction gives no
matching sharpness statement in the range $\log q\asymp e^{L/2}$ and
does not compare the prime term with the full positive gamma energy.

## 4. Zeta and the remaining cofinal requirement

At any fixed $q$, (1) fails for all large $j$ because $B(L_j)\sim e^{j+1}$.
One precise next target is a source lower bound on (2) for all tests on
an unbounded sequence of stages for each fixed character. Such a sequence
is enough for the analytical cofinal implication. A fixed compact test
belongs to all sufficiently large windows and
`primitiveArithmeticValue_eq_of_le` identifies its value there. The
allowance $2^{-j}E(f)$ tends to zero on the sequence. The written
negative-witness argument in
[WeilDirichletCompactFilterReturn.lean](../WeilDirichletCompactFilterReturn.lean)
then gives the zero conclusion for that character. Use separate stage
evidence to supply the literal all-$j$ argument of `SmallConductorStages`.

The conductor-one form contains the **sum of both signed pole orientations**.
On a centered real odd test this is $-2(\int f(t)\sinh(t/2)\,dt)^2$.
The prime estimate in Section 1 also bounds its prime term, while (1) and
(2) concern the primitive nonprincipal form. The zeta stage supplier still
has to bound `OddLiteralWindow.shiftedOddWeilEnergy`, including this pole
and its specified stage allowance, and return via
`RealWeilSource.riemannHypothesis_of_literal_odd_stageLower` in
[WeilZetaOddCriterion.lean](../WeilZetaOddCriterion.lean).
The source-chain return uses this zeta conclusion together with the
primitive witness and primitive stages. Neither RH nor Dirichlet GRH is
established here.

### Source correspondence and evidence

- `WeilConductorFrontier.lean` blob `ac9bf37f07ef22d7ca75b918baeea3161df028b7`
  supplies the original form and support extension. `WeilDirichletStageChain.lean`
  blob `ec7bbcbbd0b07e76e8c1fc197287dbfe0bf19173` supplies the stage contracts.
- WMC blob `44c9b45024b90edb166eaf3a04d0e72e1f08f7b1` supplies the lcm
  bound and previous conductor-support range. WFBP blob
  `107ee7924c8035859b5ae028ea179ff53e9dc3f9` supplies the whole-window
  Schur comparison and the odd endpoint profile. Neither reference provides
  a signed bound at a fixed conductor on cofinal windows.
- Ordinary $\Psi(X)/X\to1$ uses Daniel R. Johnston and Andrew Yang,
  *Some explicit estimates for the error term in the prime number theorem*,
  arXiv:2204.01980v2, §1.1 and Theorem 1.1. Only the unconditional asymptotic
  is used. [Author manuscript](https://arxiv.org/html/2204.01980v2).
- The character construction uses Carl Friedrich Gauss,
  *Disquisitiones Arithmeticae*, 1801, arts. 111–112 and 131, for the
  supplementary laws and quadratic reciprocity. [Original text, Section IV](https://la.wikisource.org/wiki/Disquisitiones_arithmeticae/Sectio_quarta).

Analytical argument written. Lean elaboration, compilation, fresh kernel
replay, transitive axiom audit, executed numerical certification and
independent human review: `NOT_RUN`. Originality is unassessed. The
two-half estimate and the actual parity saturation are source-level
arguments using the existing forms and inputs.
