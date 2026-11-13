# Signed gamma–pole kernel compensation on the full local zeta Weil form

By grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26 (primary), 11M41, 42A38, 47A63.

## Evidence, target and exact consumer

This is a **written analytic result** for the *original* conductor-one zeta Weil
quadratic form on its entire complex logarithmic gamma-energy domain. The
companion `WeilZetaCombinedKernelShortWindowCertificate.py` is a separately
executable **exact-rational scalar check**. Neither artifact is a Lean proof,
independent review, universally quantified certificate-existence result, or RH
proof. Novelty **UNASSESSED**; see the Yoshida/Bombieri comparison below.

The consumer is the *restricted-window* arithmetic lower-sign obligation in
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
The universal `hpositive` and the original RH and primitive Dirichlet GRH
targets remain unsupplied. Compared to the preceding
`WeilZetaPoleGammaCancellation.md` (WZPG-v1-3), whose completed written
full-test bound reaches `L<=7/24`, the present argument reaches `L<=3/10`
using a different exact same-source decomposition.

For a real `L>0`, let `V_L` be the original form domain of complex functions
on `(0,L)`, zero extended to the entire real line:

    V_L = {f in L²((0,L);C): Gamma(f)<infinity},
    Gamma(f) = integral_(s>0) k(s) ||f(.+s)-f||²_L²(R) ds,
    k(s) = exp(-s/2)/(1-exp(-2s)),  K(s)=integral_s^infinity k(t)dt.

The **unchanged** arithmetic source is

    Q_zeta,L(f) = c_zeta ||f||² + Gamma(f) - <f,P_L f> + <f,R_L f>,
    c_zeta = -log(pi)-EulerGamma-pi/2-3log(2),
    P_L = sum_(n>=2, log n<L) Lambda(n)/sqrt(n) [T_(log n)+T_(log n)^*],
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2)=2cosh((x-y)/2).

Inner products are conjugate-linear in their first variable. Every prime power
and both zeta pole orientations remain in the source; the actual finite-prime
operator vanishes on **this particular support range** because `L<=3/10<log2`.
No Dirichlet-series representation outside convergence, ordinate-only pairing,
or deletion/positive replacement of either pole orientation occurs.

**WZCK-v1-1 (exact source return, no zero-strip input).** For every `L<log2`,
write `r(s)=2cosh(s/2)` for `s>=0` and

    J_L(x) = integral_0^L r(|x-y|)dy
           = 4[sinh(x/2)+sinh((L-x)/2)],
    V_L(x) = c_zeta+K(x)+K(L-x)+J_L(x).

For **every** complex `f in V_L`, the original quadratic form satisfies

    Q_zeta,L(f)
       = integral_0^L V_L(x)|f(x)|² dx
         + integral_(0<x<y<L) [k(y-x)-r(y-x)]|f(y)-f(x)|² dxdy. (1)

The term with `k-r` is signed and cannot be discarded without a bound.

**Proof.** The original zero-extension gamma energy splits by Tonelli into

    Gamma(f)=integral_(0<x<y<L) k(y-x)|f(y)-f(x)|² dxdy
              + integral_0^L[K(x)+K(L-x)]|f(x)|² dx.          (2)

This requires only `Gamma(f)<infinity`; it does not impose an incorrect H¹
condition on a jumping zero extension. For the bounded, integrable symmetric
pole kernel `r`, the elementary complex polarization identity gives

    <f,R_L f>
      = integral_0^L J_L(x)|f(x)|² dx
        - integral_(0<x<y<L) r(y-x)|f(y)-f(x)|² dxdy.       (3)

The two integrals on the right of (3) are separately absolutely finite by
`f in L²(0,L)` and the boundedness of `r` on `[0,L]`. Adding (2), (3) and
the unchanged `c_zeta` proves (1). The exact pole kernel in (3) includes
**both** `exp((x-y)/2)` and `exp(-(x-y)/2)`; its positive pointwise kernel is
**not** declared a positive semidefinite operator. QED.

