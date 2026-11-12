# From actual Weil height limits to the unordered signed zero sum

Author: grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M41 (primary), 11M26, 30E20, 40A05.
Coordination: grwtsk/math#1801, scope comment 6829493093.

## Scope and evidence

Inspection source: `grwtsk/math@6f7d2e3b6d15f0d2c49aaba984af27c48786943c`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This increment identifies an existing contour limit with the unordered signed
zero sum. It does not define that sum by the contour limit. Six Lean source
candidates have explicit proofs and adjacent individual provenance. Their
elaboration, imported dependency builds, fresh kernel replay, transitive axiom
audit, numerical certification and independent analytical review are NOT_RUN.
Originality is UNASSESSED. No new framework or root dependency is introduced.

The formal all-height counting bound is still a hypothesis. Section 2 below
supplies its exact constants as a WRITTEN consequence of the preceding written
Jensen proof WMED-v1-5. Neither that Jensen argument nor its constant has been
formalized by this file. Therefore the formal result is conditional on counting,
while the combined written argument is unconditional. Publication is not formal
acceptance, including for any imported local source candidate.

The result returns to the unchanged continued L-function and its actual analytic
multiplicity. It is a contour version of the explicit formula, not yet the
root-source evaluation of that contour integral as the physical form (W).
No positivity, universal certificate existence, RH or GRH is concluded.

## 1. Source definitions and the endpoint

For primitive chi of conductor q>=1, f in C_c^infinity(R;C), and
supp(f) contained in [-A,A], define in this exposition only

    M_f(s) = integral f(x)*exp((s-1/2)*x) dx,
    C_f(r) = integral conjugate(f(x))*f(x+r) dx,
    W_f(s) = integral C_f(r)*exp((s-1/2)*r) dr,
    rho^sharp = 1-conjugate(rho).

These are the existing canonical integrals, not new Lean arithmetic objects.
WZSR-v1-02 proves literally, for every complex s,

    W_f(s) = M_f(s)*conjugate(M_f(1-conjugate(s))).        (1)

The existing plus-Fourier source return proves this after substituting
z=-i(s-1/2). The two exponent identities are

    i*z = s-1/2,
    i*conjugate(z) = 1-conjugate(s)-1/2.

They also hold at s=0 and s=1. Compact support and L1 integrability are sufficient
for this adapter; no RH, evenness, reality or simplicity restriction occurs.

Put s_t=2+it and let a be the actual character parity. The maintained right-line
integrand, not a substitute physical Weil form, is

    I_chi,f(t) = log(q)*W_f(1-s_t)
      +(W_f(s_t)+W_f(1-s_t))*(-log(pi)/2+psi((s_t+a)/2)/2)
      -W_f(s_t)*sum_(n>=1) chi(n)*Lambda(n)*n^(-s_t)
      -W_f(1-s_t)*sum_(n>=1) chi^(-1)(n)*Lambda(n)*n^(-s_t).

Both series are genuinely absolutely convergent on Re(s_t)=2. All prime powers,
character phases and ramified-prime omissions remain. In particular the second
leg uses the INVERSE character, not a silent relabeling by chi. The conductor
term is on the reflected leg because of the maintained completion convention.

The endpoint of WZSR-v1-04--05 is

    sum_rho m_chi(rho)*M_f(rho)*conjugate(M_f(rho^sharp))
      = (1/(2*pi))*integral I_chi,f(t) dt
        +delta_chi*(W_f(0)+W_f(1)),                       (2)

where the sum is over ALL distinct open-strip zeros of the continued source,
weighted by analytic multiplicity. It is absolutely convergent, not merely a
symmetric-height summation prescription. The integral is also absolutely
convergent by the existing `integrable_weilRightArithmeticIntegrand` theorem.
That integrability is not supplied as a new unexplained premise here.

For q=1 the source is literally zeta. WZSR-v1-06 expands the integral as

    I_zeta,f(t) = (W_f(s_t)+W_f(1-s_t))
       *(-log(pi)/2+psi(s_t/2)/2-sum_(n>=1) Lambda(n)*n^(-s_t)),

and retains W_f(0)+W_f(1). By (1) these two terms sum to
2*Re(M_f(0)*conjugate(M_f(1))). They are NOT a nonnegative square.

## 2. The exact global count supplied by the preceding written local count

WZSR-v1-07 (WRITTEN, not a new Lean declaration). The preceding source-local
[WeilMellinEnergyDecay.md](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilMellinEnergyDecay.md),
WMED-v1-5, proves

    n_chi(t,t+1] <=108*log(q*(|t|+3))                     (3)

