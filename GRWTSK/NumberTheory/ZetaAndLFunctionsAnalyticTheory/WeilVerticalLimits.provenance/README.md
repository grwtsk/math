# Absolute vertical integrability and the original Weil full-line limit

Local mathematical direction and source attribution: **grwtsk contributors**.
Date: 2026-11-12 (America/Los_Angeles). Scope: RP-OC-02 and its source-return dependency.
Status: **SOURCE_PROOF_CANDIDATE**. Originality: **UNASSESSED**; no novelty claim.

## Exact source and evidence boundary

Maintained source: [WeilVerticalLimits.lean](../WeilVerticalLimits.lean).
Authoring base: `grwtsk/math/main` at `af9b7a05afbf79d4def070fa96f9091b2f177160`.
Complete base tree: `55ac7b7bcef608632f71835e5b87e13c9b40f965`.
Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Source SHA-256: `40363bf277279c8ab4eaefa095c689d426fe90d6b5d771f589f427ae73dc27f3`.
Coordination: math#1801, scope comment `6820947210`.

This increment consumes `WeilFiniteArithmeticLine.lean`, originally published in
`6edc56d90ee91be66c58d5f80d8954920a9604f7` (receipt `6818013860`). That result
proved a vanishing difference, not separate convergence. This file supplies the
missing absolute integrability and the resulting convergence of the SAME line
integrals, then the SAME original multiplicity-weighted finite zero sums.

No Lean/Lake command was executed. Elaboration, dependency builds, fresh kernel
replay, transitive axiom audit, printed-statement correspondence, independent
analytical review, numerical certification and repository-wide checks: **NOT_RUN**.
Imported candidate statuses do not change. Manual source inspection, text checks
and Git readback are not mathematical acceptance. The canonical proof-automation
skill was re-requested at current Noe main `e8309df2b998cc050e80ca1dffd4a78bb83d9448`:
the required path returned 404. No verified local skill or Lean/Lake executable was
found. Dependent execution was stopped; ordinary source authoring/publication is
separately authorized by the inspected repository policy.

## Unchanged arithmetic endpoint

The targets remain `GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement`
and its existing conductor-one zeta correspondence `modOne_criticalStripStatement`.
They concern the analytically continued `DirichletCharacter.LFunction`, not a
series evaluated outside convergence. Neither target is proved or altered here.
The zero index, multiplicity and finite windows are the existing
`CriticalStripZero`, `zeroMultiplicity` and `heightWindow`. Central/real strip
zeros and arbitrary analytic multiplicities remain allowed.

Fix a positive level N and a primitive chi. Write D_chi for the logarithmic
derivative of the ACTUAL `completedLFunction chi`. There is no inserted N^(s/2).
For the existing admissible smooth compact f, supported in [-A,A], A>=0, put

    C_f(r) = integral conj(f(u))*f(u+r) du,
    W_f(s) = integral C_f(r)*exp((s-1/2)*r) dr,
    s_t = 2+i*t.

The existing `weilRightArithmeticIntegrand` V_chi(W,t) is

    log(N)*W(1-s_t) + (W(s_t)+W(1-s_t))*g_chi(s_t)
      - W(s_t)*p_chi(s_t) - W(1-s_t)*p_(chi^-1)(s_t),

where g_chi(s)=-log(pi)/2+digamma((s+a_chi)/2)/2 and
p_chi(s)=LSeries(n -> chi(n)*vonMangoldt(n),s). All prime powers and complex
phases remain. Its finite integral is exactly

    J_chi(T,W) = integral_{-T}^T V_chi(W,t) dt / (2*pi).

This intermediate complex integral is NOT a newly defined Weil form.

## Complete primary analytical argument

### 1. A genuinely summable prime majorant

Let v(n)=vonMangoldt(n) viewed in C and let

    M = sum_n ||LSeries.term v 2 n|| = sum_{n>=2} vonMangoldt(n)/n^2.

The n=0 term is the original Mathlib zero convention; the n=1 coefficient is
zero. Absolute convergence follows from Mathlib's
`ArithmeticFunction.LSeriesSummable_vonMangoldt` at 2. For every character chi,
including nonunits, |chi(n)|<=1. For Re(s)>=2, coefficient domination followed
by monotonicity of n^(-Re(s)) gives the termwise majorant. Summing gives

    |p_chi(s)| <= M.

The proof uses both summability theorems before comparing sums; it does not use
the default value of a divergent `tsum`. This is WVL-v1-01. No primitivity is
needed at this step, and no finite prime cutoff is introduced.

### 2. A full-complex bound on the actual completed source

On Re(s)>1 the actual completion is analytic and nonzero by the maintained
continued-source/Euler/gamma theorems. Its logarithmic derivative is therefore
analytic there. Composition with t -> 2+i*t is continuous, including t=0.
Compactness of [-2,2] supplies B_chi with |D_chi(2+i*t)|<=B_chi there.

