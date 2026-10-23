# The actual periodic-Bernoulli source remainder for the literal endpoint candidate

Owner #194; local analytic consumer #134/#139; canonical consumer #261.
Additive extension of draft #274 at parent
`ab16f387b3ccf38a80a5d81ea516ee025ddf365b`, tree
`306e04d1892ce2c199ca16a8441407a472e45337`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This increment writes the
previously missing actual-source remainder as Lean proof candidates and supplies
it to the unchanged finite-jet/Newton application. No new or inherited script,
large finite reduction, full transitive import graph or axiom audit has been
executed. A theorem declaration with no application hypotheses is NOT a report
of kernel acceptance. No accepted numerical zero certificate is claimed.

The previous conditional theorems and their source identities remain unchanged.
The new `EndpointBernoulliSource.uniform_source` targets their exact hypothesis;
`centerEstimates` and `unique_simple_point` compose those older declarations.
No extra axiom, numerical-oracle premise, replacement zeta function or weakened
error tolerance is introduced. All existing execution holds remain in force.

## 1. Polynomial source and the seam that must not be canceled

The coefficients and polynomials are precisely Mathlib's `bernoulli` and
`Polynomial.bernoulli`. In particular B1=-1/2 and B1(u)=u-1/2.
Define the periodic function by evaluating this actual polynomial at Int.fract(t):

    Btilde_m(t)=B_m({t}).

The new `PeriodicBernoulli` source transports the existing polynomial derivative
identity to an analytic derivative and obtains its endpoint values. For m>=1:

    B_(m+1)'(u)=(m+1)B_m(u),
    B_(m+1)(1)=B_(m+1)(0)=B_(m+1).

The restriction matters. B1(1)-B1(0)=1, so the corresponding seam cancellation
is false when the recurrence order m is zero. We do not assert that Btilde_1 is
continuous across integers. Each unit cell uses a translated polynomial; its
agreement with the periodic integrand holds on the OPEN cell. Endpoint changes
are removed from the integral only through Lebesgue singleton-nullity.

A coefficient-sum majorant is derived on every point of [0,1]:

    M_m=sum_(i=0..m) |binom(m,i)B_i|,
    |Btilde_m(t)|<=M_m.

This is not a sampled maximum, Fourier-series bound or asserted exact supremum.
The source's finite arithmetic gives M_16=327039/170<2000.

## 2. Integrability before the infinite integral

Write the actual tail and the exact rising-factorial coefficient as

    J_m(N,s)=integral_N^infinity Btilde_m(t)t^(-s-m)dt,
    R_m(N,s)=-(s)_m/m! * J_m(N,s).

The rising product is the existing `PochhammerJet.value`, itself bound to the
upstream polynomial. No factor is divided out when it vanishes.

For N>=1, sigma<=Re(s) and sigma+m>1, the integrand is measurable and its norm
is dominated by M_m*t^(-sigma-m). The new source derives absolute integrability
and then integrates that majorant to obtain

    |J_m(N,s)| <= M_m*N^(1-sigma-m)/(sigma+m-1).

For m>=2 and Re(s)>=0 a weaker but rational-exponent version suffices:

    |J_m(N,s)| <= M_m/((m-1)N^(m-1)).

Both statements concern the whole real integration tail. They do not describe
an omitted-zeta-zero tail. No undefined totalized integral is used as analytic
continuation. The eventual zeta identity retains Re(s)>0 and s!=1 even though
some individual integral estimates admit a larger domain.

## 3. Exact unit cells, finite coverage and the actual improper limit

For each positive integer k, integrate the translated polynomial primitive

    B_(m+1)(t-k)*t^(-s-m),  k<=t<=k+1.

Its derivative includes BOTH factors' derivatives. The fundamental theorem of
calculus gives the new `cell_step` identity, for m>=1 and k>=1:

    (m+1) C_m(k,s) - (s+m) C_(m+1)(k,s)
      = B_(m+1)*[(k+1)^(-s-m)-k^(-s-m)],

where C_m(k,s) is the actual periodic-Mellin integral on that unit cell.
The source establishes continuity and integrability of the raw polynomial cell,
then its agreement with the periodic integral. No global differentiability at
the seams is assumed.

`block_integral` proves that the sum of K consecutive cells is exactly the
integral on [N,N+K], with every cell included. K=0 gives an empty block, not the
infinite tail. `block_step` telescopes all internal primitive endpoints while
retaining BOTH exterior endpoints:

    (m+1) sum C_m - (s+m) sum C_(m+1)
      = B_(m+1)*[(N+K)^(-s-m)-N^(-s-m)].

The source uses the independently proved absolute integrability to identify
these interval integrals' limits with J_m and J_(m+1). The upper endpoint tends
to zero because its norm is (N+K)^(-Re(s)-m). This is a proved limit argument,
not deletion of an endpoint from the finite identity. Uniqueness of limits yields

    (m+1)J_m(N,s)-(s+m)J_(m+1)(N,s)
      = -B_(m+1)N^(-s-m),       Re(s)>0.

Multiplying by the existing factorial and rising-product coefficients gives

    R_m(N,s) = B_(m+1)/(m+1)! * (s)_m*N^(-s-m) + R_(m+1)(N,s).

Every equality refers to an actual integral. None is an assumed recurrence
field or a recurrence of an unidentified formal remainder.

