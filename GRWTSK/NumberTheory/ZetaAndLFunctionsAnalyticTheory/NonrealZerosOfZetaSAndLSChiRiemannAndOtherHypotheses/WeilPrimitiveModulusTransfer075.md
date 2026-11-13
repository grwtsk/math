# A modulus/parity source transfer from zeta to primitive Dirichlet Weil forms

By grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M06 (primary), 11M26, 42A38, 47A63.

**Evidence:** Written analytical source argument and executed exact-Fraction scalar
fixture. The imported finite-window zeta theorem WZAP075-v1-1 is WRITTEN with
an exact rational/integer certificate RUN, but its Lean elaboration, fresh
kernel replay, transitive axiom audit and independent source review remain
NOT_RUN. This note does not upgrade that status. Its own Lean declaration,
build, kernel replay, axiom audit and independent mathematical review are
NOT_RUN. Originality UNASSESSED. No new Lean axiom, `sorry`, `admit`, root
import or conjecture target is introduced. No RH or primitive GRH proof.

## Exact arithmetic source and first consumer

Fix any support length L>0. Let chi be a primitive Dirichlet character of
exact conductor q>1 and parity a∈{0,1}. Set b=a+1/2 and zero-extend every
complex f from I=(0,L) to the real line. The original native logarithmic
gamma form domain is

    V_(L,b) = { f∈L²(I;C): Gamma_b(f)<∞ },
    Gamma_b(f)=∫_0^∞ k_b(s)||f(·+s)-f||²_(L²(R)) ds,
    k_b(s)=exp(-b*s)/(1-exp(-2s)).

The ORIGINAL source with all signed prime powers and character phases is

    Q_chi,L(f) = c_(q,a)||f||²+Gamma_b(f)-<f,P_chi,L f>,
    c_(q,a)=log(q/pi)+psi(1/4+a/2),
    P_chi,L=Σ_(n≥2, log(n)<L) Lambda(n)/sqrt(n)
                [chi(n)T_(log n)+conj(chi(n))T_(log n)^*].     (1)

The conductor-one source is kept SEPARATELY as Riemann zeta,

    Q_zeta,L(g)=c_(1,0)||g||²+Gamma_(1/2)(g)
               -<g,P_zeta,L g>+<g,R_L g>,
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).                   (2)

Both signed pole orientations and all prime powers remain in (2).
There is no pole term for q>1, and no imprimitive character transfer is
asserted. Inner products are conjugate-linear in the first argument.

**WPMT075-v1-1 (universal source comparison).** For EVERY L>0, every
primitive q>1, and EVERY complex f∈V_(L,a+1/2), put g=|f|. Then
g∈V_(L,1/2), and

    Q_chi,L(f) ≥ Q_zeta,L(g)+log(q)||f||²
                   -<g,R_L g>+a<g,T_L g>,                 (3)

where T_L is the genuine gamma-parity difference operator with kernel

    T_L(x,y)=(1/2)*sech((x-y)/2).                         (4)

This is a proved return to the exact native arithmetic source. The formula
is useful even when a right-side sign has not been established. It retains
all actual phase and conductor quantifiers; it is NOT a claim that the
primitives have the same pole term or identical prime phases as zeta.

**WPMT075-v1-2 (all complex primitive tests, conductor ≥4).** Assume the
published source theorem [WeilZetaAlignedFirstPrime075.md](WeilZetaAlignedFirstPrime075.md),
WZAP075-v1-1: for all 0<L≤3/4 and all g∈V_(L,1/2),

    Q_zeta,L(g) ≥ (1/6000)||g||².                         (5)

Then, without any extra RH/GRH or zero-strip hypothesis,

    ∀ q≥4, ∀ primitive chi of exact conductor q,
    ∀ 0<L≤3/4, ∀ f∈V_(L,a+1/2),
            Q_chi,L(f) ≥ (1/20)||f||².                    (6)

For even primitive chi the proof uses q≥5 (there are no even primitive
characters of exact conductor 4). For odd chi it uses q≥4 and the
ACTUAL parity correction (4). The sole nonprincipal primitive character
with conductor below 4 is the odd quadratic character modulo 3; it is
NOT covered by (6). Conductor-one zeta is exactly the separate supplier
(5). More general primitive families and imprimitive transfer are open.

## WPMT075-v1-1: proof of modulus and parity source return

For every complex u,v, `||u|-|v|| ≤ |u-v|`. Apply this pointwise to the
zero-extended translation differences, then integrate against the
nonnegative actual k_b. Thus

    Gamma_b(f) ≥ Gamma_b(g),                           (7)