For |t|>=2, the maintained
`norm_logDeriv_gammaFactor_le_horizontal_strip` supplies

    |GammaFactor_chi'/GammaFactor_chi(2+i*t)| <= G*(1+|t|),

where G=`gammaRLogDerivativeConstant` is positive and controls the FULL complex
norm for BOTH actual parities. `logDeriv_completedLFunction_of_nonreal` requires
nonvanishing of the COMPLETED source, which is supplied by
`completedLFunction_ne_zero_right_of_euler`. The exact decomposition and step 1
give |D_chi(2+i*t)|<=G*(1+|t|)+M on the tails. Hence

    K_chi = |B_chi| + M + G + 1 > 0,
    |D_chi(2+i*t)| <= K_chi*(1+|t|) for every real t.

This is WVL-v1-02. B_chi is obtained, not assumed. K_chi is a source-dependent
existence constant, not a computed numerical certificate. No zero-free theorem
inside the critical strip is used.

### 3. The exact dual-source identity

The actual primitive functional equation, already differentiated in
`completedLFunction_logDeriv_dual_right`, gives

    D_chi(1-s) = -log(N) - D_(chi^-1)(s), Re(s)>1.

Combining this with `weighted_completed_logDeriv_pair` gives, for arbitrary W,

    V_chi(W,t) = W(s_t)*D_chi(s_t)
                 + W(1-s_t)*(log(N)+D_(chi^-1)(s_t)).          (1)

This is WVL-v1-03, an identity in C. The second source is chi inverse, not chi.
The entire conductor contribution remains. Both original vertical orientations
were fixed by the consumed finite-line theorem; (1) is not a new orientation
convention. It also proves continuity of V for every entire W.

### 4. An all-point, two-sided integrable majorant

The existing weight-decay supplier, with derivative order k=2 and strip radius
3/2, gives, with x=1+|t| and

    B(f,A) = derivativeL1Cost(f,2)^2 * exp(3*A/2)^2 >=0,

both |W_f(s_t)|<=B(f,A)/x^4 and |W_f(1-s_t)|<=B(f,A)/x^4.
Apply step 2 separately to chi and chi inverse and put

    C_chi = K_chi + K_(chi^-1) + |log(N)| >0.

Since x>=1, (1) and the triangle inequality yield

    |V_chi(W_f,t)| <= C_chi*B(f,A)/(1+|t|)^3.                 (2)

This is WVL-v1-04. The source constant is chosen before EVERY f,A. Its test cost
is explicitly displayed and is not asserted uniformly bounded for varying tests.
The two legs have separate estimates; no cancellation of the two vertical tails
is needed. Because (1+|t|)^3 >= 1+t^2, the right side of (2) is at most
C_chi*B(f,A)/(1+t^2), whose integral is pi*C_chi*B(f,A). Continuity supplies
measurability. Thus V_chi(W_f,.) is absolutely integrable on R: WVL-v1-05.

### 5. Both vertical endpoints and the limit

For ANY sequence T_n -> +infinity, -T_n -> -infinity. The pinned Mathlib theorem
`MeasureTheory.intervalIntegral_tendsto_integral` applied to step 4 gives

    J_chi(T_n,W_f) -> J_chi(infinity,W_f)
      := integral_R V_chi(W_f,t) dt / (2*pi).                 (3)

This is WVL-v1-06. Our pinned theorem has three arguments (integrability and the
two endpoint limits), unlike the older four-argument call in the inspected
Anthropic source. No upstream toolchain or build result is silently inherited.

Now consume `exists_primitive_finite_arithmetic_error_vanishes`. It chooses
T_n with n+2<T_n<n+3 BEFORE all f,A and supplies

    E_n = S_chi(T_n,W_f) - P_N(W_f) - J_chi(T_n,W_f) -> 0,
    P_N(W) = W(0)+W(1) if N=1, otherwise 0.

The height lower bound implies T_n -> +infinity. Adding E_n to (3) gives

    S_chi(T_n,W_f) - P_N(W_f) -> J_chi(infinity,W_f).          (4)

Here S is the unchanged heightWindow sum of zeroMultiplicity(rho)*W_f(rho).
Equation (4), together with absolute integrability, is WVL-v1-07. This repairs
the previous logical gap: convergence of J has its OWN proof before E_n ->0 is
used. Quantifier order is exactly forall primitive chi, exists T, forall f,A.

### 6. Literal conductor-one specialization

At N=1, chi=1, parity zero, log(N)=0 and both character coefficients equal one.
The integrand becomes literally

    V_zeta(W,t) = (W(s_t)+W(1-s_t)) *
      (-log(pi)/2+digamma(s_t/2)/2-LSeries(vonMangoldt,s_t)).

