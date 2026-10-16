#!/usr/bin/env python3
"""Exact-rational certificates for a finite reflected critical-strip cover.

Human research direction: grwtsk contributors.
Mathematical adaptation and implementation: OpenAI ChatGPT. MIT.

The analytic input is the Euler--Maclaurin identity for F(s)=(s-1)zeta(s),
including its remainder. Values at the pole are never obtained as 0*infinity.
A finite compensated Dirichlet mode stack is Taylor-expanded before norm
bounds. Reflection uses xi(s)=Gamma(1+s/2)*pi**(-s/2)*F(s), not a false
same-modulus law for F. This is a written-analysis/exact-computation result,
not a Lean admission, a new zero-free exponent, or an all-height RH proof.
"""
from __future__ import annotations
import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
from functools import lru_cache
import json
from math import comb, factorial
from pathlib import Path
from typing import Sequence


def rational(x: int | Q | str) -> Q:
    if isinstance(x, bool) or not isinstance(x, (int, Q, str)):
        raise TypeError('use exact integers, fractions or fraction strings')
    return Q(x)


def integer(x: int, name: str, lo: int, hi: int) -> int:
    if type(x) is not int or not lo <= x <= hi:
        raise ValueError(f'{name} must be an integer in [{lo},{hi}]')
    return x


