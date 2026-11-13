# A rank-one archimedean bound on the full primitive Weil form at short support

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26, 11M06, 47A63, 42A38.

## Evidence, consumer and unchanged source

This is a **WRITTEN analytical proof candidate**, accompanied by an **executed exact-rational scalar checker** `WeilShortWindowRankOneCertificate.py`. The checker proves explicit scalar inequalities only; it does not elaborate Lean or independently verify the complete source-to-analytic-explicit-formula correspondence. Elaboration, complete Lean dependency build, fresh kernel replay, transitive axiom audit and independent mathematical review are NOT_RUN. Originality UNASSESSED. No new Lean declaration, `sorry`, `admit` or research axiom is introduced.

The direct consumer is the missing `hpositive` side of `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`, restricted to an explicit support range, and the arithmetic support partition in `WeilShortWindowBridgeCertificate.md`. It is *not* a supplier for the universal quantified positivity premise. The proof works with the same source as `PrimitiveWeilNeumannSchur.md` and `WeilGammaPhaseCoercivity.md`; in particular, no positive surrogate or conductor-one omission is introduced.

For every primitive Dirichlet character `chi` of conductor `q`, parity `a in {0,1}`, `b=a+1/2`, and `L>0`, extend `f` on `(0,L)` by zero and use the ORIGINAL form

    Q_chi,L(f) = c_q,a ||f||_2^2 + Gamma_b(f)
                              - <f,P_chi,L f> + delta_chi <f,R_L f>,
    c_q,a=log(q/pi)+digamma(1/4+a/2),
    k_b(s)=exp(-b s)/(1-exp(-2s)),
    Gamma_b(f)=int_0^infty k_b(s)||f(.+s)-f||_2^2 ds,
    P_chi,L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                      (chi(n) T_(log n)+conj(chi(n)) T_(log n)^*),
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2),
    delta_chi=1 for q=1 and 0 otherwise.

Inner products are conjugate-linear in the first variable. The original form domain is `V_L,b={f in L2(0,L;C) : Gamma_b(f)<infinity}`. Every prime power, parity, conductor and complex phase remains in the definition; the prime operator is identically zero only because the results below use `L<=log 2`, and the strict cutoff `log 2=L` has zero overlap. For q=1 the character is the actual zeta source and both *signed* pole orientations remain.

The precise results are:

**WSR1-v1-1 (zeta full-domain extension).** For every `0<L<=1/6` and every `f in V_L,1/2`, unconditionally,

    Q_zeta,L(f) >= (1/50) ||f||_2^2.                           (1)

**WSR1-v1-2 (primitive nonprincipal full-domain extension).** For every primitive character `chi` of exact conductor `q>1`, every `0<L<=log 2` and every `f in V_L,a+1/2`, unconditionally,

    Q_chi,L(f) >= (1/100) ||f||_2^2.                            (2)

For an even primitive `chi` the stronger margin `1/20` holds. For odd primitive `chi`, the margin `1/100` is obtained by the rank-one estimate, not from the false claim that the gamma pointwise minimum alone is sufficiently large at `L=log2`. No exceptional real zero or central zero is excluded, because no zero-location hypothesis is used.

## WSR1-v1-3: exact full-form gamma boundary decomposition

Set `K_b(t)=int_t^infty k_b(s) ds` and `W_b,L(x)=K_b(x)+K_b(L-x)`. For all `f in V_L,b`, the zero-extended shift energy satisfies

    Gamma_b(f)=int_(0<x<y<L) k_b(y-x)|f(y)-f(x)|^2 dxdy
                         +int_0^L W_b,L(x)|f(x)|^2 dx.       (3)

This follows by splitting each positive integrand into interior and two boundary contributions, followed by Tonelli; no divergent integral is independently subtracted. The two boundary orientations are both retained. The kernel is strictly decreasing since

    k_b(s)=sum_(j>=0) exp(-(b+2j)s),

and therefore `K_b''(s)=-k_b'(s)>0`. Thus convexity implies

    W_b,L(x)>=2K_b(L/2).                                    (4)

There is also a stronger rank-one form estimate valid for every `b>0`:

    Gamma_b(f)>=int_0^L [W_b,L(x)+L k_b(L)]|f(x)|^2 dx
                                  -k_b(L)|int_0^L f(x)dx|^2. (5)

Indeed `k_b(y-x)>=k_b(L)` for every interior pair, while

    int_(x<y) |f(y)-f(x)|^2 dxdy
      =L||f||_2^2-|int_0^L f(x)dx|^2.

The negative rank-one term in (5) is essential. It is not licensed to delete it or to replace (5) by positivity of a different matrix. This estimate holds on the ORIGINAL logarithmic form domain without requiring the zero extension to be H1.

The tails have exact elementary expressions (no quadrature approximation): with `z=exp(-t/2)`,

    K_(1/2)(t)=atanh(z)+atan(z),
    K_(3/2)(t)=atanh(z)-atan(z).                              (6)

