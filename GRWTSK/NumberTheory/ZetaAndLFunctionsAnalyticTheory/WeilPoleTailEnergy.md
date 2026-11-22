# Complete omitted energy of the original pole profile

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilPoleTailEnergy.lean](WeilPoleTailEnergy.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PoleTailEnergy`.
MSC2020 primary 11M06; dependencies 42A16, 46C05 and 65G20.
Evidence: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Novelty and exhaustive prior-art assessment: **UNASSESSED**.

## Original source, domains and consumer

For T>0 reuse `FixedWindowSemibounded.sourcePoleProfile T`, namely the
original `primePoleOutput` at zero input and unit scalar pole. It is
sinh(t/2) on [-T,T] and zero outside, with Lebesgue measure and the original
normalization. Reuse `zeroExtendedSine`, `sineCoefficient`,
`sinePoleCoefficient`, and `removeSineHead`; no alternative basis, counting
measure or fitted pole vector is introduced.

The consumer is the negative rank-one pole on an ACTUAL high sine
complement. Its tests are measurable L2 functions supported almost everywhere
in the original window with every first-N sine coefficient exactly zero.
The theorem also applies to the repository's odd tests; oddness of the
TEST is unnecessary for this particular pole estimate. The profile itself
is odd, as required by the original Parseval theorem.

At radius two the source code supplies the complete remaining profile mass
for N=64, and therefore a smaller, source-derived negative-pole charge on
all high tests. Gamma and prime terms are unchanged; this is not a theorem
that the full high block has a positive floor.

## Complete analytical argument

Put b_n = sinePoleCoefficient(T,n), n>=1. The existing integral evaluation
identifies b_n with the original sine coefficient of the profile g_T. The
existing profile norm identity is

    integral |g_T(t)|^2 dt = sinh(T)-T.

Original Parseval gives HasSum(n -> b_(n+1)^2, sinh(T)-T). Splitting an
absolutely convergent nonnegative series after N terms yields

    sum_(n>N) b_n^2 = sinh(T)-T-sum_(n=1..N) b_n^2 =: E_N(T).   (1)

The indexing starts at frequency ONE. N is the number of removed modes;
N=0 includes the full profile. This is an infinite-tail identity, not
an extrapolation from a finite prefix.

Canonical `removeSineHead T N g_T` preserves support, L2 membership and
oddness. Its first N coefficients are zero and every higher coefficient
is unchanged. Apply the existing high-output Parseval theorem to obtain

    integral |removeSineHead T N g_T|^2 = E_N(T) >= 0.          (2)

This establishes the actual physical output-norm interpretation of (1).
No operator-domain membership of this endpoint-discontinuous profile is
claimed: its physical L2 norm is sufficient for the pole functional.
In particular, do not assert that g_T belongs to a translation-slope or H1
class merely because its restriction to the open interval is smooth.

For any supported L2 test f whose first N coefficients vanish, the finite
synthesis pairs to zero, by integrability and finite linearity. Thus

    integral f(t)*sinh(t/2) dt
      = integral f(t)*removeSineHead(T,N,g_T)(t) dt.

The existing integrated-square Cauchy--Schwarz theorem gives

    |integral f*sinh(t/2)|^2 <= E_N(T) integral |f|^2.           (3)

The negative source pole is -2 times the square in (3). Its sign reverses
the upper bound: -2 E_N(T)||f||^2 is a LOWER bound on this pole term.
No gamma/prime term is absorbed into this assertion.

### Rational radius-two enclosure

Reuse the preceding rational endpoints eL<=exp(1)<=eU, both positive.
The exact identities exp(2)=exp(1)^2 and exp(-2)=1/exp(2) give

    mL=(eL^2-1/eL^2)/2-2 <= sinh(2)-2
       <= (eU^2-1/eU^2)/2-2=mU.                             (4)

For the original radius-two amplitudes, already proved bounds give
0<=AL_n<=|b_n|<=AU_n. Squaring nonnegative terms and subtracting the
finite head OUTWARD yields

    tailLower(N)=mL-sum_(n=1..N) AU_n^2,
    tailUpper(N)=mU-sum_(n=1..N) AL_n^2,
    tailLower(N) <= E_N(2) <= tailUpper(N).                   (5)

All endpoints of (5) are finite rational expressions. Given rational
lo<=tailLower(N) and tailUpper(N)<=hi, (2) returns those endpoints to the
actual infinite residual norm. No source sign is an input to the scalar
arithmetic. The lower bound may be negative at extreme precision limits;
that does not contradict E_N>=0. Fixed scalar precision does not provide
arbitrarily small certified intervals at all scales.

For N=64 exact rational arithmetic yields

    0.017355583746 <= E_64(2) <= 0.017355583747.                (6)

Accordingly every supported L2 test with its first 64 sine coefficients zero
obeys

    -0.034711167494 ||f||^2 <= -2 (integral f*sinh(t/2))^2.    (7)

The two decimal endpoints and the multiplier are exact rationals. These are
written mathematical consequences plus unexecuted Lean proof candidates;
the numeral proof of (6) is not a kernel receipt.

## Individual declaration correspondence

- `profile_coefficient`: existing unit-port source coefficient theorem.
- `profile_coefficients_hasSum`: original Parseval plus the exact norm.
- `tail_hasSum`: split the original convergent series, equation (1).
- `removed_profile_mass`: canonical high-coefficient identities and high
  Parseval, equation (2).
- `tailEnergy_nonneg`: nonnegativity of that actual norm.
- `high_moment_eq`: supported pairing and exact low-mode orthogonality.
- `high_moment_sq_le`: integrated-square Cauchy--Schwarz, equation (3).
- `mass_bounds`: positive square and reciprocal orders, equation (4).
- `tail_bounds`: all-mode amplitude bounds and outward finite subtraction, (5).
- `tail_enclosure`: exact rational premises return to the complete norm.
- `high_pole_lower_of_rational_upper`: (3), nonnegative physical mass and
  multiplication by -2 in the correct inequality direction.
- `tail64_arithmetic`: finite rational checks giving (6), not executed by Lean.
- `radius_two_tail64`: transport of (6) to the actual residual norm.
- `radius_two_high64_pole_lower`: original-source consumer (7).

Private profile support/oddness lemmas and square bounds have no independent
acceptance status. Definitions `tailEnergy`, `massLower`, `massUpper`,
`tailLower`, and `tailUpper` name the exact quantities above.

## Pinned dependencies and individual source provenance

Inspection base `grwtsk/math@988cea9d49f5532be085918076c380ed6a400c20`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Local byline is grwtsk contributors.

- [WeilFixedWindowSemibounded.lean](WeilFixedWindowSemibounded.lean), blob
  `becde980e515c1909cdb1d52fa3cdbc1fec1f8a7`:
  `sourcePoleProfile`, `memLp_sourcePoleProfile`,
  `sourcePoleProfile_sq_integral`, `integral_mul_sq_le`.
- [WeilOddSineHeadRemoval.lean](WeilOddSineHeadRemoval.lean), blob
  `2640a927c24095fe38fff1529c2884c66c9256b6`: actual head removal,
  preservation of support/oddness/L2, and low/high coefficient identities.
- [WeilOddResidualParseval.lean](WeilOddResidualParseval.lean), blob
  `b1c60b234fe44c9cb952e1b32c8420f55e6302e9`: `highSine_sq_hasSum`.
  Original full Parseval is `OddSineParseval.hasSum_source_sineCoefficient_sq_ae`.
- [WeilOddPrimePoleOutput.lean](WeilOddPrimePoleOutput.lean), blob
  `15e472b9fa1e7ad7c9d56de19cc4bdc2333cf235`:
  `sineCoefficient_primePoleOutput_zero` and original reflection symmetry.
- [WeilRationalPoleCoefficients.lean](WeilRationalPoleCoefficients.lean):
  `exp_one_bounds`, `amplitude_bounds`, and exact source reduction, with
  their separate Mathlib endpoint provenance and evidence limitations.

This is a local consequence of canonical Fourier/Parseval and pole-moment
identities, not a new external paper formalization. The source convention
comes from the existing CCM arXiv:2511.22755v1 realizations; this increment
does not independently re-establish the completed-zeta explicit formula.
Search/review of the inspected neighboring source files did not supply this
complete high-pole numerical fixture. That is not an exhaustive absence or
novelty claim. Known imported verification limits are preserved.

## Falsification and numerical controls

The source package computes exact rational conditions for N=0,1,4,16,64,
512,2048. For finite arithmetic, individual squared bounds may be rounded
outward to denominator 10^24 before accumulation; each comparison is checked
with integer/Fraction arithmetic. For N=64, the full unrounded rational
sums are also computed and checked directly. This is not an independent
proof of Parseval or of the integral identity.

In particular,

    0.000546485578 <= E_2048(2) <= 0.000546485579.

The tail beyond 2048 is NOT zero. The original next amplitude AL_2049 is
strictly positive; dropping the tail contradicts the source coefficient
bound even before using the total-mass identity. A finite list through mode
2048 therefore cannot itself certify the complete profile norm.

The exact projection is necessary for (3): replacing its coefficients by
uncertain centers requires a separate low-coordinate error allowance.
Approximate head orthogonality is not sufficient for the theorem as stated.
Gamma/prime residuals, full paid matrices, high floors and cofinal windows
retain all prior obligations. No primitive-character transfer is supplied.

Written analytical argument provided. Source-text and exact rational
conditions are checked separately and recorded in math#1837. Lean parsing,
elaboration, exact signatures, fresh kernel replay, transitive axiom audit,
full source evaluation and independent review: **NOT_RUN**. The 64-term
numeral proof may need elaboration or resource repairs. Publication is not
formal mathematical acceptance and no RH/GRH conclusion follows.