## 4. Bind the recurrence to the SAME zeta and finite model

Begin with the maintained `FinitePowerZetaJet.source_residual`, already derived
from the fractional-Mellin identity with the inclusive positive-base sum 1..N.
The new `fractional_tail_split` uses {t}=1/2+Btilde_1(t), identifies integer and
natural floor on this positive domain, and explicitly integrates the constant
half contribution. Its result is

    fractionalTail(N,s)=J_1(N,s)+N^(-s)/(2s).

Positive Re(s) excludes zero before division. The pole exclusion s!=1 is retained
when using the finite zeta model. Therefore the inclusive first correction is
MINUS N^(-s)/2, and

    zeta(s)-EndpointCorrectedJet.model N 0 s=R_1(N,s).

`correction_step` identifies each recurrence term with the literal coefficient
of the existing corrected model. Its endpoint power is converted using the
already proved positive-base complex-power identity, not an informal exponent
rewrite that could fail at zero. Odd Bernoulli endpoint values above B1 vanish
by the actual upstream theorem. Induction derives, for every p>=1:

    zeta(s)-Z_(N,p)(s)
      = -(s)_(2p)/(2p)! * integral_N^infinity Btilde_(2p)(t)t^(-s-2p)dt,
    N>=1, Re(s)>0, s!=1.

The Lean name is `EndpointBernoulliResidual.source_residual_succ`, with p encoded
as a successor. Z_(N,p) is exactly `EndpointCorrectedJet.model N p`, not a new
approximation with the same display name. This is classical Euler--Maclaurin
mathematics: NIST DLMF 25.2.8--25.2.9 and the Bernoulli definitions in 24.2,
https://dlmf.nist.gov/25.2 and https://dlmf.nist.gov/24.2 . No novelty is claimed.

## 5. A purely rational whole-disk allowance

The literal old center is c=1/2+(14134725141735/10^12)i and its outer radius is
S=1/4. The existing disk-geometry theorem gives, at EVERY point of that disk:

    Re(s)>=1/4, |s|<=15, s!=1.

For the tail majorant we deliberately weaken the positive real-part bound to
zero. Together with M16<=2000 and |(s)_16|<=product_(j=0..15)(15+j), this yields

    |zeta(s)-Z_(81,8)(s)|
      <= 2000*product_(j=0..15)(15+j)/(16!*15*81^15)
      = 2154410000/4710128697246244834921603689
      < 1/10^16.

The allowance is approximately 4.573993914985e-19. It is weaker than the older
1.324e-19 written estimate, but comfortably sufficient for the SAME fixed
application. Its comparison needs only rational arithmetic: no rounded value of
81^(-1/4), no floating power oracle and no finite circle samples.

`EndpointBernoulliSource.uniform_source` supplies exactly the premise of the
old `EndpointJetRefinement.centerEstimates_of_uniform_source`. The latter already
constructs the finite value/derivative errors and applies Cauchy's estimate to
the actual analytic difference, giving derivative source error <=4*10^(-16).
With finite errors <=10^(-17), the total allowances remain 1.1e-16 and 4.1e-16,
both below the UNCHANGED centerData tolerances 10^(-15).

The new `centerEstimates` declaration has no caller-supplied analytic or finite
accuracy premise. `unique_simple_point` then composes the unchanged Newton
consumer at the old inner radius 10^(-8), targeting a unique canonical point of
actual analytic multiplicity one. This is an END-TO-END SOURCE CANDIDATE, not a
kernel-accepted proof or qualified executable certificate. Every inherited
finite decision, analytical proof, source normalization and trust dependency
still requires acceptance. The old conditional declarations remain available
and unchanged; comments in their historical files are not silently rewritten.

## 6. Diagnostics and acceptance boundary

2,114 independent exact-rational diagnostic assertions passed. They cover
coefficient identities, polynomial derivatives, seam controls, 912 exact unit-cell
identities, 240 covered-block identities, integrable-majorant comparisons,
complex rising-product bounds and the literal rational allowance. Finite samples
of the polynomial bound are diagnostics, not the proof of its continuum scope.
Categories reuse inputs; they are not independent numerical zeros.

91 separate ordinary comparisons at 100 decimal digits passed, with diagnostic
slack 1e-85. These include nonreal cells, actual zeta-minus-finite-model residuals
compared with finite integrals PLUS their explicit omitted real-integration
allowances, selected outer-circle points and the wrong half-endpoint control.
They are not certified interval arithmetic and do not prove uniformity. No
root finder or zero inventory was used. Scripts and reports stay outside the
mathematical repository.

No Lean/Lake invocation, build, executed Lean fixture, kernel/axiom audit,
compiler/parser qualification, worker/replay request, execution-hold release,
merge or issue closure occurred. Static source checks are not elaboration.

The next acceptance task is the full pinned elaboration and independent exact-
type/transitive-trust review of the entire stack, including repairs and the
large finite rational reductions. This source-level removal of an application
premise is not acceptance of that premise's proof. No ordinal zero number,
critical-line theorem, complete finite-height inventory or upper count is
claimed. Complete divisor coverage, global source identities, omitted-divisor
tails, resource bounds and all-interval prime margins remain independent. No
Legendre or RH conclusion is supplied by this local construction.
