# Original moving-prime bank: exact singleton tail and finite early-shell correction

Date: 2026-11-02. Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Status: mathematically source-bound derivation; new Lean SOURCE_PROOF_CANDIDATES.
COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## 1. Genuine source definitions and the exact cutoff

From grwtsk/math:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusHighSmoothDensePairs.lean:
  highSmoothBlock B X T = balancedBlock X T filtered by
    hasNearMaximalSmoothDivisor B X n
  where a source-selected n has d|n, bankSmooth B.primes d,
  and nearSquareRootCut(2X)<d.
- MoebiusNearSquareRootEulerPrefix.lean:
  nearSquareRootCut(N) = N*exp(-2sqrt(log N)).
- CMScaleDependentPrimeBankWitness.lean:
  for each shell s, chosenPrime s is a genuine prime
    2^s < p_s <= 2^(s+1),
  singletonBank s is the genuine PrimeBand {p_s}, and
  p_s belongs to the ORIGINAL highSmoothBlock with
  moebiusReal p_s = -1.
- CMScaleDependentPrimeFullHigh.lean:
  movingHighShell s = highShell (singletonBank s) s,
  movingHighWave j u is the sum of ALL genuinely selected
  original atoms over shells s<j (not merely p_s).

The original integer index, true mu(n), squareful zero, original
causal pickupResponse(n,u), original dyadic horizon and signed
mixed products are unchanged.

## 2. Exact theorem: full high shell equals singleton from s=5

Set X=2^s, N=2X=2^(s+1), T=log N=(s+1)log2.
The pinned Mathlib source contains
  Real.log_two_gt_d9: 0.6931471803 < log 2
(Mathlib.Analysis.Complex.ExponentialBounds, exact pinned blob
747071091440887040140f84067ad4afd2f4cc4b).
It follows that log2>2/3, so for s>=5,
  T=(s+1)log2 > 6*(2/3)=4.

The EXISTING grwtsk/math scalar theorem
  two_sqrt_le_linear_rate(1,T):
    2sqrt(T) <= 2+T/2
then gives T-2sqrt(T) >= T/2-2 > 0. Therefore
  Q(N)=exp(T-2sqrt T)>1.

Now take ANY genuine n in movingHighShell s. By the original
definition there is d|n with all prime divisors of d equal to
the only bank prime p_s and Q(N)<d. Since Q(N)>1, we have d>1.
Pinned Nat.exists_prime_and_dvd supplies a prime q|d;
bankSmooth {p_s} d forces q=p_s. Therefore p_s|d|n.

But the ORIGINAL source window has
  2^s<p_s,  n<=2^(s+1)=2*2^s < 2*p_s.
Since n is a positive multiple of p_s strictly below 2*p_s,
it follows that n=p_s (pinned Nat.eq_of_dvd_of_lt_two_mul).
The reverse inclusion p_s in movingHighShell s was already
proved by the actual source Bertrand witness. Therefore

  movingHighShell s = {p_s}     FOR EVERY s>=5.      [SINGLETON]

This is a SET equality, not merely equality after multiplying
by mu(n). It is stronger than all previously published
high-smooth SOURCE cardinal upper estimates for this particular
singleton moving-bank schedule.

The complementary early-shell proof candidate is
CMScaleDependentPrimeEarlyShells.lean; it does not substitute a
handpicked source packet for highSmoothBlock.

The new Lean leaf CMScaleDependentPrimeSingletonTail uses the actual
source predicate and those pinned mathematical lemmas, with source
candidate theorem names:
  shell_time_gt_four,
  nearSquareRootCut_gt_one_of_shell_large,
  movingHighShell_eq_singleton_of_one_le_cutoff,
  movingHighShell_eq_singleton.
No finite Euler moments, high-smooth cofactor count or Mertens
cancellation are invoked in the mathematical derivation.

## 2a. Stronger exact description of the five early shells

The same pinned Mathlib source contains
  Real.log_two_lt_d9: log2 < 0.6931471808 < 4/5.
For 0<=s<5, we have 0<T=(s+1)log2<4, hence
  sqrt(T) < 2 and T=(sqrt T)^2 < 2sqrt T.
Therefore Q(2^(s+1))=exp(T-2sqrt T)<1.

In these five shells, the genuine divisor d=1 automatically
qualifies for EVERY original source n: 1|n and 1 is
bankSmooth over any prime set (it has no prime divisors).
The source balancedBlock at the exact dyadic T contains
all n in its original half-open shell. Thus

  movingHighShell(s) =
    Ioc(2^s,2^(s+1))          when 0<=s<5.         [EARLY-ALL]

