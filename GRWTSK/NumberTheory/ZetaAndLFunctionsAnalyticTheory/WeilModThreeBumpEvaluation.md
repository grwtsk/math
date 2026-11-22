# Complete rational endpoints for the modulus-three bump

Local attribution: grwtsk contributors.
MSC2020: 11M26 (primary), 11M41, 65D30, 65G20.
Coordination: grwtsk/math#1801, iteration 12, 2026-11-18 America/Los_Angeles.

Status: EXACT_RATIONAL_ENDPOINT_EVALUATION; SOURCE_RETURN_NOT_LEAN_VERIFIED.
Sign result: INCONCLUSIVE. This is neither a positive Weil certificate nor a
counterexample. Lean parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, complete independent analytical review and independent
computer-assisted proof review: NOT_RUN. Novelty UNASSESSED.

Source inspection pin: `988cea9d49f5532be085918076c380ed6a400c20`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The same increment adds the actual character source and repairs the scalar
proof references; those repairs do not change any endpoint expression.

## Exact target and what was evaluated

Let chi3 be the actual primitive nonprincipal character constructed in
[WeilSmallCharacterPhases.lean](WeilSmallCharacterPhases.lean), with values
0,1,-1 in residues 0,1,2 modulo three. Its gamma parity is one. Use the SAME
smooth test from ExponentialBumpCells,

    f(t) = t * expNegInvGlue(1-t^2),

extended by zero outside [-1,1], and its canonical complex inclusion. The
original target is `primitiveArithmeticValue three three_isPrimitive
three_ne_one 1 (liftReal (oddExpBump 1))`. Write Q3 for this value.

The evaluated objects L,U are precisely the finite lower and upper endpoint
expressions of EBR-1, not numerical approximations to a substituted form.
Exact Fraction arithmetic proves -22<L<0<U<47 for the data below. The written
EBR-1 argument, with its stated source hypotheses discharged by these data
and the character construction, returns L<=Q3<=U. That analytic/source return
has NOT been elaborated, kernel-replayed, or independently audited here.
In particular there is no newly checked Lean theorem asserting -22<=Q3<=47.
The evidence directly obtained in this calculation is the exact arithmetic of
L,U and the finite input checks, not acceptance of the accumulated proof chain.

No zero ordinate, multiplicity, zero count, RH assumption, critical-line oracle,
or evaluated L-function is used. Conductor-one zeta with its two poles is a
separate source and is not covered by this nonprincipal calculation.

## Complete finite input data

Set T=1, q=3, parity a=1, m=2. There are eight physical cells and eight lag
cells, with endpoints

    x_i = -1+i/4             (i=0,...,8),
    y_j = 1/4+15*j/32        (j=0,...,8).

Thus the physical cells cover [-1,1] and the lag cells cover [1/4,4]=[2^-m,2m]
without gaps. Every original, prime-shifted and gamma-shifted interior sample
uses binomial order 64. Every gamma kernel order and every logarithm admission
order is 64. For each evaluated interior point t, the program checks
`0 < 1/(1-t^2) <= 64`. At or outside |t|=1 the sample and its radius are
exactly zero; no interior division is attempted.

The gamma coefficient uses harmonic index 8, rational logarithm order 16, and
the pinned library pi endpoints [314/100,315/100]. Prime-weight logarithm
orders are all 16, with integer square-root resolution D=256. All phase radii
are zero by SCP-6. The complete arithmetic inventory is S={2,3,4,5,6,7}:

| n | log lower | log upper | chi3(n) | Prime-power base |
|---|---:|---:|---:|---:|
| 2 | 5/8 | 3/4 | -1 | 2 |
| 3 | 1 | 5/4 | 0 | 3 |
| 4 | 5/4 | 3/2 | 1 | 2 |
| 5 | 3/2 | 7/4 | -1 | 5 |
| 6 | 7/4 | 15/8 | 0 | none |
| 7 | 15/8 | 2 | 1 | 7 |

For every row, exact rational comparisons check

    0<=l_n<=u_n<=64,
    n*(1-l_n/64)^64 >= 1,
    n*(1+u_n/64)^(-64) <= 1.

