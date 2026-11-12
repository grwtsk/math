# The actual Weil gamma line from compensated Euler resolvents

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
MSC2020: 11M41, 33B15, 42A38. Scope: RP-OC-02, source identification.
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. No originality claim.

Maintained source: [WeilGammaResolventEvaluation.lean](../WeilGammaResolventEvaluation.lean).
Native arithmetic consumer: [WeilPrimeGammaAssembly.lean](../WeilPrimeGammaAssembly.lean).
Base: math@68d976d55601e8b827dd9e93bb45678eb074265d.
Complete base tree: 66b6e6fc9a44f82d662b4dd8a7541d86850d52f1.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Source SHA-256: 3e83bcfefec233c56bc885f5509e77538b214bf96915e144ace5b646c44f7f22.
Coordination: math#1801, scope comment 6830176457.

## 1. Exact scope and dependency audit

Pinned Mathlib `Analysis/SpecialFunctions/Gamma/Digamma.lean` explicitly lists
Gauss's integral representation as TODO. The previous WRITTEN gamma calculation
cites the classical representation; it is not a Lean supplier. This increment
uses a different analytic route: finite reciprocal differences of the ACTUAL
Euler-Gamma approximants, their native locally-uniform logarithmic-derivative
limit, exact Laplace integrals, native Fourier inversion, and dominated
convergence. No integral representation, infinite digamma series or gamma-tail
estimate is assumed as an interface field.

The recovered five-declaration WeilPrimeGammaAssembly candidate is published
with this increment. Its theorem bodies and types are unchanged; publication
commentary is updated. It already supplies integrability of the literal gamma
pair by subtracting the integrable conductor and prime pair from the actual
arithmetic line. This is not circular: WeilVerticalLimits obtains full-line
integrability from a finite-recurrence/logarithmic-disk gamma upper bound, NOT
from the Gauss representation or the evaluation now being proved.

The new formal-source result is exact finite physical gamma evaluation and
convergence of those finite expressions to the actual gamma line integral.
The separate WeilGammaPhysicalReturn module now supplies the canonical
parityKernel return using the concurrently published compensated source. Section 8
gives the alternative written regrouping argument; its limit-through-positive-kernels
step is not an additional Lean declaration in this module.

The native arbitrary-character prime evaluations include q=1. The completed
source, Fourier convention, correlation and RH/GRH target are unchanged. No
OpenAI zero-free-strip or Anthropic zero-proportion theorem is an assumption.
No root import, dependency pin or earlier evidence status is changed.

## 2. Original objects and normalization

Let f be the original admissible smooth compact complex test, supported in
[-A,A], A>=0. Keep

    C(r) = integral_R conjugate(f(u))*f(u+r) du,
    E = C(0) = integral_R |f(u)|^2 du,
    W(s) = integral_R C(r)*exp((s-1/2)*r) dr,
    s_t = 2+i*t,
    H(t) = W(s_t)+W(1-s_t).

The plus Fourier convention is exp(i*t*r). Native inversion supplies

    (1/(2*pi))*integral_R W(sigma+i*t)*exp(-i*t*r)dt
      = C(r)*exp((sigma-1/2)*r).

Apply it at sigma=2. For the reflected term use sigma=-1, replace t by -t,
and evaluate at -r. BOTH terms have the exponential tilt exp(3r/2), so

    (1/(2*pi))*integral_R H(t)*exp(-i*t*r)dt
      = (C(r)+C(-r))*exp(3r/2).                         (2.1)

The native line weights are L1. Each phase has norm one, so integral additivity
is used only after proving integrability of both phase products. At r=0,
(2.1) gives normalized integral H=2E. This is WGRE-v1-01.
C(-r) is retained: a complex test need not be even or real.

## 3. The genuinely integrable product behind each resolvent

For b>0 and any L1 line function phi, define

    F(t,r)=phi(t)*exp(-(b+i*t)*r),  t in R, r>0.

