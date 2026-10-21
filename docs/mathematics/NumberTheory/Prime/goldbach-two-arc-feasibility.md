# Explicit two-arc budgets and the direction of the minor estimate

Human research direction: R.A. Jacob Martone.
Mathematical analysis and source drafting assistance: OpenAI ChatGPT.

Issue #259 under #257. Parent PR #386:
`e3c17e0097398b2da9539f1b8b93a2a187a039a8`, tree
`72ab8e413f4ca85c6af9b6755cf71d9677cfbca7`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The new Lean declarations
cover exact reconstruction, a necessary upper bound imposed by a norm margin,
a conditional one-sided minor consumer, and rational budget arithmetic.
The integral estimates, theta-to-progression specialization, logarithm
enclosures, and asymptotic obstruction below are written mathematics, not
new kernel-accepted or even elaborated declarations. No analytic supplier
for every even target is claimed.

## 1. A genuine small supplier, with the original endpoints

Fix `Q=2`, write `X=N+1`, and let

\[
\vartheta(k)=\sum_{p\le k}\log p.
\]

For one given target N, the non-tautological input is a stated number B>=0
satisfying

\[
\forall k\in\{0,\ldots,N\},\qquad
 |\vartheta(k)-(k+1)|\le B. \tag{1}
\]

The only reduced residues for q=1,2 are respectively 0 and 1. Their exact
untwisted discrepancies are

\[
F_{k;1,0}=\vartheta(k)-(k+1),\qquad
F_{k;2,1}=\vartheta(k)-1_{k\ge2}\log2-(k+1).
\]

Thus their prefix bounds are B and B+log2. The non-reduced residue (2,0)
has exactly log2 prime mass for N>=2. These are prime-only sums; no von
Mangoldt or prime-power substitution is made. The k=0 discrepancy is -1,
so an all-prefix zero budget fails even before the prime-two obstruction.

A precise universal rate supplier is

\[
\exists N_0\ge1000\ \forall N\in\mathbb N,
\quad [N\ge N_0,\ N>2,\ 2\mid N]\Longrightarrow
\forall k\le N,\quad
|\vartheta(k)-(k+1)|\le (N+1)/100. \tag{2}
\]

The source records the all-prefix predicate with a specified rate epsilon;
it does not assert (2) or choose B after seeing the Goldbach convolution.
The ordinary prime number theorem implies existence of such a cutoff in
classical mathematics: split prefixes at a fixed large K, use
`|theta(k)-k|<=epsilon*k/2` above K, and absorb the finitely many smaller
prefixes and the extra endpoint 1 into epsilon*(N+1). An explicit usable
cutoff still requires quantitative estimates and finite checking. No
prime-distribution theorem has been imported or audited here.

For a growing Q, (1) alone is insufficient: the supplier must again quantify
over every reduced residue and every q<=Q(N), with the specified rate.
PR #386's written sufficient regime remains `b_N*Q(N)^2=o(N)` together with
the stated non-reduced corrections. Average distribution over targets cannot
replace issue #259's every-even quantifier.

## 2. A closed rational major-error bound

Assume N is even and `8<X`, the inherited separation condition for Q=2.
The two reduced centers are 0/1 and 1/2. Their normalized Ramanujan
coefficients are exactly 1 and -1. In scaled frequency `t=X*|beta|`, the
two window radii are R=2 and R=1. The finite model amplitude obeys

\[
|V_N(\beta)|\le X u(t),\qquad
u(t)=\min(1,1/(2t)),\quad u(0)=1.
\]

This follows from the finite geometric sum and
`|sin(pi*beta)|>=2|beta|` for `|beta|<=1/2`. Periodicity recombines the
clipped real lifts into the centered window; endpoints have measure zero.
Parallel PR #387 supplies source drafts for this window mechanism at
`10319d9b2f2912fc8ad44330be60e1339c2a7c7c`. It is not imported into this
branch or treated as executed. The present argument is written directly
for the original clipped sets under the same half-period condition.

