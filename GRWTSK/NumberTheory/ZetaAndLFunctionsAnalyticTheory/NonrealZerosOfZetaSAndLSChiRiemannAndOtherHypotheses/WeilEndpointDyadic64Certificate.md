# An exact all-prime-power zeta endpoint certificate for log 2 <= L <= log 64

By grwtsk contributors. Written 2026-11-12 (America/Los_Angeles).

## Scope, mathematical consumer, and evidence

This note advances the bounded-modulation **head-sign** problem of the full
pole-inclusive Weil quadratic form, following
[WeilLogFourEndpointCertificate.md](WeilLogFourEndpointCertificate.md) and
[WeilEndpointDensityTail.md](WeilEndpointDensityTail.md). The consumer is the
actual zeta source and its future full-domain Neumann/Schur certificate, **not**
a shifted form, a positive auxiliary Gram construction, or a finite zero model.

The main restricted conclusion is: for every log 2 <= L <= log 64, every real
|eta| <= 1/400000 and every complex z,w, the full zeta form of the combination
of its two modulated exponential endpoints is at least
(|z|^2+|w|^2)/1000. Unmodulated, the lower bound is 1/500.
The statement retains **all 27** von Mangoldt prime powers up to 64, the
original negative scalar, the infinite archimedean kernel and both zeta
pole orientations. It is unconditional, needing neither RH nor a zero-free
strip. It does **not** imply positivity for every L or every smooth test, and
it does not address nonprincipal primitive characters.

Evidence: a complete WRITTEN analytical derivation and an executed exact-integer
interval certificate for its finite scalar sign check. The script runs
without binary floating-point sign decisions. The full arithmetic identity
and modulation return are analytical results in this note and the maintained
source, **not** Lean-elaborated or kernel-checked declarations. Originality:
UNASSESSED. Independent analytical review, Lean elaboration, full dependency
build, fresh kernel replay, transitive axiom audit and repository-wide
validation: NOT_RUN. No new Lean declarations, research axioms, sorry, admit,
source target changes or dependency changes are asserted.

Inspected math main: `dbdb726c06422d70e7d4b76a1078650f87d647a3`, root tree
`50f661f7474e3c4f246a98b4fa1b40b9f2eb3bc7` (historical inspection,
not a current-head assertion at reading). Lean `leanprover/lean4:v4.34.1`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Coordination:
`grwtsk/math#1801`. The canonical Noe proof-automation skill was inaccessible
at Noe main `aea93208c4ec14c9f14fd6a4a6b0c913fe42969d`; no dependent
proof execution was dispatched. Local exact integer computation is a finite
source-independent arithmetic check, not a Noe agent or Lean proof.

## WED64-v1-1: exact signed two-by-two arithmetic matrix

Use the original convention from [PrimitiveWeilNeumannSchur.md]
(PrimitiveWeilNeumannSchur.md), section 1, with zero extension on (0,L),
conjugate-linear inner product in its first variable, and the *full* zeta form

    Q_zeta,L(f) = c_zeta ||f||_2^2 + Gamma_(1/2)(f)
                       - <f,P_L f> + <f,R_L f>,
    c_zeta = -log pi + psi_Gamma(1/4)
           = -log pi - EulerGamma - pi/2 - 3 log 2,
    P_L = sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                                      [T_(log n)+T_(log n)^*],
    R_L(x,y) = exp((x-y)/2) + exp(-(x-y)/2),
    Gamma_b(f) = integral_(0,infty) exp(-bs)/(1-exp(-2s))
                                      ||f(.+s)-f||_2^2 ds.

Let u_L(x)=exp(-x/2) and v_L(x)=exp(-(L-x)/2). Define
D(L)=Q_zeta,L(u_L)=Q_zeta,L(v_L) and B(L)=Q_zeta,L(u_L,v_L),
which is real at zero modulation. For positive L the form is Hermitian,
so for every z,w in C,

    Q_zeta,L(z u_L+w v_L)
       = D(L)(|z|^2+|w|^2)+2B(L) Re(conj(z)w).

Its sharp coefficient-norm minimum is D(L)-|B(L)|.

Set t=exp(-L) and write (x)_+=max(x,0). Put

    A_gamma=pi/2+log 2,
    B_gamma=pi/2+3 log 2,
    C_gamma=pi/2+2 log 2,
    h(t)=(1+t)log(1+t)-(1-t)log(1-t).

