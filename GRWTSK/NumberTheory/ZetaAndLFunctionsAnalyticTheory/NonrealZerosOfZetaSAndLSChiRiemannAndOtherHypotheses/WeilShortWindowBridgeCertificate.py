#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact finite proof obligations for the short-window/full-domain zeta bound.

The full-domain lower sign for 0<L<=1/12 is an ANALYTICAL result in the
adjacent .md; this script checks only its rational constant enclosure.
The remaining logarithmic-window endpoint sign is certified by a covering
of every t in [1/2,12/13], not a grid of sampled points.

Requires the source-local WeilEndpointDyadic1024Certificate.py at the
exact SHA-256 below; it reuses its outward-rounded integer intervals,
standard-special-function enclosures and pinned zeta constants.

Run from any current directory:
  python3 WeilShortWindowBridgeCertificate.py
This is not Lean elaboration or a proof of RH/GRH.
"""
from fractions import Fraction as F
from pathlib import Path
import hashlib
import importlib.util
import time

SOURCE = Path(__file__).with_name('WeilEndpointDyadic1024Certificate.py')
EXPECTED_SOURCE_SHA256 = 'a95000dce5389c7d33b672e9dc2dff8261ac31fb04fbe02b58d90e9654f63581'
if not SOURCE.is_file():
    raise RuntimeError('required adjacent published source certificate is missing')
observed = hashlib.sha256(SOURCE.read_bytes()).hexdigest()
if observed != EXPECTED_SOURCE_SHA256:
    raise AssertionError(('source certificate digest changed', observed))
spec=importlib.util.spec_from_file_location('WED1024Sibling', str(SOURCE))
source=importlib.util.module_from_spec(spec)
spec.loader.exec_module(source)
I = source.I
iv = source.iv
S = source.S

# We use exact fixed-point interval inequalities, not rounded decimal signs.
# For 0<L<=1/12, 2K(L)>=log47+pi/2-2/47, and
# R_L >= -(2sinh(L/2)-L)I > -(1/34560)I.
# The latter bound is proved by the positive power series in the note.
# The pi/2 term cancels *exactly* with the unchanged scalar c_zeta.
short_margin = (source.logp(47) - source.LNPI - source.GAMMA
                - 3*source.LN2 - iv(F(2,47)) - iv(F(1,34560)))
if not short_margin.lo > iv(F(1,200)).hi:
    raise AssertionError('failed exact short-window full-test scalar bound')

# Use Spence's identity for Li_2(t), to keep the high-t branch 1/2<=t<=12/13
# on the convergent small-argument Li_2(1-t) side. The identity is proved
# analytically in the adjacent source: Li2(t)+Li2(1-t)
# = pi^2/6-log(t)log(1-t). This is a source identity, NOT numerical sampling.
from functools import lru_cache
@lru_cache(maxsize=None)
def endpt(t):
    t=F(t)
    assert F(1,2)<=t<=F(12,13)
    return dict(logt=source.logp(t),lp=source.logp(1+t),
                lm=source.logp(1-t),li2=source.li2p(1-t),
                sq=iv(t).sqrt())

def short_matrix(t0,t1):
    assert F(1,2)<=t0<=t1<=F(12,13)
    a,b=endpt(t0),endpt(t1)
    t=I(iv(t0).lo,iv(t1).hi)
    L=I(-b['logt'].hi,-a['logt'].lo)
    lp=I(a['lp'].lo,b['lp'].hi) # increasing in t
    lm=I(b['lm'].lo,a['lm'].hi) # decreasing in t
    rt=I(a['sq'].lo,b['sq'].hi)
    Li2oneMinusT=I(b['li2'].lo,a['li2'].hi) # decreasing in t
    h=(1+t)*lp-(1-t)*lm
    G=source.A0+t*(2*L-source.B0)+h
    J=rt*(source.C0*L-L.square()/2+Li2oneMinusT-L*lm)
    # Here 0<L<=log2: every prime-power taper is identically zero,
    # including n=2 precisely at the upper activation threshold.
    RD=2*L*(1-t)
    RB=rt*(1/t-2+t+L.square()) # BOTH pole orientations
    D=source.C*(1-t)+G+RD
    B=source.C*L*rt+J+RB
    return D,B

def gap(t0,t1):
    D,B=short_matrix(t0,t1)
    return D.lo-max(abs(B.lo),abs(B.hi))

if __name__=='__main__':
    # Endpoint regression against the unmodified source identity.
    for t in [F(1,2)]:
        d,b=short_matrix(t,t)
        d0,b0=source.matrix(t,t)
        if not (d.lo<=d0.hi and d0.lo<=d.hi and
                b.lo<=b0.hi and b0.lo<=b.hi):
            raise AssertionError(('endpoint regression failed',t))
    target=iv(F(1,50000)).hi
    stack=[(F(1,2),F(12,13),0)]
    visited=0; leaves=0; depth=0; worst=None
    while stack:
        a,b,d=stack.pop();visited+=1
        g=gap(a,b)
        if g>target:
            leaves+=1
            if worst is None or g<worst: worst=g
        else:
            if d>=22:
                raise AssertionError(('subdivision limit',a,b,d,g))
            mid=(a+b)/2
            stack.append((a,mid,d+1))
            stack.append((mid,b,d+1))
            if d+1>depth: depth=d+1
    assert worst is not None and worst>target
    # On [log(13/12), log2], above certificate gives D-|B|>1/50000.
    # On [log2, log1024], pinned sibling proved D-|B|>1/500.
    # Uniform modulation bound from WED1024-v1-3 is 2150|eta| times the
    # endpoint coefficient norm over the complete union of finite windows.
    eta=F(1,250000000)
    assert iv(F(1,50000)).lo-iv(F(2150)*eta).hi > iv(F(1,100000)).hi
    print('PASS: full-domain short-window scalar margin > 1/200 for 0<L<=1/12')
    print('PASS: all t in [1/2,12/13], D-|B| > 1/50000 (continuous exact intervals)')
    print('dyadic leaves:',leaves,'checked nodes:',visited,'max depth:',depth)
    print('certified short-window gap lower in 1e8 units:',(worst*100000000)//S)
    print('PASS: combined endpoint sign for 0<L<=log1024;')
    print('      |eta|<=1/250000000 yields coefficient margin >1/100000')
    print('Source SHA256:',observed)
