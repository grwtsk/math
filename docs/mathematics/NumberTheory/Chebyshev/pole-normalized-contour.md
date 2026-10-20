# Pole-safe finite evaluation and sourced nonvanishing patches for counting

Owner #135; numerical supplier #194; downstream canonical consumer #261.
Parent `88941cbdaf84eb06957ecaed99403999f4991c3d`, tree
`e09f0dc9d6c9bc038cc33e7dae1f611f3476a888`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** These are unelaborated source
candidates. The complete count at height fifteen is not evaluated. There is no
closed contour, winding calculation, argument-principle application or full
canonical-head cover in this increment. No old source, target, pin, literal local
zero candidate or public-root import changes.

## 1. Preserve the actual analytic source and its multiplicities

The maintained source F is `CriticalStripHeightDescent.poleNormalizedZeta`:

    F(s)=(s-1)*zeta(s) for s!=1, F(1)=1.

Its entire extension was already sourced from the actual residue, not from the
junk value of a totalized product at the pole. The new code does NOT redefine F.
At every nonpole point the factor s-1 is an analytic unit. The source candidate
`analytic_order_eq` transports the actual analytic order unchanged. In particular
its natural order at each canonical ZeroPoint is the existing zeta multiplicity.
At one the normalized source has order zero, not one spurious zero.

In Re(s)>0, F(s)=0 is equivalent to the exact maintained NontrivialZetaZero
predicate, including its exclusions. The half-plane qualification matters:
negative trivial zeros still belong to the normalized source outside this region.
A future contour cannot count them as canonical nontrivial zeros without a
separate region/divisor comparison.

## 2. Cancel the finite pole before evaluation, not after totalized division

The old endpoint-corrected finite model uses the inclusive positive inventory
k=1,...,N. Write its regular coefficient as

    A_(N,p)(s)=-1/2+sum_(j=1..p) B_(2j)/( (2j)! N^(2j-1) ) * (s)_(2j-1).

The new finite normalized model is

    Q=N+(s-1)*A,
    G_(N,p)(s)=(s-1)*sum_(k=1..N) k^(-s)+N^(-s)*Q.

For N>=1 it is entire, and G(1)=1. For s!=1 it equals
(s-1)*EndpointCorrectedJet.model N p s. The equality with that raw product is
NOT asserted at one: the raw totalized product there is zero.