Its FULL complex norm is exactly |phi(t)|*exp(-b*r). The product is integrable
because integral_0^infinity exp(-b*r)dr=1/b. Joint measurability is obtained
from the original measurable phi and continuous exponential. Thus Fubini is
legitimate, not an assumed equality between divergent iterated integrals.

The pinned complex exponential integral gives

    integral_(r>0) F(t,r)dr = phi(t)/(b+i*t).

Integrating in the other order and using (2.1) with phi=H gives

    (1/(2*pi))*integral_R H(t)/(b+i*t)dt
      = integral_(r>0) [C(r)+C(-r)]*exp((3/2-b)*r)dr.    (3.1)

Both one-dimensional integrability statements are obtained from the product
proof and the exact inversion identity. This is WGRE-v1-02. The condition is
b>0, not b>=3/2: when the physical exponential grows, compact support still
applies. There is no denominator zero, rational proxy for a pole, or omitted
negative-height contribution.

## 4. Finite compensation before the infinite limit

For a natural parameter a (the arithmetic consumer uses a=0 or1) set

    g_(a,n)(t) = -(log(pi)+gamma)/2
       + sum_(j=0..n) [1/(2(j+1))-1/(2+a+2j+i*t)].       (4.1)

This is gammaEulerMultiplier, record WGRE-v1-D1. It is an auxiliary finite
multiplier, NOT a new Weil quadratic form or shifted positive baseline.
All denominators in (4.1) have positive real part.

Apply (3.1) with b=2+a+2j and use normalized integral H=2E. Every term is
integrable, so finite additivity gives

    Gamma_(a,n)(f) := (1/(2*pi))*integral_R H(t)*g_(a,n)(t)dt
      = -(log(pi)+gamma)*E
        + sum_(j=0..n) [E/(j+1)
          - integral_(r>0) [C(r)+C(-r)]
               *exp(-(a+1/2+2j)*r)dr].                 (4.2)

This is WGRE-v1-03. The compensating constants remain paired with their own
reciprocal integrals at every finite stage. It is not legitimate to take
limits of the two separate harmonic-scale pieces.

## 5. Return to actual Gamma, not an assumed digamma series

Write z=(2+a+i*t)/2, Re(z)>=1. For n!=0 the native source theorem gives

    D_n(z) = log(n)-sum_(j=0..n) 1/(z+j),
    D_n(1) = log(n)-sum_(j=0..n) 1/(1+j),

where D_n is the logarithmic derivative of the ACTUAL Complex.GammaSeq.
Their log(n) terms cancel. Hence (4.1) equals

    -log(pi)/2 + [D_n(z)-D_n(1)+psi(1)]/2.

GammaEulerLimit.logDeriv_GammaSeq_tendsto supplies D_n(z)->psi(z) and
D_n(1)->psi(1). Pinned Mathlib gives psi(1)=-gamma. Consequently

    g_(a,n)(t) -> g_a(t):=-log(pi)/2+psi((2+a+i*t)/2)/2. (5.1)

This is WGRE-v1-04. The excluded n=0 concerns only the eventual Euler
comparison; all finite evaluation formulas include n=0. Pointwise convergence
is not yet permission to integrate (5.1).

## 6. Full complex tail, with every height retained

Let x=2(j+1), u=a+i*t. The reciprocal difference is exactly

    1/x-1/(x+u) = u/[x(x+u)].

Since |x+u|>=Re(x+u)>=x and |u|<=a+|t|,

    |1/(2(j+1))-1/(2+a+2j+i*t)|
       <= (a+|t|)/(4(j+1)^2).                          (6.1)

For x>0,

    1/x-1/(x+1)-1/(x+1)^2 = 1/[x(x+1)^2]>=0.

Apply this to each finite tail, telescope, then use (5.1). The result is

    |g_a(t)-g_(a,n)(t)| <= (a+|t|)/(4(n+1)).            (6.2)

This is WGRE-v1-05. It controls the complete complex norm, including the
imaginary part, for ALL real t and natural a,n. No infinite-series identity
or small-imaginary-part hypothesis is an input. The t=0,a=0 case gives zero
error, agreeing with the exact multiplier -(log(pi)+gamma)/2.