Retaining the squared discrepancy, the per-arc envelope is at most

\[
D(\beta)(2|V_N(\beta)|+D(\beta)).
\]

Use `pi<22/7`, `log2<7/10`, and `N/X<1`. For the two denominators take

\[
d_1=B,\ f_1=44B/7,\qquad
d_2=B+7/5,\ f_2=(44/7)(B+7/10),
\]

so `D_q<=d_q+f_q*t`. The `7/5` includes both the reduced-prefix correction
and the actual non-reduced mass. On a radius-R window, integration gives

\[
4[d I_0(R)+f I_1(R)]
+\frac2X[d^2R+dfR^2+f^2R^3/3],
\]

where `I0(R)=(1+log(2R))/2`, `I1(R)=R/2-1/8` for R>=1. These are elementary
integrals of u and t*u, split at t=1/2. Bound I0(2) by 6/5 and I0(1) by
17/20, and keep I1(2)=7/8 and I1(1)=3/8 exactly. Summing produces

\[
\mathcal E_{\rm maj}\le
\frac{1387}{35}B+\frac{284}{25}
+\frac1X\left(\frac{14990}{49}B^2+
 \frac{7232}{105}B+\frac{2186}{75}\right)
\le U(X,B), \tag{3}
\]

\[
U(X,B)=40B+12+\frac{310B^2+70B+30}{X}.
\]

Here the major error can be PR #386's integrated minimum envelope: it is at
most the uncapped envelope used in this calculation. No residual norm has
been hidden in the definition of U, and no quadrature is needed for (3).

The new `goldbachTwoArcRationalBudget` is U. Its source draft proves only
the rational algebra

\[
X\ge1000,\quad 0\le B\le X/100
\quad\Longrightarrow\quad U(X,B)\le X/2. \tag{4}
\]

It deliberately does not assert the analytic bridge (3) as a Lean theorem.

## 3. An elementary model lower AND upper bound

The exact finite identity

\[
V_N(\beta)^2e(-N\beta)=|V_N(\beta)|^2
\]

follows by pairing n with N-n. Since N is even, both coefficient/target
phase factors at 0/1 and 1/2 equal 1. Consequently the model-major real part
is

\[
M_2(N)=J_N(2/X)+J_N(1/X),\qquad
J_N(\rho)=\int_{-\rho}^{\rho}|V_N(\beta)|^2\,d\beta.
\]

For 0<=t<=1/2, the geometric formula, `sin y<=y`, and
`sin y>=y-y^3/6` give

\[
|V_N(t/X)|^2\ge X^2(1-\pi^2t^2/3).
\]

Both windows contain this central interval and its reflection, so each J is
at least `X*(1-pi^2/36)`. Using pi^2<10 yields

\[
M_2(N)\ge 13X/9. \tag{5}
\]

For the upper bound, each window is contained in a full period and the
nonnegative kernel has full-period integral X, by finite character
orthogonality. Therefore

\[
M_2(N)\le2X. \tag{6}
\]

These are bounds for the exact finite source model, not an infinite singular
series approximation. Their Lean formalization remains open.

## 4. Exact rational finite tests, without numerical integration

The following finite all-prefix upper bounds were checked with integer and
rational arithmetic. They are not Lean acceptance or finite Goldbach
coverage. In particular they do not assert the all-N supplier (2).

| N | B covering every k<=N | U(N+1,B) | Model lower 13(N+1)/9 |
|---:|---:|---:|---:|
| 10,000 | 163 | 73574362/10001 | 130013/9 |
| 100,000 | 512 | 2130521002/100001 | 1300013/9 |

Both rational major budgets are strictly below the corresponding model
lower. At N=100,000 the stated one-percent prefix target also passes.
Neither row supplies any signed minor allowance.

