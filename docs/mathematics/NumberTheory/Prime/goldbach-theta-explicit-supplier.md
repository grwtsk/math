# An explicit scalar theta supplier for the two-arc Goldbach model

Human research direction: grwtsk contributors.
Mathematical analysis and source drafting assistance: OpenAI ChatGPT.

Issue #259 under #257; continuation of PR #396 at
`84833f8d0704502c73b20d733b116e0a550c1d4f`, tree
`a6634c5cbcd62df069af54fb6e44c39c9b9b6845`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This increment connects the
actual q=1,2 residue prefixes to a scalar theta estimate and makes a
conservative cutoff explicit. The deep distribution input is supported by
published mathematics, but is NOT imported as a Lean theorem or installed as
an axiom. The source adapters retain it as an explicit hypothesis.

## 1. What is newly connected

Write `theta(k)=goldbachPrimeLogTotal k`, with the source's prime-only weight
`log p` and inclusive support `0<=n<=k`. The new source drafts identify

\[
C_2(k)=1_{2\le k}\log2,
\]

\[
\theta(k;1,0)=\theta(k),\qquad
\theta(k;2,0)=C_2(k),\qquad
\theta(k;2,1)=\theta(k)-C_2(k).
\]

These finite identities use the fact that a prime is two or odd. In
particular, powers of two do not contribute additional atoms. The coefficient
sum defining the original prefix is also rewritten exactly as

\[
F_{k;q,r}=\theta(k;q,r)-
 (k+1)1_{(q,r)=1}/\varphi(q).
\]

Consequently, as complex-valued source equalities,

\[
F_{k;1,0}=\theta(k)-(k+1),\qquad
F_{k;2,1}=F_{k;1,0}-C_2(k).
\]

A scalar estimate `|theta(k)-(k+1)|<=B` for EVERY k<=N therefore gives
reduced-prefix bounds B for (q,r)=(1,0) and B+log2 for (2,1).
The inherited budget independently charges the non-reduced (2,0) residue
by its exact mass C2(N). This is not double counting: the B+log2 bound
controls the odd residue after its model subtraction, while C2(N) accounts
for the separate even residue in the phase-weighted sum.

`goldbachTwoArcReducedPrefixBounds_of_theta` and
`goldbachReducedPrefixSupplier_two_of_theta` now feed these bounds into the
existing residue/prefix/frequency interface, including every modulus,
reduced residue, prefix, and even target required at Q=2.

The controls retain `F(0;1,0)=-1`, `F(2;2,1)=-3`, and the transition of
the even correction from zero to log2 at k=2. No endpoint or prime-power
substitution is permitted.

## 2. Published distribution input and its precise scope

Pierre Dusart, *Estimates of Some Functions Over Primes without R.H.*,
arXiv:1002.0442v1 (2 February 2010), Proposition 5.1 and Theorem 5.2,
printed page 4, states the unconditional estimates

\[
\theta(x)-x < x/36260\quad(x>0),
\]

\[
|\theta(x)-x| < \frac{x}{5(\log x)^2}
\quad(x\ge3594641).
\]

Primary source: <https://arxiv.org/pdf/1002.0442v1>.
The original page and its theorem table were inspected; the logarithm in
the denominator is squared, not iterated. The paper's theta is the same
prime-only sum used here. We restrict to k>=4,000,000 for the second
estimate, safely above the printed boundary.

These are published unconditional results, not an assumption of the full
Riemann Hypothesis. Their proofs depend on analytic estimates and published
finite computations. This work does not replay or audit those dependencies,
does not add them to the repository's trusted axioms, and does not use or
duplicate the separate PR #345 audit. Citing the paper does not supply Lean
acceptance.

Only the following deliberately weaker consequences are needed:

\[
0\le\theta(k)\le2k\quad(k\in\mathbb N), \tag{A}
\]

\[
|\theta(k)-k|\le k/500\quad(k\ge4{,}000{,}000). \tag{B}
\]

For (A), use positivity and the first cited estimate for k>0, treating
k=0 directly. For (B), `log k>10`: the elementary inequality e<3 implies
`exp(10)<3^10=59049<4,000,000`. Thus `5*(log k)^2>500`.
The source predicate `GoldbachThetaCoarseEstimates` records the upper part
of (A) and (B) as separate hypotheses; theta's nonnegativity is already
derived from its actual source weights. No declaration asserts this
predicate without premises.

## 3. Paying every prefix with an explicit cutoff

Set

\[
K=4{,}000{,}000,\qquad N_0=400{,}000{,}000=100K.
\]

For ANY natural N>=N0 and ANY k<=N, split as follows.

If k<K, (A) gives

\[
|\theta(k)-(k+1)|\le k+1\le K\le(N+1)/100.
\]

If k>=K, retain the extra endpoint one:

\[
|\theta(k)-(k+1)|
\le|\theta(k)-k|+1
\le k/500+1\le N/500+1\le(N+1)/100.
\]

The last inequality needs only N>=124; our declared cutoff pays it with
ample slack. Hence the written deduction from the cited theorem is

\[
\boxed{\ \forall N\ge400{,}000{,}000\ \forall k\le N,
\quad |\theta(k)-(k+1)|\le(N+1)/100.\ } \tag{C}
\]

This is an actual quantitative scalar distribution consequence in classical
mathematics, not an observed maximum, a density-one conclusion, or a budget
chosen from the Goldbach convolution. It holds for all N in the tail,
and therefore for the every-even target. The cutoff is conservative, not
claimed optimal. No enumeration of primes through N0 or verification of
Goldbach below N0 was performed.

The source supplies this finite-prefix/tail conversion as a conditional
proof draft from `GoldbachThetaCoarseEstimates`, then feeds it through the
exact residue bridge in section 1. The cited deep theorem and its weakening
to (A),(B) remain outside the formalized source chain.

## 4. Consequence for the previously derived major budget

PR #396's written integration and model calculations, with X=N+1, give

\[
\mathcal E_{\rm maj}\le
U(X,B)=40B+12+(310B^2+70B+30)/X,
\qquad \Re M_2(N)\ge13X/9.
\]

For B=X/100,

\[
U(X,X/100)=431X/1000+127/10+30/X\le X/2
\quad(X\ge1000).
\]

The rational algebra is already present in #396. Combining its WRITTEN
analytic bridges with (C) pays the major side for every even N>=N0 in
classical mathematics. In Lean, those integral and model comparisons
remain explicit open premises. The new terminal adapter names them:

1. The integrated frequency envelope is at most U for the actual two-arc
   prefix family derived above.
2. The actual finite model-major real part is at least 13X/9.
3. The COMPLETE signed minor contribution satisfies
   `Re(goldbachRationalMinorContribution 2 N)>=-X/2`.

The first two have written derivations in #396 but no new proof here. The
third is the unresolved analytic binary-additive estimate. If all three
are supplied, the exact reconstruction yields `G(N)>=4X/9>0`. Both the
per-target and every-even tail source consumers preserve these premises.
Complete finite coverage for even 2<N<N0 remains a separate obligation.

This is the directional route. The bounded-Q two-sided norm obstruction
from #396 still applies, even though the major budget can now be paid
uniformly. Large positive minor mass must not be charged as adverse error
if one chooses this fixed-Q strategy.

## 5. What still needs cancellation or stronger distribution

At Q=2 no nontrivial progression-distribution theorem is needed beyond
ordinary theta estimates: the odd-prime progression differs only by the
prime-two atom. This is the smallest useful distribution supplier for this
particular major family. It does not control the minor integral.

If instead Q(N) grows to use the original norm criterion, every reduced
residue through Q(N) again requires a bound. The scalar estimate (C)
does not imply those estimates. The existing sufficient major scale
`b_N*Q(N)^2=o(N)` and its correction terms still have to be paid, alongside
model lower bounds and complete minor control. A distribution theorem
averaged over moduli or targets cannot silently discharge a pointwise
every-even conclusion.

For the fixed-Q directional route, the next substantive unknown is a
uniform lower estimate for the real part of the full oscillatory minor
integral. Taking its absolute integrand discards precisely the cancellation
the source target was designed to retain. No theorem or experiment in
this increment establishes that estimate.

## 6. Inspection, diagnostics, and trust boundary

The mathematical source uses the pinned Mathlib theorem
`Nat.Prime.eq_two_or_odd` from `Mathlib/Data/Nat/Prime/Basic.lean` at
revision `db584cd6d46c92f209a44c0f1c829460d327499d`, blob
`e059d0ae408fdf5dcf90e34afbcc397a2f880a9b`.

Ordinary exact arithmetic checked finite parity/prefix identities with
independent integer weights on actual primes through 5,000, the cutoff
inequalities at boundary cases, and rational budget margins. Such weighted
support tests assess the algebra and exceptional atom, not the analytic
prime-log estimate. Hostile cases retain the missing-zero-endpoint,
omitted-prime-two, and unpaid-small-prefix obstructions. No floating-point
or quadrature output is used to establish (C).

Static checks reconcile declaration inventories, imports and Git blob
bindings and screen the new source for proof escapes. They do not elaborate
Lean. The draft scripts may require repair when execution is authorized.

Still open: an accepted Lean import/proof of the external distribution
input; the remaining analytic integral/model bridges; the complete signed
minor lower bound; the strict every-even endpoint with all bridges
accepted; finite coverage; and exact-head elaboration and transitive trust
audit. No build, merge, external acceptance, or Goldbach result is claimed.
Keep #259 and #257 open.
