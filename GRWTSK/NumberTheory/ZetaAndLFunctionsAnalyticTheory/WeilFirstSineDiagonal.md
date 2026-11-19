# A complete signed radius-one first-sine evaluation

Local attribution: **grwtsk contributors**.

Maintained source: [WeilFirstSineDiagonal.lean](WeilFirstSineDiagonal.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FirstSineDiagonal`.
Primary MSC2020: 11M06; secondary 42A38, 65G20.
Inspection pin: `988cea9d49f5532be085918076c380ed6a400c20`.

Status: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE** with an
executed exact-rational interval calculation. Lean parsing, elaboration,
exact-type checking, fresh kernel replay, transitive axiom audit and independent
review: **NOT_RUN**. Novelty and exhaustive prior-art assessment: **UNASSESSED**.

## 1. Exact target and scope

Let e(t)=sin(pi*t) on [-1,1] and zero outside. Its physical squared norm is one.
The target is the EXISTING entry `OddRootProjection.zetaSineMatrix 1 1 0 0`,
not a newly defined zeta function or model quadratic form. The complete written
argument below and exact arithmetic give

    2344316546 / 10^12 <= zetaSineMatrix 1 1 0 0,
    1/500 < 2344316546 / 10^12.

An upper enclosure is 3137180666/10^12. Both endpoints are outward rationals.
The statement applies to this one-dimensional compression. By homogeneity its
ray has Q(v*e)>v^2/500 for v nonzero. It says NOTHING about the orthogonal
complement, its coupling, a whole-window Schur certificate, cofinal scales,
primitive characters, RH, or GRH. The finite sine is not C-infinity after zero
extension; it belongs to the original finite-energy form domain. All integrals
used here are proved convergent below.

The Lean source deliberately stops short of an end-to-end numerical theorem.
It proves the positive finite-kernel comparison and a source-return implication
whose normalization, integrability and FOUR component enclosures are explicit
premises. The closed elementary integral evaluations and the external arithmetic
run in this note have not been compiled into proofs of those premises. They
are neither hidden axioms nor claimed kernel evidence.

Consumer: a nontrivial signed baseline/negative control for the canonical
finite-sine matrix and scalar evaluators. A complete matrix evaluation still
needs every entry and the whole-complement accounting already specified in the
source route. This is a classical finite integral calculation, not a claimed
new paper-level theorem.

## 2. Correlation of the original supported sine

For T>0,n>=1 let w=n*pi/T and

    e_n(t)=sin(w*t)/sqrt(T) on [-T,T], zero otherwise.

The original Lebesgue normalization is integral e_n(t)^2 dt=1: integrate
sin(w*t)^2=(1-cos(2*w*t))/2 on the interval. For 0<=r<=2T, the overlap of the
two supports is [-T,T-r]. The product-to-sum identity therefore gives

    C(r)=integral e_n(t)*e_n(t+r) dt
        =(1-r/(2T))*cos(w*r)+sin(w*r)/(2T*w).        (2.1)

The sign of the sine term is PLUS. In detail the antiderivative of the product
is t*cos(w*r)/(2T)-sin(2*w*t+w*r)/(4T*w). At the two overlap endpoints the sine
values are -sin(w*r) and sin(w*r), respectively. For r>=2T the correlation is
zero, including equality (up to null endpoints, and in this case pointwise).
Translation preserves the whole-line physical norm, so

    E(r)=integral (e_n(t+r)-e_n(t))^2 dt=2*(1-C(r)). (2.2)

This is nonnegative; it is not estimated by an absolute correlation before the
signed prime sum is evaluated.

The zero extension is globally Lipschitz with K=w/sqrt(T), since it vanishes
at BOTH endpoints. The union of its support and its translate has measure at
most 4T. Thus E(r)<=4*w^2*r^2. Independently E(r)<=4. In particular the kernel
singularity below causes no divergence.

## 3. Finite positive gamma expansion with the full remainder retained

Use the ORIGINAL k(r)=exp(-r/2)/(1-exp(-2r)), r>0. For a_j=2*j+1/2,

    k(r)=sum_(j<J) exp(-a_j*r)
           +exp(-a_J*r)/(1-exp(-2r)).              (3.1)

This is the existing finite `GammaRationalWeights.kernel_decomposition`, not
an assumed interchange of an infinite series and an integral. The remainder
is nonnegative. It follows that

    Gamma[e_n] >= sum_(j<J) integral_0^infinity
                                  exp(-a_j*r)*E(r) dr.             (3.2)

The individual integrals converge because E<=4. The full integral converges:
near zero k(r)<=1+1/(2r), while E(r)<=4*w^2*r^2; on any remaining lag tail k
has an integrable exponential majorant. This supplies the two integrability
premises of the Lean comparison at this actual test.

There is an exact elementary evaluation for EVERY a>0. Write d=a^2+w^2.
For 0<=r<=2T, an antiderivative of exp(-a*r)*C(r) is

    exp(-a*r) * [
      (a*r/(2T*d)-a/d-w^2/(T*d^2))*cos(w*r)
      +(-w*r/(2T*d)+w/d-a*(a^2+3*w^2)/(2T*w*d^2))*sin(w*r)
    ].                                                       (3.3)

Differentiate (3.3) to verify it: the cosine coefficient is 1-r/(2T), and
the sine coefficient is 1/(2T*w). Every denominator is nonzero under T,w,a>0.
At r=2T and r=0, sin(w*r)=0 and cos(w*r)=1. Consequently

    integral_0^(2T) exp(-a*r)*C(r) dr
      =a/d+w^2*(1-exp(-2aT))/(T*d^2),

and (2.2), including the complete r>=2T tail, yields

    g(a)=2*w^2/[a*(a^2+w^2)]
          -2*w^2*(1-exp(-2aT))/[T*(a^2+w^2)^2].      (3.4)

Thus the lower gamma estimate is the finite sum of (3.4), not a lag-cutoff
integral. At T=n=1, exp(-2a_jT)=exp(-1)^(4j+1). One enclosed positive scalar
exp(-1) therefore suffices for all 128 terms in the example.

For an OPTIONAL two-sided check, exp(2r)>=1+2r gives

    1/(1-exp(-2r)) <= 1+1/(2r).

The full remainder in (3.1) and E(r)<=4*w^2*r^2 consequently give

    0 <= Gamma[e_n]-sum_(j<J) g(a_j)
       <= 4*w^2*(2/a_J^3+1/(2*a_J^2)).             (3.5)

The two elementary Laplace moments are integral r^2 exp(-ar)=2/a^3 and
integral r exp(-ar)=1/a^2; integration by parts on finite intervals followed
by exponential decay proves them. The lower-sign certificate needs only the
NONNEGATIVITY of this remainder, not the numerical upper bound (3.5).

## 4. Unchanged signed prime, pole, and constant contributions

The existing exact source constant is

    c_Gamma=-log(pi)-EulerGamma-pi/2-3*log(2).

For radius one the complete active integer-label set is 2..7. The existing
integer-inventory result admits this by log(7)<2<=log(8). The exact nonzero
labels are 2,3,4,5,7. In particular the weight at 4 is log(2)/2, not log(4)/2;
label 6 has exactly zero von Mangoldt weight.

The existing pole moment formula gives

    p=integral e(t)*sinh(t/2) dt
     =2*pi*sinh(1/2)/(1/4+pi^2).

Oddness identifies the two exponential pole moments as p and -p. Hence their
original paired contribution is -2*p^2, not +2*p^2. Finally the literal matrix
definition and (2.1) give EXACTLY

    Q(e)=c_Gamma+Gamma[e]
          -2*sum_(q=2..7) [Lambda(q)/sqrt(q)]*C(log(q))-2*p^2. (4.1)

This identity retains all active prime powers and both orientations. No zero
locations, RH hypothesis, spectral model, or positive replacement form enters.

## 5. Rational interval calculation and its complete scalar budgets

The fixed calculation uses J=128, H=2048 harmonic terms, 64 terms of the
positive logarithm series, degree-99 sine/cosine Taylor polynomials, positive
exponential Taylor terms through order 80, and interval operation grid 10^-30.
Pi uses the pinned Mathlib 20-decimal theorem, explicitly and only at this fixed
accuracy. It is not an all-accuracy supplier.

Every arithmetic operation is rational with outward rounding. Integer square
root provides D/(s+1)<=1/sqrt(q)<=D/s, s=floor(sqrt(q*D^2)), D=10^18, checked
by s^2<=q*D^2<(s+1)^2. The logarithm reduction q=2^j*r with 1<=r<2 is exact.
For z=(r-1)/(r+1),

    log(r) in [2 sum_(k<N) z^(2k+1)/(2k+1),
               2 sum_(k<N) z^(2k+1)/(2k+1)+2*z^(2N+1)/(1-z^2)].

The same bounds enclose log(pi) by monotonicity at its two positive rational
endpoints. The Euler constant is enclosed by

    H_H-log(H+1) <= EulerGamma <= H_H-log(H).

This is exactly the pre-existing harmonic bracketing used by the concurrent
`WeilRationalGammaConstant` source; no observed Euler constant is used.
For x>=0 the exponential partial sum S through degree N has the full remainder
bound [x^(N+1)/(N+1)!]/[1-x/(N+2)] when x<N+2. Negative arguments use reversed
reciprocal endpoints. The sinh value uses (exp(x)-1/exp(x))/2, with interval
operations paying dependence safely.

For sin and cos on the REAL axis, Taylor's theorem through degree N-1 has
remainder at most |x|^N/N!, because every Nth derivative has absolute value at
most one. The interval argument is the COMPLETE interval pi*log(q); the code
pays its phase uncertainty as well as every arithmetic operation. Here every
true phase is below 2*pi. Both functions and all prime weights retain their
signs. No floating transcendental evaluation selects or admits any endpoint.

The executed outward component intervals, denominator 10^12, are:

| Quantity | lower numerator | upper numerator |
|---|---:|---:|
| c_Gamma | -5372427539983 | -5371939377902 |
| sum of the first 128 exact gamma terms | 4441923634096 | 4441923634097 |
| paired prime sum BEFORE its source minus sign | -1142209800524 | -1142209800523 |
| original pole square -2*p^2 | -209361578090 | -209361578089 |
| complete Q(e), using (3.5) only for the upper endpoint | 2344316546 | 3137180666 |

In particular, choosing the lower gamma, constant and pole endpoints and the
UPPER paired prime endpoint gives the exact integer arithmetic

    [-5372427539983+4441923634096-209361578090+1142209800523]/10^12
       =2344316546/10^12 > 1/500.                    (5.1)

The entire infinite gamma remainder is paid with its correct favorable sign.
The positive prime contribution in this particular scalar direction is actual
cancellation, not a universal assertion that the prime form is positive.

### Clean reproduction (Python standard library only)

Save the following as `calculate.py` and run `python calculate.py` in a writable
directory. It prints the component endpoints, checks the strict sign and writes
the full rational intervals to `result.json`. The code is a maintained finite
mathematical calculation, not a Noe execution or a Lean/kernel receipt.

```python
"""Exact rational enclosures for the literal radius-one first-sine source.
Authors: grwtsk contributors. No floating point chooses an enclosure.
"""
from fractions import Fraction as F
from math import factorial, isqrt
import json

SCALE=10**30
class I:
    def __init__(self, lo, hi=None):
        self.lo,self.hi=F(lo),F(lo if hi is None else hi)
        assert self.lo<=self.hi
    @staticmethod
    def cast(x): return x if isinstance(x,I) else I(x)
    def rounded(self):
        return I(F(self.lo.numerator*SCALE//self.lo.denominator,SCALE),
                 F(-((-self.hi.numerator*SCALE)//self.hi.denominator),SCALE))
    def __add__(self,b):
        b=I.cast(b); return I(self.lo+b.lo,self.hi+b.hi).rounded()
    __radd__=__add__
    def __neg__(self): return I(-self.hi,-self.lo)
    def __sub__(self,b): return self+-I.cast(b)
    def __rsub__(self,b): return I.cast(b)+-self
    def __mul__(self,b):
        b=I.cast(b); z=[x*y for x in (self.lo,self.hi) for y in (b.lo,b.hi)]
        return I(min(z),max(z)).rounded()
    __rmul__=__mul__
    def inv(self):
        assert self.lo*self.hi>0
        return I(1/self.hi,1/self.lo).rounded()
    def __truediv__(self,b):
        b=I.cast(b); assert b.lo*b.hi>0
        z=[x/y for x in (self.lo,self.hi) for y in (b.lo,b.hi)]
        return I(min(z),max(z)).rounded()
    def __rtruediv__(self,b):return I.cast(b)*self.inv()
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        ans=I(1); x=self
        while n:
            if n%2:ans=ans*x
            n//=2
            if n:x=x*x
        return ans
    def outward(self,d=10**12):
        a=self.lo.numerator*d//self.lo.denominator
        b=-((-self.hi.numerator*d)//self.hi.denominator)
        assert F(a,d)<=self.lo<=self.hi<=F(b,d)
        return (a,b,d)
    def record(self):return {'lo':str(self.lo),'hi':str(self.hi),'outward':self.outward()}

def log_direct(q,N=64):
    q=F(q);assert q>=1
    z=(q-1)/(q+1)
    lo=2*sum((z**(2*k+1)/(2*k+1) for k in range(N)),F(0))
    return I(lo,lo+2*z**(2*N+1)/(1-z*z)).rounded()
def log_rat(q,N=64):
    q=F(q);assert q>0
    if q<1:return -log_rat(1/q,N)
    j=0;r=q
    while r>=2:r/=2;j+=1
    return j*log_direct(2,N)+log_direct(r,N)
def log_interval(x):return I(log_rat(x.lo).lo,log_rat(x.hi).hi)
def exp_rat(q,N=80):
    q=F(q)
    if q<0:return exp_rat(-q,N).inv()
    assert q<N+2
    lo=sum((q**k/factorial(k) for k in range(N+1)),F(0))
    R=(q**(N+1)/factorial(N+1))/(1-q/F(N+2))
    return I(lo,lo+R).rounded()
def invsqrt(q,D=10**18):
    s=isqrt(q*D*D);assert s*s<=q*D*D<(s+1)**2 and s>=D
    return I(F(D,s+1),F(D,s)).rounded()
def trig(x,cos=False,N=100):
    # Taylor polynomial through degree N-1; derivative magnitude <=1 on REAL axis.
    p=I(0)
    for n in range(N):
        if n%2==(0 if cos else 1):
            p=p+((-1)**(n//2))*x**n/F(factorial(n))
    R=max(abs(x.lo),abs(x.hi))**N/factorial(N)
    return (p+I(-R,R)).rounded()
def base(q):
    p=2
    while p*p<=q and q%p:p+=1
    if q%p:p=q
    r=q
    while r%p==0:r//=p
    return p if r==1 else None

def evaluate(J=128,H=2048):
    pi=I(F(314159265358979323846,10**20),F(314159265358979323847,10**20))
    hn=sum((F(1,k) for k in range(1,H+1)),F(0))
    eg=I(hn-log_rat(H+1).hi,hn-log_rat(H).lo)
    cg=-log_interval(pi)-eg-pi/2-3*log_rat(2)
    em=exp_rat(-1)
    p2=pi*pi
    gamma=I(0)
    for j in range(J):
        a=F(4*j+1,2);den=a*a+p2
        term=2*p2/(a*den)-2*p2*(1-em**(4*j+1))/(den*den)
        gamma=gamma+term
    # bound the omitted gamma integral using a TRUE conservative slope 2*pi
    a=F(4*J+1,2)
    tail=(2*pi)**2*(F(2)/a**3+F(1,2)/a**2)
    prime=I(0);terms=[]
    for q in range(2,8):
        p=base(q)
        w=I(0) if p is None else log_rat(p)*invsqrt(q)
        l=log_rat(q);arg=pi*l
        C=(1-l/2)*trig(arg,cos=True)+trig(arg)/(2*pi)
        term=2*w*C
        prime+=term;terms.append({'q':q,'weight':w.record(),'correlation':C.record(),'signed_prime_pair':term.record()})
    E=exp_rat(F(1,2));sinh=(E-E.inv())/2
    moment=2*pi*sinh/(F(1,4)+p2)
    pole=-2*moment*moment
    lower_expr=cg+gamma-prime+pole
    q_interval=I(lower_expr.lo,(lower_expr+tail).hi)
    assert q_interval.lo>F(1,500)
    # exact active-inventory admission: log(7)<2<=log(8)
    assert log_rat(7,8).hi<2<=log_rat(8,8).lo
    result={'parameters':{'J':J,'H':H,'grid':SCALE,'log_terms':64,'exp_order':80,'trig_degree':99},
            'gamma_constant':cg.record(),'gamma_partial':gamma.record(),
            'gamma_tail_upper':str(tail.hi),'prime_pair_sum':prime.record(),
            'pole_moment':moment.record(),'pole_square':pole.record(),
            'source_interval':q_interval.record(),'strict_lower':'1/500',
            'prime_terms':terms}
    for k in ('gamma_constant','gamma_partial','prime_pair_sum','pole_square','source_interval'):
        print(k,result[k]['outward'])
    print('Q_LOWER_GT_1_OVER_500',q_interval.lo>F(1,500))
    return result
if __name__=='__main__':
    result=evaluate()
    with open('result.json','w') as f:json.dump(result,f,indent=2)
```

## 6. Hostile checks and known limitations

The first local implementation rounded the reciprocal of factorials to the
fixed grid BEFORE multiplying by large polynomial powers. This was a valid
but unusably broad interval operation and FAILED the positivity assertion.
The current division encloses the endpoint quotients directly before rounding;
the failure is not relabeled as NOT_RUN or as a successful certificate.

A separate nonrigorous high-precision integral diagnostic agrees with the
resulting source enclosure; it is not used by the exact acceptance checks.
The symbolic antiderivative (3.3) can be differentiated independently of the
interval code. Exact rational interval corner checks and negative controls are
recorded in the issue receipt, rather than treated as proofs of universal code
correctness or as independent human review.

Important failure controls: reversing the prime source minus sign, dropping
the n=4 prime-power term, changing the odd pole to a positive square, or putting
a minus sign before the sine term in (2.1) changes (4.1). A positive scalar
diagonal alone cannot establish a matrix sign: [[1,2],[2,1]] is a counterexample
to that inference, not to RH. A zero test or a pole-neutral replacement has not
been used. The mass normalization is the original physical normalization.

The numerical interval predicates in the final Lean theorem have NOT been
filled with closed proof terms. In particular its hgamma concerns the actual
finite integral, not an arbitrary numerical value. Connecting (3.3)--(3.4)
and the scalar interval checker inside Lean remains OPEN, along with fresh
checking of all imported source candidates. No source correctness is inferred
from file hashes or publication.

## 7. Individual declaration provenance and exact consumer

Every declaration below is in the namespace stated above. The derivation is
local classical analysis, not a new adaptation of an external paper theorem.

| Declaration | Primary argument | Consumer / retained premise |
|---|---|---|
| `jumpEnergy_nonneg` | Integral of a pointwise square, (2.2). | Finite positive-kernel comparison; no sign of the complete source asserted. |
| `finiteKernel_nonneg` | Finite sum of positive real exponentials. | Explicit sign orientation of the retained kernel. |
| `finiteKernel_le_source` | Pinned finite geometric identity and nonnegative complete remainder, (3.1). | `finiteGamma_le`. |
| `finiteGamma_le` | Multiply by actual nonnegative jump energy, then integral monotonicity. | Literal diagonal lower estimate; BOTH integrability premises retained. |
| `finiteGamma_mono` | One additional exponential times a square is nonnegative. | Monotone refinement of this scalar gamma lower approximation. |
| `archimedean_diagonal` | Unfold the ORIGINAL diagonal integral and rewrite square as self-product. | `diagonal_lower`, no normalization is silently assumed. |
| `diagonal_lower` | Original `zetaSineMatrix` definition, physical mass one, gamma lower comparison, exact signed pole and prime bounds. | `first_diagonal_gt_of_component_enclosures`. |
| `first_diagonal_gt_of_component_enclosures` | Rational arithmetic (5.1) after the preceding source comparison. | Conditional Lean endpoint for the written/executed scalar certificate; all missing formal premises visible. |

Definitions `jumpEnergy`, `finiteGamma`, `fullGamma` abbreviate the original
integrals, not new arithmetic targets. No RH/GRH predicate is introduced.

## 8. Sources, comparison, pins, and remaining work

Pinned local sources inspected at the revision above:

* `WeilOddSineProjection.lean`, blob
  `f4417e2b06319a9ab4f1e922df1216be555f72e5`: exact physical sine, correlation,
  archimedean entry, BOTH pole moments, and literal `zetaSineMatrix`.
* `WeilGammaRationalWeights.lean`, blob
  `1e553e2e0285a139990dc290b501376c4ec08d7a`: finite kernel expansion and complete
  positive remainder. The present use is energy integration, not its earlier
  tail-weight coefficient enclosure.
* `WeilGammaData.lean`, blob `4ddf4399b7edfdb59af8d95d7b72222a1fefcd88`:
  `gammaConstant_one_zero_eq` for the actual continued gamma derivative.
* `WeilRationalGammaConstant.lean`, blob
  `d6662e592113e9f8ee4c0c60eaaa290edf1edc06c`: harmonic Euler bracketing and
  the already supplied source-constant enclosures; this is reused analytically,
  not rebranded as a new constant theorem.
* `WeilIntegerInventory.lean`, exact radius-one admission; `WeilPoleSampling.md`
  and the original `WeilOddPoleMoment.lean`, exact signed moment and enclosure
  method. The current argument also evaluates their elementary formulas directly.
* Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`,
  `Analysis/Real/Pi/Bounds.lean`, `pi_gt_d20`, `pi_lt_d20`;
  `NumberTheory/Harmonic/EulerMascheroni.lean`, the two harmonic sequence
  inequalities used in the inspected supplier.

Primary analytic reference: NIST DLMF §1.14(iii), Table 1.14.4
(https://dlmf.nist.gov/1.14), Laplace-transform definition, sine/cosine and
polynomial exponential moments, with positive real decay. The actual compact
support boundary terms are derived explicitly in (2.1) and (3.3); a whole-line
transform table cannot replace them. Mathlib's published interval/improper
integral documentation was inspected for adjacent formulations. Direct GitHub
code search reported incomplete indexing and no matches; it establishes no
absence claim or originality. This fixed coefficient computation is compatible
with older finite Weil-matrix calculations, and is not a claimed improvement of
any all-test positivity theorem.

Lean pin: `leanprover/lean4:v4.34.1`. The root mathlib pin is unchanged. No local
Lean/Lake executable or verified local Noe skill checkout was found. The current
canonical Noe proof skill was inaccessible at
`5e2e88770dde19fd78c459a87e5e32a4ab7ad7b7`; dependent automation was not run.
Some exact-path ancillary fetches returned 404, so no claim of complete import
closure inspection is made. The actual imported source files above were read.
Static checks and exact rational evaluation do not establish type correctness.

Unrun target:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstSineDiagonal

Remaining mathematical research: complete signed multi-column matrices,
genuine full-complement floor, coupling/residual allowances, low-coordinate
coverage, successful whole-window stages, and their universal cofinal supply.
This one-mode scalar result discharges NONE of those quantified premises.
