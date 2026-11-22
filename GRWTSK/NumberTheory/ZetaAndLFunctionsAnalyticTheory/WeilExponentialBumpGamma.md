# Complete gamma admission for the original exponential bump

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Source: [WeilExponentialBumpGamma.lean](WeilExponentialBumpGamma.lean).
Suppliers: [WeilGammaCompactCutoffs](WeilGammaCompactCutoffs.md),
[WeilExponentialBumpEvaluation](WeilExponentialBumpEvaluation.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 7 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6989465035).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No numerical sign, determining-test theorem, or RH/GRH proof.
All formal execution and independent review listed below are NOT_RUN.

## Scope correction: gamma integrability was already available

Iteration 6 retained an explicit gamma integrability premise in WEB-1/WEB-2.
The exact current dependency `WeilArchimedeanDomain.lean` ALREADY contains
`gammaCorrectionDensity_integrable_of_contDiff_one`, valid for every natural
parity and every compactly supported C1 complex function. The native primitive
negative-witness consumer already uses it. Thus the missing step was the wiring
of that established source theorem into the explicit bump evaluator, not a
missing general integrability argument in the repository.

This edition records the correction rather than claiming the old theorem as a
new result. WEB-1 and WEB-2 remain unchanged, with their original statements and
evidence histories. EBG-1/2/7 are explicit successors supplying their former
input. No historical claim is silently redefined and no verification is promoted.

## Exact function and unconditional domain

For T>=0 retain the literal function from ExponentialBumpCells:

    f_T(t)=t Phi(T^2-t^2),
    Phi(s)=exp(-1/s) if s>0, and 0 if s<=0,
    g_T=liftReal(f_T),     K_T=1+4T^2.

Phi is the pinned mathlib `expNegInvGlue`, not the totalized bare exponential.
Earlier EBC gives global smoothness, compact support and the endpoint-safe
actual derivative. Since g_T is compact C1, the existing gamma-domain theorem
immediately gives, for EVERY natural a,

    IntegrableOn (gammaCorrectionDensity a g_T) (Ioi 0).       (EBG-1)

For EVERY positive modulus and character chi, and EVERY T>0, this supplies the
last component of the ORIGINAL `Admissible chi T f_T` predicate. Together with
the earlier exact support, oddness, smoothness and L2 facts it gives EBG-2.
Neither primitivity nor a critical-line hypothesis is needed for admission.
The admissibility predicate contains NO arithmetic sign.

## Complete quantitative argument

Inside [-T,T], EBC proves |f_T'|<=K_T. Outside the interval, the exact all-real
derivative formula vanishes because Phi(T^2-t^2)=0. Therefore the derivative
bound is global, including both support endpoints. The real-variable mean-value
inequality gives |f_T(x)-f_T(y)|<=K_T|x-y|. The canonical complex inclusion
preserves this norm, yielding EBG-3 for g_T. No derivative bound is inferred
from samples and no differentiability of a jump is assumed.

For every real s, 0<=Phi(s)<=1: on s<=0 it is zero; on s>0 its exponential
argument is nonpositive. Thus |f_T(t)|<=|t|<=T on the support, and f_T=0
outside. The actual energy therefore satisfies

    E(g_T)=integral_R |g_T(t)|^2 dt <= 2T*T^2=2T^3.            (EBG-4)

This is deliberately coarse but finite and algebraic. It is not the energy of
any quadrature approximant. GCU-1 justifies the supported integral before using
its length; integrability follows from the original compact continuous test.

For any 0<eta<=1<=R, define the explicit allowance

    B_gamma(T,eta,R)
      = (3/4)(2T+1)(1+4T^2)^2 eta^2
        + [16T^3/(1-exp(-2))] exp(-R/2).

Substitute the derived GLOBAL Lipschitz bound and E(g_T)<=2T^3 into GCU-5.
For every natural a this gives

    0 <= integral_(0,infinity) D_a(g_T,r) dr
           - integral_eta^R D_a(g_T,r) dr
      <= B_gamma(T,eta,R).                                 (EBG-5)

The same formula covers both gamma parities, including the gamma component of
conductor-one zeta. This is NOT an identification of their completed arithmetic
forms; the latter retain different signed prime and pole contributions.

For fixed T the displayed allowance tends to zero as eta tends to zero from
above and R tends to infinity. More explicitly, write its two positive
coefficients as A_T and B_T. For T>0 and epsilon>0, choosing

    0<eta<=min(1,sqrt(epsilon/(2A_T))),
    R>=max(1,2 log(2B_T/epsilon))

gives B_gamma<=epsilon by direct substitution and monotonicity of exp.
This is a WRITTEN consequence of EBG-5, not an additional Lean declaration.
The choices depend on T and epsilon and establish no uniformity in an unbounded
support parameter. At T=0 the actual bump is zero; its energy and density vanish.

## Two source-return consumers

EBG-6 is an arithmetic-side cutoff enclosure. Fix a primitive NONPRINCIPAL
character chi, T>0, and 0<eta<=1<=R. Define only for the statement

    V = gammaConstant(q,gammaParity chi)*E(g_T)
        + integral_eta^R D_(gammaParity chi)(g_T,r) dr
        - twistedPrime T chi (n -> correlation g_T (log n)).

Then, for the existing original `primitiveArithmeticValue`,

    0 <= Q_chi(f_T)-V <= B_gamma(T,eta,R).                   (EBG-6)

Proof: subtract V from the unchanged definition of Q_chi. The complete prime
term and genuine gamma constant cancel EXACTLY; apply EBG-5 to what remains.
The prime response in V still contains every active prime power and its actual
character phase. This is not a positive model or an absolute-value substitution.

