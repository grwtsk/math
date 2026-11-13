# Logarithmic boundary barriers for the original primitive Weil form

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M06, 11M26, 26D15, 42A38, 47A63.

## Evidence, unchanged source, and mathematical consumer

This is a **written analytical proof** with an **executed exact-Fraction
finite scalar certificate**, not a Lean proof, independently accepted argument,
or proof of RH/primitive Dirichlet GRH.  Its consumer is the original arithmetic
`hpositive` obligation in `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`,
**restricted to the explicit support ranges below**. It follows and improves
`WeilFirstPrimeRankOne.md` (WFP-v1) for nonprincipal primitive characters and
`WeilShortWindowRankOne.md` (WSR1-v1) for conductor-one zeta. No new Lean
declaration, import, pin, mathematical axiom, or exact RH/GRH target is introduced.

For every primitive Dirichlet character `chi` of exact conductor `q>=1`, parity
`a in {0,1}`, `b=a+1/2`, and zero-extended complex `f` on `I_L=(0,L)`, keep
exactly the physical form

    Q_chi,L(f) = c_q,a ||f||_2^2 + Gamma_b(f)
                         - <f,P_chi,L f> + delta_chi <f,R_L f>,
    c_q,a = log(q/pi) + digamma(1/4+a/2),
    Gamma_b(f) = integral_(0,infinity) k_b(u)||f(.+u)-f||_2^2 du,
    k_b(u) = exp(-b*u)/(1-exp(-2u)),
    P_chi,L = sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                [chi(n)T_(log n)+conj(chi(n))T_(log n)^*],
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2),
    delta_chi = 1 if q=1 and 0 otherwise.

Inner products are conjugate-linear in the first variable, and the native form
domain is `V_L,b={f in L2(0,L;C):Gamma_b(f)<infinity}`. The actual primitive
nonprincipal source has no pole; conductor-one is explicitly the analytically
continued Riemann zeta source, including **both** pole orientations. This note
never changes the finite von Mangoldt weights, omits a character phase, or
replaces the signed spectral pairing by absolute squares. Exceptional real zeros,
central zeros and multiplicities are not assumed absent: the argument never
uses zero locations.

**WFLB-v1-1 (nonprincipal, first active prime).** Unconditionally, for EVERY
primitive Dirichlet character `chi` of exact conductor `q>1`, EVERY
`0<L<=log(2)+1/32` and EVERY complex `f in V_L,a+1/2`, one has

    Q_chi,L(f) >= (1/400)||f||_2^2.                        (1)

For `log2<L<=log2+1/32` the `n=2` prime term is genuinely active (unless
ramified), while `n>=3` is inactive. This grows the WFP-v1-1 post-activation
support extension from `1/1000` to `1/32`; the margin is deliberately weaker.

**WFLB-v1-2 (zeta, original two-pole form).** Unconditionally, for EVERY
`0<L<=1/5` and EVERY complex `f in V_L,1/2`, one has

    Q_zeta,L(f) >= (1/200)||f||_2^2.                      (2)

The zeta prime inventory is empty in this range. Both poles and the unchanged
negative scalar remain, and the result extends WSR1-v1-1's `L<=1/6` full-test
range. The stronger old `1/50` margin remains available on `L<=1/6`.

The rest of this note proves the two claims on the ORIGINAL form domain.

## WFLB-v1-3: actual gamma boundary and rank-one potential

Write `K_b(t)=integral_t^infinity k_b(u)du`. Tonelli and zero extension give,
for EVERY original `f in V_L,b`, the exact identity

    Gamma_b(f) = integral_(0<x<y<L) k_b(y-x)|f(y)-f(x)|^2 dxdy
              + integral_0^L [K_b(x)+K_b(L-x)]|f(x)|^2 dx. (3)

Because `k_b` is positive decreasing and `y-x<L`, the interior pair energy
is bounded below by

    k_b(L)[ L||f||_2^2 - |integral_0^L f(x)dx|^2 ].

Thus, with `W_b,L(x)=K_b(x)+K_b(L-x)`, the source-exact bound is

    Gamma_b(f) >= integral_0^L[W_b,L(x)+L*k_b(L)]|f(x)|^2 dx
                         -k_b(L)|integral_0^L f(x)dx|^2.    (4)

The **negative** rank-one term is retained and paid using weighted Cauchy;
there is no inferred positivity from lower boundedness of an operator.
In particular, whenever the unchanged full source yields

    Q_chi,L(f) >= integral_0^L G(x)|f(x)|^2 dx
                              -k_b(L)|integral_0^L f|^2    (5)

