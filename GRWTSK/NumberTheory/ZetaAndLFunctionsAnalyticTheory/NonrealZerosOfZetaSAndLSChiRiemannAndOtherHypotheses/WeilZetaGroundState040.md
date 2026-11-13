# Full-test zeta Weil positivity to support 2/5 by a signed ground-state bound

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26, 11M06, 42A38, 47A63.

## Status, original source, and consumer

**WZGS040-v1-1--4** are a complete WRITTEN analytical argument with an EXECUTED
exact-rational finite scalar/continuum certificate, not Lean-checked claims.
Lean elaboration, dependency build, fresh kernel replay, transitive axiom audit,
formal source identification, independent mathematical review and independent
certificate audit are NOT_RUN. Originality is UNASSESSED. No new Lean declaration,
axiom, `sorry`, or `admit` is introduced. This is local source positivity, not a
proof of RH, GRH, the universal Weil criterion, or any zero-localization theorem.

The concrete consumer is the original zeta nonnegativity premise of
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`,
**restricted to all tests with support length at most 2/5**. The result
strengthens [WeilZetaCombinedKernelShortWindow.md](WeilZetaCombinedKernelShortWindow.md),
whose WZCK-v1-3 supplies 0<L<=3/10 with margin 1/320. Its *exact* signed
source-return identity is reused unchanged, not replaced by another operator.

Let L>0 and let f in L2((0,L);C) be extended by zero to the real line. Write

    k(s)=exp(-s/2)/(1-exp(-2s)) = exp(s/2)/(2 sinh s),
    K(t)=int_t^infinity k(s)ds
        =atanh(exp(-t/2))+atan(exp(-t/2)),
    r(s)=exp(s/2)+exp(-s/2)=2 cosh(s/2),
    c_zeta=-log(pi)-EulerGamma-pi/2-3log 2.

The NATIVE logarithmic form domain is

    V_L={f in L2((0,L);C): Gamma(f)<infinity},
    Gamma(f)=int_0^infinity k(s)||f(.+s)-f||_2^2 ds.

Retain the ORIGINAL full conductor-one Weil arithmetic form:

    Q_zeta,L(f)=c_zeta||f||_2^2+Gamma(f)
                 -<f,P_L f>+<f,R_L f>,
    P_L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                  [T_(log n)+T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).

All prime powers and BOTH actual signed zeta pole orientations remain in this
definition. For the *proved* L<=2/5<log2, the entire prime inventory is exactly
empty; no unproved prime-cancellation assumption enters. No zero enumeration,
7/8 strip, imprimitive transfer, or completed-series totalization is used.
Inner products are conjugate-linear in the first variable.

**WZGS040-v1-1 (main theorem).** Unconditionally, for every 0<L<=2/5,
and every complex f in the ORIGINAL V_L,

    Q_zeta,L(f) >= (1/100)*||f||_2^2.                  (1)

This is a FULL-TEST inequality in physical L2 norm, not a bound merely on an
endpoint subspace, and includes all phases, signs and admissible test profiles.

## WZGS040-v1-2: exact signed gamma/pole source identity

Tonelli for the positive zero-extension gamma integrand and complex polarization
for the ACTUAL bounded two-pole kernel (WZCK-v1-1) give

    Q_zeta,L(f) = int_0^L V_L(x)|f(x)|^2 dx
       +int_(0<x<y<L) w(y-x)|f(y)-f(x)|^2 dxdy,          (2)

    w(s)=k(s)-r(s),
    V_L(x)=c_zeta+K(x)+K(L-x)
                     +4[sinh(x/2)+sinh((L-x)/2)].      (3)

The kernel w(s) CHANGES SIGN. Dropping its negative part without a certified
budget would change the original form; the bound below keeps that negative
part. Formula (2) holds on V_L: the k-energy is finite by definition, r is
bounded on the compact square, and all other terms are finite by the exact
gamma boundary split. No unproved H1 regularity or positive-pole assumption
is used.

Fix the rational endpoint and signed-kernel comparison constants

    L0=2/5,    a=1/4,    C=91/50,    M=14/25,
    alpha=40,  v=-11/100,    delta=1/100.

For 0<s<=a define b(s)=1/(2s)-C. Then b(s)>0, and the
source-exact signed lower bound is

    w(s)>= b(s)                          (0<s<=a),
    w(s)>= -M                            (a<s<=L0).      (4)

Here is an elementary nonnumerical proof of the first bound. Since
(2j+1)!>=6^j, for s<=1/4 one has

    sinh s <= s/(1-s^2/6) <= s(1+s^2/5).

Also exp(s/2)>=1+s/2, so

    k(s) >= (1+s/2)/[2s(1+s^2/5)],
    k(s)-1/(2s) >= (1/2-s/5)/[2(1+s^2/5)] >= 2/9>1/5.

The even factorial bound (2j)!>=2*12^(j-1), j>=1, gives
cosh t<=1+t^2/[2(1-t^2/12)]<=1+3t^2/5 for t<=1/8.
Therefore

    r(s)=2 cosh(s/2)<=2+3/160<2+1/50,
    w(s)>=1/(2s)+1/5-(2+1/50)=b(s).

For s>a, k decreases and r increases, hence w(s)>=w(L0)=-M_actual;
the adjacent exact-fraction checker proves

    0 < M_actual=r(L0)-k(L0) < M=14/25.                (5)

Thus (4) follows without a numerical assumption about the location of the
sign transition. On every x, the measurable set of opposite endpoints with
separation >a has total length

    d_a(x)=(x-a)_+ +(L0-x-a)_+.

The complex inequality |f(x)-f(y)|^2<=2|f(x)|^2+2|f(y)|^2
bounds the ENTIRE negative part in (2) by

    -M int_(y-x>a) |f(y)-f(x)|^2 dxdy
      >= -2M int_0^L0 d_a(x)|f(x)|^2 dx.             (6)

## WZGS040-v1-3: retain the favorable interior variance

The diagonal potential has a useful explicit lower bound with the correct
logarithmic boundary behavior. For every t>0,

    atanh(exp(-t/2)) = (1/2)log(coth(t/4)) >=(1/2)log(4/t),
    atan(exp(-t/2)) >=pi/4-t/4.

The first uses tanh u<=u, and the second follows by differentiating:
its derivative is -1/(4 cosh(t/2)) >=-1/4. Also sinh u>=u.
For L=L0 and y=2x/L0-1=5x-1, these source inequalities give

    V_L0(x) >= v_exact - (1/2)log(1-y^2),
    v_exact=log[1/(pi*L0)]-EulerGamma+7L0/4.

The exact-rational checker proves v_exact > v=-11/100. Moreover, for |y|<1,

    -(1/2)log(1-y^2) >= p8(y):=sum_(j=1)^8 y^(2j)/(2j). (7)

We now keep a NONZERO portion of the positive interior kernel, instead of
discarding it as in the earlier minimum-potential estimate. Let

    h(x)=1+alpha*x*(L0-x) >=1,
    b0(x,z)=1_(0<|x-z|<=a)*b(|x-z|).

This is a strictly positive ground-state weight even AT the endpoints; it
avoids the false boundary-vanishing quadratic shortcut noted in WSR1.
For every complex f in the original form domain, the finite-source Picone
identity is EXACT:

    int_(x<z) b0(x,z)|f(x)-f(z)|^2 dxdz
      = int_(x<z) b0(x,z)h(x)h(z)
           |f(x)/h(x)-f(z)/h(z)|^2 dxdz
        +int_0^L0 [(A_b h)(x)/h(x)]|f(x)|^2 dx,         (8)

    (A_b h)(x)=int_0^L0 b0(x,z)[h(x)-h(z)]dz.

Expanding the two complex squares proves (8) for a cutoff kernel
b0*1_(|x-z|>=epsilon). Passing epsilon down to zero is justified by
b0<=k, the native gamma form finiteness, h>=1 and h Lipschitz, because
b(s)*|h(x)-h(x+s)| is bounded near zero. The first term on the right is
nonnegative; its SIGN is part of the actual positive near-diagonal source,
not a replacement form asserted positive without returning to Q.

Put x in [0,L0], t_-=min(a,x), t_+=min(a,L0-x), and

    F1(t)=int_0^t s*b(s)ds=t/2-C*t^2/2,
    F2(t)=int_0^t s^2*b(s)ds=t^2/4-C*t^3/3.

A direct calculation using h(x)-h(x+s)=alpha[(2x-L0)s+s^2] and
h(x)-h(x-s)=alpha[-(2x-L0)s+s^2] gives

    (A_b h)(x)=alpha*H(x),
    H(x)=(2x-L0)[F1(t_+)-F1(t_-)]+F2(t_+)+F2(t_-).      (9)

Combine the TRUE original form (2), certified kernel bounds (4),(6),
ground-state identity (8), and potential bound (7):

    Q_zeta,L0(f) >= int_0^L0 Phi(x)|f(x)|^2 dx,         (10)

    Phi(x)=v+p8(5x-1)+alpha*H(x)/h(x)-2M*d_a(x).

Every term in Phi is rational or a rational polynomial: no transcendental
function or unknown zero occurs in this final pointwise certificate.

The integrand Phi is invariant under reflection x->L0-x, so it suffices to
check the following TWO disjoint closed source regions:

   Region I:  0<=x<=3/20=L0-a;
              t_-=x, t_+=a,       d_a(x)=3/20-x.
   Region II: 3/20<=x<=1/5=L0/2;
              t_-=x, t_+=L0-x,    d_a(x)=0.

The companion independently runnable exact-rational certificate proves

    forall x in [0,3/20] union [3/20,1/5],  Phi(x)>1/100.   (11)

It uses outward interval arithmetic of Fraction endpoints, adaptive dyadic
bisection with no point sampling, **79 accepted cells, 156 evaluated nodes,
maximum depth 7**. The minimum accepted lower enclosure is greater than
0.010318, which is strictly larger than 1/100. Every branch and all interval
operations are explicit in the published Python source; this is a finite
reproducible *checker* plus an analytical source derivation, not a kernel audit
or an independently verified universal-certificate theorem.

Combining (10)--(11) proves `Q_zeta,L0(f)>=(1/100)||f||^2` for every f in V_L0.
For any `0<L<=L0`, zero-extend f from (0,L) to (0,L0). Its ORIGINAL whole-line
gamma, pole correlation, scalar and L2 norm are unchanged and both prime
inventories are empty because L0<log2. Thus the same inequality holds for
all these smaller supports, completing (1). The zero test attains equality.

## WZGS040-v1-4: verification, falsification, and boundaries

Run `python3 WeilZetaGroundState040Certificate.py` with Python 3.13.5 or another
Python 3 version supporting `fractions.Fraction`. The standard-library checker
verifies pi by Machin's alternating arctangent identity, Euler's constant by
H_100/log100 and a 1/(8*100^2) tail, the strict bound v_exact>-11/100,
the signed negative kernel bound `M_actual<14/25` via positive exponential
Taylor series with outward rational remainders, the hyperbolic comparison
constants, and (11) for the entire continuum. `python3 -m py_compile` also
passes. `python3 -O` deliberately exits 1 to reject disabled assertions.
All printed decimal diagnostics are non-premises.

The new argument fixes a limitation of WZCK-v1-3: its minimum potential turns
negative already just after L=3/10, while the true positive *interior* gamma
term remains nonzero. A positive quadratic h recovers sufficient interior
variance near the midpoint, and its strictly positive boundary values prevent
an invalid divergent boundary quotient. The kernel w itself is NOT positive
throughout (0,L0); the actual negative far-pair term is retained in (6).
A hostile test with the centered odd f(x)=x-L0/2 gives a strictly negative
pole contribution, so replacing both poles by a positive rank-one source
would be false. The proof still works because the full kernel identity pays
that direction rather than suppressing it.

Prior art: Yoshida's small-support Weil positivity, as summarized by
Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of
prime numbers, I*, Rend. Lincei 11 (2000), introduction and sections 1--3,
https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0, already covers wider
localized support. We do NOT claim novelty or independent review of that
historical argument; the retained improvement is a source-normalized,
explicitly checkable all-complex-test inequality within this repository.
The signed-kernel identity (2) is inherited directly from the maintained
WZCK note, not an independent proof of the global arithmetic explicit formula.

This DOES NOT establish prime-active zeta positivity (L>log2), all-support
positivity, primitive Dirichlet GRH, the actual complete infinite-dimensional
Weil criterion, the original universal hpositive supplier, or localization of
any off-critical zeros. The exact next arithmetic obligation remains the
full signed form for growing supports and all actual prime powers; a
conditional implication to RH is not a discharge of its arithmetic premise.

Initial inspected source: `grwtsk/math/main`
`3da9989b80a39fef6e737a108b31fa8159301b36`, complete root tree
`5d702c4f77fd7b1718c3938b33b591cc6375692f`.
Lean pin `leanprover/lean4:v4.34.1`, mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination issue `grwtsk/math#1801`; local attribution: grwtsk contributors.
No existing source, root imports, dependencies, pins, historical verification,
policies, workflows or targets need to be altered for this two-file addition.