WVL-v1-08 supplies its absolute integrability and

    S_zeta(T_n,W_f) - W_f(0) - W_f(1)
      -> integral_R V_zeta(W_f,t) dt/(2*pi).

The zero type is the existing conductor-one index, whose L-function is literally
riemannZeta by the maintained Mathlib identity. The underlying completion is
completedRiemannZeta. Both negative logarithmic pole contributions survive.

## Quantitative analytical consequence, NOT an additional Lean declaration

Integrating (2) on the two tails, rather than the Cauchy majorant, gives for T>=0

    |J_chi(infinity,W_f)-J_chi(T,W_f)|
      <= C_chi*B(f,A)/(2*pi*(1+T)^2).                        (5)

Indeed each integral of (1+t)^(-3) from T to infinity is 1/[2(1+T)^2]; two tails
and the normalization 1/(2*pi) give (5). Adding the already maintained horizontal
budget gives a complete selected-height error bound for (4). This scalar tail
integration is written mathematics here, not claimed as a checked or new Lean
theorem. Neither C_chi nor its compact-line component is numerically certified.
The sharper logarithmic-gamma / sixth-power estimate discussed previously is
not encoded by this increment; (2) suffices for the convergence obligation.

## Source comparison and individual declaration records

Primary formal sources are the exact imported GRWTSK declarations at the base
above, plus Mathlib at the stated pin: LSeries/Basic (norm_term_le and
norm_term_le_of_re_le_re); LSeries/Dirichlet (von Mangoldt summability, including
its character twist); Analysis/Normed/Group/Bounded (compact continuous bound);
Integral/IntegralEqImproper (whole-line interval limit); and the Cauchy majorant
already imported by WeilContourWeight. This is a classical local consequence of
those sources, NOT a new direct formalization of an external paper.

External mathematical-method comparison: `anthropics/formal-math` at
`16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`zeta23/Zeta23/WeilEF/FullLine.lean`, `tendsto_interval_Fline`, and
`WeilEF/FullLineAssembly.lean`, `full_line_identity`. Those statements use a
separate zero configuration, ZetaSeam, a different vertical-line range and older
Lean/Mathlib pins. Their verification is not verification of this module. No
upstream source is vendored or added as a dependency. No OpenAI seven-eighths
result or Anthropic zero-proportion result enters a hypothesis or import.

- [WVL-v1-01](norm_primeSeries_le_at_two.md): the genuinely summable prime majorant.
- [WVL-v1-02](exists_completed_logDeriv_right_linear_bound.md): full right-line source bound.
- [WVL-v1-03](weilRightArithmeticIntegrand_eq_dual_sources.md): exact dual-source identity.
- [WVL-v1-04](exists_weilRightArithmeticIntegrand_cubic_bound.md): uniform-in-height cubic decay.
- [WVL-v1-05](integrable_weilRightArithmeticIntegrand.md): absolute whole-line integrability.
- [WVL-v1-06](tendsto_weilRightArithmeticIntegral.md): actual two-endpoint limit.
- [WVL-v1-07](exists_primitive_weil_full_line_limit.md): original zero-window consumer.
- [WVL-v1-08](exists_zeta_weil_full_line_limit.md): pole-inclusive zeta consumer.

## Hostile checks and first remaining premises

The proof treats t=0 separately through actual regularity rather than a nonreal
lemma with an unsatisfied premise. It bounds the full complex gamma quantity,
not merely its real part. The inverse-character source and log(N), both pole
orientations, original zero multiplicities, and all prime powers are retained.
The original reflected Fourier product is not replaced by an off-line norm
square. No new winding comparison, contour supplier, source equality, tail
supplier, simplicity assertion or positive-form hypothesis is assumed.

S_n-J_n ->0 alone would be insufficient (S_n=J_n=n); step 4 separately proves
absolute integrability before step 5. A selected-height zero-sum limit is NOT
an unordered absolutely convergent tsum: the multiplicity-weighted summability
and reindexing supplier is still separate. Finite support of the physical test
does NOT authorize a finite prime cutoff before Fourier inversion. Evaluation
of (3) by prime-power inversion and compensated gamma integration, the canonical
chi-inverse arithmetic adapter, and reality/Hermitian correspondence are not
newly supplied by this file. The existing phase adapter retains its scope.

The independent all-test arithmetic lower sign inequality, and the complete
varying-interpolant head/tail margin for negative witnesses, remain unresolved.
This increment proves neither hdetect nor hpositive and does not prove RH/GRH.
No earlier program, framework, registry, root import, dependency pin, policy,
workflow or historical evidence status is changed. Independent review is NOT_RUN;
these hostile checks are author checks only.