The complete archimedean entries, already obtained from the original
translation-variance integral in WEGR-v1-1, are

    G(t)=Gamma_(1/2)(u_L)
        =A_gamma+t(2L-B_gamma)+h(t),
    J(t)=Gamma_(1/2)(u_L,v_L)
        =sqrt(t)[C_gamma L-L^2/2+pi^2/6-Li_2(t)].

The identity for J can be directly checked without spectral assumptions:
for 0<s<L the cross-correlations are
sqrt(t) exp(s/2)(L-s) and sqrt(t) exp(-s/2)(L-s).
The compensated gamma integral therefore equals

    integral_(0,infty) k_(1/2)(s)
         [2L sqrt(t)-2 sqrt(t) cosh(s/2)(L-s)_+] ds.

Integration of this absolutely convergent compensated expression gives J.
The G identity likewise follows by integrating the actual endpoint
autocorrelation exp(-s/2)-t exp(s/2) for 0<s<L and zero after L.
No divergent scalar gamma integral has been separated unconditionally.

For every t in [1/64,1/2] the entire finite prime inventory is exactly
n=p^k <=64, with von Mangoldt weight log p. Using taper zero at threshold,

    p_D(t)=2 sum_(n<=64) Lambda(n)*(1/n-t)_+,
    p_B(t)=sqrt(t) sum_(n<=64)
                        Lambda(n)*(L-log n)_+*(1+1/n).

This is an identity for the ORIGINAL operator, not an inequality replacing
the phases. Both n=2 and n=64 contribute zero at their respective endpoint
thresholds; all intermediate prime-power activations are continuous.
The two actual zeta-pole orientations give

    R_D(t)=2L(1-t),
    R_B(t)=sqrt(t)(1/t-2+t+L^2).

Consequently **the exact original arithmetic matrix entries** are

    D(t)=c_zeta(1-t)+G(t)-p_D(t)+R_D(t),
    B(t)=c_zeta L sqrt(t)+J(t)-p_B(t)+R_B(t).       (1)

All appearances of Li_2(t) have 0<t<=1/2, within its convergent positive
power series. No analytic continuation of that series is needed. The source
form itself uses analytically continued zeta through the Weil formula,
never an invalid zeta Dirichlet series outside its convergence region.

## WED64-v1-2: a continuous exact-rational certificate, not a mesh of samples

The adjacent [WeilEndpointDyadic64Certificate.py]
(WeilEndpointDyadic64Certificate.py) establishes

    FOR ALL t in [1/64,1/2]:
       D(t)-|B(t)| > 1/500.                         (2)

It does this by *covering the entire parameter interval*, not testing
chosen real values of L. The finitely many dyadic subintervals are produced
by exact bisection. For each cell [a,b], interval arithmetic independently
encloses the complete right sides of (1); a cell is admitted only when

    lower(D([a,b]))-max(abs(lower(B([a,b]))),
                         abs(upper(B([a,b])))) > 1/500.

Every elementary operation uses outward-rounded fixed-point integer
intervals at scale 2^80. The core operations use integer floor and ceiling;
reciprocal requires a strictly positive denominator, and square roots use
integer isqrt with outward rounding. The input endpoints and subdivisions
are rational. Dependent appearances of t, L, log and sqrt(t) are enclosed
separately (which only enlarges the interval). The nonnegative taper
max(0,x) is enclosed by applying max to both endpoints. Thus intervals
straddling newly active prime powers are safe and need no discontinuous
case choice.

The transcendental enclosures have the following independent mathematical
justifications, all implemented with rational bounds:

* Machin's pi identity with 20 and 6 alternating arctan terms. Each remainder
  is bounded by the next alternating term.
* For every positive rational x, rescale by an exact power of two to
  1<=r<=2 and use log x=k log2+2 sum_{j=0}^{37}
  y^(2j+1)/(2j+1)+R, y=(r-1)/(r+1)<=1/3. Here
  0<=R<=2 y^77/[77(1-y^2)]. This also encloses log pi by monotonicity
  at the rational endpoints of the pi enclosure.
* EulerGamma lies between H_100-log100-1/200 and this number plus
  1/80000, by the positive trapezoidal error for 1/x and its complete
  summable tail. No decimal table of EulerGamma is assumed.
* Li_2(t)=sum_{k=1}^{62} t^k/k^2+R for 0<t<=1/2, with
  0<=R<=t^63/[63^2(1-t)]. Positivity implies endpoint monotonicity.