@dataclass(frozen=True)
class Interval:
    lo: Q
    hi: Q
    def __post_init__(self):
        object.__setattr__(self, 'lo', rational(self.lo))
        object.__setattr__(self, 'hi', rational(self.hi))
        if self.lo > self.hi:
            raise ValueError('reversed interval')
    @staticmethod
    def point(x):
        x = rational(x)
        return Interval(x, x)
    @staticmethod
    def coerce(x):
        return x if isinstance(x, Interval) else Interval.point(x)
    def __add__(self, other):
        o = self.coerce(other)
        return Interval(self.lo+o.lo, self.hi+o.hi)
    __radd__ = __add__
    def __neg__(self):
        return Interval(-self.hi, -self.lo)
    def __sub__(self, other):
        return self + (-self.coerce(other))
    def __rsub__(self, other):
        return self.coerce(other) + (-self)
    def __mul__(self, other):
        o = self.coerce(other)
        v = (self.lo*o.lo, self.lo*o.hi, self.hi*o.lo, self.hi*o.hi)
        return Interval(min(v), max(v))
    __rmul__ = __mul__
    def __truediv__(self, other):
        o = self.coerce(other)
        if o.lo <= 0 <= o.hi:
            raise ZeroDivisionError('interval divisor contains zero')
        return self*Interval(1/o.hi, 1/o.lo)
    def rounded(self, bits):
        scale = 1 << bits
        a, b = self.lo*scale, self.hi*scale
        return Interval(Q(a.numerator//a.denominator, scale),
                        Q(-((-b.numerator)//b.denominator), scale))
    def upper_abs(self):
        return max(abs(self.lo), abs(self.hi))
    def lower_abs(self):
        return Q(0) if self.lo <= 0 <= self.hi else min(abs(self.lo), abs(self.hi))
    def widen(self, error):
        error = rational(error)
        if error < 0:
            raise ValueError('negative error')
        return Interval(self.lo-error, self.hi+error)
    def contains(self, x):
        return self.lo <= rational(x) <= self.hi


@dataclass(frozen=True)
class ComplexBox:
    re: Interval
    im: Interval
    def __post_init__(self):
        object.__setattr__(self, 're', Interval.coerce(self.re))
        object.__setattr__(self, 'im', Interval.coerce(self.im))
    @staticmethod
    def point(re=0, im=0):
        return ComplexBox(Interval.point(re), Interval.point(im))
    @staticmethod
    def coerce(x):
        return x if isinstance(x, ComplexBox) else ComplexBox(Interval.coerce(x), Interval.point(0))
    def __add__(self, other):
        o = self.coerce(other)
        return ComplexBox(self.re+o.re, self.im+o.im)
    __radd__ = __add__
    def __neg__(self):
        return ComplexBox(-self.re, -self.im)
    def __sub__(self, other):
        return self + (-self.coerce(other))
    def __rsub__(self, other):
        return self.coerce(other) + (-self)
    def __mul__(self, other):
        o = self.coerce(other)
        return ComplexBox(self.re*o.re-self.im*o.im, self.re*o.im+self.im*o.re)
    __rmul__ = __mul__
    def __truediv__(self, real):
        return ComplexBox(self.re/real, self.im/real)
    def rounded(self, bits):
        return ComplexBox(self.re.rounded(bits), self.im.rounded(bits))
    def upper_abs(self):
        # L1 upper bound for the Euclidean complex modulus.
        return self.re.upper_abs()+self.im.upper_abs()
    def lower_abs(self):
        # L-infinity lower bound for the Euclidean complex modulus.
        return max(self.re.lower_abs(), self.im.lower_abs())
    def conjugate(self):
        return ComplexBox(self.re, -self.im)


def _atanh_log(y: Q, bits: int) -> Interval:
    if not 0 <= y <= Q(1, 3):
        raise ValueError('log range reduction failed')
    if y == 0:
        return Interval.point(0)
    value, power, j = Q(0), y, 0
    while True:
        value += 2*power/(2*j+1)
        j += 1
        power *= y*y
        error = 2*power/((2*j+1)*(1-y*y))
        if error <= Q(1, 1 << (bits+8)):
            return Interval(value, value+error).rounded(bits)
        if j > bits+32:
            raise ArithmeticError('log series budget exhausted')


@lru_cache(maxsize=2048)
def _log_integer(n: int, bits: int) -> Interval:
    k = n.bit_length()-1
    reduced = Q(n, 1 << k)
    return (k*_atanh_log(Q(1,3), bits+16)
            + _atanh_log((reduced-1)/(reduced+1), bits+16)).rounded(bits)


def log_integer(n: int, bits: int) -> Interval:
    # Validate before cache lookup: bool and equal numeric keys are not admitted.
    integer(n, 'log argument', 1, 4096)
    integer(bits, 'bits', 32, 512)
    return _log_integer(n, bits)


def complex_exp(z: ComplexBox, bits: int) -> ComplexBox:
    integer(bits, 'bits', 32, 512)
    if not isinstance(z, ComplexBox):
        raise TypeError('ComplexBox required')
    bound, shifts = z.upper_abs(), 0
    if bound > 10000:
        raise ValueError('exponential resource guard')
    while bound > Q(1,2):
        bound /= 2
        shifts += 1
    w = z/(1 << shifts)
    work = bits+32
    total = term = ComplexBox.point(1)
    j = 0
    majorant = Q(1)
    while True:
        j += 1
        term = (term*w/j).rounded(work)
        total = (total+term).rounded(work)
        majorant *= bound/j
        # exp(bound)<2 at bound<=1/2; full omitted complex tail.
        error = 2*majorant*bound/(j+1)
        if error <= Q(1, 1 << (bits+16)):
            break
        if j > bits+64:
            raise ArithmeticError('exponential series budget exhausted')
    total = ComplexBox(total.re.widen(error), total.im.widen(error))
    for _ in range(shifts):
        total = (total*total).rounded(work)
    return total.rounded(bits)


@lru_cache(maxsize=32)
def _bernoulli_even(order: int) -> tuple[Q, ...]:
    values = [Q(1)]
    for n in range(1, 2*order+1):
        values.append(-sum((comb(n+1,j)*values[j] for j in range(n)), Q(0))/(n+1))
    return tuple(values[2*k]/factorial(2*k) for k in range(1,order+1))


def bernoulli_even(order: int) -> tuple[Q, ...]:
    integer(order, 'Euler order', 1, 32)
    return _bernoulli_even(order)


@dataclass(frozen=True)
class Parameters:
    cutoff: int = 32
    euler_order: int = 12
    degree: int = 24
    bits: int = 112
    radius: Q = Q(1,2)
    def __post_init__(self):
        integer(self.cutoff, 'cutoff', 2, 128)
        integer(self.euler_order, 'Euler order', 1, 24)
        integer(self.degree, 'Taylor degree', 2, 40)
        integer(self.bits, 'bits', 64, 256)
        object.__setattr__(self, 'radius', rational(self.radius))
        if self.radius != Q(1,2):
            raise ValueError('current profile has outer Cauchy radius 1/2')
    def json(self):
        return dict(cutoff=self.cutoff, euler_order=self.euler_order,
                    degree=self.degree, bits=self.bits, radius=str(self.radius))


def _multiply_linear(poly, center, degree, bits):
    result = [ComplexBox.point(0) for _ in range(min(len(poly)+1,degree+1))]
    for j, x in enumerate(poly):
        result[j] = (result[j]+center*x).rounded(bits)
        if j+1 <= degree:
            result[j+1] = (result[j+1]+x).rounded(bits)
    return result


def _exp_jet(center, logn, degree, bits):
    first = complex_exp(-center*logn, bits)
    result = [first]
    for k in range(1,degree+1):
        result.append((result[-1]*(-logn)/k).rounded(bits))
    return result


def stack_jet(sigma: Q, height: Q, par: Parameters) -> tuple[ComplexBox, ...]:
    """Taylor jet of the entire compensated finite Dirichlet stack E(s).

    E(s)=(s-1)sum_(k<N)k^-s + N^-s [N+(s-1)/2
      +(s-1)sum_(r=1..m)B_(2r)/(2r)! (s)_(2r-1)N^(1-2r)].
    This is not the uncorrected Dirichlet series in the critical strip.
    """
    sigma, height = rational(sigma), rational(height)
    if not Q(1,2) <= sigma <= 1 or abs(height)>64:
        raise ValueError('current source profile: 1/2<=Re c<=1, |Im c|<=64')
    d, bits, N = par.degree, par.bits, par.cutoff
    center = ComplexBox.point(sigma, height)
    result = [ComplexBox.point(0) for _ in range(d+1)]
    for k in range(1,N):
        mode = _exp_jet(center,log_integer(k,bits),d,bits)
        for j in range(d+1):
            result[j] = (result[j]+(center-1)*mode[j]
                         +(mode[j-1] if j else 0)).rounded(bits)
    P = [ComplexBox.point(0) for _ in range(d+1)]
    P[0], P[1] = N+(center-1)/2, ComplexBox.point(Q(1,2))
    rising = [center-1, ComplexBox.point(1)]
    bern = bernoulli_even(par.euler_order)
    for j in range(2*par.euler_order-1):
        rising = _multiply_linear(rising,center+j,d,bits)
        if j % 2 == 0:
            r = (j+2)//2
            scalar = bern[r-1]/N**(2*r-1)
            for k, value in enumerate(rising):
                P[k] = (P[k]+scalar*value).rounded(bits)
    mode = _exp_jet(center,log_integer(N,bits),d,bits)
    for j in range(d+1):
        for k in range(j+1):
            result[j] = (result[j]+P[k]*mode[j-k]).rounded(bits)
    return tuple(result)


def analytic_bounds(sigma: Q, height: Q, par: Parameters) -> tuple[Q,Q]:
    """Return full-disk |E| and |F-E| upper bounds, both exact rational.

    Re(s)>=0 on D(c,1/2). Bound all powers k^-Re(s) by 1. Use
    sup|periodic B_(2m)|/(2m)! <=4/6^(2m), pi>3 and zeta(2m)<2.
    Neither the endpoint correction nor the (s-1) pole compensation is lost.
    """
    sigma, height = rational(sigma), rational(height)
    if not Q(1,2)<=sigma<=1 or abs(height)>64:
        raise ValueError('center outside supported profile')
    N,m,R = par.cutoff,par.euler_order,par.radius
    t = abs(height)
    s1 = abs(sigma-1)+t+R
    size = s1*(N-1)+N+s1/2
    product = Q(1)
    bern = bernoulli_even(m)
    for j in range(2*m):
        product *= abs(sigma+j)+t+R
        if j % 2 == 0:
            r = (j+2)//2
            size += s1*abs(bern[r-1])*product/N**(2*r-1)
    tail = s1*4*product/(6**(2*m)*N**(2*m-1)*(2*m-1))
    return size, tail


@dataclass(frozen=True)
class LocalModel:
    sigma: Q
    height: Q
    parameters: Parameters
    coefficients: tuple[ComplexBox,...]
    stack_bound: Q
    euler_tail: Q
    def remainder(self, radius: Q) -> Q:
        radius = rational(radius)
        if not 0 <= radius < self.parameters.radius:
            raise ValueError('local radius must be below the outer Cauchy radius')
        q = radius/self.parameters.radius
        return self.euler_tail+self.stack_bound*q**(self.parameters.degree+1)/(1-q)
    def zero_free_margin(self, radius: Q) -> Q:
        radius = rational(radius)
        return (self.coefficients[0].lower_abs()
                -sum((a.upper_abs()*radius**k for k,a in enumerate(self.coefficients) if k), Q(0))
                -self.remainder(radius))
    def one_zero_margin(self, radius: Q) -> Q:
        radius = rational(radius)
        if radius <= 0:
            raise ValueError('Rouche radius must be positive')
        return (self.coefficients[1].lower_abs()*radius
                -self.coefficients[0].upper_abs()
                -sum((a.upper_abs()*radius**k for k,a in enumerate(self.coefficients) if k>=2),Q(0))
                -self.remainder(radius))


@lru_cache(maxsize=4096)
def _model(sigma: Q, height: Q, par: Parameters) -> LocalModel:
    size, tail = analytic_bounds(sigma,height,par)
    return LocalModel(sigma,height,par,stack_jet(sigma,height,par),size,tail)


def model(sigma, height, par=Parameters()) -> LocalModel:
    sigma, height = rational(sigma), rational(height)
    if not isinstance(par,Parameters):
        raise TypeError('Parameters required')
    return _model(sigma,height,par)


def dyadic_floor_power(x: Q) -> int:
    x = rational(x)
    if x<=0:
        raise ValueError('positive margin required')
    k = x.numerator.bit_length()-x.denominator.bit_length()
    p = Q(2)**k
    return k if p<=x else k-1


@dataclass(frozen=True)
class Rectangle:
    xmin: Q
    xmax: Q
    ymin: Q
    ymax: Q
    def __post_init__(self):
        for key in ('xmin','xmax','ymin','ymax'):
            object.__setattr__(self,key,rational(getattr(self,key)))
        if not self.xmin<self.xmax or not self.ymin<self.ymax:
            raise ValueError('nondegenerate ordered rectangle required')
    def center(self):
        return ((self.xmin+self.xmax)/2,(self.ymin+self.ymax)/2)
    def radius(self):
        # Euclidean distance of every point is <= this exact L1 radius.
        return (self.xmax-self.xmin+self.ymax-self.ymin)/2
    def split(self):
        # Fixed deterministic longest-side rule, with real direction winning ties.
        x,y=self.center()
        if self.xmax-self.xmin>=self.ymax-self.ymin:
            return (Rectangle(self.xmin,x,self.ymin,self.ymax),
                    Rectangle(x,self.xmax,self.ymin,self.ymax))
        return (Rectangle(self.xmin,self.xmax,self.ymin,y),
                Rectangle(self.xmin,self.xmax,y,self.ymax))
    def inside_disk(self,sigma,height,radius):
        dx=max(abs(self.xmin-sigma),abs(self.xmax-sigma))
        dy=max(abs(self.ymin-height),abs(self.ymax-height))
        return dx*dx+dy*dy < radius*radius
    def json(self):
        return [str(self.xmin),str(self.xmax),str(self.ymin),str(self.ymax)]


# Proposed centers, not imported zero facts. Existence and uniqueness must be
# proved anew by the strict Rouche test. Generated partners are not independent
# arithmetic certificates.
ROOT_SEEDS = (Q(113,8),Q(21),Q(25),Q(487,16))


def root_records(par: Parameters, height: Q) -> list[dict]:
    result=[]
    radius=Q(1,16)
    for y in ROOT_SEEDS:
        if y+radius>height:
            continue
        m=model(Q(1,2),y,par)
        margin=m.one_zero_margin(radius)
        if margin<=0:
            raise ArithmeticError(f'uncertified proposed root disk at {y}')
        result.append(dict(center=['1/2',str(y)],radius=str(radius),
                           margin_power=dyadic_floor_power(margin)))
    return result


def build_cover(height=Q(32),par=Parameters(),max_depth=24,max_leaves=4096) -> dict:
    height=rational(height)
    if not 0<height<=32:
        raise ValueError('coverage profile requires 0<height<=32')
    integer(max_depth,'max_depth',1,32)
    integer(max_leaves,'max_leaves',1,8192)
    roots=root_records(par,height)
    domain=Rectangle(Q(1,2),1,0,height)
    leaves=[]
    def visit(box,path):
        if len(leaves)>=max_leaves:
            raise ArithmeticError('coverage leaf budget exhausted; no complete claim')
        for index,root in enumerate(roots):
            cx,cy=map(Q,root['center'])
            if box.inside_disk(cx,cy,Q(root['radius'])):
                leaves.append(dict(path=path,kind='one_zero_disk',root=index))
                return
        if box.radius()<par.radius:
            cx,cy=box.center()
            margin=model(cx,cy,par).zero_free_margin(box.radius())
            if margin>0:
                leaves.append(dict(path=path,kind='zero_free',margin_power=dyadic_floor_power(margin)))
                return
        if len(path)>=max_depth:
            raise ArithmeticError(f'unresolved cell at {path}; no complete claim')
        left,right=box.split()
        visit(left,path+'0');visit(right,path+'1')
    visit(domain,'')
    return dict(schema='reflected-mode-cover-v1',function='(s-1)*zeta(s), entire regularization',
                parameters=par.json(),domain=domain.json(),roots=roots,leaves=leaves,
                interpretation='Finite cover only. xi reflection and conjugation extend the right upper half.',
                native_lean_admission=False)


def verify_cover(record: dict) -> dict:
    """Recompute all analytic certificates; verify a full partition, not samples.

    No self-declared Boolean or stored positive margin is accepted as evidence.
    Missing/overlapping leaves, invalid margins, unproved root disks and changes
    to source normalization fail. Root disks use strict Rouche inequalities.
    """
    if type(record) is not dict or record.get('schema')!='reflected-mode-cover-v1':
        raise ValueError('unknown certificate schema')
    expected={'schema','function','parameters','domain','roots','leaves','interpretation','native_lean_admission'}
    if set(record)!=expected:
        raise ValueError('unexpected or missing certificate field')
    if record['interpretation']!='Finite cover only. xi reflection and conjugation extend the right upper half.':
        raise ValueError('unsupported coverage interpretation')
    if record.get('function')!='(s-1)*zeta(s), entire regularization':
        raise ValueError('wrong source normalization')
    if record.get('native_lean_admission') is not False:
        raise ValueError('unsupported native admission')
    par=Parameters(**record['parameters'])
    box=Rectangle(*record['domain'])
    if box.xmin!=Q(1,2) or box.xmax!=1 or box.ymin!=0 or not 0<box.ymax<=32:
        raise ValueError('wrong finite domain')
    roots=record['roots']
    if type(roots) is not list or len(roots)>16:
        raise ValueError('root list invalid')
    parsed=[]
    for root in roots:
        if set(root)!={'center','radius','margin_power'}:
            raise ValueError('root fields invalid')
        cx,cy=map(rational,root['center']);radius=rational(root['radius'])
        power=integer(root['margin_power'],'root margin power',-1000,1000)
        if cx!=Q(1,2) or not 0<radius<min(Q(1,2),cy,box.ymax-cy):
            raise ValueError('root disk not inside the declared positive strip')
        margin=model(cx,cy,par).one_zero_margin(radius)
        if margin<Q(2)**power:
            raise ArithmeticError('Rouche margin not reproduced')
        if any(abs(cy-y)<=radius+r for _,y,r in parsed):
            raise ValueError('root disks are not separated')
        parsed.append((cx,cy,radius))
    leaves=record['leaves']
    if type(leaves) is not list or not 1<=len(leaves)<=8192:
        raise ValueError('leaf list invalid')
    trie={}
    for leaf in leaves:
        path=leaf.get('path')
        if type(path) is not str or len(path)>32 or any(c not in '01' for c in path):
            raise ValueError('invalid dyadic path')
        node=trie
        for char in path:
            if 'leaf' in node:
                raise ValueError('overlapping leaves')
            node=node.setdefault(char,{})
        if node:
            raise ValueError('duplicate/ancestor leaf')
        node['leaf']=leaf
    counts={'zero_free_cells':0,'root_disk_cells':0,'root_disks':len(roots)}
    def visit(node,cell):
        if set(node)=={'leaf'}:
            leaf=node['leaf']
            if leaf['kind']=='zero_free':
                if set(leaf)!={'path','kind','margin_power'}:
                    raise ValueError('zero-free fields invalid')
                power=integer(leaf['margin_power'],'cell margin power',-1000,1000)
                cx,cy=cell.center()
                if model(cx,cy,par).zero_free_margin(cell.radius())<Q(2)**power:
                    raise ArithmeticError('zero-free margin not reproduced')
                counts['zero_free_cells']+=1
            elif leaf['kind']=='one_zero_disk':
                if set(leaf)!={'path','kind','root'}:
                    raise ValueError('root-cell fields invalid')
                i=integer(leaf['root'],'root index',0,len(parsed)-1)
                if not cell.inside_disk(*parsed[i]):
                    raise ArithmeticError('cell is not inside its certified root disk')
                counts['root_disk_cells']+=1
            else:
                raise ValueError('unknown cell claim')
            return
        if set(node)!={'0','1'}:
            raise ValueError('uncovered cell: partition incomplete')
        left,right=cell.split()
        visit(node['0'],left);visit(node['1'],right)
    visit(trie,box)
    return dict(verified=True,**counts,positive_zero_count=len(roots),
                full_strip_zero_count=2*len(roots),height=str(box.ymax),
                zero_location='Every zero in 0<=Re(s)<=1, |Im(s)|<=height is on Re(s)=1/2.',
                scope='Classical analytic implications plus exact finite arithmetic; not Lean.')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--height',default='32')
    p.add_argument('--output',type=Path)
    p.add_argument('--verify',type=Path)
    p.add_argument('--cutoff',type=int,default=32)
    p.add_argument('--order',type=int,default=12)
    p.add_argument('--degree',type=int,default=24)
    p.add_argument('--bits',type=int,default=112)
    args=p.parse_args()
    try:
        if args.verify:
            record=json.loads(args.verify.read_text())
        else:
            par=Parameters(args.cutoff,args.order,args.degree,args.bits)
            record=build_cover(Q(args.height),par)
        summary=verify_cover(record)
        if args.output:
            args.output.write_text(json.dumps(record,indent=2)+'\n')
        print(json.dumps(summary,indent=2))
    except (ValueError,TypeError,ArithmeticError,KeyError,OSError) as error:
        p.exit(2,f'error: {error}\n')

if __name__=='__main__':
    main()