The maintained logarithm/binomial argument then gives l_n<=log n<=u_n.
Independently of these per-row brackets, the existing rational logarithm
supplier gives U_16(7)<2<=L_16(8), so 7<exp(2)<=8. Hence the original strict
integer inventory is EXACTLY S. No subset, rounded cutoff or padded-list
identity is used. Label 6 is retained with exact zero von Mangoldt weight.
Label 4 uses log 2, not log 4.

A distinct rational inventory control uses the positive exponential expansion:

    E_L = sum_(k=0)^11 2^k/k!,
    E_U = E_L + (2^12/12!)/(1-2/13).

It checks 7<E_L<=E_U<8. All subsequent omitted-term ratios are at most 2/13,
so the geometric allowance covers the complete positive tail. This is a
different scalar-bound route, not independent review of the Weil argument.

## Literal assembly and complete error accounting

Put B=T=1 and K=1+4*T^2=5. At an interior point t, let bL,bU be the existing
binomial bounds on exp(-1/(1-t^2)). The sample is

    v(t)=t*(bL+bU)/2,       r(t)=abs(t)*(bU-bL)/2.

For physical cell i with width h_i and midpoint t_i, use unshifted v_i,r_i.
At lag center s use shifted w_i,d_i. The maintained finite formulas become

    B0 = sum_i h_i*(abs(v_i)+K*h_i/2+r_i),
    A(s) = sum_i h_i*v_i*w_i,
    e(s,delta) = K*B0*delta
      + sum_i h_i*(T*K*h_i+T*(r_i+d_i)+r_i*d_i).

Here A is real because both sampled functions are real; the character table
still belongs to the original complex source. No absolute-square substitution
is made at nonzero lag. Set mu=A(0) and e0=e(0,0).

For every whole lag cell [l,u], let s=(l+u)/2 and delta=(u-l)/2. With
b_-(z)=(1-z/64)^64 and b_+(z)=(1+z/64)^(-64), define

    kL = b_-(3u/2)/(1-b_-(2u)),
    kU = b_+(3l/2)/(1-b_+(2l)).

The lower kernel is evaluated at the RIGHT endpoint and the upper kernel
at the LEFT. Positive lag, 2u<=64 and 3u/2<=64 are checked on every cell.
The whole-cell translation energy is enclosed by

    max(0,2*(mu-A(s))-2*(e0+e(s,delta)))
    max(0,2*(mu-A(s))+2*(e0+e(s,delta))).

Multiply these by kL,kU and the cell width, then sum to obtain Glo,Gup.
Only the known nonnegative translation energy is clipped at zero. The signed
Weil value and the signed prime response are NEVER clipped.

The maintained RGC-3/4 formulas give rational gamma center c0 and radius ec.
For every n in S, the actual prime-weight supplier gives center w0_n, radius
ew_n and upper bound W_n from log(minFac n) and the integer root
s_n=floor(sqrt(n*256^2)); both defining square comparisons are checked.
For the exact phase table,

    P0 = 2*sum_(n in S) w0_n*chi3(n)*A(s_n'),
    s_n'=(l_n+u_n)/2,       delta_n=(u_n-l_n)/2,
    E_mass = ec*abs(mu)+(abs(c0)+ec)*e0,
    E_prime = 2*sum_(n in S) (W_n*e(s_n',delta_n)+ew_n*abs(A(s_n'))),
    E = E_mass+E_prime.

The scalar square-root index s_n and the logarithmic lag center s_n' have
different meanings. All operations above use the exact rational values.
The cross terms r_i*d_i and ec*e0 are retained. EBR-1 conservatively charges
prime-weight error even at n=3 where the actual character is zero; this
calculation follows that bound literally rather than silently optimizing it.

Both omitted gamma regions are paid in the existing complete allowance

    Delta = (3/4)*3*25*4^-2 + (64/3)*2^-2 = 1699/192.

They are nonnegative, so this allowance occurs in the upper endpoint only.
The final exact endpoint expressions are

    L=c0*mu+Glo-P0-E,
    U=c0*mu+Gup-P0+Delta+E.

## Executed result and precision obstruction