* Every n<=64 is checked by exact integer trial division for being a prime
  power and assigned Lambda(n)=log(p), never log(n) unless n=p. Exactly
  27 active or threshold prime powers are found.

When a cell's enclosure is too wide, it is split into exactly two children.
A failed or exhausted tree raises an exception rather than producing PASS.
The actual executed Python 3.13.5 command

    python3 WeilEndpointDyadic64Certificate.py

returned exit 0 with

    PASS: every t in [1/64,1/2] has D(t)-|B(t)| > 1/500
    prime-power terms: 27 prime modulation sum < 80: PASS
    dyadic leaves: 4838 checked nodes: 9675 depth: 15
    min certified gap lower in millionths: 2001
    modulation consumer: |eta| <= 1/400000 gives Q >= 1/1000 in coefficient norm

The diagnostic number 2001 is the integer floor of a proved lower bound
multiplied by 10^6; it is not used for any sign decision. The 4838 leaves
form an exact partition of the original closed interval, so the finite
strict tests prove (2) for its uncountable continuum. A separate regression
at t=1/4 checks the prior WEL4-v1-1 source identities against the explicit
rational enclosure D(log4)>59/1000, 0<B(log4)<1/20.

The program certifies scalar consequences of (1) only. The analytic
source-return, original explicit formula and test-domain extensions are
WRITTEN inputs, not silently advertised as certified kernel theorems.

## WED64-v1-3: complete gamma-prime-pole modulation budget

Let M_eta g(x)=exp(i eta x)g(x). Modulation preserves support and, by the
original shift definition or the full multiplier comparison, preserves
the logarithmic gamma form domain. Set

    C_zw=|z|^2+|w|^2,  g=z u_L+w v_L,
    Psi(eta)=2 integral_0^infty k_(1/2)(s)(1-cos(eta s)) ds.

The endpoint Gram matrix has diagonal 1-t and offdiagonal L sqrt(t).
Since max_{L>0} L exp(-L/2)=2/e<3/4, we obtain

    ||g||_2^2 <= (1-t+L sqrt(t)) C_zw < (7/4) C_zw.  (3)

The original unmodulated gamma energy satisfies
Gamma_(1/2)(u_L)<=pi and likewise for v_L. To see this, their actual
correlations give 0<=||u||^2-C_u(s)<=1-exp(-s) for all s>0;
therefore Gamma_(1/2)(u_L)<=2 integral_0^infty
exp(-s/2)/(1+exp(-s)) ds=pi. Gamma Cauchy--Schwarz implies

    Gamma_(1/2)(g) <= 2 pi C_zw < (44/7) C_zw.         (4)

No H^1 zero extension is used. By the full nonnegative exponential-kernel
series, Psi(eta)<=18 eta^2 for all eta. The translation-variance difference
satisfies the standard exact-domain inequality

    |Gamma_(1/2)(M_eta g)-Gamma_(1/2)(g)|
      <=2 sqrt(Gamma_(1/2)(g) Psi(eta))||g||
                                       +Psi(eta)||g||^2.

For |eta|<=1/400000, (3)--(4) bound this by
[2 sqrt(198)+(63/2)|eta|]|eta| C_zw < 29|eta| C_zw.
This uses the **complete infinite gamma tail** and no finite archimedean
quadrature. The inequality 2sqrt(198)<57/2 follows by squaring.

For every n<=64 the unitary phase of the actual shift is
M_eta^* T_(log n) M_eta=exp(i eta log n)T_(log n).
Thus, with every prime power weighted by Lambda,

    ||M_eta^*P_L M_eta-P_L||
       <=2|eta| sum_(2<=n<=64) Lambda(n) log n/sqrt(n).

The adjacent exact integer interval script also checks that this entire
finite numerical coefficient is <80, including n=64, whose shift is zero
at L=log64. By (3), the change of the prime quadratic value is less than
140|eta| C_zw. This **bounds** the original phased operator; it does not
replace its primes by an all-positive-phase model.

The literal two-orientation pole operator has eigenvalues
L+2sinh(L/2), L-2sinh(L/2). Hence
||R_L||=L+2sinh(L/2) <13 on log2<=L<=log64, because
L<=6 log2<21/5 and exp(L/2)<=8. Since
||(M_eta-I)g||<=L|eta| ||g||,

    |<M_eta g,R_L M_eta g>-<g,R_Lg>|
       <=2||R_L|| L|eta| ||g||^2
       <192|eta| C_zw.

