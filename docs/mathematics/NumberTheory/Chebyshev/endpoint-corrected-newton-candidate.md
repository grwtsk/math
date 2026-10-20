# Endpoint corrections and a concrete local-zeta research candidate

Owner #194; local-analytic owner #134/#139; downstream canonical consumer #261.
Parent: `970b96a393b9539520adcf1dfd12088124ae9bf1`, tree
`8318a52f640c990313a6bab90fd840d960ac2731`.
Mathlib pin: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The accompanying source publishes
previously prepared Cauchy/Newton declarations and a literal conditional local
candidate. The endpoint-corrected analytic argument below is a WRITTEN PROOF, not
a new Lean source theorem. The independent rational calculation is a research
prototype, not a qualified implementation of any repository checker.

Crucially, `EndpointCorrectedNewtonCandidate.unique_point_of_centerEstimates`
STILL requires `CauchyNewtonWitness.CenterEstimates center centerData`. This
increment does not fabricate that proof, add an axiom, or silently mark the
Euler--Maclaurin source or numerical refinement as accepted. It does, however,
provide a concrete exact-rational construction and a derivation supporting the
candidate, rather than filling the center fields with unexplained decimals.

## 1. Source and endpoint convention

Start with the maintained fractional-Mellin identity, for Re(s)>0 and s!=1:

    zeta(s) = sum_(k=1..N) k^(-s) + N^(1-s)/(s-1)
                - s integral_N^infinity {t} t^(-s-1) dt,   N>=1 integer.

The sum INCLUDES N. Its first endpoint correction therefore has sign MINUS:

    -N^(-s)/2.

A representation summing k=1..N-1 instead uses +N^(-s)/2. They are equivalent
only after accounting for the removed N^(-s) term. Mixing those conventions
introduces an error N^(-s), not a small analytic tail.

External classical reference: NIST DLMF 25.2.8--25.2.9,
https://dlmf.nist.gov/25.2 . Bernoulli conventions and generating functions:
https://dlmf.nist.gov/24.2 . This is standard Euler--Maclaurin mathematics,
not a claim of a new zeta representation or new prime-distribution result.

Write (s)_m = product_(j=0..m-1)(s+j). For p>=1 define

    Z_(N,p)(s) = sum_(k=1..N) k^(-s) + N^(1-s)/(s-1) - N^(-s)/2
       + sum_(j=1..p) B_(2j)/(2j)! * (s)_(2j-1) * N^(1-s-2j).

The same actual source has the even-Bernoulli remainder

    zeta(s)-Z_(N,p)(s)
      = -(s)_(2p)/(2p)! * integral_N^infinity Btilde_(2p)(t) t^(-s-2p) dt.

In this application Re(s)>0 is retained throughout, so all integrals used in the
successive derivation converge absolutely. The wider possible continuation
domain is not needed or claimed by this application.

## 2. Derive the remainder rather than differentiating a numerical estimate

Let B_m(u) be the Bernoulli polynomials with B_1(u)=u-1/2 and B_0=1.
Their finite coefficient formula is

    B_m(u)=sum_(k=0..m) binom(m,k) B_k u^(m-k).

The rational recurrence B_0=1 and

    B_m= -(1/(m+1)) sum_(k=0..m-1) binom(m+1,k) B_k

gives the coefficients used by the calculation. For m>=1,
B_(m+1)'=(m+1)B_m and B_(m+1)(0)=B_(m+1)(1); odd endpoint values beyond B_1
vanish. The periodic functions Btilde_m(t)=B_m({t}) for m>=2 are continuous at
integers and piecewise polynomial. The value at individual integer points in
an integral is irrelevant, but its one-sided matching is essential for boundary
terms in integration by parts.

Set J_m(s)=integral_N^infinity Btilde_m(t)t^(-s-m)dt. Integrate first over
[N,K] for integer K>N, separately on every unit cell. Internal boundary terms
cancel because B_(m+1)(0)=B_(m+1)(1). The remaining upper endpoint tends to zero:
the periodic polynomial is bounded and K^(1-Re(s)-(m+1)) tends to zero.
Consequently

    J_m(s) = -B_(m+1) N^(-s-m)/(m+1) + (s+m)J_(m+1)(s)/(m+1).