with `G(x)>0` almost everywhere, weighted Cauchy yields

    Q_chi,L(f) >= (1-rho)integral_0^L G(x)|f(x)|^2 dx,
    rho = k_b(L)integral_0^L dx/G(x).                        (6)

Every integral is finite in the applications below. (3)-(6) do not require
finite zero-extension `H1` energy, and are valid for complex functions.

We use an elementary boundary inequality not used in WFP's final quadratic
rank-one budget. For `t>0`, `z=exp(-t/2)`,

    atanh(z)= (1/2)log(coth(t/4)) >= (1/2)log(4/t),       (7)

because `tanh(t/4)<=t/4`. For `b=3/2`, `K_b(t)=atanh(z)-atan(z)`;
for `b=1/2`, `K_b(t)=atanh(z)+atan(z)`. Also

    atan(exp(-t/2)) = pi/4-atan(tanh(t/4)) >= pi/4-t/4. (8)

These inequalities retain logarithmic boundary growth rather than reducing
it to a globally weak quadratic potential.

For `x in (0,L)` set `y=2x/L-1`, so `|y|<1`, and write

    p_N(y) = sum_(j=1)^N y^(2j)/(2j).

The nonnegative series expansion gives the rigorous comparison

    - (1/2)log(1-y^2) >= p_N(y)                 (|y|<1). (9)

The finite rational check evaluates only `p_N`; (9) proves it is a lower
bound for the **entire** logarithmic barrier, so no infinite tail is dropped
with an unjustified sign.

## WFLB-v1-1: full primitive-character form beyond log(2)

Set `s=log2`, `d=1/32`, `L0=s+d`. The rational checker proves

    18/25 < L0 < 29/40,
    L0 < log3,
    w=s/sqrt2 < 491/1000.                                (10)

The last strict interval contains the entire literal `n=2` coefficient.
At `L=L0` the only active prime power is `2`, and its quadratic value is

    <f,P_chi,L0 f>
      =2w Re[chi(2)integral_0^d conj(f(x))f(x+s)dx]
      <=w integral_E |f(x)|^2 dx,
    E=(0,d) union (s,L0).                                  (11)

This estimate respects all complex phases `chi(2)` and ramification. It
controls **boundary mass**, not the unrestricted operator norm of the shift.

The exact archimedean parity identity from
`WeilGammaParityTraceBudget.md` and WFP-v1-2 is

    A_q,1(f)-A_q,0(f)
      = (1/2)integral_0^L0 integral_0^L0
                sech((x-z)/2) conj(f(x))f(z) dz dx,
    A_q,a(f)=c_q,a||f||^2+Gamma_(a+1/2)(f).              (12)

It has modulus at most `(L0/2)||f||^2` and shows the two form domains agree.
Every primitive odd conductor is `q>=3`, and every primitive even nonprincipal
conductor is `q>=5` (the sole nontrivial characters modulo `3` and `4` are
odd; conductor `2` has no primitive character). Since
`log(5/3)=2atanh(1/4)>1/2>L0/2`, equation (12) gives the required
source-specific **lower comparison**

    A_q,a(f) >= A_3,1(f)                            (q>1). (13)

This is a comparison of archimedean sectors, **not** an identity between
arithmetic prime operators of different characters. The entire actual
character dependence remains paid by (11).

For `b=3/2` write `k=k_b`, `K=K_b`,

    V_L(x) = c_3,1 + K(x)+K(L-x)+L*k(L).

As proved in WFP-v1-3, the sum of the two arctangent terms in the `K`
functions is at most `pi/4+atan(exp(-L/2))`: its derivative is negative
up to `L/2` and positive thereafter. Combining this with (7) gives the
**full** logarithmic barrier, before truncation,

    V_L(x) >= v(L) - (1/2)log(1-y^2),
    v(L) = log(3/(pi*L))-gamma_E+pi/4
                            -atan(exp(-L/2))+L*k(L).       (14)

The adjacent executed exact-Fraction checker proves at **the fixed support**
`L=L0`:

    v(L0)>97/500,       k(L0)<443/1000,
    a_*=1-2d/L0>91/100.                                (15)

Here the actual edge set `(11)` maps to `|y|>=a_*` (up to null endpoints).
Define, with rational constants and `a0=91/100`,

    g(y) = 97/500 + p_10(y)
             -(491/1000) * 1_{[a0,1]}(y),  0<=y<=1.     (16)

