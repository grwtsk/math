#!/usr/bin/env python3
"""Exact-rational scalar audit of the ORIGINAL primitive first-prime Weil form.

Two endpoints are checked: L=733/1000 with 1/1000 coercivity, and
L=367/500 with 1/10000 coercivity, each for every nonprincipal primitive
character including both parity sectors. All decisive comparisons use
fractions.Fraction, integer floor/ceil and finite series with stated tails.

Not checked by this finite script: original completed Dirichlet source
identity, zero-extension lemma, rank-one gamma inequality, gamma bound,
or any Lean kernel theorem. RH/GRH are not assumed or proved.
"""
from fractions import Fraction as F
from hashlib import sha256
from pathlib import Path
import sys

if not __debug__:
    raise SystemExit('FAIL: optimized Python would disable assertions')
S = 10**12  # outward transcendental-constant grid
G = 10**10  # outward potential/reciprocal/Darboux grid

def lower(q, scale):
    z=q*scale
    return F(z.numerator//z.denominator,scale)

def upper(q, scale):
    return -lower(-q,scale)

def log_bounds(q, n=24):
    """Enclose log(q) via atanh and its positive geometric remainder."""
    assert q>0
    k=0
    while q>=2:
        q/=2; k+=1
    while q<1:
        q*=2; k-=1
    u=(q-1)/(q+1)
    assert 0<=u<=F(1,3)
    a=F(0); z=u
    for j in range(n):
        a+=2*z/F(2*j+1)
        z*=u*u
    rem=2*z/(F(2*n+1)*(1-u*u))
    v=F(1,3); b=F(0); w=v
    for j in range(n):
        b+=2*w/F(2*j+1)
        w*=v*v
    rem2=2*w/(F(2*n+1)*(1-v*v))
    return (a+k*(b if k>=0 else b+rem2),
            a+rem+k*(b+rem2 if k>=0 else b))

def atan_bounds(x,n=20):
    """Alternating arctangent: 20 terms lower; 21 terms upper."""
    assert 0<x<1 and n%2==0
    z=x; total=F(0)
    for j in range(n+1):
        total+=(-1)**j*z/F(2*j+1)
        if j==n-1: lo=total
        if j==n: hi=total
        z*=x*x
    assert lo<hi
    return lo,hi

def expminus_bounds(x,n=25):
    """Odd Taylor partial gives lower, next even gives upper for e^-x."""
    assert 0<=x<=F(3,2) and n%2==1
    z=F(1); acc=F(0)
    for j in range(n+2):
        if j: z*=(-x)/j
        acc+=z
        if j==n: lo=acc
        if j==n+1: hi=acc
    assert 0<lo<hi<1
    return lo,hi

# Machin identity, no decimal pi assumption.
a5,b5=atan_bounds(F(1,5))
a239,b239=atan_bounds(F(1,239))
pi_lo,pi_hi=16*a5-4*b239,16*b5-4*a239
assert 3<pi_lo<pi_hi<F(22,7)
pi_lo,pi_hi=lower(pi_lo,S),upper(pi_hi,S)
ln2_lo,ln2_hi=log_bounds(F(2))
ln2_lo,ln2_hi=lower(ln2_lo,S),upper(ln2_hi,S)
ln3_lo,_=log_bounds(F(3))
assert F(2,3)<ln2_lo<ln2_hi<F(7,10)
sqrt2_lo=F(141421356237,10**11)
assert sqrt2_lo**2<2
prime2_hi=upper(ln2_hi/sqrt2_lo,S)

# Classical convex-trapezoid bound: Euler gamma is smaller than
# H_M-log(M)-1/(2M)+1/(8M²). Exact rational interval for log M.
M=200
H_M=sum((F(1,j) for j in range(1,M+1)), F(0))
logM_lo,_=log_bounds(F(M))
eulergamma_hi=upper(H_M-logM_lo-F(1,2*M)+F(1,8*M*M),S)
assert F(5772,10000)<eulergamma_hi<F(5773,10000)

def certify(L,N,min_potential_req,rho_req,coercivity_req):
    assert ln2_hi<L<ln3_lo and 0<L<1
    # Actual gamma parity 1, conductor 3: k_{3/2}(L).
    numlo,numhi=expminus_bounds(F(3,2)*L)
    ulo,uhi=expminus_bounds(2*L)
    klo=lower(numlo/(1-ulo),S)
    khi=upper(numhi/(1-uhi),S)
    assert 0<klo<khi<F(1,2)

    # For 0<t<=L, K_{3/2}(t) >= (1/2)log(4/t)-pi/4+t/4-t³/96.
    # c_{3,1}=log(3/pi)-EulerGamma+pi/2-3log2, so the pi/2 and
    # dyadic logarithms cancel EXACTLY when the two K bounds are added.
    # For y=2x/L-1, V(x)=c+K(x)+K(L-x)+Lk(L) satisfies
    # V(x) >= B - log(1-y²)/2 -[x³+(L-x)³]/96.
    B=log_bounds(F(3)/(pi_hi*L))[0]-eulergamma_hi+L/4+L*klo
    B=lower(B,G)

    # Actual n=2 edge width is d=L-log2. Use a slightly larger
    # rational edge dmax so all true prime correlations are paid.
    dmax=L-ln2_lo
    assert 0<dmax<L/2

    def glower(x,edge):
        assert 0<x<=L/2
        y=2*x/L-1
        assert abs(y)<1
        logrlo=log_bounds(1/(1-y*y))[0]
        val=B+logrlo/2-(x**3+(L-x)**3)/96
        if edge: val-=prime2_hi
        return lower(val,G)

    edge_min=glower(dmax,True)
    middle_min=glower(L/2,False)
    vmin=min(edge_min,middle_min)
    assert vmin>min_potential_req,(L,vmin)

    # K'=-k and k decreases, hence V decreases on [0,L/2].
    # The two disjoint prime-edge intervals are inside [0,dmax]
    # and [L-dmax,L].  On each half-segment 1/G increases.
    # RIGHT endpoint Darboux sums bound the TRUE CONTINUUM integral.
    def inv_hi(x,edge):
        pot=glower(x,edge)
        assert pot>0
        return upper(1/pot,G)
    e_step=dmax/N
    m_step=(L/2-dmax)/N
    e_sum=sum((inv_hi(e_step*j,True) for j in range(1,N+1)), F(0))
    m_sum=sum((inv_hi(dmax+m_step*j,False) for j in range(1,N+1)), F(0))
    Iupper=2*(e_step*e_sum+m_step*m_sum)
    rho=upper(khi*Iupper,G)
    assert rho<rho_req,(L,rho,rho_req)
    floor=lower((1-rho)*vmin,G)
    assert floor>coercivity_req,(L,floor,coercivity_req)

    print('PASS endpoint',L,'Darboux cells/segment',N)
    print('  k3/2(L):',klo,'< k <',khi)
    print('  edge G lower:',edge_min,'midpoint G lower:',middle_min)
    print('  reciprocal integral <',Iupper,'rho <',rho)
    print('  Q/||f||^2 >',floor,'>',coercivity_req)
    return floor,rho

print('WEIL_PRIMITIVE_FIRST_PRIME_EXTENDED: START')
certify(F(733,1000),512,F(186,1000),F(497,500),F(1,1000))
certify(F(367,500),1024,F(185,1000),F(999,1000),F(1,10000))
print('WEIL_PRIMITIVE_FIRST_PRIME_EXTENDED: PASS')
print('Python:',sys.version.split()[0])
print('SHA256:',sha256(Path(__file__).read_bytes()).hexdigest())
