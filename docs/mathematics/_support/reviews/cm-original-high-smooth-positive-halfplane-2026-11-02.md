# Original fixed-bank high-smooth Dirichlet correction: positive half-plane

Date: 2026-11-02. Mathematical direction: grwtsk contributors;
formalization assistance: OpenAI.

Mathematical status: arithmetic-independent derivation from the
**actual** published highSmoothBlock cardinal estimate, plus classical
complex-analysis facts. Lean status:
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## Source identity

Retain unchanged moebiusReal n, the full integer n, and the preexisting
fixed-genuine-prime-bank highSmoothBlock B (2^s)
(log (2*(2^s))). This is the finite set of **original** integers
n in the dyadic shell (2^s,2^(s+1)] that have a genuinely B-smooth
divisor greater than the source's nearSquareRootCut(2^(s+1)).
It is NOT the set of integers wholly B-smooth.
The shells are pairwise disjoint, and n=1 lies in the LOW complement.
The existing highIndexUnion and original low complement are unmodified.
The complete source includes squareful zero Möbius values.

Let a=log 2>0, r=B.primes.card, T_s=(s+1)a. The existing genuine
high-source count candidate in MoebiusHighSmoothCofactorCountProof is
  card(H_(B,s)) <= exp(2*sqrt(T_s))*(1+T_s/a)^r.     [COUNT]

## Arbitrarily small positive exponent counting

Fix a REAL sigma>0. Apply the existing scalar lemmas
MoebiusHighSmoothAllRateProof.two_sqrt_le_linear_rate
and one_add_div_pow_le_exp_rate with epsilon=sigma/2:

  2 sqrt(T) <= 4/sigma + (sigma/4)*T,
  (1+T/a)^r <=
    (1+4*(r+1)/(sigma*a))^r * exp((sigma/4)*T).

Thus, with the explicitly original-source-dependent fixed-bank constant
  D_(B,sigma) =
      exp(4/sigma)*(1+4*(r+1)/(sigma*a))^r,
every original high shell obeys
  card(H_(B,s)) <= D_(B,sigma)*exp((sigma/2)*T_s).     [THIN]

The constant depends on sigma and the FIXED prime bank, not on the
dyadic stage. No global zero-free hypothesis, Mertens estimate,
probabilistic independence or signed cancellation is involved.

The new Lean source contains a candidate proof for [THIN] at precisely
the unchanged highShell source and original time normalization.

## Absolute high-source Dirichlet mass for every sigma>0

For every n in the original shell, n>2^s. Hence
  n^(-sigma) <= 2^(-sigma*s).
It follows that
  sum_(n in H_(B,s)) n^(-sigma)
     <= D_(B,sigma)*exp((sigma/2)*T_s)*exp(-sigma*s*a)
     = D_(B,sigma)*exp((sigma/2)*a)*q_sigma^s,
where q_sigma=exp(-sigma*a/2) lies strictly between zero and one.

The POSITIVE geometric series gives the explicit cutoff-independent bound
  sum_(s<j) sum_(n in H_(B,s)) n^(-sigma)
    <= D_(B,sigma)*exp((sigma/2)*a)/(1-q_sigma).       [MASS]

This bound holds for every fixed B, sigma>0, and every finite dyadic
cutoff j. It is genuinely an ALL-POSITIVE-EXPONENT Dirichlet mass,
stronger than the prior sigma=1/2 bound for the original causal
response. This is arithmetic-free even with the actual Möbius sign:
abs(mu(n))<=1.

The new source has candidate Lean proofs for [THIN], [MASS],
a complex norm estimate for the finite genuine high Dirichlet
polynomial and an exact finite original high+low Dirichlet split.

## Holomorphy and what it does NOT show

Define H_B as the countable disjoint union of all original selected
high shells and
  D_B(z) = sum_(n in H_B) mu(n)*exp(-z log n).

For any compact K contained in {Re z>0}, choose sigma>0 with
Re z>=sigma on K. The [MASS] bound is independent of z in K, and
the Weierstrass M-test gives absolutely and locally uniformly
convergent sums of entire terms exp(-z log n). Thus D_B is
holomorphic on the OPEN HALF-PLANE Re z>0.