Together with [SINGLETON], the FULL moving support is
explicitly and completely classified for every shell:
  s=0,...,4: EVERY original n in its dyadic shell;
  s>=5:      EXACTLY the genuine Bertrand prime p_s.

The first five disjoint original intervals cover n=2,...,32,
including every squareful zero. Thus for j>=5, in the
original physical-time source,
  movingHighWave(j,u) =
    sum_(2<=n<=32) mu(n)*pickupResponse(n,u)
    + sum_(5<=s<j) mu(p_s)*pickupResponse(p_s,u).      [EXACT-HIGH]

The same exact identity applies with the genuine Dirichlet
terms mu(n)n^(-z) in place of pickupResponse, for all complex z
and every finite j>=5. No choice of p_0,...,p_4 can change
the first term in [EXACT-HIGH]; it always contains ALL early n.

The new CMScaleDependentPrimeEarlyShells source contains
proof candidates for the Q<1 estimate, d=1 admissibility,
and actual original full half-open source shell equality.
The finite union-of-five intervals to Icc(2,32) is
mathematical interval arithmetic; its dedicated Lean sum
normalization remains a separate acceptance step.

This completely removes the need for any cofactor-count
estimate in describing the chosen moving singleton high source.
The early cutoff is a genuine mathematical seam in the
source predicate, NOT an artificial replacement of the source.

## 3. Complete original moving high wave: five-shell correction

For each shell, define the ACTUAL source difference
  E_s(u) = originalHighShellWave(singletonBank s,s,u)
             - mu(p_s)*pickupResponse(p_s,u).

By [SINGLETON], E_s(u)=0 identically for all s>=5, for
EVERY physical time u. The source is not approximated or
reweighted; before s=5 it may include additional selected integers
with their original signs and zero values.

For every cutoff j define
  P_j(u) = sum_(s<j) mu(p_s)*pickupResponse(p_s,u),
  E_j(u) = sum_(s<min(j,5)) E_s(u).
Then the FULL original changing-bank source obeys EXACTLY

  movingHighWave(j,u) = P_j(u) + E_j(u).           [WAVE]

For j>=5, E_j=E_5 depends ONLY on the original finite shells
s=0,1,2,3,4, so the waveform difference is frozen for all
later truncations and all physical times. The E_5 waveform is
a finite sum of unchanged original causal responses n<=32,
hence is bounded and continuous and eventually constant as
u goes to +infinity.

This removes the need to invoke the fixed-reference
highSmoothCofactorCount_target for the long-range moving-wave
estimate. The genuinely infinite p_s contribution already has
the elementary |mu(p_s)*r_(p_s)(u)|<=2/2^(s/2), whose
complete geometric sum is finite. Adding the finite early
source correction yields a uniform bound on the COMPLETE moving
high wave, without arithmetic cancellation. The previous
movingHighWave_uniform source result can be retained, but
its high-smooth cofactor-count route is no longer mathematically
necessary for this special moving singleton bank.

## 4. Exact finite Dirichlet identity

For any complex z, use the ORIGINAL signed integer term
  a_n(z)=mu(n)*n^(-z).
Define full high shell
  D_s(z)=sum_(n in movingHighShell s) a_n(z)
and prime term a_(p_s)(z)=-p_s^(-z).
By [SINGLETON], D_s(z)=a_(p_s)(z) for all s>=5.

For every finite cutoff j the exact ORIGINAL Dirichlet identity is
  sum_(s<j) D_s(z) =
    sum_(s<j) a_(p_s)(z)
      + sum_(s<min(j,5)) [D_s(z)-a_(p_s)(z)].   [DIR-FIN]

For j>=5 the final bracket sum is the SAME entire finite
Dirichlet polynomial E(z), independent of j.
No artificial coefficient phase, random signs or change in
original integer inventory occurs.

CMScaleDependentPrimeFiniteException contains source-candidate Lean
proofs for [WAVE], [DIR-FIN], and their exact j>=5 returns.
The full infinite-series identity and analytic radial boundary
are declared as OPEN Lean Props rather than asserted as proofs.

## 5. Stronger boundary for the FULL moving-bank correction

The earlier even-shell prime subselector used p_(2s) in
(4^s,2*4^s], giving radial coefficient 1/log4. The complete
moving bank instead contains one genuine p_s per EVERY shell.
For sigma>0, source bounds give
  2^(-sigma)*2^(-sigma*s)
        <= p_s^(-sigma) <=2^(-sigma*s).