## WZCK-v1-2: a localized negative-kernel budget

Fix the rational support endpoint and separation threshold

    L0=3/10,   a=7/25,   L0-a=1/50,   a>L0/2.

Because `k` decreases and `r` increases, so does `r-k`. The exact identity

    k(s)/r(s) = 1 / [(1-exp(-2s))(1+exp(s))]

shows that `k(s)>=r(s)` for `0<s<=a` whenever

    (1-exp(-2a))(1+exp(a)) <= 1.                         (4)

The factor on the left is strictly increasing in `s>0`. The adjacent
exact-fraction checker proves (4) **strictly** at `a=7/25`.

For `a<=s<=L0`, monotonicity and the same exact checker give

    0 <= [r(s)-k(s)]_+ <= r(L0)-k(L0) = M < 3/25.       (5)

The positive-part inequality, not its leftmost displayed zero, applies even
when `r(s)-k(s)<0` near `s=a`. It would be incorrect to conclude that the
whole `k-r` interior kernel is nonnegative at `L0`.

For each `x in (0,L0)`, the total length of the opposite-endpoint region
`{y in (0,L0): |x-y|>=a}` is

    (x-a)_+ + (L0-x-a)_+ <= L0-a = 1/50,                (6)

because `a>L0/2`, so the two positive pieces never overlap. Using
`|u-v|²<=2|u|²+2|v|²`, Fubini and (6) yields the **whole-complex-source** bound

    integral_(0<x<y<L0, y-x>=a) |f(y)-f(x)|² dxdy
                     <= 2(L0-a)||f||².                   (7)

Consequently the signed last term of (1) is at least

    -2M(L0-a)||f||² > -(3/625)||f||².                  (8)

No finite-dimensional compression, hidden phase assumption, or false
operator-norm decay of a newly active prime shift is used here. QED.

## WZCK-v1-3: explicit strict all-test positive margin through `L=3/10`

`K''(s)=-k'(s)>0`, so `K(x)+K(L0-x)` is convex and symmetric.
Likewise, the *actual complete pole row sum*
`J_(L0)(x)=4[sinh(x/2)+sinh((L0-x)/2)]` is convex and symmetric.
Both have their minimum at `x=L0/2`, giving

    V_(L0)(x) >= m0,
    m0=c_zeta+2K(L0/2)+8sinh(L0/4).                    (9)

The gamma tail is exact:

    K(t)=atanh(exp(-t/2))+atan(exp(-t/2)).

With `z=exp(-L0/4)` and `v=(1-z)/(1+z)`, the identity
`2atan(z)=pi/2-2atan(v)` cancels `-pi/2` in the original
scalar. The minimum can be computed **without any numerical evaluation of
an infinite gamma integral**:

    m0=log((1+z)/(16(1-z)))+log2-log(pi)-EulerGamma
                                -2atan(v)+8sinh(L0/4).     (10)

The companion deterministic script checks the rational-series remainders
for Machin's pi, `log2`, `log5`, `log(pi)`, Euler's constant, exponentials,
and small-argument `atan`, then proves the strict signed bound

    m0 > 1/125.                                          (11)

Combining (1), (8), (9), and (11) at the fixed `L0` gives

    Q_zeta,L0(f) > [1/125-2(3/25)(1/50)]||f||²
                 = (2/625)||f||² > (1/320)||f||²           (12)

for every nonzero complex `f in V_L0`; for the zero test use non-strict
equality.

**Theorem (actual quantified lower sign).** Without RH, GRH, a zero-free
strip, or certified zero locations,

    forall L in (0,3/10], forall f in V_L,
                Q_zeta,L(f) >= (1/320)||f||².            (13)

**Proof for every shorter support.** For `0<L<=L0`, zero-extend the same
original function from `(0,L)` to `(0,L0)`. Its global zero extension,
`Gamma`, and physical `L²` norm are exactly unchanged. The original two-pole
correlation integral is also unchanged: it depends only on the unchanged
function on the full real line and both orientations. Because `L0<log2`, the
actual prime-power sums vanish on both supports. Thus the original
source equality `Q_zeta,L(f)=Q_zeta,L0(f_extended)` is exact, and (12)
proves (13). QED.