Reproduction of the finite prefix check uses `p=2^j*u`, `1<=u<2`, and
`z=(u-1)/(u+1)`, hence `0<=z<1/3`. For m=12,

\[
L_m(z)=2\sum_{i=0}^{m-1}\frac{z^{2i+1}}{2i+1},\qquad
L_m(z)\le\log\frac{1+z}{1-z}
\le L_m(z)+\frac{2z^{2m+1}}{(2m+1)(1-z^2)}.
\]

Apply the same formula to log2 at z=1/3, multiply by j, and add the
normalized interval. Round each prime-log interval outward to multiples of
10^-9. Sum these integer endpoints through every k, retaining `k+1`.
A complete Eratosthenes sieve through 100,000 gives the respective maximum
upper bounds `162475450250/10^9` and `511463199051/10^9`, attained at
prefixes 8,596 and 88,788. The tail inequality is a geometric upper bound
on the positive omitted series. This describes the arithmetic certificate;
the effectful diagnostic program and receipts are not part of this pure
mathematics repository.

## 5. The two-sided terminal criterion has a necessary upper bound

Write the exact source reconstruction as

\[
G=M+R+I,
\]

where I is the COMPLETE signed minor integral and R the sum of major
residuals. Suppose

\[
L\le\Re M,\quad |R|\le E,\quad |I|\le T,\quad E+T<L.
\]

Taking real parts in both directions gives

\[
0<G<2\Re M. \tag{7}
\]

This elementary consequence is now a source declaration attached to the
actual frequency-budget consumer. At Q=2, (6) and (7) force `G(N)<4(N+1)`.
Large positive Goldbach mass can therefore refute the norm criterion. It
does not refute Goldbach or the exact arc decomposition.

Here is an explicit arithmetic obstruction at N=2310. For an integer p>=2,
let `j=floor(log2(p))`, `z=(p-2^j)/(p+2^j)`, and define

\[
\ell(p)=\frac1{1000}\left\lfloor1000\left(
\frac{56j}{81}+2z\right)\right\rfloor.
\]

The first two positive terms of the log2 series give `log2>=56/81`;
the first term for log(p/2^j) gives at least 2z. Hence
`0<=ell(p)<=log p` without floating-point logarithms.

The following 114 distinct first coordinates all satisfy
`p<2310-p`, with both numbers prime (trial division through the integer
square root suffices):

```text
13 17 23 29 37 41 43 59 67 71 73 89 97 103 107 131 149 157 167
173 179 181 197 199 211 223 227 229 241 257 271 281 283 293 307
311 313 317 331 337 359 379 397 409 421 431 433 439 443 449 463
479 487 499 509 521 523 557 563 569 577 587 601 613 617 641 643
647 653 673 683 691 701 709 727 739 743 751 757 761 787 811 821
823 827 829 839 857 859 863 877 881 883 887 911 929 937 983 991
1009 1013 1019 1021 1031 1033 1051 1061 1087 1093 1097 1109
1117 1123 1129
```

Count both orders, as required by the source. Direct integer arithmetic gives

\[
G(2310)\ge2\sum_{p\ \mathrm{listed}}\ell(p)\ell(2310-p)
=\frac{10034793358}{10^6}>9244=4(2310+1). \tag{8}
\]

Completeness of the witness list is not needed for this lower bound.
Primality, distinctness, both-order multiplicity and the integer sum were
checked independently of the floating-point experiments. The controls
module checks only the last rational comparison as an unexecuted Lean
script; it does not claim to formalize the primality/logarithm bridge.

## 6. Raising the finite cutoff cannot rescue uniformly bounded Q

The following is a classical mathematical deduction, not a new Lean theorem
or an assumed binary Goldbach asymptotic. Prime-log PNT in each fixed reduced
progression gives `theta(x;m,a)~x/phi(m)`. See Kedlaya, *Notes on analytic
number theory*, Chapter 4, Theorem 4.12 and its theta formulation:
<https://kskedlaya.org/ant/chap-primes-in-ap.html>.

