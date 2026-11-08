# Original Möbius signed endpoint: fifth-power Mertens spike and strict-rate equivalence

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Mathematics: an unconditional original-source fifth-power **lower** inequality and a proved mathematical fixed-rate equivalence; neither proves a strict endpoint **upper** saving or the Riemann Hypothesis.
Formal assurance: finite arithmetic Lean SOURCE_PROOF_CANDIDATE; the fifth-power integral and rate equivalence are written real-variable proofs, named as UNPROVED Lean Prop targets. Parsing, compilation, exact types, fresh kernel replay and transitive axiom audit NOT_RUN.

## 1. Exact original definitions and source identities

Original module `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`, defines the actual real Möbius coefficients, closed integer Mertens prefix, physical velocity, primitive and cumulative energy. Denote, for x>=1 and u,T>=0,

    M(x) := sum_(1<=n<=floor x) mu(n)
    V(u) := exp(-u/2)*M(exp u)
    F(u) := integral_0^u V(v)dv                 [actual wholePickup]
    H(T) := integral_0^T F(u)^2du              [actual pickupEnergy].

Every coefficient is the TRUE Möbius coefficient: |mu(n)|<=1, mu(n)=0 when n is not squarefree. The exact full physical signed Gram and endpoint are

    H(T)=D(T)+X(T),     0<=D(T)<=2*T^2,
    |E(T)-X(T)|<=1/4,  E=endpointSum,

