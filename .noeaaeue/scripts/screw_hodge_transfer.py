#!/usr/bin/env python3
"""Exact finite transfer checks for source-preserving Hodge/screw constructions.

Direction: R.A. Jacob Martone. Deductions and implementation: OpenAI ChatGPT.
MIT. Continuum implications are WRITTEN, not Lean-kernel checked. A finite
cosine/Hodge model is not automatically the arithmetic zeta source. No API
in this module certifies RH or a new zero-free region.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as F
from math import isqrt
import argparse
import hashlib
import json
from pathlib import Path


def rational(x) -> F:
    if type(x) is int or isinstance(x, F):
        value = F(x)
    elif isinstance(x, str) and len(x) <= 4096:
        value = F(x)
    else:
        raise TypeError('exact integer, Fraction, or bounded rational string required')
    if max(value.numerator.bit_length(), value.denominator.bit_length()) > 16384:
        raise ValueError('rational resource bound')
    return value


def integer(x, low=0, high=1000000):
    if type(x) is not int or not low <= x <= high:
        raise ValueError('integer outside declared resource profile')
    return x


@dataclass(frozen=True)
class C:
    re: F = F(0)
    im: F = F(0)

    def __post_init__(self):
        object.__setattr__(self, 're', rational(self.re))
        object.__setattr__(self, 'im', rational(self.im))

    @staticmethod
    def cast(x):
        return x if isinstance(x, C) else C(x)

    def __add__(self, x):
        x = C.cast(x)
        return C(self.re+x.re, self.im+x.im)
    __radd__ = __add__

    def __neg__(self):
        return C(-self.re, -self.im)

    def __sub__(self, x):
        return self + -C.cast(x)

    def __rsub__(self, x):
        return C.cast(x) + -self

    def __mul__(self, x):
        x = C.cast(x)
        return C(self.re*x.re-self.im*x.im, self.re*x.im+self.im*x.re)
    __rmul__ = __mul__

    def conj(self):
        return C(self.re, -self.im)

    def abs2(self):
        return self.re*self.re+self.im*self.im

    def __truediv__(self, x):
        x = C.cast(x)
        d = x.abs2()
        if not d:
            raise ZeroDivisionError('zero complex denominator')
        p = self*x.conj()
        return C(p.re/d, p.im/d)

    def __rtruediv__(self, x):
        return C.cast(x)/self

    def record(self):
        return [str(self.re), str(self.im)]


I = C(0, 1)


@dataclass(frozen=True)
class CosineHodge:
    """g(t)=-alpha*t^2/2+sum a*(cos(sqrt(q)*t)-1).

    q stores squared real frequency, not a cyclic phase. To claim a cyclic
    realization one must separately bind an integer phase and its chosen lift.
    No zero list or zeta-source identification is inferred from these data.
    """
    atoms: tuple[tuple[F, F], ...]
    alpha: F = F(0)

    def __post_init__(self):
        if len(self.atoms) > 4096:
            raise ValueError('model resource bound')
        atoms = tuple((rational(q), rational(a)) for q, a in self.atoms)
        alpha = rational(self.alpha)
        if alpha < 0 or any(q < 0 or a < 0 for q, a in atoms):
            raise ValueError('nonnegative squared frequencies and masses required')
        object.__setattr__(self, 'atoms', atoms)
        object.__setattr__(self, 'alpha', alpha)

    def covariance_mass(self):
        return sum((a for _, a in self.atoms), F(0))

    def spectral_mass(self):
        return self.alpha + sum((q*a for q, a in self.atoms), F(0))

    def m(self, z: C):
        if not isinstance(z, C) or z.im == 0:
            raise ValueError('nonreal exact observation point required')
        return -self.alpha/z + sum((a*q*z/(q-z*z) for q, a in self.atoms), C())

    def omega(self, z: C):
        if z.im <= 0:
            raise ValueError('upper-half-plane Schur chart required')
        m = self.m(z)
        return (m-I)/(m+I)

    def reflected_omega(self, z: C):
        if z.im >= 0:
            raise ValueError('lower-half-plane reflected chart required')
        return self.omega(z.conj()).conj()


def source_residual(X: C, derivative: C, omega: C):
    return (X+I*derivative)*omega + X-I*derivative


def differential_residual(X: C, derivative: C, m: C):
    return 2*(X*m+derivative)/(m+I)


def centered_coordinate(s: C):
    return I*(s-F(1, 2))


def critical_reflection(s: C):
    return 1-s.conj()


def covariance(v, k: int):
    """Exact real covariance on a finite cycle; coordinates are retained."""
    if not v or len(v) > 4096 or type(k) is not int:
        raise ValueError('finite vector and integer shift required')
    v = tuple(map(rational, v)); k %= len(v)
    return sum((v[j]*v[(j+k) % len(v)]-v[j]*v[j] for j in range(len(v))), F(0))


def cyclic_gram(v, labels):
    if len(labels) > 128 or any(type(k) is not int for k in labels):
        raise ValueError('bounded integer label list required')
    return [[covariance(v, s-t)-covariance(v, s)-covariance(v, t)
             for t in labels] for s in labels]


def parity_form(B, D):
    """Return [[B,D],[D,B]] and its two actual parity blocks."""
    n = len(B)
    if not n or n > 64 or len(D) != n or any(len(row) != n for row in B+D):
        raise ValueError('matching bounded square blocks required')
    B = [list(map(rational, row)) for row in B]
    D = [list(map(rational, row)) for row in D]
    if any(B[i][j] != B[j][i] or D[i][j] != D[j][i]
           for i in range(n) for j in range(n)):
        raise ValueError('symmetric blocks required')
    full = [B[i]+D[i] for i in range(n)] + [D[i]+B[i] for i in range(n)]
    plus = [[B[i][j]+D[i][j] for j in range(n)] for i in range(n)]
    minus = [[B[i][j]-D[i][j] for j in range(n)] for i in range(n)]
    return full, plus, minus


def restored_error(retention, negativity, approximation):
    """Conditional bound after H=P_+ + retention*P_-; no sign invented."""
    r, eta, eps = map(rational, (retention, negativity, approximation))
    if not 0 < r <= 1 or min(eta, eps) < 0:
        raise ValueError('positive retention and nonnegative errors required')
    return (eta+eps)/(r*r)


def strip_residual_tail(height, cutoff):
    """Proved bound for omitted *centered pickup* transform cells, 0<=Re(s)<=1.

    This bounds analytic reconstruction error, not the zeta source modulus.
    """
    H = rational(height); N = integer(cutoff, 1, 10**9)
    if H < 0:
        raise ValueError('height must be nonnegative')
    return (2*H+1)/(16*N)


def strip_tail_schedule(height, tolerance):
    H, eps = map(rational, (height, tolerance))
    if H < 0 or eps <= 0:
        raise ValueError('invalid height or tolerance')
    q = (2*H+1)/(16*eps)
    n = max(1, -((-q.numerator)//q.denominator))
    if n > 10**9:
        raise ValueError('scalar schedule exceeds declared resource profile')
    return {'height': str(H), 'tolerance': str(eps), 'cutoff': n,
            'tail_upper': str(strip_residual_tail(H, n)),
            'scope': 'centered-pickup transform only; not zero exclusion'}


def rectangle_pair(delta, height):
    d, H = map(rational, (delta, height))
    if not 0 < d <= F(1, 2) or H < 0:
        raise ValueError('invalid off-critical rectangle')
    return {'right_s': list(map(str, (F(1, 2)+d, 1, -H, H))),
            'left_s': list(map(str, (0, F(1, 2)-d, -H, H))),
            'upper_z': list(map(str, (-H, H, d, F(1, 2)))),
            'lower_z': list(map(str, (-H, H, -F(1, 2), -d))),
            'source_status': 'UNRESOLVED_NO_NONVANISHING_MARGIN'}


@dataclass(frozen=True)
class Box:
    """Outward rational interval; no binary floats or hidden tolerances."""
    lo: F
    hi: F
    bits: int = 160

    def __post_init__(self):
        lo, hi = map(rational, (self.lo, self.hi))
        integer(self.bits, 64, 512)
        if lo > hi:
            raise ValueError('reversed interval')
        object.__setattr__(self, 'lo', lo); object.__setattr__(self, 'hi', hi)

    @classmethod
    def exact(cls, a, bits=160):
        return cls(rational(a), rational(a), bits)

    @classmethod
    def rounded(cls, lo, hi, bits=160):
        lo, hi = map(rational, (lo, hi)); integer(bits, 64, 512)
        if lo > hi:
            raise ValueError('reversed interval before rounding')
        scale = 1 << bits
        x, y = lo*scale, hi*scale
        return cls(F(x.numerator//x.denominator, scale),
                   F(-((-y.numerator)//y.denominator), scale), bits)

    def cast(self, x):
        if isinstance(x, Box):
            if x.bits != self.bits:
                raise ValueError('mixed precision')
            return x
        return Box.exact(x, self.bits)

    def __add__(self, x):
        b = self.cast(x)
        return Box.rounded(self.lo+b.lo, self.hi+b.hi, self.bits)
    __radd__ = __add__

    def __neg__(self):
        return Box(-self.hi, -self.lo, self.bits)

    def __sub__(self, x):
        return self+-self.cast(x)

    def __mul__(self, x):
        b = self.cast(x)
        p = [a*c for a in (self.lo,self.hi) for c in (b.lo,b.hi)]
        return Box.rounded(min(p), max(p), self.bits)
    __rmul__ = __mul__

    def __truediv__(self, x):
        b = self.cast(x)
        if b.lo <= 0 <= b.hi:
            raise ZeroDivisionError('interval denominator contains zero')
        return self*Box.rounded(1/b.hi,1/b.lo,self.bits)

    def record(self):
        return {'lower':str(self.lo),'upper':str(self.hi)}


def sqrt_box(n, bits=160):
    n = integer(n,1,1000001); integer(bits,64,512)
    scale = 1 << bits; k = isqrt(n*scale*scale)
    return Box(F(k,scale),F(k if k*k == n*scale*scale else k+1,scale),bits)


def log_width(n, bits=160):
    n = integer(n,1,1000000); integer(bits,64,512)
    z = F(1,2*n+1); zz = z*z; p=z; total=F(0)
    for j in range(1024):
        total += 2*p/(2*j+1); p *= zz
        tail=2*p/((2*j+3)*(1-zz))
        if tail <= F(1,1 << (bits+8)):
            return Box.rounded(total,total+tail,bits)
    raise ArithmeticError('logarithm series resource limit')


def moebius(n):
    n = integer(n,1,1000000)
    mu=[1]*(n+1); mu[0]=0; prime=[True]*(n+1)
    for p in range(2,n+1):
        if prime[p]:
            for k in range(p,n+1,p):
                prime[k]=False; mu[k]*=-1
            for k in range(p*p,n+1,p*p):
                mu[k]=0
    return mu


def trial_mu(n):
    n=integer(n,1,1000000); ans=1; p=2
    while p*p<=n:
        if n%p==0:
            n//=p; ans=-ans
            if n%p==0:
                return 0
        p+=1
    return -ans if n>1 else ans


def endpoint_cell(n, M, bits=160):
    """Entire centered cell transform at original zeta coordinates s=0,1."""
    n=integer(n,1,1000000); integer(M,-n,n)
    a,b=sqrt_box(n,bits),sqrt_box(n+1,bits)
    one=Box.exact(1,bits); h=log_width(n,bits)
    S=2*(one/a-one/b); Cn=Box.exact(F(1,n*(n+1)),bits)
    at_zero=-2*M*(h-S*(2*(b-a))/h)
    at_one=-2*M*(Cn-S*S/h)
    return at_zero, at_one


def endpoint_certificate(cutoff=4096, bits=160):
    N=integer(cutoff,1,1000000); integer(bits,64,512)
    mu=moebius(N); M=0; r0=r1=Box.exact(0,bits)
    for n in range(1,N+1):
        if mu[n]!=trial_mu(n):
            raise ArithmeticError('independent Mobius check failed')
        M+=mu[n]
        c0,c1=endpoint_cell(n,M,bits); r0+=c0; r1+=c1
    t0=F(1,16*N); t1=F(1,48*N*N)
    return {'schema':'centered-pickup-bilateral-endpoints-v1','cutoff':N,'bits':bits,
            'source':'complete signed Mobius pickup; full arrival-cell centering',
            'mu_sha256':hashlib.sha256(json.dumps(mu,separators=(',',':')).encode()).hexdigest(),
            'at_s_zero_prefix':r0.record(),'at_s_one_prefix':r1.record(),
            'at_s_zero_tail':str(t0),'at_s_one_tail':str(t1),
            'at_s_zero_enclosure':Box(r0.lo-t0,r0.hi+t0,bits).record(),
            'at_s_one_enclosure':Box(r1.lo-t1,r1.hi+t1,bits).record(),
            'at_s_half':'0','continuum_status':'WRITTEN_PROOF_NOT_KERNEL_CHECKED',
            'new_zeta_zero_exclusion':False,'whole_source_energy_bound':False,
            'global_positive_boundary_approximation':False}


def unique_object(pairs):
    d={}
    for k,v in pairs:
        if k in d:
            raise ValueError('duplicate JSON key')
        d[k]=v
    return d


def read_exact(path):
    with Path(path).open('rb') as stream:
        raw=stream.read(262145)
    if len(raw)>262144:
        raise ValueError('report too large')
    def reject(_):
        raise ValueError('nonexact JSON number')
    return json.loads(raw,object_pairs_hook=unique_object,
                      parse_float=reject,parse_constant=reject)


def verify_endpoint_report(report):
    fields = {
        'schema', 'cutoff', 'bits', 'source', 'mu_sha256',
        'at_s_zero_prefix', 'at_s_one_prefix', 'at_s_zero_tail', 'at_s_one_tail',
        'at_s_zero_enclosure', 'at_s_one_enclosure', 'at_s_half',
        'continuum_status', 'new_zeta_zero_exclusion', 'whole_source_energy_bound',
        'global_positive_boundary_approximation',
    }
    if type(report) is not dict or set(report) != fields:
        raise ValueError('report schema')
    for field in ('new_zeta_zero_exclusion', 'whole_source_energy_bound',
                  'global_positive_boundary_approximation'):
        if report[field] is not False:
            raise ValueError('unsupported conclusion or nonboolean status')
    expected=endpoint_certificate(report['cutoff'],report['bits'])
    if report != expected:
        raise ValueError('complete regenerated certificate mismatch')
    return True


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--cutoff',type=int,default=4096)
    ap.add_argument('--bits',type=int,default=160)
    ap.add_argument('--verify',type=Path)
    args=ap.parse_args()
    if args.verify:
        verify_endpoint_report(read_exact(args.verify))
        print(json.dumps({'verified':True,'new_zeta_zero_exclusion':False}))
    else:
        print(json.dumps(endpoint_certificate(args.cutoff,args.bits),indent=2,sort_keys=True))


if __name__=='__main__':
    main()