Define q_sigma=2^(-sigma) in (0,1). The complete signed
chosen-prime Dirichlet series is
  D_prime(z) = -sum_(s>=0) p_s^(-z).
The nonnegative geometric comparison yields, exactly,
  q_sigma/(1-q_sigma) <= -D_prime(sigma)
                             <= 1/(1-q_sigma).
Since (1-q_sigma)/sigma -> log 2 and q_sigma->1,

  lim_(sigma downarrow0)
      sigma*(-D_prime(sigma)) = 1/log2.        [RADIAL]

Now the COMPLETE moving high series is
  D_full(z)=D_prime(z)+E(z)
for Re(z)>0, because the difference is EXACTLY a finite
early-shell polynomial. E(z) is entire, so
  sigma*E(sigma)->0 as sigma downarrow0.
Consequently
  lim_(sigma downarrow0)
      sigma*(-D_full(sigma)) =1/log2.          [RADIAL-FULL]

This is twice the coefficient of the even-shell prime subselector.
The high Dirichlet series is holomorphic on Re(z)>0 by uniform
geometric bounds on compacta, but [RADIAL-FULL] shows it
cannot extend as a holomorphic function through z=0.

**Do not assert a meromorphic pole at z=0.** This radial
simple-pole-like divergence does not establish a meromorphic
continuation across the boundary. Also the original LOW arithmetic
series may not converge in Re(z)<=1 even if the combined meromorphic
continuation is defined there.

The existing genuine Möbius reciprocal-zeta pole obstruction
within Re(z)>0 is unchanged by subtracting this holomorphic
high correction, and no RH/GRH conclusion follows.

CMScaleDependentPrimeAllShellDirichletSqueeze records proof candidates
for the FINITE all-shell geometric sandwich and cutoff-independent
positive-real mass. The infinite complex analytic, global
reassembly and radial limit are mathematically derived in this
review but remain explicit OPEN Lean props in the new sources.

## 6. Why this advances the research

This distinguishes exact selected-source geometry from a coarse
cofactor-count overapproximation. For this moving singleton
choice, highSmoothBlock has a literal one-prime tail, so the
uniform high contribution is not due to an unexplained cancellation
and not due to a prime-smooth counting conjecture. It is a
finite early correction plus a simple absolutely summable
original prime sequence in the physical 1/sqrt(n) amplitude.

However, subtracting one prime per dyadic shell still removes
only O(log N) nonzero source coefficients below N. The
complement retains nearly all original Möbius atoms and all the
RH-sized signed low-sector arithmetic difficulty. The
construction is a mathematically exact geometric/spectral
reduction, NOT a noncircular proof of RH.

A more substantive arithmetic supplier would need new cancellation
within the actual LOW sequence or a bank/support family selecting
a much larger fraction of squarefree source labels whose signed
wave remains independently bounded. The latter must pay its true
bank cardinal growth and the original HIGH-LOW mixed term.

## 7. Verification and provenance

Mathematical source dependencies (unchanged):
- CMScaleDependentPrimeBankWitness.lean
  blob df1f78eb3750f5b5ab251acfc663d2f8ba4a9442.
- CMScaleDependentPrimeFullHigh.lean
  blob 68b7fa7a65e668c94b07e899a221942b21c5303c.
- CMScaleDependentPrimeDirichletBoundary.lean
  blob dbe78a31c6da5703c316c947954801942e4dd507.
- MoebiusHighSmoothDensePairs.lean
  blob cef7c06a794cec1cef423c2ebfa3b6d0221087ad.
- MoebiusNearSquareRootEulerPrefix.lean
  blob 7039be9c092ec8b8c9bf8d95b338a06dfe7638b2.

Pinned Lean 4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Pinned Mathlib source Real.log_two_gt_d9:
Mathlib/Analysis/Complex/ExponentialBounds.lean
blob 747071091440887040140f84067ad4afd2f4cc4b.
No local lean/lake executable is present in this session.

Every new Lean proof body is SOURCE_PROOF_CANDIDATE, NOT_RUN.
Parser/compilation, expected declaration types, fresh kernel replay,
all-axiom/opaque/native helper audit, import closure and actual Noe
managed verification receipts remain NOT_RUN. The passive acceptance
file is a specification only. No runner, CI, scheduler, root imports,
toolchain pins or foreign repository was changed. Attribution
remains with the relevant original grwtsk authors/contributors.