from `GoodScaleEnergyCriterion.lean` blob `ca3ae4975b20cf796a167308a9e87546c6001c41` and `PickupEndpointQuadrature.lean` blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`. X retains the complete ordered off-diagonal sum; the diagonal and the signed curvature defect are not silently removed. The existing `MoebiusCausalMertensSquareBridge.lean` blob `be156509d9679a22b52b32d087f87d8449a047ef` supplies an exact finite Mertens-Abel identity and the genuine source prefix `finiteMertensPrefix`. The new finite shift theorem uses that exact prefix.

## 2. Unconditional arithmetic persistence: a large Mertens sum cannot vanish immediately

For every integer N>=1 let m=|M(N)|. The original exact finite increment identity and |mu(n)|<=1 give, for every real x>=N,

    |M(x)-M(N)| <= floor(x)-N <= x-N.           (1)

Thus 0<=m<=N, and on the entire interval

    N <= x <= N+m/2,                            (2)

M(x) has the same sign as M(N) (if m>0) and |M(x)|>=m/2. No independence, prime distribution, average, randomization or RH premise is used. The Lean source writes a finite arithmetic theorem candidate

    finiteMertensPrefix_shift_abs_le (N k):
    |M(N+k)-M(N)| <= k,

without changing the underlying definition or any birth position. Formal compilation remains NOT_RUN.

## 3. The genuinely local fifth-power energy theorem

**Theorem (unconditional written mathematical proof).** For every integer N>=1, the ORIGINAL pickup obeys

    H(log(N+m/2))-H(log N) >= m^5/(1944*N^4),  m=|M(N)|.    (3)

In particular, since N+m/2<=3N/2<=2N,

    H(log(2N)) >= |M(N)|^5/(1944*N^4).                     (4)

**Proof.** For m=0 both claims follow from the nonnegativity of the original square-integral. Assume m>0. Set a=log N, b=log(N+m/2), L=b-a>0. For u in [a,b], (1)-(2) imply that V(u)=exp(-u/2)M(exp u) has one constant sign and

    |V(u)| >= (m/2)/sqrt(N+m/2) >= m/sqrt(6N) =: v.       (5)

Here m<=N was used to replace N+m/2 by at most 3N/2. The source's true F is absolutely continuous and F(t)-F(s)=integral_s^t V(u)du. Therefore every pair a<=s<=t<=b satisfies

    |F(t)-F(s)| >= v*(t-s).                               (6)

The classical variance identity, valid for any square-integrable real F on an interval of length L, is

    integral_a^b F(t)^2dt
      >= (1/(2L)) integral_a^b integral_a^b
            (F(t)-F(s))^2 ds dt.                          (7)

This follows by expanding the square and dropping the nonnegative square of the interval average. Using (6) gives

    integral_a^b F(t)^2dt >= (v^2/(2L)) *
                integral_a^b integral_a^b (t-s)^2 ds dt
                            = v^2*L^3/12.                (8)

For z=m/(2N) in (0,1/2], log(1+z)>=z/(1+z)>=m/(3N); hence L>=m/(3N). Combine with v^2=m^2/(6N):

    integral_a^b F(t)^2dt
       >= [m^2/(6N)]*[m^3/(27N^3)]/12
        = m^5/(1944*N^4).

This integral is EXACTLY H(b)-H(a) because a>=0. Monotonicity of the original cumulative energy gives (4). QED.

The proof is local in physical time and does NOT rely on zeta analytic continuation or an assumed cancellation of the complete endpoint. The source comparison is unchanged. The fifth power is the quantitative price of a length-m arithmetic persistence interval together with the pickup's additional integration.

## 4. An explicit reverse implication from the ORIGINAL dyadic endpoint

Fix 0<rho<1 and suppose, **hypothetically**, that for all sufficiently large j, with a single C>=0,

    E(j log 2) <= C*2^(rho*j).                             (9)

This is the actual missing strict endpoint upper bound, not an assertion proved by this paper. Choose j for each N so that 2N<=2^j<4N and put S=j log2. Then S>=log(2N), S<log(4N). By (4), cumulative-energy monotonicity, the exact complete ordered Gram identity, the genuine diagonal and the single quarter-unit error,

    m^5/(1944 N^4)
      <= H(log(2N)) <= H(S)
      = D(S)+X(S) <= 2*S^2+E(S)+1/4.                     (10)

Since exp(rho S)>= (rho S)^2/2 for S>=0,

    2*S^2 <= (4/rho^2)*exp(rho S),
    1/4   <= (1/4)*exp(rho S).

Therefore, whenever (9) applies to j,

    |M(N)|^5
      <= 1944 *4^rho*(C+1/4+4/rho^2)*N^(4+rho),          (11)

and hence

    |M(N)| <=
      [1944 *4^rho*(C+1/4+4/rho^2)]^(1/5) *
        N^((4+rho)/5).                                   (12)

An eventual (9) gives eventual (12); finitely many initial N are absorbed by enlarging the constant. Since (4+rho)/5<1 for every rho<1, every strict fixed-rate endpoint bound on the SAME fixed covering dyadic G would already force a genuine Mertens power saving. No pointwise Mertens bound was ASSUMED in proving this direction.

The lower source obstruction can equivalently be stated without (9), for every N and S>=log(2N):

    E(S) >= |M(N)|^5/(1944*N^4) -2*S^2-1/4.             (13)

This is a necessary arithmetic spike certificate for the COMPLETE signed endpoint, not an asserted upper estimate. Its validity is unconditional subject to the already written source endpoint/Gram identities.

## 5. The other direction: a source-exact fixed-power Mertens saving would suffice

Conversely, assume as a separately named and UNPROVED fixed-rate arithmetic hypothesis that for some 1/2<theta<1 and B>=0,

    |M(x)| <= B*x^theta, x>=1.                            (14)

Because the ORIGINAL velocity is exp(-u/2)M(exp u),

    |F(T)| <= B*integral_0^T exp[(theta-1/2)*u]du
            <= B/(theta-1/2)*exp[(theta-1/2)*T].

Squaring and integrating gives the source-exact upper estimate

    H(T) <= B^2/[(theta-1/2)^2*(2theta-1)]*
               exp[(2theta-1)*T].                        (15)

The complete original signed endpoint satisfies

    E(T) <= H(T)+1/4.                                    (16)

The fixed exponent rho=2theta-1 is strictly between 0 and 1. A hypothesis of M(N)<=B*N^theta for all sufficiently large integer N extends to real x>=1 using M(x)=M(floor x), after absorbing a finite initial segment. Thus (14)-(16) prove the other direction without assuming the endpoint estimate itself.

**Exact qualitative equivalence (mathematically proved):**

    exists 0<rho<1, C, j0 such that
       forall j>=j0, E(j log2)<=C*2^(rho*j)
    IFF
    exists 1/2<theta<1, B, N0 such that
       forall N>=N0, |M(N)|<=B*N^theta.                  (17)

The implications have explicit exponent maps:
endpoint-to-Mertens theta=(4+rho)/5; Mertens-to-endpoint rho=2theta-1. Neither direction supplies its own still-open strict-rate premise. The right side is a fixed-power saving stronger than known unconditional PNT/Vinogradov–Korobov logarithmic or stretched-exponential savings.

## 6. Comparison with earlier work and hostile controls

The prior source comparison `moebius-signed-endpoint-vinogradov-korobov-rate-profile-2026-11-01.md` at main commit cb6edc26f5f6dcb8b8dd1a47996d6d0fe7665802 derived the forward profile transport and an analytic implication from strict endpoint rates to a global zeta zero-free strip. That work DID NOT derive the local fifth-power energy lower bound or its direct Mertens-power reverse implication. The present proof uses ONLY the original arithmetic coefficient one-boundedness, exact real-time primitive and variance; it is independent of zeta zero-free methods for its new reverse inequality. It does not supersede that earlier analytic zero-free implication or the source's conditional RH return.

A hostile all-+1 bounded coefficient sequence has M(N)=N and original pickup energy of exponential rate one; it satisfies the local fifth-power lower bound but not (9). Alternating bounded coefficients have uniformly bounded M(N), giving a small lower certificate without implying that an arbitrary upper bound is automatic. Arbitrary bounded signs satisfy the same persistence lemma; the source fidelity here comes from applying it to the ORIGINAL genuine Mobius M and its original endpoint observation, not claiming a newly discovered arithmetic cancellation theorem.

Independent finite numerical diagnostic: direct piecewise-exact-integration-formula, floating evaluation of the actual causal F^2 over the local interval for each N=1..1200, for true Mobius, all-+1, alternating and three seeded {-1,0,1} random controls. Each of six families passed every nonzero-target inequality; the smallest observed local-energy/lower-budget ratio was about 16.86. These 7200 cases are finite nonrigorous floating diagnostics, not exact interval certification, a proof of (3) or Lean compilation. The proof above is the mathematical evidence.

## 7. Honest formalization and acceptance boundary

New source candidate: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSpike.lean`, with the finite source-shift theorem candidate `finiteMertensPrefix_shift_abs_le` and precisely named **unproved** Lean Props `OriginalPickupMertensSpikeLocalLowerTarget`, `OriginalEndpointFixedRateDyadic`, `OriginalMertensStrictPower`, `OriginalFixedRateEquivalenceTarget`. The latter are explicit future formal verification targets, NEVER axioms, fabricated proofs or completion receipts.

Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Compiler NOT_RUN, exact declaration types NOT_RUN, fresh kernel NOT_RUN, complete transitive axiom audit NOT_RUN. Do not promote into root imports, dispatch a runner or infer proof acceptance. Any future check must bind this exact source blob, the complete import closure and original endpoint/energy dependencies; reject sorryAx, research axioms, unauthorized native/unsafe trust, missing bridge imports and altered signed source cutoffs.

**Next independent arithmetic supplier:** prove a strict fixed-power bound for the ACTUAL Mertens prefix or a genuinely weaker signed endpoint estimate implying it through (12). By (17) this is a fixed-width zero-free-region-strength task. Ultimately every-positive-rate endpoint control is still stronger and RH remains OPEN. The novel contribution relative to the inspected source is the unconditional fifth-power local energy detector and its exact two-way quantitative fixed-rate bridge, not a claim that the open arithmetic saving has been completed.
