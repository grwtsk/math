# A positive fixed-test enclosure after centered curvature control

Local attribution: grwtsk contributors.
MSC2020: 11M26 (primary), 11M41, 65D30, 65G20.
Coordination: grwtsk/math#1801, iteration 13, 2026-11-18 America/Los_Angeles.
Inspection source: `aaa93f568210e34ba542a70196b6037783df9b07`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE, with
EXECUTED_OUTWARD_DYADIC_INTERVAL_ARITHMETIC and SOURCE_RETURN_NOT_LEAN_VERIFIED.
Parsing, elaboration, exact-type checks, builds, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
Novelty and completeness of prior-art comparison: UNASSESSED.
The numerical premise bridge in the final Lean declaration is NOT closed.

## Exact target and first unresolved premise

The target is the unchanged primitive-nonprincipal arithmetic value for
`SmallCharacterPhases.three`, the actual nonprincipal character of conductor
three, and `oddExpBump 1`. Write

    f(t)=t*Phi(1-t^2), Phi(s)=exp(-1/s) for s>0, Phi(s)=0 otherwise,
    g=liftReal(f), E=energy(g), C(r)=correlation(g,r),
    chi(n)=0,1,-1 in residues 0,1,2 modulo 3.

The maintained source supplies smoothness, compact support [-1,1], oddness,
gamma integrability, character primitivity and actual gammaParity=1. It defines

    Q = c*E + integral_0^infinity k(r)*S(r)dr - P,
    c = log(3/pi)-gamma-3*log(2)+pi/2,
    k(r) = exp(-3*r/2)/(1-exp(-2*r)),
    S(r) = integral_R |g(t+r)-g(t)|^2 dt = 2*E-2*Re C(r),
    P = 2*sum_(n in activePrimePowers(1)) Lambda(n)/sqrt(n)
                                      *Re(conj(chi(n))*C(log n)).

This is `DirichletStageChain.primitiveArithmeticValue`, not a positive model.
There are no pole terms for this primitive nonprincipal character. This fact
cannot be transferred to conductor-one zeta, where both original poles remain
required. The exact active integer inventory is {2,3,4,5,6,7}; 4 has weight
log(2)/2, not log(4)/2, and 6 remains in the inventory with zero weight.

Iteration 12's complete calculation was inconclusive. Its geometric mass-error
term was 20/N. The present increment removes that first-order bottleneck by
actual curvature control and exact midpoint cancellation. It does NOT assert
positivity for every test at radius one, any determining family, all supports,
all characters, or any RH/GRH target.

## Complete analytical argument

### Flat-glue curvature, including endpoints