Consequently an independently certified L<=V<=U would yield
L<=Q_chi(f_T)<=U+B_gamma. A negative U alone would NOT certify a negative
arithmetic value. Neither a certified interval for V nor any sign is produced
here. The finite-lag integral, correlations and constants still need evaluation.
This route does not require zero locations/counts for its gamma cutoff theorem.

EBG-7 reconnects the previous spectral-cell evaluator WITHOUT changing its
error expression or source identity. Its signature is WEB-2 with precisely
the harch argument removed. EBG-1 supplies that argument. It retains:

* the primitive nonprincipal character, all-height counting constants and
  hypothesis, strict native height window, actual zero subset, analytic
  multiplicities, and valid finite-head count ceiling;
* each full-complex zero disk, its two reflected center evaluations, the
  reflected-product cross error, the omitted multiplicity and infinite tail;
* the strict covering cell partition and finite binomial orders for THIS test,
  the Taylor order, moment-table rounding, both polynomial roundings, and
  final-sum rounding.

No count ceiling, root association, rounding bound or universal sign is derived
by deleting harch. The endpoint remains exactly the old primitive arithmetic
value on g_T. Nothing replaces f_T by a step function in the Weil form.

## Individual declaration/provenance records

All declarations below have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`.

| ID | Declaration | Providers and retained domain | Consumer |
|---|---|---|---|
| EBG-1 | `gammaCorrectionDensity_oddExpBump_integrable` | Existing native compact-C1 gamma theorem; EBC smoothness/support and Complex.ofRealCLM; a:N, T>=0. | EBG-2 and EBG-7. |
| EBG-2 | `admissible_oddExpBump` | EBG-1 and unchanged WEB-1; every character at positive modulus, T>0. | Native test admission and future source-local evaluation. |
| EBG-3 | `lift_oddExpBump_global_lipschitz` | EBC actual derivative on and outside support; convex mean-value norm inequality; T>=0, all real x,y. | EBG-5. |
| EBG-4 | `energy_lift_oddExpBump_le` | Actual amplitude bound from the flat exponential and GCU-1; T>=0. | EBG-5. |
| EBG-5 | `gammaCorrectionDensity_oddExpBump_cutoff_error` | GCU-5 and EBG-3/4; every natural a, T>=0, 0<eta<=1<=R. | EBG-6. |
| EBG-6 | `primitiveArithmeticValue_oddExpBump_finiteLag_enclosure` | EBG-5 and literal source subtraction; primitive NONPRINCIPAL chi, T>0. | Arithmetic-side finite-lag evaluation with full omission cost. |
| EBG-7 | `abs_primitiveArithmeticValue_sub_oddExpBump_cells_le` | EBG-1 and unchanged WEB-2, preserving every other signature argument and error term. | Existing signed finite-height certificate chain. |

These are local consequences, not newly claimed formalizations of paper theorems.
All local provider pins below refer to
`300b564894b2c6fe44424ae4a4da9a8170d4c50d`:

* [ExponentialBumpCells.lean](../../MeasureAndIntegration/ExponentialBumpCells.lean),
  blob `4a16a8841d88cc954eed006aa9b21d69db22e4ae`: EBC-3/5/6/7/8 and exact definitions.
* [WeilExponentialBumpEvaluation.lean](WeilExponentialBumpEvaluation.lean),
  blob `bde28e4540501663cbf135dd7df781ce93f9c847`: WEB-1 and WEB-2, unchanged.
* [WeilArchimedeanDomain.lean](WeilArchimedeanDomain.lean),
  blob `4caf30507216472f2686c1398307cf5c27dccf0c`: existing native gamma integrability.
* [WeilConductorFrontier.lean](WeilConductorFrontier.lean),
  blob `ac9bf37f07ef22d7ca75b918baeea3161df028b7`: original arithmetic expression.
* Pinned mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, mathlib contributors:
  `Convex.norm_image_sub_le_of_norm_deriv_le`, continuous linear inclusion,
  and the native `expNegInvGlue` definitions. SmoothTransition.lean authors
  Sébastien Gouëzel and Yury Kudryashov; blob
  `cd24266ad8eb620150d7dd302ea1d6932745c14b`. EBC's existing smooth-glue
  adaptation is reused, not copied or re-attributed.

Comparison dated 2026-11-18: reopened these exact source declarations and
corrected the scope of the earlier gamma-obligation report. Code search was
incomplete, so no absence or novelty conclusion follows. Alternative checks
are elementary algebra/support checks, not independent mathematical review.

## Evidence and open obligations

Lean pin `leanprover/lean4:v4.34.1`; mathlib pin above; both unchanged.
Parsing, elaboration, exact types, builds, fresh kernel replay, transitive axiom
audit, certified evaluation and independent mathematical review: NOT_RUN.
Novelty UNASSESSED. Publication/source identities do not establish these checks.
The required Noe skill returned 404 at
`20f30160f0b9a6c5fa8b85c06a1f2f758a3a2e14`; no dependent execution was dispatched.

OPEN: certified evaluation of the retained finite-lag gamma integral and prime
correlations; outward arithmetic for constants and budgets; actual root-region
association and multiplicity/count certificates for the spectral-cell route;
complete pole-inclusive conductor-one zeta arithmetic return; determining-test
transfer; universal all-character/all-test signed lower bounds. The explicit
bump family is not asserted dense or sufficient for RH/GRH. Gamma admissibility
and error control do not solve the global sign problem.