Since {t}=1/2+Btilde_1(t), the original residual is

    -N^(-s)/2 - s J_1(s).

Apply the displayed recursion through J_(2p). The odd Bernoulli endpoint terms
vanish, the even terms give precisely the corrections in Z_(N,p), and the
remaining coefficient is -(s)_(2p)/(2p)!. This also explains the equivalent
odd-order remainder in DLMF 25.2.9: one further integration by parts uses the
zero endpoint B_(2p+1). No extra term or sign is silently removed.

A deliberately conservative periodic bound can be obtained without a Fourier
series or an asserted maximum. Since 0<={t}<=1,

    |Btilde_(2p)(t)| <= M_(2p),
    M_(2p)=sum_(k=0..2p) |binom(2p,k)B_k|.

For p=8 the exact recurrence gives B_16=-3617/510 and M_16=327039/170.
This is a coefficient-sum majorant, NOT the actual maximum of B_16.

On an outer disk where Re(s)>=sigma>0 and |s|<=B, the full analytic error is

    E_(N,p) = M_(2p) product_(j=0..2p-1)(B+j)
              * N^(1-sigma-2p) / ((2p)!*(sigma+2p-1)).

Indeed, each |s+j|<=B+j and the remaining scalar integral is
N^(1-sigma-2p)/(sigma+2p-1). This is uniform on the actual outer disk, not a
sampled-boundary assertion. Both zeta and the finite model are holomorphic on
that disk when it avoids one. Cauchy's estimate on their DIFFERENCE gives

    |zeta'(c)-Z_(N,p)'(c)| <= E_(N,p)/S,

where S is the outer radius. No pointwise inequality is differentiated.

## 3. Finite first-derivative formula and error accounting

Reuse a_k(s)=k^(-s) and collect the endpoint terms:

    C_(N,p)(s) = N/(s-1)-1/2
       + sum_(j=1..p) B_(2j)/(2j)! * (s)_(2j-1) * N^(1-2j),
    Z_(N,p)(s) = sum_(k=1..N) a_k(s) + a_N(s) C_(N,p)(s).

