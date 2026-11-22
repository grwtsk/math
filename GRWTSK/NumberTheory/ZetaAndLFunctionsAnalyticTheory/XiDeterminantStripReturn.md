# Completed-zeta determinant convergence on the critical strip

grwtsk contributors

This note binds the spectral construction to
[`XiDeterminantStripReturn.lean`](XiDeterminantStripReturn.lean) for
[math#124](https://github.com/grwtsk/math/issues/124) under
[math#99](https://github.com/grwtsk/math/issues/99).
The original consumer is Mathlib's `RiemannHypothesis`. The source function is
`CompletedQuotientSource.spectralSource`, defined as
$F(z)=\xi(1/2-iz)$ with the entire pole-cleared normalization. Its input file
is [`CompletedQuotientSource.lean`](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean),
blob `1ece8bad20bf2a9cc089e274ee1e81fda3415704`.

## Source correspondence

Alain Connes, Caterina Consani and Henri Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025), motivates
this local deduction. The SHA-256 of the v1 PDF is
`c98d89f7fc999d038e15e80a9aaaee2af797c17711c4329ca7ce48ad49cb336b`.
The locators below refer to v1. The later EMS chapter has DOI
10.4171/ELM/37/3. [arXiv v1](https://arxiv.org/html/2511.22755v1),
[EMS chapter](https://ems.press/books/elm/323/6477).

| Lean declaration in `GRWTSK.NumberTheory.Zeta.XiDeterminantStripReturn` | Exact correspondence |
| --- | --- |
| `spectralStrip`, `source_ne_zero_of_strip_limit`, `riemannHypothesis_of_strip_limit` | Local proofs of the strip-to-RH implication discussed in §7. They use the domain of Lemma 7.3 and the real-rootedness conclusion of Theorem 5.10(iii) as separate inputs. Theorem 5.10 starts with a simple minimum and even ground eigenvector of the actual Galerkin Weil matrix. The Lean premise is about the whole candidate function on the open strip. |
| `cutoff_tendsto_atTop_of_strip_limit` | Local necessary condition given a shrinking mesh and all the inherited positive lattice zeros. The compact-uniform limit refers to the original completed zeta. |
| `cutoffs_of_ccm_fourier_strip_limit` | Local consequence of Proposition 5.9, equation (5.25). The finite sum runs over exactly the retained Fourier indices. The formula is required away from those nodes and allows a pointwise finite prefactor for the scalar and phase from Theorem 5.10(ii). No analytic continuation at a retained node is used in this deduction. |

## Strip and cutoff arguments

Every nontrivial zeta zero $s$ satisfies $0<\Re s<1$, by nonvanishing to
the right and functional-equation reflection. At $c=i(s-1/2)$, analyticity
and the nonzero completion factors give $F(c)=0$, and
$|\Im c|<1/2$. If $\Im c\ne0$, take a small closed disk about $c$ in
the strip and disjoint from the real axis. The source is nonzero on the
boundary of a sufficiently small such disk, by isolated zeros and
$F(-i/2)=1/2$. Write $2b>0$ for its minimum boundary modulus. Compact-uniform
error $<b$ makes a candidate $D$ satisfy $|D|\ge b$ on the boundary
and (|D(c)|<b). Real-rootedness makes $1/D$ holomorphic on the disk, and
the maximum modulus principle gives $|D(c)|\ge b$, a contradiction.
The argument uses a value error only. Alternatively Rouché's theorem gives
equal analytic zero counts on the disk. The existing repository contour
consumer
[`XiDeterminantCircleCount.count_eq_completed_zeta`](XiDeterminantCircleCount.lean)
uses separate value and derivative errors to retain those counts, including
multiplicity. This is an independent argument for the terminal exclusion
using the same source and candidate premises. It supplies no independent
ground-state convergence. For a circle of radius $R$ with a closed
$r_0$-neighborhood inside the strip, a value bound $\delta$ on that
neighborhood gives a derivative bound $\delta/r_0$ on the circle by
Cauchy's estimate. The existing count consumer therefore applies when
$|F|\ge 2b$, $|F'|\le M$, $\delta\le b$ on the indicated domains and
$R\delta(1/(r_0 b)+M/b^2)<1$.

The unchanged positive grid starts beyond the last retained node
$N\Delta$, where $\Delta=2\pi/L$ and $L=2\log\lambda$.
At $k\Delta$ for every integer $k>N$, all denominators in (5.25)
are nonzero and its sine factor vanishes. If $N\Delta\le B$ on a
subsequence, choose real $x>B$ with $F(x)\ne0$, using isolated zeros.
The unchanged zeros $x_n=\Delta_n\lceil x/\Delta_n\rceil$ on that
subsequence satisfy $x\le x_n<x+\Delta_n$. For $\lambda_n\to\infty$,
they converge to $x$. Uniform convergence on a fixed small closed disk
about $x$ contradicts continuity and $F(x)\ne0$.
Thus the full, phase-normalized determinant can converge on the strip only if
$N/\log\lambda\to\infty$. For instance
$N=\lfloor\log\lambda\rfloor$ sends both formal parameters to infinity
and fails the condition. Dividing away the inherited grid defines a different
analytic object and requires separate control at the cancelled points.

Dominik Śliwiński's arXiv:2601.12133v1, Definitions 2.5–2.6, concerns errors
of selected ordered real eigenvalues. These observations have a different
input from the compact complex-strip norm. Even uniform agreement with every
listed critical-line zero leaves the off-line source divisor unaccounted for.
[Śliwiński v1](https://arxiv.org/html/2601.12133v1#S2.SS2).

## Normalization of the prolate trial limit

For the literal $h(u)=\frac\pi2 u^2(2\pi u^2-3)e^{-\pi u^2}$ in
(7.1), put $k(u)=u^{1/2}\sum_{m\ge1}h(mu)$. The change of variable
$s=1/2-iz$ gives, first for $\Re s>1$ by absolute convergence,

$$
\widehat{k}(z)
 =\zeta(s)\int_0^\infty h(u)u^{s-1}\,du
 =\zeta(s)\frac{\pi^{-s/2}}{4}
   \bigl(2\Gamma(s/2+2)-3\Gamma(s/2+1)\bigr)
 =\frac14\xi(s).
$$

Here the gamma recurrence gives
$2\Gamma(s/2+2)-3\Gamma(s/2+1)=\frac12s(s-1)\Gamma(s/2)$.
This fixes the scalar relative to the repo's value $\xi(0)=1/2$. There is an
independent direct check using the Gaussian theta series
$\Psi(v)=\sum_{m\ge1} e^{-\pi m^2v}$. Substitution in the sum gives
$4k(u)=4u^{9/2}\Psi''(u^2)+6u^{5/2}\Psi'(u^2)$. With $v=u^2$ and
$p=s/2$, its transform is the integral of
$2v^{p+1}\Psi''(v)+3v^p\Psi'(v)$. Two integrations by parts give
$p(2p-1)\int_0^\infty v^{p-1}\Psi(v)\,dv$ for $\Re s>1$.
The Gaussian sum and its scaled derivatives have $O(v^{-1/2})$
growth at zero and decay exponentially at infinity, which kills the
boundary terms. Integrating the Gaussian series gives the same completed
source because $p(2p-1)=s(s-1)/2$.
The $h_0,h_4$ combination is self-Fourier, with $h(0)=\widehat h(0)=0$.
Poisson summation therefore gives $k(u)=k(u^{-1})$. The Gaussian tail
as $u\to\infty$ and this reflection give rapid decay at both ends,
so the transform is entire and the displayed identity continues everywhere.
This calculation uses the explicit (7.1) and (7.2) formulas and the
completion written before (7.1). Andrews–Connes–La Gatta, Theorem 2.4, state
the same factor $1/4$ for their Hermite limit. [CCM v1 §7](https://arxiv.org/html/2511.22755v1#S7),
[Andrews–Connes–La Gatta v1, §2.6](https://arxiv.org/html/2611.13129v1#S2.SS6).

Set $K_\lambda(t)=4k_\lambda(e^t)$ for $|t|\le\log\lambda$, extended by
zero. To make the tail in the proof of Lemma 7.3 explicit, take the
normalization in (7.8) and extend $h_\lambda$ by zero outside
$[-\lambda,\lambda]$. For $u$ in the window, terms with $mu\le\lambda$
have total error at most $C\lambda^{-1}u^{-1/2}$ in
$k_\lambda(u)-k(u)$. For $mu>\lambda$, bound $|h(mu)|\le C_0e^{-\pi(mu)^2/2}$.
The omitted sum is bounded by
$C_0e^{-\pi\lambda^2/4}\sum_{m\ge1}e^{-\pi(mu)^2/4}$, at most a
constant times $e^{-\pi\lambda^2/4}/u$ by the decreasing Gaussian integral.
Multiplying by $u^{1/2}$ gives the same $u^{-1/2}$ dependence. For each
$0\le a<1/2$, integration on the window with weight
$e^{a|\log u|}\,du/u$ gives $O_a(\lambda^{a-1/2})$. Outside the window
the two Gaussian tails of $k$ tend to zero in this weighted norm. This
gives uniform convergence of $\widehat K_\lambda$ to $F$ on the
closed substrip, with the normalization fixed. The prolate estimate (7.8)
is the external input to this argument.

## A sufficient estimate on the actual Galerkin ground state

Use the even part of $K_\lambda$ for the rest of this note. The exact
source satisfies $F(-z)=F(z)$ by the functional equation.
Fourier transformation of the even part averages the values at $z$
and $-z$, so the same substrip error bound holds after symmetrization.

Use the paper's $W=QW_\lambda^N$ in the orthonormal Fourier basis of the
log window $[-A,A]$, where $A=\log\lambda$. Write $P_N$ for that
Fourier projection and $v=P_N K_\lambda$, identifying $v$ with its
coefficient vector for multiplication by $W$. Assume the ground eigenvalue
is simple and even, and write $P_{\min}$ for its orthogonal eigenprojection.
Set $G=P_{\min}v$. If a real shift $t_0$ and a certified lower bound
$\ell_1$ for every eigenvalue above the ground satisfy $t_0<\ell_1$, define

$$
\tau=\|(1-P_N)K_\lambda\|_2,\qquad
r=\frac{\|(W-t_0I)v\|_2}{\ell_1-t_0},\qquad
C_a(A)=\left(\int_{-A}^A e^{2a|t|}\,dt\right)^{1/2}.
$$

Expand $v$ in the actual eigenbasis of $W$. On each component orthogonal
to the ground, the multiplier $\varepsilon-t_0$ is at least
$\ell_1-t_0$. Summing the squares gives
$\|v-G\|_2^2\le r^2$. The discarded Fourier tail is orthogonal to
$v-G$, so $\|K_\lambda-G\|_2^2\le\tau^2+r^2$. Cauchy–Schwarz in
the Fourier integral now gives, throughout $|\Im z|\le a$,

$$
|\widehat G(z)-\widehat K_\lambda(z)|
\le C_a(A)\sqrt{\tau^2+r^2}.
$$

The integral in (C_a(A)^2) is $2A$ at $a=0$ and
((e^{2aA}-1)/a) at $a>0$. Thus a sufficient supplier is a sequence
$\lambda\to\infty$ of actual even-simple matrices and certified bounds
forcing this product to zero for every $a<1/2$. With
the trial limit fixed above, $\widehat G$ then converges to $F$.
Eventually $G\ne0$ by evaluation at any fixed nonzero real value of $F$.
Since (G) lies in the exact ground-state line, its transform is a nonzero
scalar multiple of the real-rooted transform in Theorem 5.10. The phase in
that theorem is nowhere zero and is removed before taking this limit.
The Lean strip theorem then returns RH. A count through a chosen height can
use contours within the strip, keeping the same analytic orders and source.

For a certified upper bound on $\tau$, suppose $K_\lambda$ has periodic
total variation $V$ on the interval of length $L$, including the
endpoint jump. Stieltjes integration by parts bounds its orthonormal
Fourier coefficient at $j\ne0$ by $\sqrt L V/(2\pi |j|)$. Parseval and
$\sum_{j>N}j^{-2}\le1/N$ give
$\tau^2\le LV^2/(2\pi^2N)$ for $N\ge1$.
This pays both tails even when the log-window extension has jumps.
The spectral residual and the eigenvalue bound must both be certified for
the actual Weil matrix at the same $N,\lambda$.

An even error concentrated near the moving boundary shows why
$\|G-K_\lambda\|_2\to0$ alone is insufficient. For $A>1$ and
$a>0$, take $e^{-aA}$ times the indicator of
$[A-1,A]\cup[-A,-A+1]$. Its $L^2$ norm and its real-axis transform
go to zero. At $z=ia$ its transform tends to $(1-e^{-a})/a>0$,
so the closed-substrip convergence fails.

### Certification using the trial line

At a fixed $(\lambda,N)$ with $N\ge1$, suppose $v=P_NK_\lambda\ne0$.
Fourier projection preserves its even parity.
Use the orthogonal splitting into the unit vector $u=v/\|v\|_2$ and its
orthogonal complement. Write $q=\langle u,Wu\rangle$, $b=(I-uu^*)Wu$,
and $H=(I-uu^*)W|_{u^\perp}$. A bound $H\ge hI$ with $q<h$ implies
the ground eigenvalue $\varepsilon_0\le q$ and the second eigenvalue
$\varepsilon_1\ge h$. Indeed, any two-dimensional subspace meets
$u^\perp$ nontrivially. The span of two eigenvectors of eigenvalues
less than $h$ would therefore contradict the bound on $H$.
The ground line has nonzero projection onto $u$ since every vector in
$u^\perp$ has Rayleigh quotient at least $h$. The Weil matrix commutes
with reflection by CCM v1, Lemma 5.2(i), so the simple ground line
is even. Choosing $t_0=q$ and $\ell_1=h$ above gives

$$
\|v-P_{\min}v\|_2\le \frac{\|v\|_2\,\|b\|_2}{h-q}.
$$

A certificate can work with an enclosure matrix $\widetilde W$ on the
same Fourier basis. If $\|\widetilde W-W\|_{\rm op}\le e$,
$\widetilde H\ge\widetilde h I$, $\widetilde q\le\widetilde q_+$ and
$\|\widetilde b\|\le\widetilde b_+$, the transported bounds are
$h=\widetilde h-e$, $q\le\widetilde q_++e$, and
$\|b\|\le\widetilde b_++e$. These follow by compressing the error and
applying it to the same unit $u$. The resulting denominator is at least
$\widetilde h-\widetilde q_+-2e$. A certified strictly positive
denominator gives even simplicity and a residual budget from the
same finite data. Any error in representing $u$ must enter the
certified bounds. This argument allows a negative ground eigenvalue.
For $W=\operatorname{diag}(-1,1)$ with respective even and odd
coordinates and $u=(1,0)$, it gives $q=-1$, $h=1$ and zero leakage.
When $h=q$, the repeated-eigenvalue example $W=I$ shows that the
non-strict condition alone cannot certify simplicity.

## Remaining supplier and evidence

Issue #124 still needs even simplicity on a cofinal sequence and a
quantitative ground-state approximation for the **original** Galerkin
Weil form. Section 8 of CCM identifies the corresponding two open inputs.
The finite residual criterion above permits a shift $t_0$ without a
positivity premise on $W$. The joint task is to bound the compression
to $u^\perp$ and the off-diagonal norm at scales and dimensions where the
weighted bound and Fourier tail vanish. A fixed-window input is
Zhu's Theorem 6.2, with log support $[-0.8,0.8]$, corresponding to
$\lambda=e^{0.8}$ here. It supplies a simple even minimum for that window.
Connes–van Suijlekom's Theorem 6.1 can consume this kind of simple isolated
even minimum with essential self-adjointness on their trigonometric
polynomial domain. A fixed-window certificate supplies one real-rooted
transform under these hypotheses. [Zhu, arXiv:2608.24827v2, §6](https://arxiv.org/html/2608.24827v2#S6),
[Connes–van Suijlekom, arXiv:2511.23257v1, §6](https://arxiv.org/html/2511.23257v1#S6).

Andrews, Connes and La Gatta use the same ground-line projection
in Lemma 6.1, at the operator level. Their Rayleigh-energy bound uses
nonnegativity of the form and a lower bound on its higher spectrum.
Their weighted $L^1$ comparison in §§6.2 and 7.1 addresses the complex
strip, and §7.2 gives a conditional zero transfer. Their Hypothesis 3.4
includes a positive lower bound on the bottom of the original Weil
form. On cofinal windows that bottom-sign input alone implies Weil
positivity on all compact tests by nested support. The finite residual
estimate retains an explicit lower bound for the non-ground spectrum
and a residual for the projected trial; these are unproved at cofinal
scope. The finite zero counts in §7.3 concern the candidate transform.
[Andrews–Connes–La Gatta, arXiv:2611.13129v1, §§3.3, 6–7](https://arxiv.org/html/2611.13129v1#S6).

The RH consequence is conditional and concerns the modulus-one source.
The primitive nonprincipal Dirichlet case needs its own completed-source
and operator comparison.

The Lean module elaborated with Lean v4.34.1 at trust level zero and
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Local
`leanchecker` replay of its declarations over cached imports passed.
The four public theorems depend on `propext`, `Classical.choice`
and `Quot.sound`. The paper's self-adjointness and the analytic
normalization, trial limit and weighted residual estimates have no Lean
replay here. Independent analytic review and clean replay from source of
the full transitive environment remain `NOT_RUN`.
