# Four-source RH programme: exact Möbius–Liouville square-divisor transport and a quantitative boundary

Local mathematical attribution: grwtsk contributors.

**Scope:** completed analytical derivations, pinned external-source comparison, and an
explicit remaining supplier. This is **not** a proof of RH, a new uniform
correlation theorem, an imported Lean proof, or an independent kernel receipt.
Source snapshot: grwtsk/math main at
157c4b82fef2162eb970eaab47f8526142e1e9d5 (2026-10-31).
Earlier core source blobs and their verification status are unchanged.

## 1. The exact GRWTSK consumer

The target is the existing original signed causal waveform

    F(u) = sum_(1 <= n <= exp u) mu(n) r_n(u)
    r_n(u) = 2 max(n^(-1/2)-exp(-u/2),0), n>=1, u>=0,

and its genuine nonnegative energy

    H(T) = integral_0^T F(u)^2 du.

The actual Lean target is
GRWTSK.NumberTheory.SignedWaveformEnergy.UniformSignedWaveformEnergyBudget
in GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
SignedWaveformEnergyTarget.lean (blob
daafa00030fe8bc95720486aab93ef7a4463155e).
The exactly source-matched conditional residue energy return is
SignedWaveformEnergyResidueBridge.lean (blob
ddb8620518968794c89cfa62a0b8f4c242c19f7a).

The mathematical source also establishes the signed classwise Abel
transport in DyadicSignedResidueWaveform.lean (blob
07dfdae4a60b05f5da55cc20882411c85444fa82), all four parity
sectors in DyadicWeightedResidueClasses.lean (blob
621dd0c0856301a8049e4e63f987579c4cea4596), and the
uniform two-sided causal cell comparison in
documentation/mathematics/_support/reviews/
aggregated-abel-flux-causal-energy.md (blob
7ba2c34c7dbfd708c22d0f44ae7b8e5ccc445bc5).

Writing M_mu(x)=sum_(n<=x)mu(n) and

    Q(N) = sum_(n<=N)mu(n)/sqrt(n)-M_mu(N)/sqrt(N),

the existing source calculation gives

    F(log N)=2 Q(N),
    Q(N)=1/2 integral_1^N M_mu(t)t^(-3/2) dt.

On each birth cell, F(u)/2 is a convex interpolation of Q(N)
and Q(N+1), with its true causal weights. The source gives
absolute constants in both directions relating H(log K) to

    J(K)=sum_(N=1)^(K-1) log(1+1/N)*(Q(N)^2+Q(N+1)^2).

These are source return identities, not new arithmetic cancellation.

## 2. A fully exact one-point arithmetic bridge

Let lambda(n)=(-1)^Omega(n) for n>=1, and mu be the original
Möbius function. Define the finite square-divisor mask

    s(n) = sum_(d>=1, d*d divides n) mu(d).

An elementary prime-power expansion gives

    s(n) = prod_(p: p*p divides n) (1-1)
         = 1 if n is squarefree, else 0
         = mu(n)^2.

Because lambda(n)=mu(n) whenever n is squarefree,

    mu(n) = lambda(n)*s(n)
          = sum_(d*d|n) mu(d)*lambda(n/d*d).

The last equality uses complete multiplicativity of lambda and
lambda(d*d)=1. Every nonunit, squareful-zero label and sign is
accounted for; no probabilistic squarefree approximation is made.

Write L(x)=sum_(n<=x)lambda(n) and M_mu(x)=sum_(n<=x)mu(n).
Regrouping the complete finite sum by d, for integer X>=1, gives

    M_mu(X) = sum_(1<=d<=sqrt X) mu(d)*L(floor(X/d*d)).       (A)

For integer D>=1, cut the outer divisor sum at d<=D.
The exact unsifted tail is

    R_D(X) = sum_(D<d<=sqrt X) mu(d)*L(floor(X/d*d)).

Since |L(Y)|<=Y by the definition of lambda,

    |R_D(X)| <= sum_(d>D) floor(X/d*d)
              <= X sum_(d>D) d^(-2) <= X/D.                 (B)

This is an unconditional, all-integer-X, all-D>=1
quantitative truncation. Its constant is ONE; it does
not depend on a shift, modulus, zero-height or prime
distribution theorem. It is a one-point statement,
not the missing weighted two-point packet bound.

### Conditional power-rate consequence with explicit losses

Suppose for a fixed theta>1/2 and a constant C>=0,

    |L(Y)| <= C Y^theta,  for every positive integer Y.