Ordinary finite differentiation yields

    Z_(N,p)'(s) = -sum_(k=1..N) log(k)a_k(s)
                  + a_N(s)*(C_(N,p)'(s)-log(N)C_(N,p)(s)).

Products and their first derivatives are generated together:
P_0=1,D_0=0 and P_(j+1)=P_j(s+j), D_(j+1)=D_j(s+j)+P_j.
Thus no division by a factor s+j is needed, and vanishing factors do not
invalidate the derivative formula. The rational inverse of s-1 is used only
at a proved nonzero exact rational center. No prime weights or zero multiplicities
enter this different finite sum.

All finite transcendental evaluations in the prototype are reduced to rational
bounds. For 1<=r<=2 and y=(r-1)/(r+1), so 0<=y<=1/3,

    log(r) = 2 sum_(j=0..L-1) y^(2j+1)/(2j+1) + remainder,
    0<=remainder<=2*y^(2L+1)/((2L+1)*(1-y^2)).

This follows by integrating the finite geometric identity for 1/(1-y^2), or
by summing its nonnegative tail. Exact integer range reduction k=2^q r then
charges q times the log(2) error plus the mantissa error. This atanh-series
prototype is NOT silently identified with the repository's reciprocal-grid
log checker. It needs its own rational-to-analytic refinement theorem.

For exp(w) with Re(w)<=0, divide w by 2^7, evaluate a 32-term rational Taylor
polynomial, and square seven times. The seed uses the existing mathematical
bound 2*b^32/32! under b/33<=1/2, where b is an L1 bound for w/2^7. Every local
coordinate rounding is charged by its exact L1 residual, which bounds its
Euclidean residual. The error recurrence is 2e+e^2+localError. Its radius is
rounded UP to a 160-bit dyadic rational at every step; the upward rounding is
charged, rather than treated as equality with the unrounded recurrence.
This is a proof-directed rational prototype, not execution of the existing
Lean checker or a qualified parser.

The log-input error for k^(-s) is charged once as mag(s)*logRadius, using the
true-exponential Lipschitz bound along the nonnegative real log ray, since
Re(-s)<=0. Ball multiplication charges
mag(a)*radius_b + mag(b)*radius_a + radius_a*radius_b.
All finite sums, products, endpoint corrections, jet terms, and rounding are
accounted for. Signed cancellation of centers does not cancel error bounds.

## 4. Concrete exact-rational candidate

Choose the exact center and radii

    c = 1/2 + (14134725141735/1000000000000)i,
    R = 1/100000000, S=1/4, N=81=3^4, p=8.

The outer parameters are sigma=delta=1/4 and B=mag(c)+S. Thus
N^(-sigma)=1/3 EXACTLY: the analytic majorant is rational, and no floating
power call is used to price it. Its values are approximately

    E_(81,8)   = 1.323711642080e-19,
    E_(81,8)/S = 5.294846568320e-19.

These printed decimals are summaries of exact rational allowances, not the
numbers compared by the acceptance calculations. For comparison, the previous
uncorrected allowance at the SAME N is 4B/3, approximately 19.8463. These compare
bounds, not observed errors, minimum runtime, or a proof of optimal complexity.

The exact-rational computation yields finite evaluation allowances below
2.0e-29 for the value and 7.6e-29 for the derivative. After adding the infinite
source remainders AND displacement to the presented decimal-rational centers,
the complete allowances are below 1.73e-18 and 1.40e-18, respectively.
The source candidate intentionally uses the looser common radius 10^(-15):

    v = -7637/200000000000000000
          + (59963/250000000000000000)i,
    d = 78329651186710129/100000000000000000
          + (124699829747982951/1000000000000000000)i,
    e0=e1=1/1000000000000000, A=1.

No inverse-derivative division is needed for this particular preconditioner.
The v0.17 Cauchy constructor gives the exact actual-zeta curvature majorant

    L = 793852007559200000/208333316666667, approximately 3810.489941123.

Recomputing the v0.16 Newton allowances gives

    eta   = 279037/1000000000000000000,
    kappa = 71133624055204295494728276960887 /
             208333316666667000000000000000000 < 1.

The strict self-map slack R-eta-kappa*R is approximately 6.5853e-9.
The derived position allowance eta/(1-kappa) is below 4.24e-13, smaller than R.
These rational inequalities pass without any call to zeta, log, exp, a root
finder, or external zero data in the primary constructor.

This makes a viable local candidate. The written analytic derivation plus the
finite calculation support its center enclosures as a conventional research
argument. They are NOT a Lean proof of CenterEstimates or proof of correctness
of a compiled implementation. The source theorem therefore remains conditional.
No assertion of this zero's ordinal number is made: locating one disk does not
show that no lower-height zeros exist. No complete-height count, critical-line
status, global explicit formula, divisor-tail bound, prime margin, or RH theorem
is returned by this source increment.

## 5. Evidence and exact next acceptance obligation

The source includes the literal rational candidate and its quantitative guard,
plus a theorem returning a unique simple canonical point ONLY GIVEN the two
actual center estimates. Its isolated target includes the full inherited Cauchy,
Newton, canonical-source, and tent obligations. No existing source or public-root
import is changed. Source comments distinguish the unpublished v0.17 preparation
from this publication; none of its mathematical declarations are strengthened.

The independent primary constructor uses Python stdlib integers and Fraction;
Decimal is used only for human-readable reporting. It constructs all 81 positive
bases explicitly and emits their logarithm and inverse-power midpoint/radius
records. The separate checks exercise exact Bernoulli boundary/derivative
identities, rational ball arithmetic, computed margins, and rejection controls.
Ordinary high-precision comparisons independently check actual zeta values and
derivatives, the finite corrected model, and selected outer-circle points.
Those comparisons are NOT the enclosure supplier and NOT proofs of uniformity.
The scripts and numeric output remain outside the pure-math repository.

Next: formalize the written periodic integration-by-parts remainder, the finite
corrected derivative, and the rational atanh/rounding refinement, and construct
EXACTLY CenterEstimates center centerData for this literal candidate. Preserve
the source function, cutoff convention, all 81 terms, every endpoint correction,
the same disk, and both final errors. Run pinned elaboration and full transitive
trust review only under the existing authorized execution process. A narrower
remaining proof obligation is not a discharged proof obligation. Global count,
coverage, tail, and arithmetic-margin work remains independent.
