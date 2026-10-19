# Rational logarithms and checks of the actual Mellin density

Owner #194; consumers #189/#209/#261. Additive extension of draft #274.
Parent: `5fc28a0c06cb7622d01bc475da88c726fabc2b05`.
Parent tree: `6b5c9f725277dc496e7c72f68ca87823195f8b60`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** These are Lean source candidates.
No accepted binary, parser, operational evaluator, proof replay, prime certificate
or transitive trust receipt is produced. The inherited analytic arguments still
require exact-head elaboration and review. No originality claim is made.

## 1. The new boundary is a complete elementary node, not an exponential alone

The previous rational checker bounds exp(w) for the external rational exponent
w. The actual Mellin density is exp((z-1)log(t)). Substituting a computed logarithm
center changes that exponent. A successful exponential check cannot by itself
certify the original density or eliminate the logarithm uncertainty.

This increment gives the logarithm construction a rational refinement and binds
the exponential checker to the exponent derived from the same external rational
parameter z and node t. The final checker recomputes the total node allowance.
There is no independently supplied center, mantissa, exponent label, log radius
or claimed final allowance to be trusted.

## 2. Rational formulas refine the existing real formulas exactly

For rational t and positive L, define the affine rational nodes

    x_i = 1 + i (t-1)/L, i=0,...,L,
    lo_L = sum_(i<L) (x_(i+1)-x_i)/x_(i+1),
    hi_L = sum_(i<L) (x_(i+1)-x_i)/x_i,
    c_L = (lo_L+hi_L)/2, eta_L = (hi_L-lo_L)/2.

The cast lemmas identify these expressions with the existing uniformNodes,
lowerSum, upperSum, logCenter and logRadius. No different definition of log is
introduced. Empty sums still have their ordinary mathematical value, but zero
resolutions are rejected by the acceptance predicate.

For an external scale k, compute r=t/2^k, and

    c = k c_L2(2)+c_Lr(r),
    eta = k eta_L2(2)+eta_Lr(r).

The Boolean scale check requires t>=1, 2^k<=t<=2^(k+1), L2>0 and Lr>0. Its casts
supply the exact existing dyadic theorem's hypotheses. This derives

    c>=0, eta>=0, |log(t)-c|<=eta,
    eta = k/(4L2)+(r-1)^2/(2Lr*r) <= k/(4L2)+1/(4Lr).

The finite precision predicate checks eta<=epsilon and epsilon>=0. For equal
grids, the source also transports the sufficient condition k+1<=4L*epsilon.
The same log-two uncertainty is still charged k times. At a dyadic boundary,
either admitted scale gives the same center and radius when grids agree.
This does not implement an automatic scale search or a resource policy.

## 3. The checked exponential has the correct derived input

A Resolution contains five natural parameters: logarithm scale, log-two cells,
mantissa cells, exponential squarings and Taylor terms. The two scales have
different roles. Given external rational complex coordinates z and rational t,
the checker computes

    q = |Re(z)-1|+|Im(z)|,
    w = (z-1)c,          B=q|c|.

It checks the logarithm scale and Re(z)<=1, and invokes the unchanged
RationalExpTrace.check at precisely w, B and the selected exponential parameters.
That check retains its magnitude guard, Taylor ratio guard, exactly s+1 values,
exactly s square radii, exact seed comparison and every local square comparison.
Neither defaulted list access nor a final-only comparison supplies missing data.

The new source derives the magnitude condition from q and c, and the required
Re(w)<=0 from Re(z)<=1 and the proved c>=0. For nonvacuity, exactTrace reuses the
previous constructor at the derived exponent. The candidate acceptance theorem
covers every valid log scale, allowed horizontal coordinate and admissible
Taylor guard, not merely one assumed passing trace.

## 4. Total-node soundness adds the logarithm error exactly once

The existing real-ray estimate gives

    |exp((z-1)log(t))-exp((z-1)c)| <= q*eta,

because log(t) and c are nonnegative and Re(z-1)<=0. This is the same previously
proved-in-source analytical argument, now supplied with rational-refined inputs.