Then (A) and sum_(d>=1)d^(-2theta) <= 1+1/(2theta-1)
yield

    |M_mu(X)| <= C*(1+1/(2theta-1))*X^theta.

Abel summation gives

    |Q(N)| <=
      C*(1+1/(2theta-1))/(2theta-1) * N^(theta-1/2).

Using the original convex causal interpolation between log N and
log(N+1), followed by integrating its square, gives for T>=0

    H(T) <= C_theta * exp((2theta-1)*T),                   (C)

for some explicit finite C_theta depending only on C and theta.
No modulus restriction or per-class absolute-value loss enters
this one-point transfer. This is a complete analytical implication,
NOT an unconditional theorem at a new exponent.

In particular, a valid Liouville partial-sum supplier with
theta=7/8+epsilon would yield the energy exponent
3/4+2epsilon. To establish GRWTSK's all-positive-rate target
through this route one would need Liouville partial sums at
theta=1/2+epsilon for EVERY epsilon>0: this is RH-strength
input, not a currently discharged theorem.

## 3. Exact placement of OpenAI Math

OpenAI math at immutable main
4eaee87548250b2682affda7d05d947c05554bae
uses Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612,
the same locked Mathlib revision inspected for GRWTSK.
No OAI source is imported or vendored in this increment.

Family 003: *The Quasi-Riemann Hypothesis: A Zero-Free
Half-Plane Re(s)>7/8* (OpenAI, 2026-09-30),
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/003.md
with comparator theorem
OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re in
lean/ComparatorChallenges/QuasiRiemannHypothesis.lean.
The project claims a Lean formalization of zeta and
Dirichlet L-function nonvanishing in Re(s)>7/8.
This does NOT by itself supply a quantitative partial-sum
bound for lambda(n). A valid contour-shift / 1/zeta
vertical-growth and truncation theorem is an EXPLICIT
missing bridge before inserting theta=7/8+epsilon in
(C). Even if that bridge is proved and checked, (C)
would produce positive exponent ~3/4, not RH.

Family 007: *Ordinary two-point correlations of
multiplicative functions* (OpenAI, 2026-09-24),
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/007.md
and comparator
OAI.OrdinaryTwoPointCorrelations.liouville_log_saving.
The quantitative Liouville result is for every FIXED
nonproportional pair of positive-slope affine forms;
its implied C may depend on the chosen forms.
OAI's generic corrected Elliott theorem explicitly
requires the stated uniform nonpretentiousness.
Its Lean code also records the corrected Matomäki–
Radziwiłł–Tao short-exponential-sum inputs as separate
mathematical objects; source-specific type and trust
checking should precede any local import.

### Exact two-point CRT source correspondence

For every positive shift h and source pair (m,m+h),

    mu(m)mu(m+h)
       = sum_(d*d|m, e*e|m+h)
            mu(d)mu(e)*lambda(m)*lambda(m+h).             (D)

The two square conditions require

    m == 0 (mod d*d),   m == -h (mod e*e).

They have a solution if and only if
gcd(d,e)^2 divides h. When solvable, the
solutions form ONE progression m=a+l*t with
l=lcm(d*d,e*e). The Liouville pair becomes

    lambda(l*t+a)*lambda(l*t+a+h),

whose two affine slopes both equal l and whose
nonproportionality determinant is l*h, nonzero
because h>0.

Thus OpenAI's fixed-affine result CAN in principle
be applied to each FIXED d,e,h progression in
the complete expansion (D). It cannot be summed
over growing d,e,h at the GRWTSK endpoint without
a NEW bound uniform in all those parameters and the
original reciprocal-square-root causal weights.
The previous GRWTSK issue #516 records the
larger harmonic-shift versus logarithmic-base
averaging mismatch; this CRT correspondence does
not evade that obstruction.

## 4. What the arXiv literature actually supplies

Matomäki–Radziwiłł–Tao, *An averaged form of
Chowla's conjecture*, arXiv:1503.05121v3 (2022
corrected), DOI 10.2140/ant.2015.9.2167:
averaging over forms/short intervals, not a
GRWTSK complete growing-shift maximal-prefix
energy theorem.

Tao, *The logarithmically averaged Chowla and
Elliott conjectures for two-point correlations*,
arXiv:1509.05422 (2015): logarithmic averaging
in the BASE n variable, not the complete signed
weighted sum over all SHIFT h and all dyadic depths.