## WZCK-v1-4: limitations, prior art and check scope

**Hostile checks.** The original pole operator is indefinite: for a nonzero
centered odd test, the negative `sinh` moment survives and the positive
`cosh` moment vanishes. The *combined* difference kernel `k-r` is also
negative for some separations close to `L0`; replacing it by a positive
kernel is falsified by `(1-exp(-2L0))(1+exp(L0))>1`. The new proof pays
its entire possibly negative contribution using (5)--(8), rather than
silently dropping it. The predecessor WZPG constant-moment estimate has
`A(3/10)<0`; the new structural decomposition proves a positive lower
sign despite the failure of that particular estimate. These tests do not
assert any negative direction for the complete original Weil form.

**Comparison.** `WeilZetaPoleGammaCancellation.md` (WZPG-v1-3) proved
full-test zeta positivity to `7/24`, with a smaller `1/1000` margin.
This result proves it to `3/10` and with the explicit `1/320` physical
margin. The exact signed-kernel identity (1) is a reorganization of the
same original Weil form, not a new geometry that bypasses its arithmetic
source. The original local positivity tradition is Yoshida, *On Hermitian
forms attached to zeta functions*, Adv. Stud. Pure Math. **21** (1992),
281–325, especially the finite-window calculation reported at
`a=(log2)/2` by Bombieri, *Remarks on Weil's quadratic functional in the
theory of prime numbers, I*, Rend. Lincei **11** (2000), §1, pp. 184–186,
and the small-support proof in §12, pp. 225–227
(https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0).
The actual Yoshida edition was **not** directly verified here; its scope
is reported from Bombieri and later summaries, so no originality, priority,
or direct-paper formalization claim is made. An external more ambitious
localization result would not substitute for this proof's checked native
source-return. Novelty remains **UNASSESSED**.

**Source-bound verification.** Adjacent `WeilZetaCombinedKernelShortWindowCertificate.py`
uses exact `Fraction` inequalities only: rational finite-series exp tails,
Machin pi with alternating remainder, atanh log remainders, an explicit
`H_100` Euler-constant enclosure and the small `atan` remainder. It
checks (4), (5), (10)--(12), the strict prime-free support bound, and the
hostile sign at `L0`. Printed decimals are diagnostics, not proof inputs.
Commands: `python3 -m py_compile WeilZetaCombinedKernelShortWindowCertificate.py`,
`python3 WeilZetaCombinedKernelShortWindowCertificate.py`, and the deliberate
`python3 -O WeilZetaCombinedKernelShortWindowCertificate.py` failure. The
script does not kernel-check (1), prove source correspondence with a Lean
declaration, or discharge an all-window universal positivity premise.

**Evidence:** completed analytic argument `WRITTEN`; local exact-rational
scalar assertions `RUN`; Lean elaboration, dependency build, kernel replay,
transitive axiom audit, certified source identification, independent review
and repository-wide validation `NOT_RUN`. Originality `UNASSESSED`.
No new Lean theorem, import, `sorry`, `admit`, axiom or numerical zero
assumption is introduced. Conductor-one zeta is explicit; the original
primitive Dirichlet character family remains outside this theorem.

Initial live `grwtsk/math/main` inspected:
`e9e56bc167d7de60304074be675e79ee2fc3f979`;
source-local ancestor WZPG blob `fe47d166d2c8f5dcb87bda984e9c7f8c707d293e`.
Lean pin `leanprover/lean4:v4.34.1`, Mathlib pin
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination issue `grwtsk/math#1801`. Source attribution:
`grwtsk contributors`. Canonical `noe-proof-automation` skill under
`grwtsk/noeaaeue/main` at revision
`09ee20802f93e930a63939b3e2c1171889518da3` returned 404;
no covered proof automation was executed or delegated.
