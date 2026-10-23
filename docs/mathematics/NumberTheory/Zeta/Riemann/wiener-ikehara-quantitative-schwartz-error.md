# Quantitative Fourier–Schwartz control of the q=1 Wiener remainder

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**
Pure mathematical source belongs to grwtsk/math main; execution and
source-bound proof custody belong to grwtsk/noeaaeue.
This source does not introduce any theorem field or axiom equivalent
to the missing limiting_cor_schwartz theorem.

## Maintained mathematical provenance

Primary maintained formal PNT source:
AlexKontorovich/PrimeNumberTheoremAnd
at commit 127b50e33f6033e2147921167a117af96d9ba4ea;
PrimeNumberTheoremAnd/Wiener.lean
blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.

Relevant original analytic results:
- bound_sum_log' and bound_I1', around 1600–1690;
- bound_I2 and bound_main, around 1690–1730;
- limiting_cor_W21 and limiting_cor_schwartz, around 1730–1825.
The maintained argument first proves a quantitative W21-bound, then
uses a genuine compact cutoff approximation to extend the compact
Fourier limit. A separately chosen constant C_g from individual
Schwartz decay is NOT enough to imply C_(g-g_R)->0.

Local toolchain pin: Lean 4.33.0 with Mathlib revision
db584cd6d46c92f209a44c0f1c829460d327499d.
Maintained primary source uses Lean 4.35.0. No cross-version source
label or proof term is treated as an accepted local Lean theorem.

## Actual quantitative source

Lean source:
GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean

Controls:
GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean

The source is a nontrivial analytic supplier: a single EXPLICIT,
TOPOLOGICALLY CONTINUOUS Fourier-Schwartz error-control expression,
not another existence statement with an uncontrolled constant.

For g in the actual pinned Schwartz space S(R,C), define

    P(g) =
      SchwartzMap.seminorm_R(0,0)(Fourier(g))
       + SchwartzMap.seminorm_R(2,0)(Fourier(g)).

These are genuine Schwartz seminorms, and the Fourier operator is
continuous on the pinned Schwartz topology. The source proves that
P is nonnegative, P(0)=0 and P is continuous as a real-valued
function. Its summands are seminorms composed with a linear map;
in particular the expression is a seminorm mathematically.
The source currently uses a real-valued definition, rather than
registering an additional Seminorm object in Lean.

The two actual seminorm inequalities are, for every real u,

    |Fourier(g)(u)| <= seminorm_R(0,0)(Fourier(g)),
    u^2*|Fourier(g)(u)| <= seminorm_R(2,0)(Fourier(g)).

Adding them gives the pointwise quantitative Fourier decay

    (1+u^2)*|Fourier(g)(u)| <= P(g),

and therefore, with no fitted C_g,

    |Fourier(g)(u)| <= P(g)/(1+u^2).

The source uses the actual pinned SchwartzMap.norm_le_seminorm,
norm_pow_mul_le_seminorm, continuous_fourier, and
schwartz_withSeminorms.continuous_seminorm declarations.

## The arithmetic Fourier sum

Let Lambda_C be the literal pinned von Mangoldt complex sequence,
and retain the zero-safe LSeries.term convention. Define

    S_T(g) = tsum_{n>=0} LSeries.term(Lambda_C,1,n)
              * Fourier(g)(log(n/T)/(2*pi)).

At n=0 the L-series term is identically zero, so the totalized
logarithm cannot introduce a spurious coefficient.

For T>=1 the earlier source wienerLambdaLogKernel_uniform_bound
provides the genuinely nonnegative/summable arithmetic kernel

    K_T(0)=0,
    K_T(n)=Lambda(n)/n /
          [1+(log(n/T)/(2*pi))^2], n>0,

with

    tsum_n K_T(n) <= B,
    B=(log4+4)*(1+2*pi^2).

The earlier wienerSigmaFourierTerm_norm_le identifies the exact
sigma=1 norm and proves, from pinned complex L-series norm
monotonicity, that

    |term(Lambda_C,1,n)*Fourier(g)(xi(n,T))|
      <= P(g)*K_T(n).

The new source establishes genuine absolute summability, applies
norm_tsum_le_tsum_norm and the actual summable majorant, and proves

    |S_T(g)| <= P(g)*B,