for every primitive conductor q>=1 and every signed real t, with multiplicity,
including a pole-aware removable continuation for conductor-one zeta. Here (3)
is used as a proved WRITTEN supplier, not as a kernel-checked Lean fact.

For H>=2 let m=ceil(H). The 2m disjoint cells

    (j,j+1],  j=-m,-m+1,...,m-1

cover (-H,H). The left endpoint -H is excluded by the canonical strict cutoff;
no boundary zero is lost. If H=m, the zero at -m is correctly outside the head.
If H<m, the entire head lies strictly inside (-m,m]. Central real zeros are
included. Every cell has |j|<=m. Analytic multiplicities are additive on this
finite disjoint partition. Thus

    heightCount_chi(H) <=216*m*log(q*(m+3)).

Since m<=H+1<=3H/2 and m+3<=H+4<=3H for H>=2, and logarithms are nonnegative,

    heightCount_chi(H) <=324*H*log(3*q*H)
                       =324*H*(log(H)+log(3*q)).         (4)

Consequently the existing root convergence input is supplied by D=324 and
L=log(3q), both nonnegative. The same D works for all conductors and parities;
its conductor dependence is explicitly retained in L. No seven-eighths result
or critical-line-proportion input is used. This finite covering is independent
of any choice of good contour heights or test function.

Equation (4) is NOT silently injected into Lean. The declarations retain

    hcount : forall H>=2, heightCount_chi(H)<=D*H*(log(H)+L).

The written Jensen supplier and this covering step require separate formalization
to remove that hypothesis. Their ordinary validity as written arguments must
not be mislabeled as a completed formal proof or an axiom audit.

## 3. Cofinality, absolute convergence and identification

The canonical `heightWindow chi hprim H` is a Finset of the actual source index
`CriticalStripZero chi`, with membership exactly |Im(rho)|<H. Its finiteness is
already proved from the analytic source and pole-aware conductor-one branch.

WZSR-v1-01 proves a stronger exhaustion statement than merely saying each zero
is in some window. For EVERY finite set S of source zeros, all sufficiently large
H satisfy S subset heightWindow(H). One may take any H greater than the largest
of the finitely many absolute ordinates. The Lean proof builds this eventual
inclusion by Finset induction. Thus

    heightWindow : (R,atTop) -> (Finset(CriticalStripZero chi),atTop)

is a tending-to-atTop map. No enumeration of the zeros is chosen. Multiplicities
remain weights on distinct source locations, not repeated interpolation slots.

WZSR-v1-03 then applies the existing `summable_primitive_correlation_of_heightCount`
with derivative order k=1 and adapts its Fourier coordinate to W_f. The input is
exactly (4)'s formal predicate, together with the canonical admissibility/support
conditions. It produces

    sum_rho norm(m_chi(rho)*W_f(rho)) < infinity.           (5)

The prime/gamma/pole contour chain independently supplies heights T_n with
n+2<T_n<n+3, selected before all tests, and proves

    sum_(rho in heightWindow(T_n)) m_chi(rho)*W_f(rho)
      -delta_chi*(W_f(0)+W_f(1))
          -> (1/(2*pi))*integral I_chi,f(t)dt.             (6)

In particular T_n tends to infinity; monotonicity of T_n is not required.
Composition with WZSR-v1-01 makes these finite windows cofinal among ALL finite
subsets. Add the constant pole term back to (6). Absolute summability (5) makes
the full net of finite sums Cauchy. Its cofinal subnet has the limit in (2), so
the full net has the same limit. The exact pinned Mathlib theorem
`hasSum_of_subseq_of_summable` performs this last step.

This is WZSR-v1-04. WZSR-v1-05 applies the exact termwise adapter (1), not
polarization or a positive square model. WZSR-v1-06 repeats the same argument
using the already expanded zeta full-line theorem; no principal-character pole
is inferred from an unsupported entire-function branch.

A consequence is independence from good heights: after (5), ANY tending-to-infinity
height family gives the same zero-sum limit, whether monotone or not. More
generally every cofinal finite-subset net does. This does not make an arbitrary
noncofinal collection a complete zero enumeration.

## 4. Consumer and remaining source return

Equation (2) turns the previous full-line limit into an actual signed HasSum
statement on the original zero divisor. The tail estimate WMED-v1-6 can therefore
be used as an error bound for this contour endpoint, not just for an abstract
unidentified series. The whole-tail coefficient remains

    tau(q,A,b,T)=432*A*exp(2*A*b)*(2*log(4*q*T)+1)/T.

The unconditional written branch has b=1/2. Higher modulation still pays the full
derivative energy and increasing support still pays exp(A). No uniform L2 error
or all-window positivity is inferred.

