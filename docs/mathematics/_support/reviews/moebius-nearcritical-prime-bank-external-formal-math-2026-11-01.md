# Near-critical growing prime banks: DeepMind Formal Conjectures and Tau Ceti comparison

Local mathematical attribution: grwtsk contributors, 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Primary consumer: the ORIGINAL balanced signed Möbius Gram on one
clipped dyadic shell and its four original ordered rough/matched
sectors in `MoebiusBalancedTwoSidedPNTDense.lean`.

## 1. Exact external sources, evidence and scope

**Google DeepMind Formal Conjectures**, repository
https://github.com/google-deepmind/formal-conjectures
at `d995ef5d306637c0a2e489c7e579647168d7df2f`.
`FormalConjectures/Millennium/RiemannHypothesis.lean` blob
`5b1dcd5c46ab4a5f449d7d4a5c5ddce7c89c3542`
states `RiemannHypothesis.riemannHypothesis : RiemannHypothesis`,
where `RiemannHypothesis` is the canonical Mathlib proposition,
and its proof body is literally `by sorry`.
The same module defines GRH for primitive Dirichlet characters
and a proved test implication `implies_riemannHypothesis`
relating level-one GRH to the Mathlib RH proposition.
It explicitly rejects a naive extended RH statement using
a Dedekind-zeta function that is merely a noncontinued
Dirichlet series, due to spurious zero values outside
absolute convergence. This is an unusually useful theorem-
statement fidelity control; it supplies NO proof of RH.
Formal Conjectures' pinned Lean is 4.33.1 and uses its own
monthly Mathlib pin. Source statements and proof placeholders
are NOT GRWTSK kernel evidence.

Related, but NOT used here: `google-deepmind/cryptids`
at `ced8f9f44f67a167d5ecc03e687b048c67926371`,
`Cryptids/Semantics/Riemann120.lean` blob
`33981627c528044b058c7c2a570ee3c5b2b7375e`,
states `Halts riemann120 ↔ ¬RiemannHypothesis` and
likewise for a 104-state reduction. This is a source-
recorded equivalence with NON-RH, not a nonhalting proof,
independent arithmetic cancellation or RH proof. No
native build/kernel/axiom replay was attempted locally.

**Tau Ceti**, repository https://github.com/TauCetiProject/TauCeti
at `1bf9d63472811e1dfe2ebf0c2f3bb5bc411bd6d5`,
with current `leanprover/lean4:v4.36.0-rc1`
and a separate Mathlib manifest pin. Its human roadmap
at TauCetiProject/TauCetiRoadmap
`fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`,
its reviewed code and source-level axiom/linter gates
are distinct from GRWTSK's source publication and
NOT_RUN verification facets. The review rubrics live
in TauCetiProject/TauCetiReview at
`8d13f383f08db6e506c6cb434a7ce641f940c336`.
The source announces build, lint, axiom and adversarial
review gates for merged modules, but we did not replay
their checks on these exact commits.

Tau Ceti exact candidate mathematics:
- `TauCeti/NumberTheory/ArithmeticDirichletSeries/Moebius.lean`
  blob `fffe5754c3668169906e65bb2073b2f7dfa86e1d`:
  `IdealArithmeticFunction.convolution_moebius_one`,
  ideal Möbius inversion, and the actual proved
  `not_exists_multiplicativeIdealWeight_eq_moebius`
  and `not_exists_unitaryIdealWeight_eq_moebius`.
  Its Möbius function vanishes on a square of a prime
  ideal; unitary ideal weights are completely
  multiplicative, so they cannot model that source.
- `TauCeti/NumberTheory/ArithmeticDirichletSeries/Cancellation.lean`
  blob `0332e04a9613bebe0cdededf2c90c728d07b37de`:
  `TauCeti.HasCancellation χ` is a DEFINED HYPOTHESIS
  on ideal partial sums of a *unitary ideal weight*.
  Its proved norm twists, finite Euler-factor deletion
  and analytic continuation require that hypothesis,
  not automatically Möbius. The source even proves
  `not_hasCancellation_one`.
- `TauCeti/NumberTheory/LFunctions/Mertens.lean`
  blob `3fba082bec8f93cd153a83d906f45baa23dc8ce3`:
  number-field Mertens' first/second theorems about
  sums of `log Np/Np` and `1/Np`; these are NOT
  bounds for the ordinary Möbius summatory M(x).
- `TauCeti/NumberTheory/ArithmeticDirichletSeries/AbelSummation.lean`
  blob `f7c429ec58c5dc8b7c1497c4a979193a7763020c`:
  a genuine norm-fibre Abel/partial-summation transport.
