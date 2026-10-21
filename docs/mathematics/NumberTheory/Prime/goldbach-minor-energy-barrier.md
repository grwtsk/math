# Why the complete minor estimate needs signed cancellation

Human research direction: R.A. Jacob Martone.
Mathematical analysis and source drafting assistance: OpenAI ChatGPT.

Issue #259 under #257. Continuation of PR #412 at
`143a7cd41bdbea180258a8399d58f7b4d6b22f0b`, tree
`0812b83b25d4379742e869246d056e1559b51056`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This increment establishes a
written quantitative obstruction to taking absolute values before the minor
integration and drafts its source proof from the inherited theta hypothesis.
It does not establish the required signed minor estimate. Parallel #415's
composite coefficients and Euler-tail comparison remain separate.

## 1. The two quantities that must not be confused

Keep the actual source weights a(p)=log p for primes and zero otherwise,
inclusive support 0<=p<=N, the complete Q=2 minor set m_N, and X=N+1. Put

\[
I_N=\int_{\mathfrak m_N}S_N(\alpha)^2e(-N\alpha)\,d\alpha,
\qquad A_N=\int_{\mathfrak m_N}
 |S_N(\alpha)^2e(-N\alpha)|\,d\alpha.
\]

The target in #412 is Re I_N>=-X, with every-even tail quantifiers. The
triangle inequality |I_N|<=A_N is true, but A_N is a substantially different
supplier. Since the target character has unit norm,

\[
A_N=\int_{\mathfrak m_N}|S_N(\alpha)|^2\,d\alpha.               \tag{1}
\]

Define the diagonal square mass and major absolute energy by

\[
E_N=\sum_{p\le N\atop p\ {\rm prime}}(\log p)^2,\qquad
A_N^{\rm maj}=\int_{\mathfrak M_N}|S_N(\alpha)|^2\,d\alpha.
\]

Finite character orthogonality and the exact set partition give

\[
\int_0^1|S_N(\alpha)|^2\,d\alpha=E_N,
\qquad A_N+A_N^{\rm maj}=E_N.                                \tag{2}
\]

The new source drafts both identities from the existing character convention.
The energy expansion uses the difference frequency p-q. The Goldbach
coefficient uses p+q-N. Equating their zero-frequency conditions would be an
additive/diagonal mismatch. No infinite Fourier limit or prime asymptotic is
needed for (1),(2).

## 2. An actual-prime lower estimate for the absolute minor integral

The following uses exactly the external scalar hypothesis already stated in
#404, specifically

\[
|\theta(k)-k|\le k/500\quad(k\ge4{,}000{,}000).                \tag{3}
\]

Its published input is Dusart, arXiv:1002.0442v1, Proposition 5.1 and Theorem
5.2, through the weakening recorded in #404. That literature theorem remains
external to Lean. This increment needs no new distribution theorem, full RH
assumption, or binary Goldbach asymptotic.

For N=2n and n>=4,000,000,

\[
\theta(2n)-\theta(n)\ge\frac{497}{500}n.
\]

Every prime p in (n,2n] has log p>=log n. Keeping all lower prime terms
nonnegative gives the genuine finite-sum estimate

\[
E_{2n}\ge\log n\,[\theta(2n)-\theta(n)]
\ge\frac{497}{500}n\log n.                                  \tag{4}
\]

The new source derives (4), retaining the complete endpoints and prime-only
weights. This is a consequence of (3), not an estimate chosen from G(N).

For the major absolute energy, a conservative existing geometric bound is
enough. The q=1 and q=2 six-radius measures sum to 18/X, so

\[
\operatorname{meas}(\mathfrak M_N)\le18/X,\qquad
A_N^{\rm maj}\le18\theta(N)^2/X\le19N
\quad(N\ge4{,}000{,}000).                                   \tag{5}
\]

The last step uses theta(N)<=501N/500 and
18*(501/500)^2<19. This deliberately coarse measure estimate follows from
the inherited three-lift bounds and needs neither the sharper exact measure
6/X nor a signed-major model approximation. The source drafts all of (5).

Combining (2),(4),(5) gives

\[
\boxed{A_{2n}\ge2n\left(\frac{497}{1000}\log n-19\right)
\quad(n\ge4{,}000{,}000).}                                  \tag{6}
\]

Consequently **no fixed linear absolute-integral allowance can hold on the
whole tail**. A precise sufficient threshold, also represented in the source,
is: for any fixed C>=0, if

\[
20+2C<\frac{497}{1000}\log n,
\quad n\ge4{,}000{,}000,
\]

then A_(2n)>C(2n+1). Since log n tends to infinity, this excludes every fixed
C for all sufficiently large even targets. The universal asymptotic sentence
is a written consequence of this explicit threshold; the source theorem
retains the threshold as a hypothesis and does not introduce a new limit
theorem.

For a concrete conservative example, n>=3^50 implies log n>50 because e<3.
At log n=50 the displayed threshold already holds for C=2. Thus, in the
classical deduction from (3), A_N>2(N+1) for EVERY even N>=2*3^50. This is a
feasibility cutoff, not a finite Goldbach computation or a claimed optimal
threshold. It even exceeds the inherited written upper bound 2X for the Q=2
model-major term, so it cannot pay that terminal margin.

This is an obstruction to the absolute-integral replacement. It is **not** a
lower bound for |I_N| or for -Re I_N and does not refute the signed supplier.
The earlier bounded-Q two-sided norm obstruction remains a separate result.

