# The original fixed-bank high-smooth Möbius correction is FINITE

Date: 2026-11-02. Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Evidence: exact source inspection and mathematical derivation;
new Lean SOURCE_PROOF_CANDIDATES. Compilation, expected types,
fresh kernel replay, complete import closure and transitive axioms:
NOT_RUN. No RH claim.

## Discovery: the original Möbius zero is decisive

The preceding source campaign proved high-sector bounds by counting
highSmoothBlock indices, first via high-smooth cofactor cardinalities,
then geometric shell summation and Re(z)>0 weighted Dirichlet mass.
Those arguments are correct as conditional source-derived reductions,
but they count many original indices with coefficient EXACTLY ZERO.

Inspect the ACTUAL existing definitions:

- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  MoebiusHighSmoothDensePairs.lean defines highSmoothBlock B X T as
  original positive source indices n in (X,2X] (clipped at T) carrying
  a divisor d|n with bankSmooth B.primes d and
  nearSquareRootCut(2X) < d. It does NOT require n to be fully smooth.
- MoebiusPrimeSmoothFiniteConvolution.lean defines bankSmooth P d as
  every prime divisor of d belonging to P.
- MoebiusNearSquareRootEulerPrefix.lean defines the EXACT
  nearSquareRootCut(N) = N*exp(-2*sqrt(log N)).
- Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean at the
  pinned revision has moebius_ne_zero_iff_squarefree.
- Pinned Mathlib/Data/Nat/Squarefree.lean has
  Nat.prod_primeFactors_of_squarefree,
  Nat.primeFactors_prod and Nat.prod_primeFactors_dvd_iff.
- Pinned Mathlib/NumberTheory/SmoothNumbers.lean has
  Nat.mem_factoredNumbers' and
  Nat.primeFactors_subset_of_mem_factoredNumbers.

Fix a genuine finite bank B and its integer prime product
  P_B = product_{p in B.primes} p >= 1.
If the ORIGINAL mu(n) != 0, then n is squarefree.
For every divisor d|n, d is squarefree as well. If also bankSmooth B d,
all prime factors of d lie in B, so
  d = product_{p|d}p divides P_B.
Hence d<=P_B.

But a selected original high index must have
  Q(N):=N*exp(-2sqrt(log N)) < d, N=2X.
Therefore a NONZERO original high coefficient requires
  Q(N) < P_B.
These deductions use *the actual squareful-zero coefficient* rather
than dropping squareful source indices from the inventory.

## Explicit finite index cutoff (no asymptotic existence hypothesis)

Let T=log N>=0. The already existing source scalar theorem
MoebiusHighSmoothAllRateProof.two_sqrt_le_linear_rate
with epsilon=1 gives
  2sqrt(T) <= 2+T/2,
so
  Q(N)=exp(T-2sqrt T) >= exp(T/2-2).
If Q(N)<d<=P_B, then necessarily
  T < 4 + 2 log(P_B+1),
hence
  n <= N < exp(4+2log(P_B+1))
         = exp(4)*(P_B+1)^2.

Thus define the explicit finite natural cutoff
  K_B = ceil(exp(4+2log(P_B+1))).
Every selected original n with mu(n)!=0 satisfies n<=K_B.
For all selected n>K_B, mu(n)=0, IDENTICALLY.

This is an unconditional mathematical statement for the ORIGINAL fixed
bank, given the literal source definitions. It is stricter than the
earlier published source count #highShell<=exp(o(T)) and its
Re(z)>0 absolute-mass bound. We keep the larger P_B+1 margin to avoid
borderline integer/real conversion. The sharper paper cutoff
n<exp(4)*P_B^2 also follows when P_B>=1.

Since 2^s>s for every natural s, each high shell with
s>=K_B is made entirely of mu-zero indices; the exact ORIGINAL
signed high shell waveform is ZERO at all physical times u.
Consequently originalHighWave(B,j,u) stabilizes exactly at
originalHighWave(B,K_B,u) whenever j>=K_B. This is not a
square-wave, residue alias, averaged character, or changed source.

## Entire finite Dirichlet polynomial, even for character twists

Let H_B be the union over all ORIGINAL highSmoothBlock shells;
this integer set may be infinite because squareful indices,
e.g. large powers of a bank prime, can remain selected.
Define the ACTUAL high Dirichlet coefficient
  a_(B,n) = mu(n) * 1_(n in H_B).
It is FINITELY SUPPORTED as a coefficient sequence, even if H_B is
not a finite index set.

The source's existing highDirichletSeries was defined as
  D_B(z)=sum_(n>=1) a_(B,n)*n^(-z).
