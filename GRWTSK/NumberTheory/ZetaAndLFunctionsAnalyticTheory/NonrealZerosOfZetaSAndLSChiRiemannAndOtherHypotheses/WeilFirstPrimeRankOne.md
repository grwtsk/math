# The first active prime: full-domain primitive Weil positivity beyond log 2

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M06, 11M26, 42A38, 47A63.

**Evidence:** complete WRITTEN analytical proof (WFP-v1-1–4) and an EXECUTED
exact-Fraction scalar check. Lean elaboration, fresh kernel replay, transitive
axiom audit, independently certified arithmetic source identification, and
independent analytical review: NOT_RUN. Originality: UNASSESSED. No claim of
RH, primitive GRH, universal all-window positivity, or previously unknown
source identity. No new Lean declarations, imports or research axioms.

## Unchanged source and mathematical consumer

Let `s=log 2`, `d0=1/1000`, and `L*=s+d0`. Let `chi` be ANY primitive
Dirichlet character of exact conductor `q>1`, with parity `a=0` or `1` and
`b=a+1/2`. On the original domain

    V_L,b = { f in L²((0,L); C) : Gamma_b(f)<infinity },

zero-extend f to R. Inner products are conjugate-linear in the first variable.
Use the full canonical physical form, unchanged:

    Q_chi,L(f) = c_q,a ||f||² + Gamma_b(f)
                 - <f,P_chi,L f> + delta_chi <f,R_L f>,
    c_q,a = log(q/pi)+digamma(1/4+a/2),
    Gamma_b(f) = integral_0^infinity k_b(u)||f(.+u)-f||² du,
    k_b(u)=e^(-bu)/(1-e^(-2u)),
    P_chi,L=sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
         [chi(n) T_(log n)+conj(chi(n))T_(log n)^*],
    R_L(x,y)=e^((x-y)/2)+e^(-(x-y)/2),
    delta_chi=1 iff q=1.

The gamma integral, all prime powers, phases, parity, conductor, and both
zeta pole orientations are explicitly retained in the SOURCE. The theorem
below concerns `q>1`, hence its actual pole term is absent; it must not be
presented as a zeta theorem. At `L<=s`, the original n=2 shift has zero
actual overlap and P=0; on `s<L<=s+d0<log 3`, **n=2 is the only active prime
power**. It is NOT replaced by a flat comparator. This work supplies a new
range of the `hpositive`-type original arithmetic inequality, restricted to
small windows, downstream of `WeilNegativeWitness.lean`. The universal
hypothesis in that consumer remains open.

**WFP-v1-1 (source-exact theorem).** Unconditionally, for every primitive
Dirichlet character chi of exact conductor q>1, every
`0<L<=log 2+1/1000` and EVERY complex f in the original domain V_L,a+1/2,

    Q_chi,L(f) >= (1/125)||f||².                                (1)

The inequalities are in physical L² norm and remain meaningful for f=0.
Neither any character-specific phase restriction nor an RH/GRH hypothesis
enters. Exceptional real zeros, complex characters and ramification are not
excluded. No conductor-uniform claim outside this support range follows.

## WFP-v1-2: literal n=2 phase cost, and archimedean parity comparison

For `s<L<=s+d0`, set `d=L-s` and
`E_d=(0,d) union (L-d,L)`. The intervals are disjoint. With
`w=log(2)/sqrt(2)`, the full actual prime operator is exactly

    P_chi,L = w[chi(2)T_s+conj(chi(2))T_s^*].

As `|chi(2)|<=1`, Cauchy–Schwarz on the **actual** overlap gives

    <f,P_chi,L f> = 2w Re(chi(2) integral_0^d conj(f(x))f(x+s)dx)
                  <= w integral_(E_d) |f(x)|² dx.             (2)

This costs boundary mass only; it does not claim that `||P||=o(1)` as
downarrow0. All complex phases are accounted for, and even conductors
may have chi(2)=0.

Define the two original archimedean parity sectors at conductor q by
`A_q,a(f)=c_q,a||f||²+Gamma_(a+1/2)(f)`. The EXACT finite parity
kernel difference is

    k_(1/2)(u)-k_(3/2)(u) = 1/(2cosh(u/2)),
    c_q,1-c_q,0 = pi.

Splitting the L² shift energy BEFORE subtracting gives

    A_q,1(f)-A_q,0(f)
      = (1/2) integral_0^L integral_0^L
              sech((x-y)/2)conj(f(x))f(y) dy dx.             (3)

Indeed the integral of `k_(1/2)-k_(3/2)` over (0,infinity)
is pi/2. The difference kernel is integrable and its absolute quadratic
value is <=(L/2)||f||² by Schur/Young since `sech<=1`.
Equation (3) also shows that the two logarithmic form domains agree:
their difference is bounded in L², so no unproved inclusion between
unbounded form domains is used.