Put s=1-t^2 and u=s^(-1). The pinned flat-glue theorem proves differentiability
of P(1/s)*Phi(s) even at s=0, with derivative s^(-2)*(P-P')(1/s)*Phi(s).
Thus differentiation of the SAME smooth bump gives on the whole real line

    f''(t) = -6*t*u^2*Phi(s) - 8*t^3*u^3*Phi(s) + 4*t^3*u^4*Phi(s).

For s>0, the exponential series gives u^j/j! <= exp(u), hence
0<=u^j*Phi(s)<=j!. For s<=0, these products are zero, including s=0.
Inside [-1,1], |t|<=1, so

    |f''(t)| <= 6*2! + 8*3! + 4*4! = 156.

Outside the support the same derivative formula is zero. The estimate is
therefore GLOBAL, not an interior bound that loses control at a cell crossing
a support endpoint. The earlier source gives |f|<=1 and |f'|<=5 globally.
For every real lag r the original real product integrand F_r(t)=f(t)f(t+r)
has

    F_r''(t)=f''(t)f(t+r)+2f'(t)f'(t+r)+f(t)f''(t+r),
    |F_r''(t)| <= 156+50+156 = 362.

The mixed term is necessary: f(t)=t has f''=0 but (f(t)^2)''=2.
The derivative formula was also checked symbolically on the interior. This
algebra check does not prove the flat endpoint theorem or independent review.

### Centered midpoint integration and source correlation

On an ordered cell of width h and midpoint m, retain the affine Taylor term
until integration. Its linear part integrates to zero. The complete residual
is bounded by H*h^3/24. This is CMQ-1 through CMQ-4 in
[CenteredMidpointQuadrature.lean](../../MeasureAndIntegration/CenteredMidpointQuadrature.lean).
For N equal cells covering [-1,1], the product curvature cost is

    362*N*(2/N)^3/24 = 362/(3*N^2).

The correlation product is supported in [-1,1] because its first factor is
zero outside that interval. No shifted edge is discarded. As f is real, the
original complex correlation is real and equals integral_R F_r(t)dt.
BMQ-5 returns the finite midpoint sum to this actual correlation.

Let every computed point sample v_i enclose f(m_i) with radius at most e.
The actual factors have magnitude at most one; the existing product-error
algebra gives 2e+e^2 per product, including its cross term. The whole interval
has length two. Therefore the common physical error is

    epsilon_C = 362/(3*N^2) + 2*(2e+e^2).

These samples do not replace f as the test function. In particular, outward
rounding need not preserve exact oddness of the finite table; the enclosed
continuous function is still the original odd f.

### Exact sample arithmetic

The reference evaluator below uses signed integer endpoints divided by
D=2^60. This replaces the preceding experiment's order-64 binomial sample
method, NOT its arithmetic source. Every arithmetic operation is rounded
outwards by integer floor/ceiling. No floating transcendental value determines
acceptance. All sums and integer products have arbitrary precision.

For exp(-y), y>=0, divide y by 2^k until x<=1/2. Enclose
exp(x) by its positive Taylor sum through degree 18 and the geometric tail

    next_term_19/(1-x/20).

All later term ratios are <=x/20<1. Invert the positive interval and square
it k times, outward at each step. This gives exp(-y), including very small
values near the flat support endpoint. For rational t inside (-1,1), multiply
this interval at y=1/(1-t^2) by signed t; outside and at the endpoints use exact
zero. No reciprocal at an inadmissible endpoint is evaluated.

For log(x), x>=1, reduce x=2^k*u with 1<=u<2. With v=(u-1)/(u+1), use

    log(u)=2*sum_(j>=0) v^(2j+1)/(2j+1),
    tail_after_32 <= 2*v^65/(65*(1-v^2)).

The same series supplies log(2), so log(x)=k*log(2)+log(u). The formula follows
by integrating the geometric series on [0,v], whose remainder has the stated
positive bound. Square roots of positive integers are enclosed by integer
square-root comparisons on n*D^2. These are actual elementary functions, not
formally named decimal constants. The range-reduced evaluator itself is not
formalized as a Lean certificate checker by this increment.

### Complete physical and lag geometry

The primary run uses N=8192, h=2/N=1/4096, and physical midpoints
m_i=-1+(i+1/2)h for i=0,...,N-1. For lag s_j=jh, the translated midpoints
coincide with the same sample grid. The finite signed convolution

    C_hat(jh)=h*sum_(i=0)^(N-j-1) v_i*v_(i+j)

therefore evaluates the exact midpoint sum; all remaining factors are zero
outside the support. Its radius is epsilon_C. For j=N, C(2)=0 exactly by the
maintained support-cutoff theorem. The zero-lag interval encloses actual E.
Only this interval is intersected with [0,infinity), using E>=0.

Reuse the original first-order L1 supplier rather than inventing a tighter
norm certificate:

    ||f||_1 <= B0=h*sum_i |v_i| + 10/N + 2e,
    |C(r)-C(s)| <= L*|r-s|, L=5*B0.

Lag cells are [(j-1/2)h,(j+1/2)h] for j=9,...,16384. Thus

    eta=17/8192, R=32769/8192.

Every cell is included. Around its center, the correlation uncertainty grows
by L*h/2; translation-energy uncertainty grows by L*h. For cells entirely
beyond r=2, use the exact S(r)=2E instead. On each cell k decreases, so the
right endpoint supplies its lower kernel bound and the left endpoint its
upper kernel bound. Multiply these positive kernel bounds by the enclosed
nonnegative translation energy and by h; sum every whole cell. Clipping the
translation-energy lower bound at zero uses an exact positive squared norm.
The signed Weil form, character sum and correlation are NEVER clipped.

### Actual coefficients and all prime terms

Use the existing source identity

    c=log(3)-log(pi)-gamma-3log(2)+pi/2.

The pinned-library interval 3.14<=pi<=3.15 is retained. At harmonic index 128,

    H_128-log(129) <= gamma <= H_128-log(128)

supplies the Euler constant. Range-reduced logarithm intervals enclose every
term. Coefficient-times-energy multiplication is ordinary signed interval
multiplication, automatically paying the cross effect of both uncertainties.
The conductor and parity are actual properties of SmallCharacterPhases.three.

At every n=2,...,7, an actual logarithm interval selects a nearest grid lag.
Its FULL distance to both log interval endpoints is charged through L.
Multiply the resulting signed correlation interval by the actual weight
interval and exact phase chi(n), then by two. Labels 3 and 6 contribute exact
zero through phase/weight; label 4 contributes with log(2), not log(4).
Inventory coverage is admitted twice: log(7)<2<log(8), and separately
7*exp(-2)<1<8*exp(-2), with independently formed elementary-function bounds.
These are two finite checks, not independent proofs of the full computation.

### Both omitted gamma regions and exact source return

The gamma density is integrable by the maintained compact-C1 theorem. Both
omitted pieces are nonnegative, so the complete lower bound may discard them.
This is legitimate for a LOWER bound only. For the upper bound we charge

    Bnear=(225/4)*eta^2,
    Bfar=8*E_upper*exp(-R/2)/(1-exp(-2)).

These are the existing support/Lipschitz near bound and the complete far bound
from WeilGammaCompactCutoffs, using the derived energy ceiling rather than
2T^3. All elementary factors are outwardly evaluated. Therefore

    c*E+Gmiddle-P <= Q <= c*E+Gmiddle-P+Bnear+Bfar

in the interval sense, with all uncertainties already enclosed.

A separate sharper WRITTEN upper bound uses exact C(r)=0 for r>=R>=2:

    Bfar_sharp=(4/3)*E_upper*k(R).

Indeed S(r)=2E and 1-exp(-2r)>=1-exp(-2R), while the integral of exp(-3r/2)
from R to infinity is (2/3)exp(-3R/2). The sharper complete upper interval is
reported separately; no extra Lean theorem for this far-bound specialization
is claimed. Neither upper estimate changes the positive lower endpoint.

## Executed results and exact acceptance inequalities

All integer pairs below have common denominator D=1152921504606846976.
They are the interval endpoints actually used, not inward decimal rounding.

| Quantity | Lower integer | Upper integer |
|---|---:|---:|
| E | 17632116550347397 | 17636262625443876 |
| c | -1313579426689047937 | -1295176731872864405 |
| Gmiddle | 24714178833589590 | 25793793410354942 |
| P | 3387369963727102 | 3970887632457040 |
| cE+Gmiddle-P | 649441224443974 | 2598737495390564 |
| Bnear | 279280248422400 | 279280248422400 |
| Bfar | 22081742220670039 | 22081742220670045 |
| Complete source enclosure | 649441224443974 | 24959759964483009 |
| Sharper written complete enclosure | 649441224443974 | 2936314522735100 |

Consequently the WRITTEN argument plus the EXECUTED interval arithmetic gives

    0.000563300 <= Q <= 0.021649141,

or, using the additional supported-tail argument,

    0.000563300 <= Q <= 0.002546847.

These decimal endpoints are outward rational reports. In particular the
conservative route gives 1/2000 < Q < 11/500; the sharper route gives
1/2000 < Q < 13/5000. This is ONE character and ONE test, not RH or GRH.
The assertion is not a closed, kernel-verified Lean theorem.

The source has a conditional Lean consumer BMQ-6 with these FOUR premises:

    E <= 153/10000,
    c >= -57/50,
    Gmiddle >= 5359/250000,
    P <= 8611/2500000.

The exact integer interval checks establish all four numerically under the
written enclosure derivation. Since E>=0, cE>=(-57/50)*(153/10000), and hence

    Q >= 687/1250000 = 0.0005496 > 1/2000.

The last margin is 31/625000. The checker-to-Lean bridge for these four
numerical component premises remains OPEN; no hypothesis is hidden or discharged
by an unrun computation.

The maximum sample radius is 9/D. The curvature-only physical charge is
181/100663296, about 0.0000017981. The old first-order charge on the SAME
8192-cell geometry is 5/2048, about 0.0024414. Running the same interval data
with only that charge changed back yields

    -0.021930026 <= Q <= 0.067995382 : INCONCLUSIVE.

Thus the new lower sign is not explained merely by increasing the mesh or
changing the scalar precision. At N=4096 the second-order run also gives a
positive lower endpoint, but not the selected 1/2000 margin. Two meshes are
not independent proofs. Omitting label 4 makes the calculated lower endpoint
negative; this loses certification and does NOT prove a negative source value.

## Individual formal-source records

Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.BumpMidpoint`.

- **BMQ-1 `abs_inv_pow_mul_glue_le_factorial`.** For every natural k and real s,
  the actual flat product is bounded by k!. Primary source:
  `Real.pow_div_factorial_le_exp`, Mathlib at the exact pin; the zero branch
  is the original expNegInvGlue. Consumer: BMQ-3. No finite checks prove this
  universally quantified inequality.
- **BMQ-2 `hasDerivAt_deriv_oddExpBump`.** For every real T,t, differentiates the
  original first derivative using the flat polynomial/glue rule. Primary
  source: Sebastien Gouezel and Yury Kudryashov, Mathlib
  `Analysis/SpecialFunctions/SmoothTransition.lean`,
  `expNegInvGlue.hasDerivAt_polynomial_eval_inv_mul`, blob
  `cd24266ad8eb620150d7dd302ea1d6932745c14b`. Local source:
  `ExponentialBumpCells.hasDerivAt_oddExpBump`. Consumers: BMQ-3/4.
- **BMQ-3 `abs_iteratedDeriv_two_unit_bump_le`.** Every real t, bound 156 for
  the original unit bump. The scope is T=1, not all windows. Consumers: BMQ-4
  and the written precision analysis. Argument: the three factorial bounds
  with all coefficients and endpoint zero branch retained.
- **BMQ-4 `abs_iteratedDeriv_two_unit_bump_product_le`.** Every real lag and
  physical point, curvature bound 362 for f(t)f(t+r), including its mixed
  term. Consumer: BMQ-5. Local first-derivative and sup bounds come from
  ExponentialBumpCells and WeilExponentialBumpPrimeEvaluation; no fitted
  derivative bound or sampled smoothness is assumed.
- **BMQ-5 `real_correlation_midpoint_error`.** All finite ordered covering
  cells and actual product sample bounds return to the REAL PART of the
  original complex correlation. Consumers: energy at lag zero, middle-gamma
  translation energy, and the exact real modulus-three prime response.
  Integrability comes from the original L2 correlation theorem; support
  gives the actual whole-line/interval identity. Complex characters with
  nonreal test correlations are not asserted to have been covered here.
- **BMQ-6 `three_unit_bump_pos_of_component_bounds`.** The four numerical
  bounds stated above imply the original primitiveArithmeticValue is strictly
  greater than 1/2000. Source consumer: the unchanged primitive critical-line
  program, as one fixed positive direction ONLY. It reuses the maintained
  finite-lag lower enclosure and the actual conductor-three character.
  All four numerical premises remain in the formal signature; their bridge
  from the external finite evaluator is NOT_RUN/OPEN, not silently accepted.

Each is a local consequence or adaptation against the pinned source, not a
claimed new paper theorem. The complete primary arguments appear above.
CMQ-1's underlying Taylor theorem is attributed in its own adjacent record.
Neither the current keyword search nor these comparisons establishes a
complete prior-art survey or uniqueness of the construction.

## Verification scope and reproduction

The deterministic reference algorithm below uses only standard-library
integer/Fraction/isqrt arithmetic for its mathematical result. It checks 85
signed interval operations against exact rational corners, two distinct
alternating-series exponential controls, both inventory admissions, the seven
primary numerical acceptance comparisons, and the omitted-prime-power control.
Its runtime measurement is metadata, not a mathematical input. Replaying it
is reproducibility, not independent mathematical review.

Extract the single Python block below and run, for example:

    python3 evaluate.py 8192 OUTPUT_DIRECTORY
    python3 evaluate.py 8192 OUTPUT_DIRECTORY first-order
    python3 evaluate.py 4096 OUTPUT_DIRECTORY

The primary JSON contains exact integer endpoints, all prime rows, and the
paid physical/lag errors. No Python numeric output is imported as a Lean axiom.
The prior inconclusive experiment and all historical evidence remain intact.
Static source scans and publication identity comparisons are separate from
parsing, elaboration, kernel replay and axiom auditing, all still NOT_RUN.
The canonical Noe skill lookup at
`e1d0280f3c126613d36a16427db5746e894b44bb` returned 404; no dependent execution
was dispatched. The mathematical reference calculation is maintained here
beside its source consumer, not as operational cache/worker state.

OPEN: exact-source Lean validation and possible proof-text repairs; formal
range-reduced interval-evaluator soundness and discharge of BMQ-6's four
numerical premises; independent analytical/source review; general character
coverage, determining tests, conductor-one poles, and universal signed
all-window lower bounds. A positive value in one direction proves none of
those quantified statements. No root imports or pins are changed.

## Maintained reference algorithm

```python
"""Deterministic outward dyadic arithmetic for one original Weil test.
Local attribution: grwtsk contributors. Not a Lean or kernel verification.
All interval operations use integers; no floating transcendental evaluation.
"""
from fractions import Fraction as F
from math import isqrt
import json, sys, time, hashlib
from pathlib import Path
Q=1<<60

def ceildiv(a,b):
    assert b>0
    return -((-a)//b)
class I:
    __slots__=('lo','hi')
    def __init__(self,lo,hi=None):
        self.lo=int(lo); self.hi=int(lo if hi is None else hi)
        assert self.lo<=self.hi
    @staticmethod
    def rat(x):
        x=F(x); return I((x.numerator*Q)//x.denominator,ceildiv(x.numerator*Q,x.denominator))
    def __add__(self,b): return I(self.lo+b.lo,self.hi+b.hi)
    def __neg__(self): return I(-self.hi,-self.lo)
    def __sub__(self,b): return self+(-b)
    def __mul__(self,b):
        z=[self.lo*b.lo,self.lo*b.hi,self.hi*b.lo,self.hi*b.hi]
        return I(min(z)//Q,ceildiv(max(z),Q))
    def reciprocal(self):
        assert self.lo>0
        return I(Q*Q//self.hi,ceildiv(Q*Q,self.lo))
    def __truediv__(self,b): return self*b.reciprocal()
    def times(self,x):
        x=F(x)
        a,b=(self.lo,self.hi) if x>=0 else (self.hi,self.lo)
        return I(a*x.numerator//x.denominator,ceildiv(b*x.numerator,x.denominator))
    def widen(self,r):
        d=ceildiv(F(r).numerator*Q,F(r).denominator)
        assert d>=0
        return I(self.lo-d,self.hi+d)
    def clip_nonnegative(self): return I(max(0,self.lo),max(0,self.hi))
    def report(self,d=10**9): return [str(F(self.lo*d//Q,d)),str(F(ceildiv(self.hi*d,Q),d))]
    def raw(self): return [self.lo,self.hi]
ONE=I(Q);ZERO=I(0)
def expneg(y):
    y=F(y); assert y>=0
    k=0
    while y>F(1,2): y/=2;k+=1
    x=I.rat(y); term=ONE; total=ONE
    for j in range(1,19):
        term=(term*x).times(F(1,j));total=total+term
    first=(term*x).times(F(1,19))
    tail=first/(ONE-x.times(F(1,20)))
    z=I(total.lo,total.hi+tail.hi).reciprocal()
    for _ in range(k): z=z*z
    return z

def logsmall(x):
    x=F(x); assert 1<=x<=2
    v=I.rat((x-1)/(x+1));v2=v*v;power=v;total=ZERO
    for j in range(32):
        total=total+power.times(F(2,2*j+1));power=power*v2
    tail=power.times(F(2,65))/(ONE-v2)
    return I(total.lo,total.hi+tail.hi)
LOG2=logsmall(2)
def logint(x):
    x=F(x);assert x>=1
    k=0
    while x>=2: x/=2;k+=1
    return logsmall(x)+LOG2.times(k)

def bump(t):
    t=F(t)
    if abs(t)>=1:return ZERO
    return expneg(1/(1-t*t)).times(t)

def kernel(r):
    r=F(r);assert r>0
    return expneg(F(3,2)*r)/(ONE-expneg(2*r))

def sqrtint(n):
    a=isqrt(n*Q*Q);return I(a,a if a*a==n*Q*Q else a+1)

def controls():
    # Outward signed arithmetic against exact rational endpoint operations.
    vals=[F(-7,3),F(-1,8),F(0),F(2,7),F(11,3)]
    count=0
    for a in vals:
      for b in vals:
        ia,ib=I.rat(a),I.rat(b)
        for ic,z in [(ia+ib,a+b),(ia-ib,a-b),(ia*ib,a*b)]:
          assert F(ic.lo,Q)<=z<=F(ic.hi,Q);count+=1
        if b>0:
          ic=ia/ib;z=a/b;assert F(ic.lo,Q)<=z<=F(ic.hi,Q);count+=1
    # Midpoint curvature factor is sharp for t^2; affine contributions cancel.
    assert F(1,3)-F(1,4)==F(2,24)
    # Independent rational series controls exp(-1), exp(-2) via alternating sums.
    for y in [F(1),F(2)]:
      term=F(1);terms=[term]
      for j in range(1,81):term*= -y/j;terms.append(term)
      lo=sum(terms[:80]);hi=sum(terms[:81]);ei=expneg(y)
      assert F(ei.lo,Q)<=lo<=hi<=F(ei.hi,Q)
    # Actual inventory, including prime-power 4 and zero-weight 6.
    assert logint(7).hi<2*Q<logint(8).lo
    assert expneg(2).hi*7<Q and expneg(2).lo*8>Q
    return count

def evaluate(N, first_order=False):
    assert N>=64 and N%2==0
    started=time.monotonic();h=F(2,N)
    values=[];emax=0
    for i in range(N):
        z=bump(-1+(F(i)+F(1,2))*h)
        v=(z.lo+z.hi)//2;values.append(v);emax=max(emax,v-z.lo,z.hi-v)
    e=F(emax,Q)
    # f'' <= 156; (f(t)f(t+r))'' <= 2*1*156+2*5^2 = 362.
    # Two units of length, midpoint integrated curvature H*h^3/24 per cell.
    geometry_error=F(20,N) if first_order else F(362,3*N*N)
    physical_error=geometry_error+2*(2*e+e*e)
    C=[]
    for j in range(N):
        raw=sum(values[i]*values[i+j] for i in range(N-j))
        C.append(I.rat(F(2*raw,N*Q*Q)).widen(physical_error))
    C.append(ZERO)
    E=C[0].clip_nonnegative()
    # Reuse the old L1 midpoint-Lipschitz budget: K=5, all cells and sample errors.
    B0=h*sum(F(abs(v),Q) for v in values)+F(10,N)+2*e
    CLip=5*B0
    # Centers j*h; endpoint cells begin and end at half-grid offsets.
    first=max(1,N//1024+1)
    last=2*N
    eta=(F(first)-F(1,2))*h;R=(F(last)+F(1,2))*h
    Glo=0;Ghi=0
    left=kernel(eta)
    for j in range(first,last+1):
        u=(F(j)+F(1,2))*h;right=kernel(u)
        if j>N:
            S=E.times(2)
        else:
            S=(E-C[j]).times(2).widen(CLip*h).clip_nonnegative()
        # Positive kernel at the right/left endpoint bounds the WHOLE cell.
        lo=(I(right.lo)*I(S.lo)).times(h).lo
        hi=(I(left.hi)*I(S.hi)).times(h).hi
        Glo+=lo;Ghi+=hi;left=right
    G=I(Glo,Ghi)
    # Source gamma constant for q=3,a=1. Pinned coarse pi interval retained.
    pi=I.rat(F(314,100));pi=I(pi.lo,I.rat(F(315,100)).hi)
    logpi=I(logint(F(314,100)).lo,logint(F(315,100)).hi)
    harmonic=sum((F(1,j) for j in range(1,129)),F(0))
    euler=I((I.rat(harmonic)-logint(129)).lo,(I.rat(harmonic)-logint(128)).hi)
    c=logint(3)-logpi-euler-LOG2.times(3)+pi.times(F(1,2))
    P=ZERO;prime_rows=[]
    for n,p in [(2,2),(3,3),(4,2),(5,5),(6,0),(7,7)]:
        phase=[0,1,-1][n%3]
        lg=logint(n)
        j=(F(lg.lo+lg.hi,2*Q)/h+F(1,2)).numerator//(F(lg.lo+lg.hi,2*Q)/h+F(1,2)).denominator
        assert 0<=j<=N
        shift=j*h
        delta=max(abs(F(lg.lo,Q)-shift),abs(F(lg.hi,Q)-shift))
        corr=C[j].widen(CLip*delta)
        weight=ZERO if p==0 else logint(p)/sqrtint(n)
        term=(weight*corr).times(2*phase)
        P=P+term
        prime_rows.append({'n':n,'base_prime':p,'phase':phase,'j':j,'lag_radius':str(delta),'correlation':corr.raw(),'weight':weight.raw(),'term':term.raw()})
    # Original primitive arithmetic value c E + Gamma - P.
    main=c*E+G-P
    # Lower endpoint uses nonnegativity of BOTH omitted gamma pieces.
    near=I.rat(F(225,4)*eta*eta) # existing 3/4*(2T+1)*K^2 at T=1.
    # Existing complete far majorant with the derived actual energy ceiling.
    far=I(E.hi).times(8)*expneg(R/2)/(ONE-expneg(2))
    # Sharper far bound also follows from C(r)=0 for r>=2 (written separately).
    far_sharp=I(E.hi).times(F(4,3))*kernel(R)
    enclosure=I(main.lo,main.hi+near.hi+far.hi)
    sharp_enclosure=I(main.lo,main.hi+near.hi+far_sharp.hi)
    numerical_checks = {}
    if N==8192 and not first_order:
        numerical_checks = {
          'mass_upper': E.hi*10000 <= 153*Q,
          'gamma_constant_lower': c.lo*50 >= -57*Q,
          'middle_gamma_lower': G.lo*250000 >= 5359*Q,
          'signed_prime_upper': P.hi*2500000 <= 8611*Q,
          'source_lower_margin': enclosure.lo*2000 > Q,
          'source_conservative_upper': enclosure.hi*500 < 11*Q,
          'source_sharp_upper_written': sharp_enclosure.hi*5000 < 13*Q,
        }
        assert all(numerical_checks.values())
    without_four=main+I(*prime_rows[2]['term'])
    assert without_four.lo<0  # omission removes the certified lower sign; not an RH counterexample
    return {'N':N,'first_order_control':first_order,'numerical_checks':numerical_checks,'without_prime_power_four_main':without_four.raw(),'scale':Q,'physical_error':str(physical_error),'previous_mesh_floor':str(F(20,N)),
       'maximum_sample_radius':str(e),'B0':str(B0),'CLip':str(CLip),'eta':str(eta),'R':str(R),
       'phase':'actual modulus-three source','test':'t*expNegInvGlue(1-t^2)',
       'E':E.raw(),'c':c.raw(),'G':G.raw(),'P':P.raw(),'near':near.raw(),'far':far.raw(),'far_sharp':far_sharp.raw(),
       'main':main.raw(),'enclosure':enclosure.raw(),'sharp_enclosure':sharp_enclosure.raw(),
       'report':{k:v.report() for k,v in [('E',E),('c',c),('G',G),('P',P),('main',main),('near',near),('far',far),('enclosure',enclosure),('sharp_enclosure',sharp_enclosure)]},
       'sign':'POSITIVE' if enclosure.lo>0 else 'INCONCLUSIVE','prime_rows':prime_rows,
       'controls':controls()}
if __name__=='__main__':
    N=int(sys.argv[1]) if len(sys.argv)>1 else 8192
    out=Path(sys.argv[2]) if len(sys.argv)>2 else Path('.')
    out.mkdir(parents=True,exist_ok=True)
    started=time.monotonic()
    first_order=len(sys.argv)>3 and sys.argv[3]=='first-order'
    result=evaluate(N,first_order);text=json.dumps(result,indent=2,sort_keys=True)+'\n'
    (out/f"result-{N}{'-first-order' if first_order else ''}.json").write_text(text)
    print(json.dumps({'N':N,'report':result['report'],'sign':result['sign'],'runtime_seconds':time.monotonic()-started},indent=2))

```