There is also a direct pointwise warning at a missing rational center.
For N>=8, alpha=1/3 lies in the actual Q=2 minor set: it is farther than
2/X from the integer center and farther than 1/X from the half-integer
center, including the adjacent lifts. Every prime except three has residue
one or two modulo three, where cos(2*pi*p/3)=-1/2. Hence the written exact
identity is

\[
\Re S_N(1/3)=\frac{3\log3-\theta(N)}2,
\quad |S_N(1/3)|\ge\frac{\theta(N)-3\log3}2.                 \tag{6a}
\]

The prime-three correction is essential. With (3), this is at least
499N/1000-(3/2)log 3. Thus even an o(N) supremum bound for S_N on this
fixed-Q minor set is impossible. Calling the complement a minor set does
not remove its other rational peaks. The signed integrated supplier may
still hold; (6a) is a written finite-residue calculation, not a new Lean
declaration in this increment.

## 3. The exact cancellation that remains to be supplied

For even N=2n, center the phase at half the target:

\[
Z_n(\alpha)=S_{2n}(\alpha)e(-n\alpha),\qquad
P_n=\int_{\mathfrak m_{2n}}(\Re Z_n)^2,\qquad
H_n=\int_{\mathfrak m_{2n}}(\Im Z_n)^2.
\]

There is no replacement of the source integrand: Z_n^2 is exactly
S_(2n)^2 e(-2n alpha). Pointwise real/imaginary algebra and integration give

\[
\Re I_{2n}=P_n-H_n,\qquad A_{2n}=P_n+H_n.                    \tag{7}
\]

The source drafts these identities on the complete inherited minor set.
The fixed supplier from #412 is therefore exactly

\[
\boxed{\forall n\in\mathbb N,\ 2n\ge400{,}000{,}000,
\quad H_n\le P_n+(2n+1).}                                  \tag{8}
\]

The source equivalence retains 2<2n explicitly as well. No modulus, target,
endpoint, or positive contribution is dropped. This is an exact reformulation
of the open analytic supplier, not a new proof or a weaker conjecture.

Equivalently H_n<=(A_(2n)+X)/2. If A_(2n)>0, this says

\[
\frac{H_n}{A_{2n}}\le\frac12+\frac{X}{2A_{2n}}.              \tag{9}
\]

By (6), the permitted excess above one half is O(1/log N). This requirement
is one-sided: it does not force P_n and H_n to be asymptotically equal, and
large beneficial positive signed mass is allowed. Bounding H_n alone by X
would discard P_n and impose a stronger condition than (8).

Elementary positivity, the triangle inequality, and a scalar theta bound
do not provide (8). The previous scalar countermodel already prevents that
inference in general. What remains is quantitative information about the
actual additive phase balance, with the every-even quantifier intact. An
averaged result or a density-one result cannot discharge its exceptions.

## 4. A finite actual-prime test showing the lost positive contribution

Extend #412's exact-rational N=128 calculation using the same complete list
of 31 primes, logarithm intervals, and two-arc window K_X. The signed minor
uses m=p+q-N. The absolute minor instead uses m=p-q:

\[
A_N=\sum_{p,q\le N}\log p\log q
 [1_{p=q}-K_X(p-q)].                                        \tag{10}
\]

Here K_X(0)=6/X and, for nonzero integer m,

\[
K_X(m)=\frac{\sin(4\pi m/X)+(-1)^m\sin(2\pi m/X)}{\pi m}.
\]

The zero branch, phase, both wrapped endpoint pieces, actual prime support,
and all 961 ordered pairs are retained. Outward rational enclosures give:

| Actual quantity at N=128 | Strict enclosing interval |
| --- | --- |
| E_N | (441.53, 441.54) |
| A_N | (251.53, 251.54) |
| Re I_N | (-95.10, -95.09) |
| P_64 | (78.22, 78.23) |
| H_64 | (173.31, 173.32) |

Thus both A_N>X and H_64>X, while H_64-P_64<X. The retained positive phase
energy pays part of the negative energy. This is a concrete feasibility test
for attempts to simplify the signed supplier by dropping a positive term.
N=128 remains below the declared cutoff; this finite calculation is not a
tail theorem or an accepted Lean certificate.

The enclosure procedure is the one specified in #412: Machin intervals for
pi, 48-term positive logarithm expansions with an explicit tail, and a sine
polynomial through degree 81 with the degree-83 remainder bound and argument
radius. All arithmetic used for these intervals is rational and outward.
The P,H intervals follow from (7). No numerical quadrature establishes the
enclosures, and no Lean declaration asserts the finite numerical table.

## 5. Status and remaining obligations

The new source drafts finite Parseval, the complete energy partition, the
coarse Q=2 major-energy cap, the square-log lower estimate from the inherited
theta input, the explicit obstruction to every fixed linear absolute budget,
and the exact one-sided phase reformulation. These identities and estimates
do not prove (8).

The external theta theorem remains unimported; all new source is unelaborated.
The signed-major model and residual comparisons used by the Goldbach terminal
consumer are still separate formal obligations. The complete signed minor
lower estimate, strict accepted every-even conclusion, and finite coverage
remain open. Static source/blob/inventory checks and ordinary rational
diagnostics do not establish Lean acceptance. Effectful scripts and receipts
remain outside this mathematical source repository.

No Lean/Lake process, transitive kernel/axiom audit, merge, RH #345 work, or
Goldbach proof occurred. Keep #259 and #257 open.