The high/low finite splitting uses exactly the original source:
  sum_(n<=2^j) mu(n)n^(-z) =
    sum_(n in highIndexUnion(B,j)) mu(n)n^(-z)
      + sum_(n<=2^j, not highIndexUnion(B,j)) mu(n)n^(-z).

In the original absolutely convergent half-plane Re z>1,
the FULL source is the classical 1/zeta(z) Dirichlet series. The
LOW Dirichlet series therefore agrees there with
  1/zeta(z) - D_B(z).
The RIGHT side meromorphically continues that low series to Re z>0.
Since D_B is holomorphic, subtraction cannot remove, create or
change the order of any poles of 1/zeta in that half-plane.
It follows that low-source singularity exclusion remains as hard
as the ORIGINAL off-line zeta-zero exclusion.

**Crucial qualification:** the formula for the meromorphic
continuation does NOT mean the ordinary LOW Dirichlet series converges
at all points with Re z>0. The low series may be divergent there;
the continuation is a different analytic object beyond its
convergence domain. No RH theorem or individual arithmetic
cancellation bound is proved.

The complex locally-uniform convergence/holomorphic declaration
HighPositiveHalfplaneHolomorphy is an explicit OPEN Lean Prop; the
paper proof above is NOT a fresh kernel receipt.

## Density obstruction

The same [THIN] estimate with sigma=1 gives
  card(H_(B,s))/(2^s)
    <= 2*D_(B,1)*exp(-T_s/2) -> 0.
More strongly, taking any sigma>0 gives the sparse exponent
card(H_(B,s))=exp(o(T_s)). Thus the fixed-bank high sector
occupies a vanishing fraction of each full original shell.
The original LOW complement remains full-density in original
integer labels. The high/low energy equivalence is therefore an
honest analytic reduction, not by itself a substantial
combinatorial thinning of the remaining hard arithmetic source.

## Cross-check against latest independent math routes

- MoebiusDirichletResidueOrthogonality / Parseval /
  LargeModulusEnergy: exact all-character averages kill offdiagonal
  pairs when the modulus exceeds the source cutoff. They do not
  control the original principal or any individual character from
  that average; no arithmetic supplier is silently imported here.
- MoebiusGaussianHeatAbsoluteEnergyStability: exponentially small
  source-preserving Gaussian approximation error for an
  exponentially shrinking heat time; the heated signed-energy
  all-rate supplier remains open. It is independent of [MASS].
- CMOriginalHighSmoothAllRateEquivalence: original unsmoothed
  energy and fixed-bank LOW energy have equivalent all-positive-rate
  bounds; the new half-plane holomorphy explains why the
  source's zero-side singularity obstruction is unchanged.

## Evidence and acceptance

Existing source blobs, all preserved:
- GRWTSK/HarmonicAnalysisOnEuclideanSpaces/
  CMOriginalHighSmoothFiniteComplement.lean
  1e7bb50f72c1308d3a241fc72eb822c5b2cdd238
- GRWTSK/HarmonicAnalysisOnEuclideanSpaces/
  CMOriginalHighSmoothAllRateEquivalence.lean
  57c7b76de27442cd00ccb188ee3e15ece1cab1a3
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  MoebiusHighSmoothCofactorCountProof.lean
  6899657e4ad54cf56fd7e907966d4d9bc2f7f3f8
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  MoebiusHighSmoothAllRateProof.lean
  152e6d7a840240bd2676e02fe36eacf36e0ed5f3

Pinned Lean v4.34.1, Mathlib revision
d13f23b723b8a846827a245b89c10fc7d3f11612.
The new source proof candidates and passive acceptance file must
undergo clean import and actual native compilation, expected types,
fresh kernel replay, axioms and opaque/native helper audit before
being called formally verified. Actual source graph and the
original RH arithmetic supplier remain separate.

No source coefficient, causal response, integer inventory,
squareful-zero value, entire-prime-bank quantifier, original
signed cross term, root import, toolchain pin or CI/runtime
controller is changed.