with no assumption on continuity or boundary H¹ regularity. Every
original von Mangoldt weight is nonnegative. For the actual finite
inventory and the genuine signed complex autocorrelation,

    C_f(s)=∫_R conj(f(x))*f(x+s) dx,
    <f,P_chi,L f>=2Σ_(log n<L) Lambda(n)/sqrt(n)
                      Re(conj(chi(n))*C_f(log n)).

Since `|chi(n)|≤1` (including 0 at ramified primes) and
`|C_f(s)|≤C_g(s)`, term by term,

    <f,P_chi,L f> ≤ <g,P_zeta,L g>.                    (8)

There is no discarded prime power or assumption of prime-phase
cancellation. Equations (7)-(8) prove the diamagnetic comparison
`Q_chi,L(f)≥ A_(q,a)(g)-<g,P_zeta,L g>`, with
`A_(q,a)=c_(q,a)||·||²+Gamma_(a+1/2)`.

The odd-to-even gamma-domain transfer is justified rather than assumed.
The exact kernel difference is

    k_(1/2)(s)-k_(3/2)(s)=1/[2cosh(s/2)],
    ∫_0^∞[k_(1/2)(s)-k_(3/2)(s)]ds=pi/2.

Every zero-extended supported g satisfies
`||g(·+s)-g||²≤4||g||²`, so
`0≤Gamma_(1/2)(g)-Gamma_(3/2)(g)≤2pi||g||²`.
Thus any g∈V_(L,3/2) belongs to V_(L,1/2). This proves domain
membership for (3), including arbitrary complex f and its modulus.

The exact digamma parity constant difference is pi. Combining it with
the integrable difference kernel BEFORE the singular gamma integrations
recovers the same native kernel identity as
[WeilGammaParityTraceBudget.md](../WeilGammaParityTraceBudget.md):

    A_(q,1)(g)-A_(q,0)(g)
       = (1/2)∫_I∫_I sech((x-y)/2)g(x)g(y) dxdy
       = <g,T_Lg> ≥ 0.                                 (9)

Here g≥0 pointwise, so the final sign follows directly from the
positive real pointwise sech kernel (the operator is actually PSD even
for complex functions, but that extra fact is not used). Also
`A_(q,0)(g)=A_(1,0)(g)+log(q)||g||²`, with the exact conductor
normalization. Substituting the literal zeta Q (2) proves (3), with
both zeta pole orientations retained and then explicitly subtracted.

## WPMT075-v1-2: an explicit rational lower margin at L=3/4

Throughout this section `0<L≤L0=3/4`. The external arithmetic premise is
only the previously published finite-window zeta inequality (5). Set
`δ=1/6000` and use the source comparison (3).

**Even parity.** Primitive even chi with q>1 has q≥5: the unique
nonprincipal characters modulo 3 and 4 are both odd, and no conductor-2
primitive character exists. The ACTUAL two-orientation zeta pole kernel
has two nonzero eigenvalues `L±2sinh(L/2)` (center the two exponentials
at L/2 and diagonalize their real symmetric 2×2 span). Hence

    <g,R_Lg> ≤ [L+2sinh(L/2)]||g||².                 (10)

The positive Taylor ratio gives, for t=3/8,

    sinh t ≤ t/(1-t²/6) < 2/5.

Thus `L+2sinh(L/2)<3/4+4/5=31/20`.
Also `log5=2atanh(2/3)>8/5` by keeping four positive terms of the
atanh series. Therefore, for any even primitive q≥5,

    Q_chi,L(f) ≥ [δ+log q-31/20]||f||²
                > [δ+8/5-31/20]||f||²
                > (1/20)||f||².                        (11)

**Odd parity.** Do NOT discard the positive parity term: the q=4 case
would not be certified by the preceding coarse two-pole norm. Since
g=|f| is nonnegative, the literal residual has pointwise kernel

    (R_L-T_L)(x,y)=H(t),
    H(t)=2cosh(t)-1/[2cosh(t)],  t=|x-y|/2.

The function H increases on t≥0. For `0≤t≤3/8`, the positive Taylor
ratio gives

    cosh t ≤ 1+t²/[2(1-t²/12)] < 13/12,
    H(t) < 2*(13/12)-1/[2*(13/12)] = 133/78.

Cauchy--Schwarz on the true finite interval and g≥0 gives

    <g,(R_L-T_L)g>
       ≤ (133/78)*(∫_I g)^2 ≤ (133/78)*L*||g||²
       ≤ (133/104)||g||².                           (12)