The scalar term does not change under modulation. Therefore for every
log2<=L<=log64 and |eta|<=1/400000,

    |Q_zeta,L(M_eta g)-Q_zeta,L(g)|
       <(29+140+192)|eta| C_zw
       <400|eta| C_zw.                                (5)

This bound includes the negative pole eigenvalue rather than assuming
pole positivity. The inequality at eta=0 follows by continuity or directly.

## WED64-v1-4: the quantitative source-exact mixed sign theorem

**Theorem (written analytical proof plus exact finite certificate).** For
all real L,eta satisfying

    log 2 <= L <= log 64,    |eta| <= 1/400000,

and all z,w in C, put
f(x)=z exp(-x/2)exp(i eta x)+w exp(-(L-x)/2)exp(i eta x) on (0,L),
with zero extension. Then

    Q_zeta,L(f) >= (|z|^2+|w|^2)/1000.               (6)

Proof: (2) gives Q_zeta,L(g)>(1/500)C_zw for the unmodulated
envelope. Applying (5) to f=M_eta g gives

    Q_zeta,L(f) > [1/500-400/400000] C_zw
                = (1/1000) C_zw.

The same calculation yields the physical-L2 consequence
Q_zeta,L(f) >= ||f||_2^2/1750, using (3). At z=w=0 all inequalities hold
nonstrictly as written; no positive uniform gap in L over all L>0 is
asserted. In particular, this conclusion is restricted to the actual
complex 2D endpoint span. For each fixed L,eta, sufficiently close smooth
form-core approximations preserve the positive value, but no statement
about arbitrary smooth tests follows from those approximations.

## Hostile checks, prior art, and unresolved premises

- The finite checker never excludes an omitted prime power below 64: the
  integer inventory includes p^k with their actual log p weights, and
  the threshold coefficients are zero. At log2 and log64, the stated
  inequalities hold without a one-sided reinterpretation.
- The score tested is D-|B|, NOT the endpoint diagonal D alone. This avoids
  the WEPD-v1-1 determinant obstruction and retains every complex endpoint
  coefficient. No assumption of common sign for zero-orbit matrices is used.
- The full gamma multiplier is not replaced by a finite positive matrix or
  totalized series outside a convergence domain. The full pole operator is
  indefinite. The negative scalar remains negative.
- The coefficient norm and physical L2 norm are distinguished by (3).
  Modulated endpoints have jumps under zero extension and are not H1 tests.
- The derivation is ZETA ONLY. Complex-character phases and nonprincipal
  conductor/parity inputs require their own exact interval formulas and
  verified constants; conductor one has not been silently excluded.
- A finite interval of support and a microscopic modulation band do not
  establish every-window positivity or a universal certificate-existence
  theorem. In particular, the arbitrarily large unmodulated endpoint
  problem and the infinite-dimensional full-test complement/coupling
  remain the first substantive missing arithmetic premises. RH and GRH
  remain unchanged and unproved.
- Prior art: Bombieri (2000), *Remarks on Weil's quadratic functional in the
  theory of prime numbers, I*, proves positivity for sufficiently small
  localization and studies finite truncations. The existing WEGR/WEL4
  notes supply the exact arithmetic endpoint formulas and original log4
  certificate. The advance here is a longer, completely certified finite
  support interval with exact activation coverage; it is not claimed novel.
  Rump, *Verification methods* (Acta Numerica 2010), is a comparison for
  rigorous enclosures, not an imported sign theorem.

Analytical status: WED64-v1-1 through WED64-v1-4 are complete WRITTEN
arguments relative to the original physical Weil identification. The
finite interval enclosure and finite prime coefficient inequality were
EXECUTED using rational integer interval arithmetic; they do not certify
formal source equivalence, provide a universal test-domain proof, or
constitute a Lean kernel replay. No new canonical RH/GRH target or
conditional hypothesis has been weakened or filled by an unproved axiom.

References: [WEGR](WeilEndpointGammaRelative.md),
[WEL4](WeilLogFourEndpointCertificate.md),
[WEMC](WeilEndpointModulationCoercivity.md),
[WEPD](WeilEndpointPairDefect.md),
[WEDT](WeilEndpointDensityTail.md),
[Bombieri 2000](https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0),
[Rump 2010](https://doi.org/10.1017/S096249291000005X).