## 7. A supplied, n-uniform majorant and the gamma-line limit

The native k=2 correlation-weight estimate supplies, with

    B = derivativeL1Cost(f,2)^2 * exp(3A/2)^2 >=0,

    |H(t)| <= 2B/(1+|t|)^4.                            (7.1)

The actual gamma integrand G(t)=H(t)g_a(t) is L1 by the recovered WPGA-v1-03
for every primitive character and its genuine parity. From (6.2), n+1>=1,
a+|t|<=(a+1)(1+|t|), and (1+|t|)^3>=1+t^2,

    |H(t)g_(a,n)(t)| <= |G(t)|+2B(a+1)/(1+t^2).        (7.2)

The right side is integrable and independent of n. Integrability of every
partial is already proved in Section 4. Bochner dominated convergence now
justifies integration of (5.1). Substituting (4.2) gives

    Gamma_(a,n)(f) -> (1/(2*pi))*integral_R G(t)dt.      (7.3)

This is WGRE-v1-06. It applies to every admissible complex test and support
window, including the primitive conductor-one character. The test cost B is
NOT asserted uniformly bounded for varying interpolants.

WRITTEN quantitative consequence, not an additional Lean declaration:
retain the sharper (6.2) in (7.1). Since

    integral_R (1+|t|)^(-4)dt=2/3,
    integral_R |t|(1+|t|)^(-4)dt=1/3,

one gets the complete normalized error

    |I_gamma,a(f)-Gamma_(a,n)(f)|
      <= B(2a+1)/(12*pi*(n+1)).                         (7.4)

This is an exact analytical bound, not certified numerical evaluation of B
or the finite physical integrals.

## 8. Actual arithmetic consumer and remaining canonical-kernel sum

The recovered WPGA theorem is about the ORIGINAL positive correlation weight:

    J_chi = I_gamma,a + log(q)*C(0)
              - twistedPrime(A,chi inverse,C(log n)).

No additional q^(s/2) is inserted into completedLFunction. Thus (4.2) and (7.3)
give explicit finite compensated physical expressions converging to the SAME
arithmetic integral, not to a comparator. The existing source-selected heights
precede all tests and support windows. The zero sum retains every original
zeroMultiplicity and subtracts delta_(q=1)*(W(0)+W(1)). For zeta, adding poles
back restores BOTH signed cross-product terms. Nothing here makes them positive.

WRITTEN combined budget: let K_h be the maintained horizontal test cost,
C_chi the maintained vertical source constant, T_k the original selected heights,
and B as above. The prior horizontal and vertical bounds plus (7.4) give

 |S_chi(T_k)-P_q-[Gamma_(a,n)+log(q)E-twistedPrime(A,chi inverse,C)]|
 <= 3*K_h/[pi*(1+T_k)^2]
      + C_chi*B/[2*pi*(1+T_k)^2]
      + B*(2a+1)/[12*pi*(n+1)].                         (8.1)

K_h and B depend on the actual fixed test; C_chi is an existence constant, not
a numerical certificate. T_k remains source-selected BEFORE f,A. Neither
small fixed-test errors nor finite signed matrices imply all-test positivity.

For the remaining canonical-kernel return, write

    D_f(r)=||tau_r f-f||_2^2=2E-C(r)-C(-r),
    b_j=a+1/2+2j, sigma=1/4+a/2.

The finite identity (4.2) can be regrouped as

 [-log(pi)-gamma+sum_(j=0..n)(1/(j+1)-1/(j+sigma))]*E
       + integral_(r>0) D_f(r)*sum_(j=0..n) exp(-b_j*r)dr.