They follow by differentiating and using the decay at infinity. Digamma identities give

    c_q,0=log(q/pi)-gamma_E-pi/2-3log2,
    c_q,1=log(q/pi)-gamma_E+pi/2-3log2.                        (7)

The source already contains (3) and the parity-tail identities; this note's new mathematical supplier is the rank-one consumer (5) with the explicit exact conductor-three budget below. No novelty is claimed for the classical components.

## WSR1-v1-1: zeta to support 1/6, with both pole orientations

At `L0=1/6` all active prime-power shifts vanish. The actual pole operator has two nonzero eigenvalues

    L0+2sinh(L0/2),  L0-2sinh(L0/2),

because its kernel is the sum `exp(x/2)exp(-y/2)+exp(-x/2)exp(y/2)`. The second eigenvalue is negative. Hence, using (3)-(4),

    Q_zeta,L0(f) >= [c_1,0+2K_(1/2)(L0/2)
                            +L0-2sinh(L0/2)]||f||_2^2.       (8)

The rational checker encloses the scalar in (8) *from below* by replacing the pole loss with the larger loss `1/1000`, and proves

    -log pi-gamma_E-pi/2-3log2
       +2[atanh(exp(-1/24))+atan(exp(-1/24))]-1/1000 > 1/50. (9)

For the pole bound put `u=L0/2=1/12`. The elementary series comparison `2(sinh u-u)<=u^3` for `0<=u<=1/12` shows

    2sinh(L0/2)-L0 <= (1/12)^3=1/1728<1/1000.

For `L<=L0`, extend the test by zero to `(0,L0)`. Both the whole-line gamma integral and the literal two-pole quadratic value remain **identical** on that extension, the scalar stays unchanged, and the prime inventory is empty on both windows. Therefore (8)-(9) apply with `||f||` unchanged, proving (1) for all admissible tests and every such L. No uniform coefficient-gap down to L=0 is demanded; the bound is in the physical L2 norm.

## WSR1-v1-2: all nonprincipal characters to the empty-prime endpoint log 2

A character whose *exact conductor* is `q>1` has `q>=3`. The unique character modulo 2 has conductor 1. A primitive **even** nonprincipal character has conductor `q>=5`, since the sole nontrivial characters modulo 3 and 4 are odd. Consequently it suffices to treat the worst scalar `c_5,0` for even parity and `c_3,1` for odd parity.

Write `L0=log2`, `z=exp(-L0/4)=2^(-1/4)`. For even parity, (4), (6)-(7) give

    Q_chi,L0(f) >= [c_5,0+2(atanh(z)+atan(z))]||f||_2^2.

The rational checker proves the bracket strictly exceeds `1/20`. Since the prime operator vanishes at `L=L0` (the `n=2` overlap is exactly zero) and the form is nonprincipal/pole-free, zero extension transfers this inequality to every shorter window.

Odd parity requires retaining the interior rank-one correction. At `b=3/2`, `q=3`, `L0=log2` we have exactly

    k_(3/2)(L0)=sqrt2/3.

Set

    V(x)=c_3,1+K_(3/2)(x)+K_(3/2)(L0-x)+L0*sqrt2/3.

For `0<x<L0` write `y=2x/L0-1`, so `|y|<1`. Then

    V(x) >= v_*+y^2/2,                                      (10)
    v_*=log(3/(pi*L0))-gamma_E+pi/4
                              -atan(1/sqrt2)+L0*sqrt2/3.  (11)

To prove (10), observe

    atanh(exp(-x/2))=(1/2)log(coth(x/4))
                                >=(1/2)log(4/x)

because `tanh(u)<=u`. The sum of the two arctangents is at most

    atan(1)+atan(exp(-L0/2))=pi/4+atan(1/sqrt2).

Indeed, differentiating the sum on the left shows it decreases up to the midpoint and increases thereafter: `t/(1+t^2)` is increasing on `(0,1)` and the two exponential arguments exchange order at the midpoint. Finally `-log(1-y^2)>=y^2`. Together these give

    K_(3/2)(x)+K_(3/2)(L0-x)
      >= log(8/L0)-pi/4-atan(1/sqrt2)+y^2/2,

and (7) simplifies exactly to (10)-(11).

The checker establishes `v_*>239/1000`. Its Euler-constant enclosure is obtained from `H_100-log(100)-1/200`: for the convex function `1/t`, the sum of positive trapezoidal errors from integer 100 onward is at most `(1/4) int_100^infinity t^(-3)dt=1/(8*100^2)`. The checker encloses pi by the Machin arctangent identity; log, arctan, atanh and exp by rational series with complete signed remainders; and `sqrt2` and `2^(-1/4)` by integer-power bracketing. No decimal print participates in a sign decision. Therefore `V>0`, and weighted Cauchy-Schwarz applied to (5) gives

    Q_chi,L0(f) >= (1-rho) int_0^L0 V(x)|f(x)|^2 dx,
    rho=(sqrt2/3) int_0^L0 dx/V(x).                     (12)

