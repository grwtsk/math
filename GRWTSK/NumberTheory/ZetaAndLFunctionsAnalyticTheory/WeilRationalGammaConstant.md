# Rational gamma constants from the original parity identities

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020 11M26; secondary 11M41, 33B15, 65G20.
Canonical source: [WeilRationalGammaConstant.lean](WeilRationalGammaConstant.lean).
Consumer: [WeilExponentialBumpRoundedEvaluation](WeilExponentialBumpRoundedEvaluation.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801#issuecomment-6996611345).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and prior-art completeness: UNASSESSED. Lean parsing, elaboration,
exact exported types, builds, fresh kernel replay, transitive axiom audit,
certified source computation and independent review: NOT_RUN.

## Exact source and first unresolved scalar premise

The previous all-cell arithmetic enclosure still used the exact
`CharacterWindow.gammaConstant q a`. The present supplier does not define a
substitute coefficient. For q a positive natural number and a in {0,1}, it
returns rational intervals to that SAME value:

    c(q,a) = log(q/pi) + digamma((2a+1)/4).

The two existing quarter-digamma identities imply

    c(q,0) = log q - log pi - gamma - 3 log 2 - pi/2,
    c(q,1) = log q - log pi - gamma - 3 log 2 + pi/2.

Here gamma is the actual Euler-Mascheroni constant. The sign of pi/2 changes
with parity; no character is replaced by an even character. Source identities
hold independently of any critical-line or Weil-sign assumption.

The new numerical data are positive harmonic index h, logarithm order N, and
rational endpoints pL,pU satisfying 1<=pL<=pi<=pU. The logarithms and gamma are
NOT additional enclosure inputs. The pi endpoints are explicit source facts;
RGC-5 supplies one concrete, relatively coarse choice from pinned mathlib.

## Complete primary analytical argument

### Harmonic sandwich (RGC-1)

Let H_h = sum_{j=1}^h 1/j, a rational number. The pinned library proves

    H_h-log(h+1) < gamma < H_h-log h                 (h>0).

The upper sequence has a special value at h=0, so that case is NOT admitted.
Reuse the maintained rational logarithm intervals L_N(x)<=log x<=U_N(x)
for every rational x>=1. They are finite sums of powers of (x-1)/(x+1), with
a complete geometric remainder. Set

    gammaL(h,N) = H_h-U_N(h+1),
    gammaU(h,N) = H_h-L_N(h).

Substituting the upper logarithm bound into the first inequality and the lower
logarithm bound into the second gives gammaL<=gamma<=gammaU. No agreement of
floating-point routines and no rounded value of gamma is used. All arithmetic
in these endpoints is rational.

### Source parity formula (RGC-2)

For q>0, the original log(q/pi) equals log q-log pi. Substitute the existing
`digamma_quarter` or `digamma_three_quarters` identity. This is the exact return
to the maintained source normalization, not a new definition or a new special
function theorem. The public formula uses an if on a=0 and assumes a<=1.

### Rational gamma interval (RGC-3)

For every q>0, a<=1, h>0, N>=0 and certified pi interval as above, define

    cL = L_N(q)-U_N(pU)-gammaU(h,N)-3U_N(2)+parityL,
    cU = U_N(q)-L_N(pL)-gammaL(h,N)-3L_N(2)+parityU,

where parityL/parityU denote the signed scalar pi/2 terms:

    a=0: (parityL,parityU)=(-pU/2,-pL/2),
    a=1: (parityL,parityU)=( pL/2, pU/2).

Logarithm monotonicity gives L_N(pL)<=log pi<=U_N(pU). Apply interval
addition/subtraction to the EXACT parity formula. In the a=0 case, increasing
the pi endpoint decreases the pi/2 term, so its endpoint orientation reverses.
This gives cL<=gammaConstant(q,a)<=cU. Both are rational expressions.

This computation uses correlated pi and log pi observations conservatively;
it does not assume they are independent random variables. Separate interval
bounds remain sound even though they may overestimate the width.

### Center and radius (RGC-4, RGC-5)

Define c0=(cL+cU)/2 and ec=(cU-cL)/2. Since the actual source constant lies
between cL and cU, ec>=0 and |c-c0|<=ec. The center may be negative; no theorem
replaces c0 by |c0| in a signed central value.

RGC-5 instantiates pL=314/100 and pU=315/100 using the pinned inequalities
`Real.pi_gt_d2` and `Real.pi_lt_d2`. It works for EVERY q>0, a<=1, h>0 and N.
It is a fully sourced default pi input, NOT a claim that this fixed-width pi
interval supports arbitrary precision. RGC-3/4 accept narrower certified pi
intervals without changing their meanings or the source constant.

## Accuracy, quantifiers, and limits

The harmonic index and logarithm order have different roles. Exactly,

    gammaU-gammaL = U_N(h+1)-L_N(h).

For each fixed h>0, taking N to infinity leaves log(1+1/h), not zero. Thus a
fixed harmonic index is a real precision obstruction, even with exact logs.
Conversely, the standard inequality log(1+1/h)<=1/h and the already established
geometric log remainders show how to choose h first and then N for a prescribed
gamma accuracy. This is a WRITTEN refinement argument, not a newly formalized
limit theorem or a certificate-generator run.

The gamma-constant width has an exact finite decomposition:

    cU-cL = [U_N(q)-L_N(q)] + [U_N(pU)-L_N(pL)]
             + [gammaU-gammaL] + 3[U_N(2)-L_N(2)] + (pU-pL)/2.

In particular fixed pi uncertainty remains, irrespective of h or N. For a
fixed q, choosing pi endpoints, h, and N at jointly adequate precision makes
this interval refinable. No uniform computation bound for unbounded q or
support radius T is asserted. The signed arithmetic lower bound is an entirely
separate question: a small coefficient interval gives no positivity theorem.

## Hostile checks and alternative route

* Using H_h-log(h+1) as an upper bound reverses a known strict inequality.
* Admitting h=0 via the library's modified upper sequence would misidentify its
  value with H_0-log 0. The public hypothesis h>0 prevents this.
* In parity zero the lower pi/2 contribution is -pU/2, not -pL/2.
* The parity constants differ by pi exactly; treating both as the same loses
  source parity even when all scalar enclosures are very accurate.
* Narrow log intervals at fixed h or fixed pi endpoints do not remove their
  respective residual widths.

These are written analytical controls, not executed tests or independent review.
An alternative is a validated digamma series or integral with its own endpoint
and tail bounds. That might provide faster enclosures but must return to the
same quarter arguments and source normalization. No second implementation or
independent proof is claimed here.

## Individual declaration provenance

All records below have version 1, date 2026-11-18, status SOURCE_PROOF_CANDIDATE,
novelty UNASSESSED, and all formal execution/independent review NOT_RUN.
Prefix: `GRWTSK.NumberTheory.WeilQuadraticForm.RationalGammaConstant`.

**RGC-1 `euler_enclosure`.** All h>0 and N; actual Euler constant between the
specified rational endpoints. Direct local consequence of David Loeffler's
pinned harmonic sandwich and the maintained rational logarithm supplier.
Consumers: RGC-3/4. No unproved convergence or decimal input.

**RGC-2 `gammaConstant_parity_eq`.** All q>0 and natural a<=1; exact formula
above. Reuses `WeilGammaData.gammaConstant`, `digamma_quarter`, and
`digamma_three_quarters` in namespace CharacterWindow, and mathlib `Real.log_div`.
Consumer: RGC-3. No new explicit formula or special-function claim.

**RGC-3 `gamma_enclosure`.** All q>0,a<=1,h>0,N and rational pi endpoints with
1<=pL<=pi<=pU. Full argument above; consumers RGC-4 and the rounded bump theorem.
Pi endpoint validation remains explicit; the Euler constant and logarithm
intervals are derived, not assumed.

**RGC-4 `center_error`.** Same domain, returning nonnegative rational radius
and actual constant error. Finite ordered-field consequence of RGC-3. Consumer:
EBR-1, including its coefficient-times-mass error.

**RGC-5 `center_error_pi_hundredths`.** Same q,a,h,N domain with fixed endpoints
314/100 and 315/100. Reuses RGC-4 and the pinned pi inequalities. Consumer:
source callers needing an explicit baseline; does not establish arbitrary
precision with those fixed endpoints.

## Source pins and edition-specific comparison

Inspection: grwtsk/math `7c183c31ebc4ed393e1ecef385479b8370ae8768`.
`WeilGammaData.lean` blob `23e9c2a773ea175075b1c6e164ffd5c29c9577e`.
`WeilRationalLogarithms.lean` blob `776022a3cf679384fd2fb31404a90fc1178562c7`.
Do not copy these providers into the new module or rewrite their evidence.

Lean `leanprover/lean4:v4.34.1`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`:

* `Mathlib/NumberTheory/Harmonic/EulerMascheroni.lean`, David Loeffler (2024),
  blob `697935c25a2317dcbe16616ee8159d3a476d6fe9`:
  `Real.eulerMascheroniSeq_lt_eulerMascheroniConstant`,
  `Real.eulerMascheroniConstant_lt_eulerMascheroniSeq'`, and their exact sequence
  definitions. RGC-1 is a rational interval consequence, not a reproof.
* `Mathlib/Analysis/Real/Pi/Bounds.lean`, Floris van Doorn and Mario Carneiro,
  blob `86147be4daf2ed3b598f0aed9ff73822336f0e2a`:
  `Real.pi_gt_d2`, `Real.pi_lt_d2`, based on the file's trigonometric/square-root
  certificates. RGC-5 invokes them; it does not claim their proofs as local work.

This is source-to-source reuse and local elementary consequences, not direct
formalization of a newly selected paper. No external source code is copied.
Primary special-function comparison: NIST DLMF section 5.4 was consulted;
formal dependencies remain the EXACT pinned declarations listed above.
Dated comparison 2026-11-18: the existing `WeilGammaRationalWeights` concerns
integrated parity-zero kernel panels/tails, not this scalar gammaConstant;
`WeilRationalPrimeWeights` supplies a separate arithmetic coefficient family.
Indexed repository search is incomplete and establishes no absence or novelty.

Canonical proof execution was blocked by a 404 for the prescribed skill at
Noe `b0be41adc8b0bf76f9735b3c2793faf7f80862c3`. No dependent execution was
launched. Static source checks and Git readback cannot establish Lean acceptance.
Exact-source verification and actual publication observations are tracked in
#1801. The mathematical source is only the canonical math repository.