- `TauCeti/NumberTheory/ArithmeticDirichletSeries/Prime/PrimeIdealTheorem.lean`
  blob `acbca9690104510528407c572dbf35238484f8a0`:
  `primeCount_univ_isEquivalent_div_log K` at the
  number-field prime-ideal scope. Specializing to
  ordinary rational primes requires a PROVED K=ℚ
  ideal/rational-prime correspondence and pin adapter.
- `TauCeti/NumberTheory/LSeries/Newman/Tauberian.lean`
  blob `93bd3541aa5ec163ea70615170d3005d289f6f4e`:
  Newman's bounded-Laplace theorem under actual
  holomorphic extension across the closed right
  half-plane. No such extension for an RH-strength
  original Möbius source is supplied by that theorem.

The project roles, accepted theorem versus hypothesis,
and version differences prevent claiming a direct
Lean import or RH result. This increment uses the
ordinary, independently established prime-count
estimate; no Tau Ceti code was copied or imported.

## 2. A genuine scope improvement: the near-critical prime cutoff

The preceding GRWTSK original-source two-variable
Abel-Mertens theorem states for each finite prime bank P,
and each original rough/matched tag a,b,
  |D_ab(X,epsilon,P)| <=
    4 log(2) H_(P,A)(X)^2/X
    +(4 floor((2X)^(epsilon/2))+2)(log(2X))^2
at T=log(2X), where 0<epsilon<2 and
  H_(P,A)(X) =
   4 C_A (1+2^A W_P) X/(1+log X)^A
   +2^(7/4) V_P X^(3/4).

Here
  W_P=prod_(p in P)(1-1/p)^(-1),
  V_P=prod_(p in P)(1-1/sqrt(p))^(-1),
and C_A is the genuine classical unconditional
Mertens log-power constant, independent of X and P.
All original source indices, signed μ coefficients,
both mixed orientations, squareful zeros and the
original additive Putnam mask remain untouched.

The earlier uniform growing-bank corollary used a
coarse integer-comparison bound
`V_P <= exp(8 sqrt(Y))`; it reached only
`Y=(1+log X)^theta` with `theta<2`.

**New mathematical theorem.** Fix real alpha with
0<=alpha<2 and write
  L=1+log X, D=log L,
  Y_(X,alpha)=L^2 D^alpha.
For every target beta>0 and every 0<epsilon<2,
there is C_(alpha,beta,epsilon)>=0 such that
for EVERY integer X>=2, EVERY finite bank P_X
of actual primes all <=Y_(X,alpha), and EVERY
ordered tag pair a,b in {rough,matched},
  |D_ab(X,epsilon,P_X)| <=
    C_(alpha,beta,epsilon) X/L^beta.

The constant is independent of BOTH the growing X
and the otherwise arbitrarily selected prime bank,
including its size and individual primes. It is a
proper extension of theta<2 and includes the
critical pure-square boundary Y=L^2 at alpha=0.

## 3. Independent complete analytic argument

We use only the ordinary unconditional Chebyshev
prime-count upper bound
  pi(t) <= C t/log t (t>=2),
which is weaker than the prime number theorem.
For Y>=16 let
  S(Y)=sum_(p prime,p<=Y) p^(-1/2).
Discrete partial summation yields
  S(Y)=pi(Y)/sqrt(Y)
        +(1/2) integral_2^Y pi(t)t^(-3/2)dt.
Split the integral at sqrt(Y). By counting ALL
positive integers on the first subinterval,
  S(sqrt Y)<=2 Y^(1/4).
On the second, log(t)>=log(Y)/2 and
  pi(t)<=2 C t/log(Y), giving
  sum_(sqrt Y<p<=Y) 1/sqrt(p)
  <= C sqrt(Y)/log(Y)
       + (C/log Y) integral_(sqrt Y)^Y t^(-1/2)dt
  <= 3 C sqrt(Y)/log(Y).
After enlarging constants for the first interval
and bounded Y, obtain for some universal K>0,
  S(Y) <= K sqrt(Y)/log(Y) (Y>=16).

For each p>=2, x=p^(-1/2)<=1/sqrt(2) and
  -log(1-x) <= x/(1-x) <4x.
Therefore for ANY subset P of the primes <=Y,
  log V_P <=4 S(Y) <= 4K sqrt(Y)/log(Y).
The bound is uniform in the chosen bank.

For Y=L^2 D^alpha with alpha>=0 and D>=1,
  sqrt(Y)/log(Y)
    = L D^(alpha/2)/(2D+alpha log D)
    <=(L/2)D^(alpha/2-1)=o(L)