The scalar bracket converges to -log(pi)+psi(sigma) by the same native Euler
argument at sigma>0 and1. The positive kernel sum increases to
exp(-(a+1/2)r)/(1-exp(-2r)). For smooth compact f,
D_f(r)<=min(r^2||f'||_2^2,4E), proving integrability at both endpoints and
justifying this last limit. It yields precisely gammaConstant and the existing
gammaCorrectionDensity. This regrouping route remains WRITTEN here. The separate
WeilGammaPhysicalReturn instead consumes the concurrent compensated-density
theorem and proves product Fubini directly, yielding the same canonical kernel.
The historical unpublished companion contains the distinct compensated-Gauss
derivation. The current physical-return companion consumes the concurrent
compensated source and supplies the remaining product-Fubini argument.
The two routes share Fourier/Laplace facts and are not independent verification.

At the initial pin WeilZeroSumReturn exposed an all-height count premise.
The refreshed main supplies WeilSourceHeightTail and its actual-source count-free
HasSum consumer. WeilGammaPhysicalReturn consumes that endpoint without adding
a counting premise. The imported counting proof remains SOURCE_PROOF_CANDIDATE;
the all-test arithmetic sign is not discharged by this increment. The fully quantified negative-
witness interpolation/tail margin is also separate. No RH/GRH proof is claimed.

## 9. Provenance, comparison and evidence

Individual records: [01](weil_gamma_pair_fourier_inversion.md),
[02](weil_gamma_pair_resolvent_evaluation.md), [D1](gammaEulerMultiplier.md),
[03](weil_finite_gamma_evaluation.md), [04](gammaEulerMultiplier_tendsto.md),
[05](norm_gammaEulerMultiplier_error_le.md), [06](weil_gamma_physical_partials_tendsto.md),
[07](weil_gamma_pair_norm_le.md).

Primary formal inputs are native GammaEulerLimit (grwtsk contributors), blob
b04828358d697dd7c61ce5755374fc8e40379ff9, and native correlation inversion, blob
6cddeef9417b55e33e2f4f8c446bd591e5a78bc6. Pinned Mathlib suppliers are David
Loeffler's complex exponential integral in ImproperIntegrals, Floris van Doorn
and contributors' product integration (blob 7484a64e40beacdd472da61f858f02c8ffb62863),
and Bochner dominated convergence (blob f9151af5679b358686392d6d28721e01382dcad0).
Classical comparison: NIST DLMF [5.7.6](https://dlmf.nist.gov/5.7.E6) and
[5.9.16](https://dlmf.nist.gov/5.9.E16), accessed 2026-11-12. No upstream code is
copied or provider proof imported. This is a local consequence, not a novel
paper theorem or a certified adaptation at another toolchain pin.

Author hostile checks cover b>0, imaginary phase sign, left-line reflection,
normalization 1/(2pi), the missing factor2 in the Gamma chain rule, n=0 versus
eventually n>0, a=t=0, compensating constants, and false pointwise-to-integral
inference. Scalar symbolic checks are not actual-source numerical certificates.

Elaboration, complete dependency builds, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent analytical review,
numerical certification and repository-wide validation: NOT_RUN. No Lean/Lake
command was executed. Canonical execution skill access returned404 at Noe
3a22e1022074ecc99d5cdeaabeb5dc919711a55b; no verified local skill or toolchain
was found. Dependent execution was not bypassed. Source-text/digest checks and
publication observations are recorded in math#1801; they are not mathematics
acceptance or an upgrade of imported candidate evidence.

## Concurrent-source reconciliation

During preparation main advanced to `05c3158365036f6eaa025d78cf2586dbbfb81f20`,
complete tree `49c727c41d7910d94a4a7c02c6574a239670c42c`. The complete comparison
showed 24 additions only; no prepared path, existing import, policy or pin was
modified. All are preserved. Scope update: math#1801 comment `6830786205`.

The new native `CompensatedDigammaIntegral` and `WeilGammaCompensatedInversion`
now supply the previously missing actual compensated multiplier and shift-energy
inversion. The new `WeilSourceHeightTail` supplies the actual count and unordered
HasSum. These are consumed in [WeilGammaPhysicalReturn](../WeilGammaPhysicalReturn.lean),
not claimed as work authored here or as checked imports. The companion's earlier
statements about the first remaining formal supplier describe its initial scope;
this reconciliation records the newer consumed chain without rewriting history.
The physical return leaves arithmetic sign and full negative-witness existence open.