The checker verifies `p_10(a0)>491/1000`, so `g(y)>=97/500>0`
everywhere on `[0,1]`. Since `a_*>a0`, (9), (11), (14)-(15) give the
actual pointwise source estimate

    V_L0(x)-w*1_E(x) >= g(|2x/L0-1|).                    (17)

This explicitly retains the growing logarithmic edge weight and pays the
entire signed prime term where it truly overlaps. Using (4), (11), (13),
we obtain (5) with this `G`.

The function `p_10` increases on `[0,1]`; therefore `1/g` is decreasing
separately on `[0,a0]` and `[a0,1]`. For 128 equal subintervals on each
of these two ranges let `J_128` be the sum of the two **left Darboux
upper sums** (in exact rational arithmetic). Under the symmetric variable
change,

    integral_0^L0 dx/G(x) = L0 integral_0^1 dy/g(y)
                          <= L0*J_128.

The script verifies the exact inequalities

    rho <= (443/1000)*(29/40)*J_128 < 197/200,
    (1-197/200)*(97/500)=291/100000>1/400.            (18)

Weighted Cauchy (6) gives (1) at `L=L0`, including every phase and parity.
For a shorter `0<L<L0`, zero-extend the actual test from `(0,L)` into
`(0,L0)`. The **whole-line** gamma energy, scalar and literal `n=2`
shift correlation do not change: the added interval carries zero values.
No `n>=3` prime power is active at `L0`. The nonprincipal pole is absent
on both windows. The `L0` result therefore implies (1) for **every**
`0<L<=L0`, and the form domains are preserved by the literal zero
extension. QED.

## WFLB-v1-2: zeta full-test positivity through L=1/5

Set `Lz=1/5<log2`. There is no prime contribution. The actual signed pole
operator has two nonzero eigenvalues

    Lz+2sinh(Lz/2),  Lz-2sinh(Lz/2).

Its second eigenvalue is strictly **negative**. Put
`r_z=2sinh(Lz/2)-Lz>0`. For `u=Lz/2=1/10`, the positive
Taylor coefficients and the fact that successive terms after `u^3/3!`
have ratio at most `u^2/20` give

    r_z=2(sinh(u)-u) <= u^3/[3(1-u^2/20)] < 1/1000. (19)

With `k=k_(1/2)`, `K=K_(1/2)`, use (7)-(8) on `x,Lz-x`:

    K(x)+K(Lz-x)
       >= log(8/Lz) + pi/2-Lz/4
                           -(1/2)log(1-y^2).                (20)

Because the original scalar is
`c_zeta=-log pi-gamma_E-pi/2-3log2`, the constants simplify
**without altering the source**:

    c_zeta+K(x)+K(Lz-x)+Lz*k(Lz)-r_z
      >= v_z-(1/2)log(1-y^2),
    v_z = -log(pi*Lz)-gamma_E-Lz/4+Lz*k(Lz)-r_z.         (21)

The exact-Fraction checker proves the following from `Lz=1/5` and (19):

    k(Lz)<11/4,                  v_z>385/1000.             (22)

Define the positive entire-domain lower potential

    g_z(y)=385/1000+p_30(y) >=385/1000,  0<=y<=1.       (23)

By (9), (20)-(22), the native source form satisfies (5) with
`G_z(x)=g_z(|2x/Lz-1|)`. Since `p_30` increases, a 256-cell exact left
Darboux upper sum `J_z` satisfies

    integral_0^Lz dx/G_z(x) <= Lz*J_z.

The checked exact rational inequalities are

    rho_z <= (11/4)*(1/5)*J_z < 986/1000,
    (1-986/1000)*(385/1000)=5390/1000000>1/200.      (24)

Weighted Cauchy (6) yields (2) for `L=Lz`; the negative pole
orientation was fully paid in (19). For any `0<L<Lz`, zero extension to
`(0,Lz)` preserves the whole-line gamma integral, scalar and both pole
quadratic orientations, and the actual prime inventory is empty on both.
Hence the identical lower bound holds on every smaller support. QED.

## Exact certificate, hostile checks, provenance, and unresolved obligations

The sibling `WeilFirstPrimeLogBarrier.py` is self-contained Python 3 standard
library. It uses `fractions.Fraction` for **every sign decision**, rational
outward enclosures from Machin's `pi` identity, the Euler-harmonic integral
bound, alternating Taylor remainders for `exp(-t)` and `atan(t)`, positive
`atanh` tails and log series, rational square-root brackets, and the
**complete** upper Darboux sums in (18),(24). It refuses optimized `-O`
execution. The decimal output is diagnostic only; it is not a premise.