because alpha<2. Hence for every rho>0,
eventually in X,
  V_(P_X)<=X^rho
UNIFORMLY for all qualifying P_X.
Taking rho=1/8 preserves the smaller-prefix
term V_P X^(3/4)<=X^(7/8).

The elementary previous W_P<=Y^2 bound still gives
  W_P <= L^4 D^(2alpha) <= L^5
eventually. For any desired gamma>0 select the
independently available Mertens exponent integer
A>gamma+5. It follows that
  H_(P_X,A)(X) <= C_(alpha,gamma) X/L^gamma
for all sufficiently large X, uniformly in P_X.
The V_P X^(3/4) remainder also fits the bound
because X^(7/8)=o(X/L^gamma).

Choose gamma>beta/2 and substitute in the
genuine TWO-SIDED original Gram estimate.
The original sparse+diagonal allowance
  O(X^(epsilon/2)*(log X)^2)
is o(X/L^beta) for fixed epsilon<2.
Thus the stated result follows for sufficiently
large X. Enlarge C for the finitely many small
integer X (even when some banks are empty).
Every quantifier is preserved.

No RH-strength assumption, random sign independence,
indefinite Gram positivity or mass cancellation
assumption was introduced. This is a strict
asymptotic bank-uniformity improvement of an
exponent-ONE logarithmic saving; summing global
unbalanced rectangles still requires a NEW
independent arithmetic estimate.

## 4. Exact source proof candidate and hostile controls

`GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense`
now contains:
- `moebiusReal_not_completely_multiplicative`
  and `no_complete_weight_represents_moebiusReal`
  as explicit lean source proof candidates. They
  use original μ(2)=-1, μ(4)=0 and show directly why
  Tau Ceti's unitary ideal-weight cancellation cannot
  be directly substituted for this original coefficient.
- `nearCriticalPrimeCutoff`: literal L^2 D^alpha.
- `NearCriticalPrimeBankDenseTarget`: complete
  mathematical target with independent universal
  bank and X quantification and full RR/RM/MR/MM.

The last item is a DEFINITION OF A PROP with no proof
term. Its analytic derivation is this review; its
Lean formalization requires the quantitative
Chebyshev-to-prime-reciprocal-root supplier,
classical Mertens log-power port, finite P-smooth
convolution, two genuine Abel factors, original
interval-integral interchange and sparse/diagonal
partition. None is silently treated as a theorem.

Hostile case: the original μ(2)²=1 but μ(4)=0;
a completely multiplicative weight that represents
the original source everywhere would make 0=1.
Another hostile case: alpha=2 gives
sqrt(Y)/logY of order L, NOT o(L), so the
near-critical proof with arbitrary alpha=2
has no surviving small-power allowance.
alpha>2 is not admitted. Dropping either mixed
orientation changes the exact source. PNT without
the independent Mertens bound does not supply
both coefficient-prefix savings.

A direct finite diagnostic checked 5 finite
banks (empty, {2}, {2,3}, {2,3,5}, {7,19})
against the exact P-smooth divisor Möbius
convolution at n=1,...,256: 1,280 exact-integer
identities PASS. This is not an asymptotic
Chebyshev/Mertens proof, and is not Lean acceptance.
Small-scale Euler factors may be large:
the near-critical constant is EXISTENTIAL and
can be ineffective for practicable X.

## 5. Verification, consumer and next missing step

Original GRWTSK source `MoebiusBalancedTwoSidedPNTDense.lean`
previous blob `c7f6af004ebffbf78807c78eb267825d4a81dde5`,
original response and prime-bank tags unchanged.
Math main exact publication SHA and new blob to be
confirmed through an expected-head non-force lease.
Pinned GRWTSK Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
TauCeti Lean v4.36.0-rc1, DeepMind Formal
Conjectures Lean v4.33.1. No cross-version
Lean import has been attempted.

Local Lean parser, compiler, expected-type check,
fresh kernel replay and transitive axiom audit
are NOT_RUN. Direct TauCeti/GDM independent
kernel replay is NOT_RUN. Exact mathematical
consequence proved analytically from classical
Chebyshev and Mertens inputs; new local
NearCriticalPrimeBankDenseTarget proof term OPEN.

The source consumer remains the complete
`DenseLongGapAllRateOn G` with one fixed
affinely frequent G. The all-positive-rate
globally aggregated long-distance source and
RH remain OPEN. Next bounded mathematical
formalization: source-check a finite
prime-count-to-bankSquareRootWeight envelope,
then close P-smooth convolution and the two
signed causal-Abel prefixes in Lean. Do not
treat progress on those proof components as a
bound on unbalanced/global dense sectors.