For every odd q≥4, the exact atanh series gives
`log q≥log4=4atanh(1/3)>4/3`. Hence

    Q_chi,L(f) ≥ [δ+log q-133/104]||f||²
                > [δ+4/3-133/104]||f||²
                = [δ+17/312]||f||²
                > (1/20)||f||².                        (13)

The finite scalar bounds in (10)--(13) are independently checked with
exact rational arithmetic by the adjacent script
`WeilPrimitiveModulusTransfer075Certificate.py`. Its log enclosures have
complete positive geometric tail bounds; hyperbolic Taylor ratio
bounds are rational and safe. No floating point sign decision enters.
The checker certifies the constants, not (3), (5) or the analytic
identity of the complete explicit formula. The dependence on (5)
retains the original WZAP075 status and exact published source.

## WPMT075-v1-3: falsification, first unsupplied premise and source map

- **Conductor three is NOT solved.** Its only primitive character is odd.
  The coarse odd comparison leaves the lower scalar
  `δ+log3-133/104`, which is negative. A proof for q=3 at support 3/4
  must exploit additional gamma phase rigidity, the true signed
  `chi(2)=-1` prime pairing, or another source-exact arithmetic input.
  Failure of this lower envelope does not imply an actual negative Weil
  direction, an off-line zero, or a counterexample to GRH.
- **Actual zeta poles remain signed.** The operator R_L is indefinite:
  its second eigenvalue `L-2sinh(L/2)<0`. The comparison subtracts
  its actual quadratic value, and then controls that signed value by
  an exact upper budget. It does not posit a positive pole operator.
- **Actual parity is needed.** Dropping `T_L` would leave the odd
  conductor-four comparison at a negative coarse margin. The exact
  odd kernel is part of the original gamma factor, not a new model.
- **Primes are retained for arbitrary L.** Equation (8) holds with ALL
  actually active n, their true Λ(n), `chi(n)` phases and ramified
  zeros, not only with the n=2 source. It is the *final support
  cutoff*, not the transfer step, that reuses the WZAP075 certificate.
- **Zero extension and all-test domain.** No smoothing, finite-dimensional
  projection, hidden restriction to pole-neutral functions or
  positivity of an auxiliary replacement source is assumed. The
  modulus belongs to the genuine gamma domain; both pole orientations
  are included before any comparison.
- **No RH/GRH proof.** The arithmetic consumer is the restricted
  original `hpositive` side of
  `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
  Fixed-window positivity for q≥4 does not supply all-window positivity
  for ANY fixed primitive character. The conductor-one zeta source
  retains only its published restricted window; imprimitive characters
  and broader L-families require separate transfers. No zero locations
  or multiplicities are projected to ordinate-only models.

Source-relative provenance: [WeilZetaAlignedFirstPrime075.md](WeilZetaAlignedFirstPrime075.md)
(WZAP075-v1-1; verified finite arithmetic, source proof written),
[WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md) (exact
modulus/phase defect and domains),
[WeilGammaParityTraceBudget.md](../WeilGammaParityTraceBudget.md)
(literal parity correction),
[WeilZetaPoleRankOneReturn.md](../WeilZetaPoleRankOneReturn.md)
(literal signed pole two-moment identity), and
[WeilFirstPrimeLogBarrier.md](WeilFirstPrimeLogBarrier.md)
(previous conductor-uniform short range). Classical local Weil
positivity is due to Yoshida and described by Bombieri, *Remarks on
Weil's quadratic functional in the theory of prime numbers, I*
(Rend. Lincei 11, 2000). Neither novelty nor independent mathematical
review is claimed.

## Reproduction and repository evidence boundary

Run `python3 WeilPrimitiveModulusTransfer075Certificate.py` with
unoptimized Python 3. The script uses only Python standard-library
`fractions.Fraction` and integer powers and verifies the strict scalar
bounds. `python3 -m py_compile` checks syntax. `python3 -O` is rejected
explicitly. This is an executable finite scalar **fixture**, not a Lean
kernel proof or independent proof of WZAP075-v1-1.

The root Lean pin at source inspection is `leanprover/lean4:v4.34.1`;
mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Math source belongs only under grwtsk/math; no artifact is copied into
research repository and no root imports, dependency pins, workflow,
existing statements, proof status or conjecture targets are changed.
Issue grwtsk/math#1801 coordinates source publication; revision and
receipts are recorded there. Noe proof-automation is blocked if the
canonical skill cannot be retrieved, but ordinary GitHub source
publication and standalone arithmetic verification do not invoke Noe.