Executed in the source session:

    python3 WeilFirstPrimeLogBarrier.py             # exit 0
    python3 -m py_compile WeilFirstPrimeLogBarrier.py # exit 0
    python3 -O WeilFirstPrimeLogBarrier.py           # exit 1 (intentional)

The checker outputs:

    PASS: log2+1/32 full-test primitive q>1 margin >= 1/400
    v(L0)>97/500, k(L0)<443/1000, w<491/1000, a_actual>91/100: PASS
    Darboux: 128 exact rational left cells in each of two regions, rho<197/200: PASS
    rho upper 0.981404909313 coercivity lower 0.002910000000
    PASS: zeta full-domain original two-pole Weil form, all 0<L<=1/5, Q>=||f||²/200
    zeta: v>385/1000, k<11/4, rho<986/1000; 256 exact Darboux cells and 30 log-series terms
    zeta rho upper 0.985476170878 zeta margin lower 0.005390000000

**Falsification and trust boundaries.** (a) Near the first activation, the
actual `n=2` operator norm need not become small; our proof uses only its
true boundary support. (b) Taking the absolute phase cost globally would
lose the two-strip information. (c) The previous *quadratic* replacement
for `-1/2 log(1-y^2)` fails to certify a sufficiently large rank-one
margin at `L0`; retaining the full logarithm before truncating its
**positive** series is essential. (d) The negative rank-one term is never
deleted, and zeta's negative pole eigenvalue is never made positive.
(e) A finite scalar program does not establish a functional-analytic source
identity, Lean elaboration, kernel replay, an arithmetic zero-free region,
or an all-window certificate-existence theorem. (f) These results do not
cover newly active `n=3` for primitive characters or `n=2` for zeta;
there is no fixed-character all-window conclusion.

Prior art: WSR1-v1-3 (the same rank-one gamma comparison and conductor-three
source), WFP-v1-2/3 (literal prime overlap/parity comparison and the
quadratic barrier), `WeilGammaParityTraceBudget.md` (same-conductor
parity difference), `WeilGammaPhaseCoercivity.md` (original gamma boundary
splitting), and `WeilNegativeWitness.lean` (unchanged RH/GRH consumer).

During publication inspection, concurrent `WeilFirstActivatedPrimeConductorWindows.md`
(WAPC-v1-1--4, blob `1379763789f005d3f94b00519f14363c207efead`)
already supplied **full-test** first-prime positivity through `log3`
for conductors `q>=16`, and longer windows for larger conductors.
WFLB-v1-1 is **character-uniform over all primitive q>1** only through
`log2+1/32`, including the difficult odd conductor-three case; it does not
supersede WAPC's larger-conductor bounds. Concurrent
`WeilZetaPoleRankOneReturn.md` (blob `11892243099657534da0510145cd5a1b753ac71d`)
identifies the actual two-pole negative square through the sinh moment.
Our lower bound `R_L>=-(2sinh(L/2)-L)I` is compatible with that signed
source identity and does not claim to formalize it.

Small-support Weil positivity is classical: Enrico Bombieri,
*Remarks on Weil's quadratic functional in the theory of prime numbers, I*,
Rend. Lincei 11 (2000), pp. 183–233, especially discussion of Yoshida's
local result. No novelty beyond the specified normalization/constants is
asserted, and **originality remains UNASSESSED**.

Current target remains unaltered: every primitive Dirichlet `L(s,chi)`
(including conductor-one `zeta(s)`) has all critical-strip zeros on the
critical line. The first substantive unproved supply is the all-character,
all-window, all-test **arithmetic** inequality. Here it is discharged only
for the quantified support ranges (1),(2). The zeta endpoint-only interval
certificates through `log1024` do NOT become full-test positivity on that
interval. Mixed endpoint and full-complement/coupling signs remain open at
larger support. No imprimitive or broader L-family transfer is asserted.

Source-origin/pin and publication receipt: to be recorded at the guarded
main publication in issue grwtsk/math#1801. Lean toolchain
`leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Canonical
`grwtsk/noeaaeue/main` proof skill was inaccessible (HTTP 404) at
`45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d`; no dependent proof
automation was launched. Fresh Lean elaboration, complete build, kernel
replay, transitive axiom audit, independent source comparison and
repository-wide validation: **NOT_RUN**. Mathematical originality:
**UNASSESSED**. Local attribution: grwtsk contributors.