For any fixed even m, summing prime pairs with both p,q<=x and p+q divisible
by m yields

\[
\sum_{\substack{N\le2x\\m\mid N}}G(N)
\ge\sum_{(a,m)=1}\vartheta(x;m,a)\vartheta(x;m,-a)
\sim\frac{x^2}{\varphi(m)}. \tag{9}
\]

If `G(N)<=C*(N+1)` for all sufficiently large even N, the left side is at
most `2C*x^2/m+o(x^2)`, with the finite initial exceptions absorbed. It
would follow that `C>=m/(2*phi(m))` for every fixed even m. But the ratios
m/phi(m) over even primorials are unbounded, by Euler-product divergence.
Thus `G(N)/(N+1)` is unbounded along even targets. This deduction uses a
fixed-modulus PNT for each chosen m, not a uniform theorem for growing m.

For any fixed finite Q, the full-period kernel bound and `|A_q(a)|<=1`
give `|M_Q(N)|<=K_Q*(N+1)`, where `K_Q=sum_(q<=Q) phi(q)` is a fixed finite
constant. The same constant works if Q(N) is uniformly bounded by Q.
Equation (7) would then impose a universal upper bound on G(N)/(N+1),
contradicting (9). Therefore **no uniformly bounded denominator cutoff can
make this two-sided norm margin hold for every sufficiently large even N**.

This is an obstruction to this particular sufficient certificate. It is
not an obstruction to positivity, to fixed-Q one-sided reasoning, or to
individual successful norm certificates. The source adds no PNT or
asymptotic formalization from this argument.

## 7. Preserve the sign: a narrower, still genuinely open supplier

Positivity only needs

\[
\Re I\ge-T,\qquad E+T<L, \tag{10}
\]

because the exact reconstruction gives `G>=L-E-T`. The new directional
consumer uses precisely the same signed integral on the same entire minor
set. It does not drop a region, replace it by an absolute integral, assume
it is nonnegative, or choose T from the unknown G.

A concrete Q=2 feasibility target is to prove, for ONE declared N0>=1000
and EVERY even N>=N0 with N>2, both

\[
\forall k\le N:\ |\vartheta(k)-(k+1)|\le X/100,
\qquad
\Re\int_{\mathfrak m_{2,N}}S_N(\alpha)^2e(-N\alpha)\,d\alpha
\ge-X/2. \tag{11}
\]

Then (3)--(5) and (10) would give `G>=4X/9>0`. The first supplier is an
ordinary quantitative prime-distribution task. The second is the unresolved
pointwise binary-additive cancellation/lower-bound task; no estimate for
it is supplied here. Finite coverage below N0 remains separate. The exact
rational tests in section 4 pay only the first, major-side task at two
specified targets, while section 5 tests the strength of the old criterion.

Alternatively, retain the original norm consumer and allow an unbounded
Q(N); then uniform progression estimates, model lower bounds, all correction
terms, and complete minor control must be budgeted together. The improved
`b_N*Q^2` scale alone is not evidence that the universal margin can close.

## 8. Scope and next obligations

The actual advances are a rational closed major budget, a concrete finite
obstruction to fixed-Q norm feasibility, the written unbounded-mass
argument, and a source-level directional alternative preserving the full
minor contribution. Exact algebra and written analytic estimates remain
distinguished from unexecuted Lean scripts and finite arithmetic diagnostics.

Pending: Lean formalization of (1)'s q=1,2 bridge and (3),(5),(6); quantitative
constants and a universal cutoff; the complete signed minor lower supplier;
strict every-even margin with any other chosen parameters; finite coverage;
and separately authorized exact-head elaboration and transitive trust audit.
No Lean/Lake process, merge, external acceptance, or Goldbach theorem is
represented. Keep #259 and #257 open. PR #345 is outside this work.