The integral is **not** replaced by its midpoint value. Since `v_*>239/1000`, `sqrt2/3<59/125`, `log2<7/10` and `t -> 1/(239/1000+t^2/2)` decreases on `[0,1]`, a 16-cell exact upper Darboux sum gives

    rho <= (59/125)(7/10)(1/16)
          sum_(j=0)^15 1/(239/1000+(j/16)^2/2)
          <191/200.                                          (13)

Consequently

    Q_chi,L0(f) > (9/200)(239/1000)||f||^2
                         > (1/100)||f||_2^2.               (14)

No approximation of `f`, finite-dimensional compression or spectral-gap assumption enters. Larger odd conductors increase `c_q,1` and preserve the inequality. For shorter L, zero extension to `L0` preserves the literal gamma and scalar values and the empty prime inventory. This proves (2) for every primitive nonprincipal character, including real and complex characters and both parities. Their zeros and multiplicities are not presumed or used.

## Falsification and source-return audit

A tempting stronger pointwise gamma bound is **false**. Taking `h(x)=x(L-x)` and trying to treat the interior action `int_0^L k_b(|x-y|)[h(x)-h(y)]dy` as nonnegative fails at the left boundary: as `x downarrow 0`, the integral tends to `-int_0^L k_b(y)h(y)dy<0`, whereas `h(x)` tends to zero. Thus `(A_Gamma h)(x)/h(x)` tends to `-infinity`, and a fictitious all-vector bound based on a positive quadratic ground-state correction cannot be used. The present argument avoids that mistake by keeping the exact **negative** rank-one term in (5) and paying it through (10)-(13).

For q=1, `R_L` has a negative eigenvalue; replacing it by a positive pole surrogate would falsely strengthen (8). For q>1, the conductor/parity classification is used only when the actual prime inventory is empty. For `L>log2` the first active prime power must be reintroduced with its actual character phase; (12) does not extend past the activation threshold. This is a mathematically meaningful obstruction to extending these particular absolute bounds, not an RH/GRH counterexample.

A concurrent source, `WeilShortWindowConvexGammaExtension.md` (WSGC-v1-1--4, live-main blob `5cf5e6e8a3cdef4a3e2e352159473b284e322655`), already proves the same midpoint convexity (4) and unconditional zeta positivity on `L<=1/6` with constant `1/200`, plus nonprincipal positivity on `L<=1/3` with constant `1/3`. **Those results are reused, not claimed as new here.** WSR1-v1-1 sharpens the zeta constant to `1/50` *on the same interval*, using a tighter exact scalar evaluation. WSR1-v1-2 extends the nonprincipal all-test support from `1/3` all the way to the prime-activation endpoint `log 2` (at the weaker uniform margin `1/100`) by paying the actual negative rank-one term through (10)--(14). The proof of (5) is the substantive new input beyond WSGC. Source-only distinction: both written proofs use the original same physical quadratic form, so they are not independent source-return verifications.

This is compatible with the established small-support Weil positivity of Yoshida, reproduced by Bombieri (*Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), sections 1 and 12; https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0). It supplies explicit new *local-source constants* for our maintained normalization, not a claim of novelty in the general theory. Read alongside `WeilShortWindowBridgeCertificate.md` (WSWB-v1-1--5), `WeilGammaPhaseCoercivity.md` (WGPC-v1-1), `PrimitiveWeilNeumannSchur.md`, `WeilGammaParityTraceBudget.md`, and `WeilNegativeWitness.lean`. None of their declaration meanings or evidence statuses is changed.

### Scope and remaining obligations

- This completes the **all-test** zeta arithmetic inequality only for `0<L<=1/6`, and for every primitive conductor `q>1` only for `0<L<=log2`.
- The separate WED1024 zeta two-dimensional endpoint certificate does **not** become all-test positive for `1/6<L<=log1024`. Its infinite-dimensional complement and couplings are still uncontrolled.
- Neither the general bounded-modulation mixed endpoint sign for arbitrarily large windows nor an all-character all-window source-return theorem is supplied. No RH or primitive GRH is proved.
- The supplied executable certificate proves only rational scalar constants using the displayed analytic identities and does not attest to Lean elaboration, transitive axiom audit, independent analytical review or universally certified computation.

Math source pin at start of this continuation: `grwtsk/math/main` `42210191a69cdd35046ff3f452fe9df8f0185610`; Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Coordination issue `grwtsk/math#1801`. Source-local byline and contribution: grwtsk contributors. Canonical Noe proof-automation skill at `grwtsk/noeaaeue/main` `45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d` was inaccessible (404); no dependent proof execution was run. Ordinary source authoring and nonforce publication do not invoke Noe.