Any primitive odd chi with q>1 has q>=3. Any primitive even nonprincipal
chi has q>=5: mod 2 has no conductor-two primitive character, while the
nonprincipal primitive characters modulo 3 and 4 are odd. Consequently

    A_q,1(f) >= A_3,1(f)                         (odd),
    A_q,0(f) >= A_3,1(f)+(log(q/3)-L/2)||f||²   (even).

For the present range, `L<7/10` and
`log(5/3)=2 atanh(1/4)>1/2>L/2`; thus every original primitive
archimedean sector is bounded below by the SAME *actual* odd conductor-3
sector A_3,1. This is a proved one-sided comparison, NOT a replacement of
its character phases or a claim that different full forms are identical.
Combining with (2), it remains to bound

    A_3,1(f)-w integral_(E_d)|f|².                           (4)

## WFP-v1-3: the rank-one gamma bound pays the active prime

Put `k=k_(3/2)`, `K(t)=integral_t^infinity k(u)du` and
`W_L(x)=K(x)+K(L-x)`. The actual zero-extension gamma decomposition,
valid for every f in its logarithmic form domain by Tonelli, is

    Gamma_(3/2)(f)
       = integral_(0<x<y<L) k(y-x)|f(y)-f(x)|² dxdy
           +integral_0^L W_L(x)|f(x)|² dx.                  (5)

Since k decreases, k(y-x)>=k(L). The exact all-pairs identity yields

    Gamma_(3/2)(f) >= integral_0^L[W_L(x)+Lk(L)]|f(x)|² dx
                                     -k(L)|integral_0^L f|². (6)

The negative rank-one term MUST be retained. Define

    V_L(x)=c_3,1+K(x)+K(L-x)+Lk(L),
    G_L(x)=v+(2x/L-1)²/2,                 v=47/200.

The crucial pointwise statement is

    V_L(x)-w*1_(E_d)(x) >= G_L(x)>0           a.e. x in (0,L). (7)

Here is a complete analytic proof. The exact tails are

    K(t)=atanh(e^(-t/2))-atan(e^(-t/2)),
    c_3,1=log(3/pi)-gamma_E+pi/2-3log2.

Let `y=2x/L-1`. Using `tanh(t/4)<=t/4` gives
`atanh(e^(-t/2))>=log(4/t)/2`. The sum of the two arctangent
terms is at most `pi/4+atan(e^(-L/2))`: its derivative changes sign
at x=L/2, so its maximum lies at an endpoint. Finally
`-log(1-y²)>=y²`. It follows that, for all 0<x<L,

    V_L(x) >= v(L)+y²/2,
    v(L)=log(3/(pi*L))-gamma_E+pi/4
                    -atan(e^(-L/2))+L*k(L).                (8)

At L=s, k(s)=sqrt(2)/3 and the existing exact WSR1 conductor-three
expression equals v(s). The executed rational checker independently
confirms `v(s)>239/1000`. On [s,s+d0],

    k'(L)=-k(L)[3/2+2/(exp(2L)-1)],
    |(Lk(L))'| <= k(L)[1+L(3/2+2/(exp(2L)-1))] < 2,

using `k(L)<=sqrt(2)/3<1/2`, `L<7/10`, and
`2/(exp(2L)-1)<=2/3`. Also
`log(L/s)<=d0/s<(3/2)d0` since `s>2/3`, while
`-atan(e^(-L/2))` is increasing. Therefore

    v(L)>v(s)-4d0>239/1000-4/1000=47/200=v.          (9)

Thus (7) holds outside E_d. On either boundary strip of E_d,
`min(x,L-x)<=d<=d0`. By decreasing K and positivity of its other tail,

    V_L(x)>=c_3,1+K(d0).

The elementary bounds `e<3`, `3^7=2187<4000=4/d0` give
`log(4/d0)>7`; hence

    K(d0) > (1/2)log(4/d0)-pi/4 > 5/2.

Also `c_3,1>-5/4`, using `gamma_E<3/5`,
`3<pi<22/7`, `log2<7/10`, and
`log(3/pi)>-1/20`. Finally `w<1/2` because
`log2<7/10<sqrt(2)/2`. Consequently, on E_d,

    V_L(x)-w > -5/4+5/2-1/2=3/4
              >47/200+1/2>=G_L(x).                         (10)

This proves the prime absorption (7) for all f, without any H¹
assumption or smallness claim for unrestricted ||P||.

Combining (2),(6),(7) produces the *original signed arithmetic form*

    Q_chi,L(f) >= integral_0^L G_L(x)|f(x)|² dx
                     -k(L)|integral_0^L f|².                 (11)