for ALL T>=1 with the SAME constant B. No value of T is selected
to fit the test or the error.

## The correct Fourier tail integral

Define

    J_T(g) = integral_{u>=-log T} Fourier(g)(u/(2*pi)) du.

Pinned Schwartz Fourier integrability guarantees existence of this
Lebesgue integral. The source proves its norm is at most

    |J_T(g)| <= P(g)*2*pi^2.

The proof does not infer an integral bound from pointwise decay
alone: it separately establishes integrability of the rescaled
Fourier transform and the comparison Cauchy density. It then
uses setIntegral_mono and setIntegral_le_integral for the
nonnegative Cauchy weight, whose full-line integral equals 2*pi^2
by the already-authored translated/scaled Cauchy integral source.

The lower half-line endpoint remains exactly -log(T), and the
Fourier scale is u/(2*pi), with the original exp(-2*pi*i*t*xi)
character convention.

## Quantitative uniform Wiener remainder

Define the actual arithmetic-minus-pole remainder

    E_T(g) = S_T(g)-J_T(g).

The new source proves the full algebraic/norm bound

    for ALL T>=1,
    |E_T(g)| <= P(g)*M,

where the arithmetic-independent constant

    M=(log4+4)*(1+2*pi^2)+2*pi^2

is nonnegative. Its positivity comes from the same Chebyshev and
Cauchy constants rather than an extra error premise.

Most importantly, P is continuous and P(0)=0. Therefore, for
ANY family of genuine Schwartz errors r_i->0 in the pinned
Schwartz topology, the source authors

    forall epsilon>0, eventually in i,
      forall T>=1, |E_T(r_i)| < epsilon.

The index threshold depends on epsilon and the actual error
family but NOT on T. This proves the precise uniformity required
by the historical compact-to-Schwartz passage.

A further consuming theorem says if any actual sequence g_R->g
in the Schwartz topology is supplied, then E_T(g-g_R) becomes
arbitrarily small simultaneously for all T>=1. This is a valid
reduction from the genuinely stronger Schwartz topology, not a
field asserting the desired limit or an unverified background
construction of the approximants.

## Exactly what remains open

This packet does NOT construct the compactly supported
Schwartz approximation g_R->g. It also does not prove the
compact-test Wiener limit for every g_R. Those are independent,
source-bound mathematical obligations. The remaining minimal route:

1. Construct smooth compactly supported Schwartz cutoff functions
   g_R that genuinely tend to an arbitrary g in the pinned
   Schwartz topology. One expects to use the pinned smooth
   Urysohn machinery and the smooth/rapid-decay product rule.
   Do not merely define an existential approximation premise.
2. Prove the corresponding Fourier remainder is ADDITIVE in g,
   with all Fourier tsum and pole-integral linearity supported by
   genuine absolute summability. Then
   E_T(g)=E_T(g_R)+E_T(g-g_R) holds for all T>=1.
3. Establish the compact-test E_T(g_R)->0 from checked first/second
   finite-sigma Fourier identities, the q=1 closed-boundary
   Riemann-Lebesgue proof, and sigma-downarrow-one Tannery.
4. The new uniform seminorm bound makes the truncation error
   arbitrarily small independently of T, completing the
   actual limiting_cor_schwartz.
5. Replay the new module and all imported source dependencies
   under pinned Lean 4.33 --wfail and trust=0, inspect fully
   elaborated theorem types and transitive axioms. Static source
   commits do not supply kernel receipts.

The newer q=1 boundary, finite-Abel, first/second Fubini,
uniform logarithmic kernel, and sigma Tannery modules are
SOURCE_DRAFT unless separate exact-source kernel receipts
establish their acceptance. The older 19-header Mellin/Fourier
acceptance from human-reported math
a9d81821f5044b1dedcf56523ab491f0ee04dcc8
does not certify new declarations automatically.

PR #965 smooth-to-interval is downstream and independently
unverified. It cannot supply an arithmetic/analytic Wiener limit.

No unconditional PNT, RH, Chowla or Goldbach result is claimed,
and the old false fixed integer-psi quadratic capacity remains
mathematically rejected.