The inherited exponential checker computes its nonlinear output allowance E_exp
from the actual seed and every recorded square. Therefore the new check_sound
target is

    check(z,t,resolution,trace)=true
      ==> |density(toComplex(z),t)-toComplex(A_s)| <= q*eta+E_exp.

The underlying density remains the existing integral kernel's density. It is not
replaced by a polynomial or by an exponential at c. checkWithin checks the full
sum against an external nonnegative epsilon and returns the corresponding
analytic bound. The exp allowance is not charged twice, and the log charge is
not omitted or silently divided by the exponential scale.

checked_log_charge_le records the precise consequence: a successful requested
precision must be at least the charged q*eta, since the accepted exponential
radius is nonnegative. This is a limitation of this sufficient checker, not a
lower bound on the actual numerical error. Failure says only that these tests
do not certify the requested tolerance; it does not prove the approximation is
inaccurate or identify a zero.

## 5. Concrete nonvacuity and failure controls

At z=0, t=2, use k=1, L2=Lr=1, s=1 and M=3. Then

    c=3/4, eta=1/4, q=1, w=-3/4, B=3/4,
    T_3(w/2)=89/128,
    A_1=7921/16384,
    delta=9/512,
    E_exp=9297/262144,
    E_node=74833/262144 < 3/10.

The literal finite node check and its analytic consequence with tolerance 3/10
are named source controls. This is a nonconstant elementary density example,
not a zeta-zero or prime certificate. Its exp-only error passes 1/10; its total
node allowance does not. The unchanged trace is rejected at t=4 after the scale
is correctly updated, and also at the changed complex parameter z=i. These are
specific controls, not a claim that a trace can never legitimately enclose two
different inputs with a sufficiently large allowance.

At z=1 the density is constant. A one-term exact exponential trace gives output
one and zero total allowance at a valid node; the checker accepts zero tolerance.
It still rejects a zero logarithm resolution. Re(z)>1 is rejected even at t=1:
this is the selected domain of this node checker, not a denial that other exact
or general-domain evaluations exist. Negative tolerances are rejected.

## 6. What remains outside this node refinement

There is no rational checker for the entire quadrature or outer weighted sum in
this increment. Its nodes, weights, coverage, accumulation, optional rounded
arithmetic and requested kernel tolerance remain the next numerical interface.
The existing real/complex quadrature theorem can consume a proved node enclosure
for every exact node, but a list of such checks is not by itself an integral
certificate. Rounded node coordinates require a proved comparison to the exact
nodes; this checker does not silently extend to nearby inputs.

No automatic precision allocation, parser, byte decoding, numerator/denominator
size guard, generated-code qualification or operational runtime is implemented.
The formulas and Boolean definitions are finite rational mathematics; very large
parameters can still make evaluation impractical. Resource exhaustion and a
failed check must not be represented as successful verification.

The separate triangular observable needs its own exact kernel/weight adapter.
Complete source normalization, zero identity and multiplicity, complete finite
height coverage, omitted tails and strictly positive arithmetic margins remain
independent mathematical obligations. Neither a failed nor a successful node
check proves RH, Legendre or a new prime-distribution estimate.

## 7. Source scope

New owners are GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure and
GRWTSK.Analysis.Complex.RationalMellinNode. The isolated import root is
GRWTSK.Interfaces.QuadraticIntervalRationalNodeCore, with static target
verification/quadratic-interval-rational-node-v0.1.toml. Previous sources, roots
and targets are unchanged. The target retains the exact previous target and
all inherited public-type, generated-declaration, decision-instance, control and
transitive trust obligations. Static source hashes are not elaborated types.

Pinned dependencies are the earlier finite/dyadic log, exponential trace and
real-ray transport owners, plus Mathlib rational casts and finite sum laws at
the revision stated above. Operational testing scripts and reports remain
outside the pure mathematics repository. No Lean/Lake process, execution request,
worker qualification, F06 release, merge or issue closure is attached.