Weighted Cauchy–Schwarz gives

    |integral_0^L f|² <=
       [integral_0^L G_L|f|²][integral_0^L 1/G_L].

Since `k(L)<=k(s)=sqrt(2)/3<59/125` and `L<7/10`,
set `rho=k(L)*integral_0^L 1/G_L`. Symmetry in `y=2x/L-1`
and the decreasing function `u->1/(v+u²/2)` on [0,1] give

    rho < (59/125)(7/10)(1/16)
           sum_(j=0)^15 1/[47/200+(j/16)²/2]
        < 193/200.                                          (12)

The final strict inequality is an **exact rational finite sum** supplied
by `WeilFirstPrimeRankOne.py`, not a decimal numerical guess. Therefore

    Q_chi,L(f) >= (1-rho)integral G_L|f|²
              > (7/200)(47/200)||f||²
              =329/40000 ||f||² > (1/125)||f||².             (13)

At f=0 use non-strict equality. At L=s the original n=2 overlap is zero.
For ALL `0<L<=s`, the previously published WSR1-v1-2 proves
`Q_chi,L(f)>=(1/100)||f||²`, hence also (1). This proves WFP-v1-1.

## WFP-v1-4: reproducibility, falsification and remaining obligations

Run `python3 WeilFirstPrimeRankOne.py` (unoptimized). The script uses
`fractions.Fraction` exclusively for the sign decisions and verifies the
convergent rational remainder enclosures for pi, Euler gamma, logarithms,
arctangents and atanh, the conductor-three scalar, root bounds, worst
parity/conductor comparisons, the full boundary surplus constants, and the
complete 16-cell reciprocal-potential upper Darboux sum. Its `-O` mode
exits nonzero; no disabled assertions are reported as passing. It is a
finite exact scalar certificate, not a Lean proof of the analytic steps.

The following hostile checks are part of the mathematical scope:

- At d=0, the n=2 overlap disappears exactly. For d>0, its unrestricted
  operator norm need not shrink as d->0; only the boundary-mass form
  estimate (2) justifies the extension.
- The chosen odd conductor-three comparison carries the **negative**
  rank-one term. Omitting it would artificially prove a stronger but
  unsupported positive operator statement.
- Every actual complex value chi(2) is treated through |chi(2)|<=1;
  ramified primes with chi(2)=0 cause no difficulty. For the even parity
  case, the actual parity kernel (3), not an asserted same-character
  gamma identity, supplies the comparison.
- The natural gamma lower bound and the 16-cell budget lose margin as
  L increases. Once L>=log3 a new prime power becomes active. Neither
  this method nor the published WED1024 endpoint-only certificate gives
  complete all-vector positivity on those larger supports.
- Replacing the actual negative scalar by an arbitrary lower shift is
  not permitted: a shift of more than the proved margin can invalidate
  this certificate. No universal sign is inferred from finite windows.

Prior art and provenance: the specific rank-one gamma estimate and exact
conductor-three potential follow `WeilShortWindowRankOne.md` (WSR1-v1-3,
noted prior scalar margin 1/100 at L<=log2). The gamma parity kernel
is exactly the one in `WeilGammaParityTraceBudget.md` (2026-11-12),
with direct proof again given in section WFP-v1-2. The gamma boundary
identity also appears in `WeilGammaPhaseCoercivity.md`. The support-
localized Weil positivity tradition is Yoshida, discussed in Enrico
Bombieri, *Remarks on Weil's quadratic functional in the theory of prime
numbers, I*, Rendiconti Lincei 11 (2000), pp. 183–233
(https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0).
No novelty is claimed; comparison against all contemporary papers is
not complete, so originality is UNASSESSED.

The literal consumer is unchanged: the `hpositive` side of
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`,
now supplied only for `0<L<=log2+1/1000` and primitive q>1. The original
Riemann zeta source at q=1, including its both-orientation pole, still has
only the independently proved full-domain bound through L<=1/6 and
bounded endpoint-span certificates for larger finite windows. Primitive
nonprincipal all-window positivity, endpoint/complement control, and the
unchanged RH and GRH targets are all open.

Repository provenance: work from live `grwtsk/math/main` at
`83f3cdac0bb22ad41c745710d29cf79a1f1ec4de`,
root tree `956d6f7be4656aa2e94da01dcbc722f78841e27a`.
Lean `leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination `grwtsk/math#1801`. No existing source, imports,
root package pins, workflows, historical evidence or prior statements changed.
Formal source elaboration, dependency build, kernel replay, transitive axiom
audit, certified source-return and independent analytical review: NOT_RUN.
Publication and an executed rational checker attest only to their respective scopes.
The canonical proof-automation skill was inaccessible at
`grwtsk/noeaaeue/main` revision `45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d`;
no dependent proof execution or scheduler was requested or run.