Differentiating the actual finite expression gives

    Q'=A+(s-1)*A',
    G'=S_N+(s-1)*S_N'+N^(-s)*(Q'-log(N)*Q).

This formula is valid AT one, with no quotient singularity. For N=1,p=0 the
complete finite model is (s+1)/2 and G'(1)=1/2. Exact value one at the pole does
not imply zero derivative. All coefficients come from the existing Bernoulli and
Pochhammer owners; the inclusive minus-half sign is unchanged.

`RationalPoleNormalizedJet` constructs the regular coefficient and its tangent
in Q(i), then reuses the existing complete positive-base prefix and rounded Ball
operations. It never calls the old coefficient inverse at s=1. Its output balls
enclose the FINITE G and its ACTUAL derivative under the same exact log/power leaf
enclosure proofs. Midpoint displacement, product-of-radii terms and every outer
operation remain charged. No parser/compiler/runtime qualification is implied.

## 3. Actual source errors retain the pole factor

The preceding periodic-Bernoulli source identity gives, for Re(s)>0 and p>=1,

    F(s)-G_(N,p)(s)=(s-1)*R_(N,2p)(s).

The new proof candidate treats s=1 separately using the exact removable values,
then uses the unchanged actual-source residual elsewhere. Thus no nonpole
hypothesis is needed in this normalized identity. The m=2p integral majorant is

    E(N,p,B)=M_(2p)*product_(j=0..2p-1)(B+j)
             /((2p)! (2p-1) N^(2p-1)),
    M_m=sum_(j=0..m) abs(binomial(m,j)*B_j).

With |s|<=B, |F-G|<=|s-1|*E. The rational source ball uses the same conservative
L1 majorant for |s| and |s-1| and adds this derived tail to the finite value ball.
It is not a free user-supplied error label. It is also NOT an omitted-zero tail.
The source identity still requires Re(s)>0 even though G is entire.

A POINTWISE source-value radius is not a source-derivative radius. Derivative
transport uses Cauchy on the actual holomorphic difference, with a UNIFORM error
on an outer circle. Because F and G are entire, that circle may cross or enclose
s=1. The new derivative theorem needs no pole-avoidance hypothesis. It retains
its genuine uniform-error premise and radius divisor.

## 4. All-point derivative bounds without an inverse pole distance

Reuse the maintained fractional-Mellin identity and its actual integral bound:

    F(s)=s-s*(s-1)*I(s), |I(s)|<=1/sigma for Re(s)>=sigma>0.

If |s|<=B and |s-1|<=D, then

    |F(s)| <= C := B+B*D/sigma.

For an outer disk Dbar(c,S), choose sigma<=Re(c)-S, B>=|c|+S and
D>=|c-1|+S. These inequalities hold at EVERY point of the disk. For 0<=R<S,
the inherited Cauchy estimate then supplies |F'|<=C/(S-R) on the whole inner disk.
No samples of F' or caller-supplied derivative bound stand in for that statement.
The estimate has no inverse distance to the pole. It can still be conservative
and grows with height through B and D; no height-uniform cost claim is made.

The rational patch gate computes all these bounds from the exact c,R,S:

    sigma=c.re-S, B=mag(c)+S, D=mag(c-1)+S,
    M=(B+B*D/sigma)/(S-R), lower=max(abs(v.re),abs(v.im)).

It checks 0<=R<S, sigma>0, e>=0 and the STRICT margin e+M*R<lower. An actual
source ball |F(c)-v|<=e remains required. The old SampleVariationPatch then gets
its whole-region variation theorem from the derived derivative bound. The new
assembled consumer feeds it the normalized finite value plus the sourced tail,
retaining all leaf enclosures and the strict final gate. No new patch/cover type
or relaxed acceptance predicate is introduced.

The L1 magnitude is an UPPER norm bound, not a sample lower bound. For v=3/5+4i/5
it is 7/5 while the true norm is one; the used coordinate lower bound is 4/5.

## 5. An effective analytic pole collar, not just a conditional gate

For |s-1|<=r<1, Re(s)>=1-r and |s|<=1+r. The SAME exact Mellin identity gives

    |F(s)-1| <= r+(1+r)*r/(1-r) = 2r/(1-r).

At r=1/5 this is at most 1/2. Therefore, on the ENTIRE CLOSED disk,

    |s-1|<=1/5 ==> |F(s)|>=1/2.

This replaces the old existential neighborhood by an explicit rational collar
for this application. It is not claimed maximal. Returning to unnormalized zeta
requires s!=1 and retains the factor: 1/2<=|s-1|*|zeta(s)|.

The rational Cauchy gate separately passes at c=1,R=1/10,S=1/2 with the exact
source value one. It computes C=3, M=15/2 and margin 1/4. At R=1/8 the bound is
an equality, so the guard correctly rejects, although the sharper direct collar
already proves this smaller disk nonzero. Rejection of a sufficient budget is
not proof of a zero. A fictitious exact value two at c=1 passes the arithmetic
guard but its actual-source enclosure is false; this is a deliberate control,
not an analytic certificate. Nonzero endpoints alone do not cover an edge.

## 6. Evidence and remaining counting obligations

2,330 exact-rational assertions passed in an INDEPENDENT Python model. They
include finite coefficient normalization/derivative identities, full value balls
at positive integer parameters with rational exact targets, 1,080 inverse-power
checks, collar geometry, strict/equality margins and false-data controls. Six
complete 81-base/eight-correction output records include the pole, real points
within 10^-8 on each side, and nonreal parameters. Inputs are reused; these are
not independent zeta-zero cases and do not execute the Lean checker.

186 additional ORDINARY comparisons at 100 decimal digits passed, with diagnostic
slack 10^-80. They check finite values/derivatives, actual normalized-source
balls, sampled pole collars and outer/inner derivative bounds, and a uniform
remainder allowance for the source derivative at one. These are not certified
interval arithmetic; finite samples are not proofs of uniformity. No root finder,
actual-zero list or contour count was used. Scripts stay outside this repository.

The next count supplier still needs a completely covered contour or complementary
zero-free region, source/divisor agreement on that region, endpoint conventions,
and a genuine argument/winding/count theorem. These local patches do NOT imply
H(15)<4, and they do not cover the full height-fifteen head. In particular, the
current positive-half-plane error bound cannot be silently used on a contour
crossing Re(s)=0. All inherited source, large finite reductions and new scripts
require pinned elaboration and independent type/import/axiom review. No Lean/Lake
invocation, worker request, hold release, merge, issue closure, Legendre or RH
conclusion is represented by this source-only increment.
