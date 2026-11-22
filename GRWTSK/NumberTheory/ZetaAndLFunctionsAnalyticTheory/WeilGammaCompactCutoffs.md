# Compact-support cutoffs for the literal gamma density

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 26D15, 65D30.
Source: [WeilGammaCompactCutoffs.lean](WeilGammaCompactCutoffs.lean).
Consumer: [WeilExponentialBumpGamma.lean](WeilExponentialBumpGamma.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 7 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6989465035).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. This is elementary source-specific cutoff analysis, not a
new Weil criterion or a new paper theorem. All formal execution and independent
review below are NOT_RUN.

## Exact source and quantified result

The maintained source is unchanged:

    E(f) = integral_R ||f(t)||^2 dt,
    k_a(r) = exp(-(a+1/2)r)/(1-exp(-2r)),
    D_a(f,r) = k_a(r) E(f(.+r)-f).

Here a is ANY natural number, r>0; a=0,1 are the two Dirichlet gamma parities.
All integrals use Lebesgue measure and the same complex-valued physical test.
For f:C1_c(R,C), assume f(t)=0 when |t|>T, T>=0, and a GLOBAL Lipschitz bound

    ||f(x)-f(y)|| <= K |x-y|  for ALL real x,y.

Let E0 be any genuine upper bound E(f)<=E0. For EVERY pair of cutoffs
0<eta<=1 and 1<=R, the claimed source result is

    0 <= integral_(0,infinity) D_a(f,r) dr - integral_eta^R D_a(f,r) dr
      <= (3/4)(2T+1) K^2 eta^2
         + [8 E0/(1-exp(-2))] exp(-R/2).                 (GCU-5)

The coefficient is independent of a, but NOT independent of T,K,E0. The
finite interval is only the middle part of the original integral. Neither
omitted region is assigned zero. Both errors have a known nonnegative sign.
Integrability is DERIVED from the existing compact-C1 domain theorem before
splitting the integral. A totalized nonintegrable integral is not being used.

## Complete primary argument

1. The energy of a supported L2 function with ||f(t)||<=B everywhere is at
   most 2T B^2. Replace the whole-line integral by the integral on [-T,T]
   using its actual support, then integrate the constant majorant. Endpoint
   singletons have zero Lebesgue measure. This is GCU-1.
2. For r>=0, if t<-T-r or t>T, BOTH f(t+r) and f(t) vanish. Thus the squared
   shift difference is supported in [-T-r,T], an interval of length 2T+r.
   The GLOBAL Lipschitz inequality gives ||f(t+r)-f(t)||^2<=K^2 r^2.
   Actual L2 translation invariance supplies integrability. Therefore

       E(f(.+r)-f) <= (2T+r) K^2 r^2.                    (GCU-2)

3. The existing `mul_parityKernel_le_three_halves` gives r k_a(r)<=3/2
   for 0<r<=1. Multiplying the previous bound, with no division at r=0,
   gives

       0 <= D_a(f,r) <= (3/2)(2T+1) K^2 r.              (GCU-3)

   Integrating r over (0,eta] gives the quadratic cost
   (3/4)(2T+1)K^2 eta^2. This is GCU-4; r=0 has no mass.
4. The EXISTING entire-tail theorem gives

       integral_R^infinity D_a(f,r) dr
           <= [8 E(f)/(1-exp(-2))] exp(-R/2), R>=1.

   Its proof bounds the shift energy by 4E(f) and the kernel by
   exp(-r/2)/(1-exp(-2)). It requires no zero count, RH, or positivity of
   the completed arithmetic form. Replacing E(f) by E0 only increases this
   nonnegative cost.
5. Split the integrable original source exactly into (0,eta], (eta,R],
   and (R,infinity). The difference between the full integral and its middle
   part is the SUM of the near and far integrals. Nonnegativity of D_a
   establishes the lower inequality, and steps 3-4 establish the upper one.

The elementary support estimate deliberately avoids an unproved Sobolev
translation theorem. A stronger estimate r^2||f'||_2^2 could reduce the price,
but this module neither assumes nor claims to formalize that route.

## Failure checks and comparison

The support MUST expand with the shift. For the actual unit bump of EBC,
take r=1,t=-3/2. Then f_1(t)=0 but f_1(t+r)=f_1(-1/2)<0. The difference
is nonzero outside [-1,1]. Treating its support as the original interval
would omit a genuine edge region. The source proof uses [-T-r,T].