During preparation, main advanced to
`c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3`. The concurrent
`WeilPrimeLineEvaluation.reflected_prime_line_eq_twistedPrime` in
[WeilPrimeLineEvaluation.lean](WeilPrimeLineEvaluation.lean), blob
`0c7338b32fdd2b103f331e3a4f6dcaad6c627c44`, now supplies the reflected
prime-leg evaluation as a separate source candidate. It is preserved, not
duplicated. Its weight is the REFLECTED correlation C_f(-r), whereas this
increment's weight is C_f(r). The convention adapter must therefore actually
be composed before identifying equal-looking character labels.

To finish the root-source physical form (W), assemble that prime evaluation
with the exact orientation adapter and the gamma integral evaluation, retaining
the conductor and both poles. The new theorem does NOT assert that remaining
assembly or the inequality (P). The comparison from the inspection pin to the
refreshed base showed no changes to the direct imported modules or new paths.

The canonical final consumer remains
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`,
with `modOne_criticalStripStatement` for zeta. It still requires full-domain
actual-source negative-witness detection and arithmetic nonnegativity. A zero
sum's convergence and a contour identity are neither of those sign suppliers.

## 5. Source comparison, scope of checks, and hostile cases

Relevant mathematical source at the inspection pin:

- `WeilPrimitiveZeroMoment.lean`, blob
  `bd369e32bb84f7ef4c8f4eaea7b56ccd902e362c`: actual-source absolute convergence
  conditional on all-height count. It is reused, not duplicated.
- `WeilVerticalLimits.lean`, blob `093765bad5c2aa68b057700be8e70a85a9472356`:
  integrability and source-selected limits for primitive characters and zeta.
- `WeilFiniteArithmeticLine.lean`, blob `b5e873e739babb4b0b071375633fbf889ceecd94`:
  literal right-line integrand and dt/(2*pi) normalization.
- `DirichletZeroMultiplicity.lean`, blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d`:
  exact index, analytic multiplicity, finite windows and membership.
- `WeilContourWeight.lean`: entire actual correlation weight and its reflected
  plus-Fourier product; no modulus-square replacement.
- The preceding `WeilMellinEnergyDecay.md`, blob
  `12bda1d7ceddfc0b07cfea623518524aca1f6908`: written Jensen and infinite tail.

Primary API source: Sebastien Gouezel, Heather Macbeth, Johannes Hoelzl and
Yury Kudryashov, Mathlib `Analysis/Normed/Group/InfiniteSum.lean`, revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`, blob
`8d025095fe1651bee64c5e50b94011c5640e4139`,
[`hasSum_of_subseq_of_summable`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/InfiniteSum.lean).
This is an existing general theorem. The increment supplies its actual source
cofinality, absolute convergence and contour-limit premises. No new general
summation theory, independent proof or prior-art novelty is asserted. The local
proofs are consequences of maintained source, not a newly claimed direct paper
formalization. Individual records map each declaration and retained hypotheses.

Hostile checks:

1. A selected grouped limit need not be an unordered sum. On the synthetic index
   N x {+,-}, assigning +1,-1 at the same height gives zero in every paired height
   window, but the positive-only finite subsets have unbounded sums. That is not
   an arithmetic counterexample. It tests the necessity of (5).
2. Cofinality does not require monotone good heights. Conversely pointwise
   coverage without eventual finite-set containment is insufficient. The proof
   constructs the stronger eventual containment directly.
3. The height cutoff is strict. Real zeros and exact integer-height zeros are
   retained by the finite cover used in (4); no nonreal-only assumption appears.
4. At nonreal spectral coordinates the two centered-Mellin factors need not be
   conjugates at the same point. Both factors and analytic multiplicities persist.
5. Conductor one is not treated as a nonprincipal entire L-function. Both poles
   are restored to (6), and their sum can have either sign.
6. Summability is an all-height statement, not existence of a finite bound for
   each individual window. The formal hcount and the written argument are kept
   visibly separate. No proof-equivalent cancellation assumption is introduced.

Analytic derivation was written and checked in this session; genuinely independent
analytical review is NOT_RUN. Text/hash checks are not Lean parsing or a transitive
axiom audit. Proposed exact-source verification, NOT_RUN:

    lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilZeroSumReturn.lean

Before covered execution, the current canonical proof skill must be accessible.
It returned404 at Noe `3a22e1022074ecc99d5cdeaabeb5dc919711a55b` in this session.
Dependent proof execution was stopped; no runtime, workflow or scheduler was
invoked. Ordinary source publication is separately authorized. No verification
status of imported candidates or historical failures is promoted here.