Each row below encloses the named EXACT RATIONAL expression between the two
shown decimal rationals. Reporting is outward-rounded to denominator 10^9;
none of these displayed decimal values was fed back into the computation.

| Expression | Reporting lower endpoint | Reporting upper endpoint |
|---|---:|---:|
| mu | 0.015291048 | 0.015291049 |
| e0 | 2.505902352 | 2.505902353 |
| B0 | 1.400847623 | 1.400847624 |
| c0 | -1.131971835 | -1.131971834 |
| ec | 0.064710947 | 0.064710948 |
| P0 | 0.002861738 | 0.002861739 |
| mass_error | 2.999759697 | 2.999759698 |
| prime_error | 18.715525526 | 18.715525527 |
| E | 21.715285224 | 21.715285225 |
| Glo | 0.000000000 | 0.000000000 |
| Gup | 16.096570433 | 16.096570434 |
| Delta | 8.848958333 | 8.848958334 |
| lower_endpoint | -21.735456000 | -21.735455999 |
| upper_endpoint | 46.640643216 | 46.640643217 |

Thus the computed endpoint pair has L<0<U. It provides NO favorable sign.
In particular a negative LOWER BOUND is not a negative source value, just as
a positive UPPER BOUND is not positivity of the source.

For N>0 uniform physical cells at T=1 and any valid nonnegative sample radii,
the retained variation part of e0 alone is

    sum_(i=0)^(N-1) h_i*(T*K*h_i)
       = N*5*(2/N)^2 = 20/N.

Consequently e0>=20/N. At N=8 this is 5/2, compared with mu approximately
0.01529. Refining logs, square roots, pi or scalar sample precision at this
fixed geometry cannot remove that 5/2 term. This is an obstruction of THIS
error bound, not of Weil positivity or RH. Refining the physical mesh requires
sample orders that still meet every inverse-gap check; keeping order 64 for
arbitrarily large N is not asserted. Lag refinement and near/far omissions
must also be coordinated. No all-window convergence follows from this run.

## Exact source map and individual evidence

All local sources below were inspected at the source pin. This is a reference
calculation of maintained mathematical expressions, not a newly formalized
external paper. No source was copied from a nonredistributable publication.

- ExponentialBumpCells.lean, blob
  `4a16a8841d88cc954eed006aa9b21d69db22e4ae`: expNegBinomialLower/Upper,
  oddExpBump, bumpDerivativeBound, bumpSampleCenter/Radius. EBC-1 is the
  source of the binomial inclusion; EBC-8 controls between-sample variation.
- RawMomentQuadrature.lean, blob
  `a79225cb702533f94f5b5c705d960b90ad8d93f5`: cellL1Budget,
  midpointCellError and cellVariationBudget. No sample is treated as a cell integral.
- WeilCorrelationCellEvaluation.lean, blob
  `58f7365bf978e42bf21ba1043415626f90512b21`: productSampleError and
  correlationCellBudget; WCQ-1 retains the product of sample errors.
- WeilExponentialBumpPrimeEvaluation.lean, blob
  `c7340fdde8c348a1dd75af59857f250176c19700`: fullBumpSample/Radius,
  bumpCorrelationEstimate/Budget and EBP-3. These keep the actual shifted support.
- WeilGammaCellEvaluation.lean, blob
  `d21f003d90af8a39bf053579efc76755457eb052`: WGC-1/2 and
  kernelBinomialLower/Upper, including the whole-cell kernel orientation.
- WeilExponentialBumpGammaEvaluation.lean: bumpGammaLowerRow/UpperRow and
  EBQ-3; WeilExponentialBumpScalarEvaluation.lean: EBS-1 and dyadicGammaBudget.
- WeilRationalLogarithms.lean, blob
  `776022a3cf679384fd2fb31404a90fc1178562c7`: lower/width/upper and
  log_enclosure. WeilRationalPrimeWeights.lean, blob
  `973510bc0ec6a01a8db3c2c1e2f6c870559476c8`: reciprocal and weight enclosures.