Jizhou Guo, *Quantitative Logarithmic Chowla
Correlations Uniformly over Growing Shifts*,
arXiv:2608.23500 (2026): Liouville, logarithmic
weight, h <= (log x)^kappa for kappa<1/700.
Scott D. Hughes, *Effective logarithmic two-point
Chowla bounds in every window*, arXiv:2609.28526
(2026): both lambda and mu and an explicit
fourfold-exponential threshold, leaving only
extremely slowly growing shift ranges.
These do not cover the GRWTSK h up to 2^j,
weighted ordinary base prefixes and all depths.
This scope mismatch is already investigated in
grwtsk/math issue #516, not reopened as solved.

Javier Pliego and Mengdi Wang, *Discorrelation of
the Möbius function with linear phases in short
intervals*, arXiv:2610.11487 (2026):
logarithmic saving for one-point additive twists
at short-interval lengths H >= x^(0.58+epsilon).
Its one-point phase control may inform residue
projectors after Fourier expansion, but it is
not a signed binary correlation with all
growing shifts or an x^(1/2+epsilon)
Mertens bound.

## 5. Anthropic / zero-side comparison and an independent alternative

Anthropic formal-math:
16a5ce41304fcdaea4e0be7c132e1c361dc26da5,
zeta23, Levent Alpöge and Ralph Furman (paper
arXiv:2608.13637, 2026), proves at least 2/3
of nontrivial zeta zeros are simple and on the
critical line and at least 5/6 are distinct.
The formal code uses Hermitian rank/trace and
Frobenius-square bounds, and documents independent
Comparator/NanoDa checks. Its toolchain and
Mathlib are pinned at v4.33.0-rc2,
incompatible with the GRWTSK root by default.

Youness Lamzouri, arXiv:2609.02882v2 (2026),
provides an independent Hilbert-space inequality
route to related critical-line proportion bounds,
avoiding a finite-dimensional matrix formulation.
This is a useful independent analytic comparison,
not a source-to-GRWTSK arithmetic equality.

A density/proportion statement allows an
exceptional zero off the line, even if the
exceptional set has asymptotic proportion zero.
The GRWTSK energy target excludes ALL off-line
zeros through its signed Laplace return. It
cannot follow from the Anthropic or Lamzouri
proportion theorem without a NEW source-sensitive
single-zero exclusion argument.

Anthropic's rank–trace tightness fixture further
warns that a finite collection of spectral
moments cannot distinguish configurations whose
chosen invariants coincide. The earlier GRWTSK
DyadicMarkedSignGauge candidate proves the
arithmetic analogue: unmarked Möbius incidence
cohomology loses some signs. Preserve the
labelled signed real observations throughout.

## 6. What has advanced, and exact next consumers

Completed analytical derivations in THIS note:
(A) exact square-divisor lifting into the actual
Möbius source; (B) uniform 1/D truncation;
(C) conditional exponent transfer theta -> 2theta-1;
(D) complete signed binary square-divisor/CRT
expansion with its nonunit and growing-scope
obstructions. These are not presented as novel
literature results or Lean-checked theorems.

Independent finite exact Python diagnostics:
1500 equality assertions (1000 coefficient,
500 cumulative) and 945 tail allowance
assertions for X<=120, D>=1. These do NOT
prove all-integer claims or a zero theorem.

Next formalization targets, without rebuilding
existing RH source operators:
1. Give (A), (B), and (D) a direct Lean statement
   over ORIGINAL mu and Mathlib liouville at
   matching source types, with all zero-square
   and nonunit cases. Verify against kernel.
2. Build a source-faithful analytic statement
   LiouvillePowerUpper(theta) -> MertensPowerUpper(theta)
   -> SignedWaveformEnergyPowerUpper(2theta-1),
   deriving source integrals, cutoffs, and
   all constants, not postulating the conclusion.
3. Audit OAI 003's nonvanishing theorem and
   supply the separate quantified inverse-zeta
   growth/contour bridge before any theta=7/8
   benchmark is promoted.
4. To improve past a fixed polynomial exponent,
   work on the COMPLETE signed weighted residue
   correlation packet, or a one-point Liouville
   estimate strong enough at theta=1/2+epsilon.
   Neither is proved by the cited inputs.
5. Any Anthropic/Weil/Hilbert comparison must
   identify the original signed source-to-zero
   operator, treat off-line pairs individually,
   and surpass any invariant-collision obstruction.

No new unconditional subpolynomial energy
bound, zero-freeness claim, RH proof, native
verification, cross-toolchain kernel acceptance,
or automorphism of the source is asserted.