Our result gives the exact finite identity
  D_B(z) =
    sum_(1<=n<=K_B, n in H_B) mu(n)*exp(-z log n)
for EVERY z in C. Thus D_B is an ENTIRE function, not merely
holomorphic on Re(z)>0.

More generally for ANY fixed complex multiplier c(n),
  D_(B,c)(z)=sum_(n in H_B) mu(n)c(n)n^(-z)
is exactly the same FINITE polynomial with c(n) inserted.
No boundedness, orthogonality or multiplicativity assumption is
needed for c, because all selected terms beyond K_B have mu(n)=0.
This directly includes the genuine Dirichlet-character twists from
MoebiusDirichletResidueOrthogonality/Parseval/LargeModulusEnergy.
The new Lean source contains a candidate proof of finite tsum
reconstruction using pinned tsum_eq_sum and a candidate entire
differentiability theorem using Mathlib's Complex
Differentiable.const_cpow for nonzero natural bases.

The prior open positive-halfplane Prop
HighPositiveHalfplaneHolomorphy is discharged as a SOURCE
PROOF CANDIDATE from the stronger entire conclusion, not via
another M-test or arbitrary σ-envelope.

## Strong arithmetic obstruction: LOW is eventually the identical Möbius sequence

Define the genuine fixed-bank LOW coefficient at each positive integer n:
  mu_low,B(n) = 0 if n is in any selected high shell,
                mu(n) otherwise.
The explicit finite K_B proved above immediately gives
  for ALL n>K_B, mu_low,B(n)=mu(n)  [EXACT]
and the identical assertion after multiplication by ANY c(n)n^(-z).
The Lean source includes direct candidate proofs of both statements.

Thus even the PREVIOUS 'full-density LOW' interpretation was
unnecessarily weak: for fixed B, LOW differs from the original mu at
only FINITELY MANY integers, not merely a density-zero set.
Its full RH-strength signed cancellation is not a reduced tail problem
in any substantive asymptotic sense. A new noncircular arithmetic
supplier cannot arise solely by choosing a fixed bank and deleting
the high-smooth source. To remove indefinitely many nonzero atoms,
one would need a genuinely scale-dependent bank or a different
original-source partition, with all growth constants and source
mixed terms reestablished independently.

## Pole and arithmetic interpretation

In the half-plane of absolute convergence Re(z)>1, the full
untwisted Dirichlet source is 1/zeta(z), and the LOW source equals
  1/zeta(z)-D_B(z).
Because D_B is ENTIRE, this provides a meromorphic continuation
of the low source, and its poles and pole orders match those of
1/zeta throughout the complex plane (using the classical
meromorphic continuation of 1/zeta).
One may likewise substitute a fixed Dirichlet-character multiplier
and the corresponding reciprocal L-series on Re(z)>1.

The correction may change zeros of reciprocal functions; it cannot
cancel or introduce poles. These continuation facts do NOT assert
that the original low Dirichlet series converges outside Re(z)>1.
No zero-free conclusion or RH/GRH proof follows.

The decisive arithmetic remains the original signed low-sector
all-positive-rate energy, or an independent zero-free theorem.
The finite high correction cannot supply that cancellation.

## Verification and negative controls

Published source dependencies must remain byte-exact:
- CMOriginalHighSmoothFiniteComplement.lean
  1e7bb50f72c1308d3a241fc72eb822c5b2cdd238
- CMOriginalHighSmoothPositiveHalfplane.lean
  9c34a7ece5b7fe790a3b0f9089b2553a0ac2fdb2
- MoebiusHighSmoothDensePairs.lean
  cef7c06a794cec1cef423c2ebfa3b6d0221087ad
- MoebiusPrimeSmoothFiniteConvolution.lean
  21f38bfe752ab389fc83a7546504509df01ec438
- MoebiusNearSquareRootEulerPrefix.lean
  7039be9c092ec8b8c9bf8d95b338a06dfe7638b2

Pinned Lean 4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
No local Lean executable was found. The NEW Lean scripts are not
kernel-checked; fresh compilation, all #check expected types,
full transitive axiom review and import-closure replay remain NOT_RUN.

Do NOT infer finite high index SETS from finite nonzero COEFFICIENT
support; squareful indices remain in the unchanged actual source.
Do NOT allow B to grow with the shell without redoing the bound,
since then P_B is no longer fixed.
No omitted original signed cross term, altered winding, original
source reinterpretation, false pole-to-series convergence,
root import modification, CI dispatch, external runner or
fictitious kernel acceptance.