- RGC-1 through RGC-5 and RBC-1/RBC-2/EBR-1: the two repaired files in this
  increment. Their original statements and rational definitions are unchanged;
  see WeilRoundedEvaluationSourceRepairs.md for exact original blob identities
  and the source-reference defects. No verification status is retroactively changed.
- SCP-1 through SCP-6 and SCP-14: the actual modulus-three character,
  primitive/nonprincipal/parity admission and exact phase input. The separate
  quartic table controls SCP-13 but is not a replacement source in this experiment.

The source-level implication to Q3 requires the maintained analytic chain,
not just this executable arithmetic. Full exact-source Lean validation of that
chain, statement correspondence and transitive axioms remain open in #1801.

## Reproduction and controls

The code below is a maintained mathematical reference algorithm for these
specific finite expressions. It uses only Python's standard library and exact
Fraction/isqrt operations. It also checks the entire input geometry, all sample
and kernel orders, all logarithm admissions and both inventory boundaries.
There are no random choices or seeds and no external numeric dependencies.

It checks all 34 residue products for the two characters and 125 Gaussian-
integer signed readouts. Four negative controls reject omitted conjugation,
phase-norm substitution, the wrong value at residue four, and log(n) in place
of log(p) for n=p^k. These controls do not constitute independent review.

Observed execution: Python 3.13.5, GCC 14.2.0, exit 0, sign INCONCLUSIVE.
The independent positive-expansion inventory control, prime-power
classification and e0>=5/2 check passed. Exact finite arithmetic is separate
from Lean-certified computation and separate from a verified Q3 enclosure.
No Lean or Noe proof job was run. The unavailable canonical proof skill is
recorded in the repair note and coordinating issue.

From a clean checkout at the publication commit, extract this one Python
block to a temporary file and run `python3 evaluate.py OUTPUT_DIRECTORY`.
It prints the ledger and control counts and writes endpoint-results.json.
The JSON's Python-version metadata can differ across environments; the rational
fields, sign and control results must agree. No repository-generated output is
required to reproduce the calculation. The algorithm's UTF-8/LF SHA-256 is
`24cf693302b8ad32d00475844a573c181949e196fd3f35b6d6fd0a1b136e86ae`.