A derivative bound only at samples cannot supply the global Lipschitz input.
A zero-extended function with a jump cannot use the C1 compact-support domain
argument. The consumer derives global differentiability and endpoint-safe
bounds for the original flat bump. No endpoint contribution is discarded.

The positive correction is NOT the full signed Weil form. A negative gamma
constant or a prime response can survive it. The truncation bounds prove
neither a positive numerical endpoint nor universal lower certificates.

Comparison dated 2026-11-18: inspected the exact native gamma-domain and tail
providers, the recent gamma-cutoff residual module, and the existing compact
quadrature. The recent `WeilGammaCutoffResidual` uses a whole-line L2
translation-slope input for operator rows; this module instead derives an
energy bound from support length and a pointwise Lipschitz bound, covering
all natural parity parameters. This is not an independent proof of that
module or an assertion that comparable estimates are absent elsewhere.
Repository code search was incomplete; no novelty or absence conclusion follows.
Independent mathematical review NOT_RUN.

## Individual declaration/provenance correspondence

All declarations have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompactCutoffs`.
All are local consequences, not direct formalizations of an external paper.

| ID | Declaration | Exact hypotheses and providers | Mathematical consumer |
|---|---|---|---|
| GCU-1 | `energy_le_support_sup` | Original complex L2 membership, T>=0, literal support and pointwise norm ceiling; finite-interval integral bound and endpoint-null identity. | EBG-4, supplying E0=2T^3. |
| GCU-2 | `shift_energy_le_support_lipschitz` | Original L2 membership, support, global Lipschitz inequality and r>=0; `integrable_shift_energy`; interval length 2T+r. | GCU-3. |
| GCU-3 | `gammaCorrectionDensity_le_linear` | GCU-2 with 0<r<=1; exact native `mul_parityKernel_le_three_halves`. | GCU-4. |
| GCU-4 | `integral_gammaCorrectionDensity_near_le` | Compact C1, support and global Lipschitz inequality; existing gamma integrability; GCU-3; `integral_id`. | GCU-5. |
| GCU-5 | `gammaCorrectionDensity_cutoff_error` | Same actual f, genuine energy ceiling, 0<eta<=1<=R; GCU-4 and existing full exponential tail; exact integral split. | EBG-5, then EBG-6 returning to the original arithmetic source. |

Inspection revision for local providers:
`300b564894b2c6fe44424ae4a4da9a8170d4c50d`.

* [WeilConductorFrontier.lean](https://github.com/grwtsk/math/blob/300b564894b2c6fe44424ae4a4da9a8170d4c50d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorFrontier.lean),
  blob `ac9bf37f07ef22d7ca75b918baeea3161df028b7`: literal gamma density,
  primitive arithmetic value, `integrable_shift_energy`.
* [WeilArchimedeanDomain.lean](https://github.com/grwtsk/math/blob/300b564894b2c6fe44424ae4a4da9a8170d4c50d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilArchimedeanDomain.lean),
  blob `4caf30507216472f2686c1398307cf5c27dccf0c`: exact parity kernel
  bound, compact-C1 integrability, correction nonnegativity, and
  `integral_gammaCorrectionDensity_tail_le`.
* Pinned mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, mathlib contributors:
  `MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero`,
  `integral_Icc_eq_integral_Ioc`,
  `intervalIntegral.norm_integral_le_of_norm_le_const`,
  `intervalIntegral.integral_interval_add_Ioi`, and `integral_id`.
  The last is in [Integrals/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean),
  blob `efe8fff89fbf1782b4a42a89038f51f9d862c562`, author Benjamin Davidson.
  These standard integral operations retain their native hypotheses; no
  upstream source file is copied or relabeled as a new paper result.

## Verification and remaining work

Lean `leanprover/lean4:v4.34.1` and mathlib pin above are unchanged.
Parsing, elaboration, exact exported types, targeted/full builds, fresh kernel
replay, transitive axiom audit, certified computation, independent review: NOT_RUN.
No dependency evidence is automatically promoted to these declarations.

Canonical proof-execution skill inaccessible (404) at Noe main
`20f30160f0b9a6c5fa8b85c06a1f2f758a3a2e14`; no verified local skill or Lean/lake
executable was found. No dependent execution was dispatched. Ordinary publication
readback, text checks, hashes and any failures are recorded in #1801.