```python
from fractions import Fraction as F
from math import isqrt, factorial
from pathlib import Path
from functools import lru_cache
import json, sys
sys.set_int_max_str_digits(0)
T=F(1); K=F(5); NP=8; M=8; m=2; order=64
x=[-T+2*T*j/NP for j in range(NP+1)]
y=[F(1,2**m)+(2*m-F(1,2**m))*j/M for j in range(M+1)]
assert x[0] == -T and x[-1] == T
assert y[0] == F(1,2**m) and y[-1] == 2*m
assert all(-T <= x[i] <= x[i+1] <= T for i in range(NP))
assert all(0 < y[j] <= y[j+1] for j in range(M))
logdata={2:(F(5,8),F(3,4)),3:(F(1),F(5,4)),4:(F(5,4),F(3,2)),5:(F(3,2),F(7,4)),6:(F(7,4),F(15,8)),7:(F(15,8),F(2))}
def expl(y,n): return (1-y/n)**n
def expu(y,n): return (1+y/n)**(-n)
@lru_cache(None)
def sample(t):
    if abs(t)>=T: return F(0),F(0)
    v=1/(T*T-t*t)
    assert 0<v<=order
    lo,hi=expl(v,order),expu(v,order)
    assert 0<=lo<=hi<=1
    return t*(lo+hi)/2,abs(t)*(hi-lo)/2
v=[sample((x[i]+x[i+1])/2) for i in range(NP)]
B0=sum((abs(a)+K*(x[i+1]-x[i])/2+e)*(x[i+1]-x[i]) for i,(a,e) in enumerate(v))
@lru_cache(None)
def corr(s,d):
    val=F(0); err=K*B0*d
    for i,(a,e) in enumerate(v):
        w,f=sample((x[i]+x[i+1])/2+s)
        width=x[i+1]-x[i]
        val+=width*a*w
        err+=width*(T*K*width+T*(e+f)+e*f)
    assert err>=0
    return val,err
mu,e0=corr(F(0),F(0))
@lru_cache(None)
def log_enclosure(q,N=16):
    assert q>=1
    z=(q-1)/(q+1)
    lo=2*sum(z**(2*k+1)/F(2*k+1) for k in range(N))
    return lo,lo+2*z**(2*N+1)/(1-z*z)
def gamma(q,a):
    h=8; H=sum(F(1,j) for j in range(1,h+1))
    gL=H-log_enclosure(F(h+1))[1]
    gU=H-log_enclosure(F(h))[0]
    pL,pU=F(314,100),F(315,100)
    cL=log_enclosure(F(q))[0]-log_enclosure(pU)[1]-gU-3*log_enclosure(F(2))[1]+(-pU/2 if a==0 else pL/2)
    cU=log_enclosure(F(q))[1]-log_enclosure(pL)[0]-gL-3*log_enclosure(F(2))[0]+(-pL/2 if a==0 else pU/2)
    return (cL+cU)/2,(cU-cL)/2
prime_power_bases={2:2,3:3,4:2,5:5,6:None,7:7}
def classify_prime_power(n):
    p=next((d for d in range(2,isqrt(n)+1) if n%d==0),n)
    k=n
    while k%p==0: k//=p
    return p if k==1 else None
assert all(classify_prime_power(n)==p for n,p in prime_power_bases.items())
def weight(n,D=256):
    p=prime_power_bases[n]
    if p is None: return F(0),F(0),F(0)
    s=isqrt(n*D*D); assert s*s<=n*D*D<(s+1)*(s+1)
    ll,lu=log_enclosure(F(p))
    lo,up=ll*F(D,s+1),lu*F(D,s)
    return (lo+up)/2,(up-lo)/2,up
# Exact finite checks used by EBS-1, including the zero-weight label 6.
for n,(l,u) in logdata.items():
    assert 0<=l<=u<=64
    assert n*expl(l,64)>=1, ('lower log check',n)
    assert n*expu(u,64)<=1, ('upper log check',n)
# Independently accept the strict integer inventory with rational log inequalities.
assert log_enclosure(F(7),16)[1]<2
assert 2<=log_enclosure(F(8),16)[0]
# Distinct positive exponential expansion with a complete geometric remainder.
EL=sum((F(2**k,factorial(k)) for k in range(12)), F(0))
EU=EL+F(2**12,factorial(12))/(1-F(2,13))
assert 7 < EL <= EU < 8
Glo=F(0); Gup=F(0); grows=[]
for j in range(M):
    l,u=y[j],y[j+1]; assert 0<l<=u and 2*u<=64 and F(3,2)*u<=64
    c,e=corr((l+u)/2,(u-l)/2)
    kl=expl(F(3,2)*u,64)/(1-expl(2*u,64))
    ku=expu(F(3,2)*l,64)/(1-expu(2*l,64))
    gl=(u-l)*kl*max(F(0),2*(mu-c)-2*(e0+e))
    gu=(u-l)*ku*max(F(0),2*(mu-c)+2*(e0+e))
    Glo+=gl; Gup+=gu; grows.append((gl,gu))
Delta=F(3,4)*(2*T+1)*(1+4*T*T)**2/F(4**m)+F(64,3)*T**3/F(2**m)
c0,ec=gamma(3,1)
phase={n: (0,1,-1)[n%3] for n in range(2,8)}
P=F(0); prime_err=F(0); prows=[]
for n,(l,u) in logdata.items():
    A,e=corr((l+u)/2,(u-l)/2)
    w,ew,W=weight(n)
    P+=2*w*phase[n]*A
    pe=2*(W*e+ew*abs(A))
    prime_err+=pe
    prows.append((n,A,e,w,ew,W,phase[n],pe))
masserr=ec*abs(mu)+(abs(c0)+ec)*e0
E=masserr+prime_err
lo=c0*mu+Glo-P-E
hi=c0*mu+Gup-P+Delta+E

# Finite exact controls use Gaussian integers (real part, imaginary part).
def gm(z,w): return (z[0]*w[0]-z[1]*w[1], z[0]*w[1]+z[1]*w[0])
def gc(z): return (z[0],-z[1])
t3=[(0,0),(1,0),(-1,0)]
t5=[(0,0),(1,0),(0,1),(0,-1),(-1,0)]
products=0
for tab in (t3,t5):
    q=len(tab)
    assert tab[0]==(0,0) and tab[1]==(1,0) and tab[-1]==(-1,0)
    assert tab[2]!=(1,0)
    for a in range(q):
        for b in range(q):
            assert gm(tab[a],tab[b])==tab[(a*b)%q]
            products+=1
readouts=0
for r in range(5):
    for re in range(-2,3):
        for im in range(-2,3):
            assert gm(gc(t5[r]),(re,im))[0]==[0,re,im,-im,-re][r]
            readouts+=1
# Negative controls: deliberately wrong formulas must disagree.
assert gm(t5[2],(0,1))[0] != gm(gc(t5[2]),(0,1))[0]
assert gm((1,0),(0,1))[0] != gm(gc(t5[2]),(0,1))[0]
bad=t5.copy(); bad[4]=(1,0)
assert gm(bad[2],bad[2]) != bad[4]
assert log_enclosure(F(4))[0] > log_enclosure(F(2))[1]
assert E == ec*abs(mu)+abs(c0)*e0+ec*e0+prime_err
assert e0 >= F(20,NP)
assert -22 < lo < 0 < hi < 47

def outward(v,scale=10**9):
    a=v.numerator*scale//v.denominator
    b=-((-v.numerator*scale)//v.denominator)
    return {'lower':f'{F(a,scale)}','upper':f'{F(b,scale)}'}

def fixed(v,scale=10**9):
    a=v.numerator*scale//v.denominator
    sign='-' if a<0 else ''
    a=abs(a)
    return f'{sign}{a//scale}.{a%scale:09d}'

result={
 'status':'EXACT_RATIONAL_ENDPOINT_EVALUATION; SOURCE_RETURN_NOT_LEAN_VERIFIED',
 'inputs':{'T':'1','q':3,'a':1,'physical_cells':NP,'lag_cells':M,'m':m,'sample_order':order,'kernel_order':64,'lag_check_order':64,'harmonic_index':8,'log_order':16,'sqrt_resolution':256,'pi':['157/50','63/20']},
 'quantities':{k:outward(v) for k,v in {'mu':mu,'e0':e0,'B0':B0,'c0':c0,'ec':ec,'P0':P,'mass_error':masserr,'prime_error':prime_err,'E':E,'Glo':Glo,'Gup':Gup,'Delta':Delta,'lower_endpoint':lo,'upper_endpoint':hi}.items()},
 'prime_rows':[{'n':r[0], 'phase':r[6], **{k:outward(z) for k,z in zip(['A','e','w0','ew','W','prime_error'],[r[1],r[2],r[3],r[4],r[5],r[7]])}} for r in prows],
 'gamma_rows':[{'j':j,'lower':outward(a),'upper':outward(b)} for j,(a,b) in enumerate(grows)],
 'controls':{'multiplication_pairs':products,'complex_readouts':readouts,'negative_controls':4,'independent_exp_inventory':True,'prime_power_classification':True,'physical_error_floor':str(F(20,NP))},
 'all_log_checks':True,'strict_inventory_boundary_checks':True,'all_sample_orders':True,'all_kernel_orders':True,
 'sign':'INCONCLUSIVE' if lo<=0<=hi else ('POSITIVE' if lo>0 else 'NEGATIVE'),
 'python':sys.version
}
outdir=Path(sys.argv[1]) if len(sys.argv)>1 else Path('.')
outdir.mkdir(parents=True,exist_ok=True)
(outdir/'endpoint-results.json').write_text(json.dumps(result,indent=2)+'\n')
for k,v in {'mu':mu,'e0':e0,'B0':B0,'c0':c0,'ec':ec,'P0':P,'mass_error':masserr,'prime_error':prime_err,'E':E,'Glo':Glo,'Gup':Gup,'Delta':Delta,'lower':lo,'upper':hi}.items():
    print(k, fixed(v), '(floor to 9 decimals)')
print(result['sign'])
print(json.dumps(result['controls'],sort_keys=True))
```
