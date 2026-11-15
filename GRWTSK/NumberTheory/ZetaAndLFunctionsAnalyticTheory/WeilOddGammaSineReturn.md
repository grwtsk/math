# The original physical gamma integral and full signed sine multiplier

**2026-11-14 · grwtsk contributors · AI-assisted.**
Individual source-local provenance and analytic comparison for
[WeilOddGammaSineReturn.lean](WeilOddGammaSineReturn.lean). The canonical
mathematics belongs to grwtsk/math; this record does not transfer mathematical
authority to HS or the Noe harness.

## Exact source, scope, and prior papers

The direct consumer is
GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain.PrimitiveStageLower:
first the primitive nonprincipal parity-one Dirichlet character of conductor 3,
stage j=0, and **every original Admissible χ 1 f**. The unchanged definition of
Admissible requires 0<T, f globally real C², odd, compact, zero outside [-T,T],
the genuine real-to-complex whole-line L² lift, and integrability of the entire
physical gamma correction. No band limit, hidden RH hypothesis, source sign
condition, or spectral truncation has been inserted.

The primary source comparison is Connes, Consani and Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1, equations (3.19)–(3.20):
actual whole-line translation energy, archimedean parity kernel, and all signed
prime powers. Background for the sign and negative-direction problem is
E. Bombieri, *Remarks on Weil's quadratic functional in the theory of prime
numbers, I*, Rend. Mat. Acc. Lincei 11 (2000), 183–233, §§2–3 and
Theorems 10–11. A related localized-form context is M. Suzuki,
*Weil's Quadratic Form via the Screw Function*, arXiv:2606.09096v3, §1.
These references establish context, not novelty or independent review of this
particular implementation.

Use the **actual** source declarations:
SourcePrimeCorrelation.energy / correlation, OddRootProjection.parityKernel /
gammaParity / gammaConstant, gammaCorrectionDensity,
DirichletStageChain.liftReal / Admissible, LowSchur.activePrimePowers,
pairedPrimeWeight, and primitiveArithmeticValue. The original finite Dirichlet
real-test pairing retains the conductor, character phases, parity and all
prime powers. The conductor-one zeta pole form is separate and is **not**
substituted by this nonprincipal primitive result.

The exact raw source identity, with g=liftReal f, E=energy g,
C(r)=correlation g r and a=gammaParity χ, is

    Qχ,T(g) = gammaConstant(q,a)*E
            + ∫_(r>0) K_a(r) A_g(r)dr
            - 2 Σ_(n∈activePrimePowers T) wχ(n) Re C(log n),

where A_g(r)=energy(t↦g(t+r)-g(t)) and
K_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)) for r>0.

## Analytic proof and exact declaration correspondence

Let H(ξ)=∫_0^T f(u)sin(ξu)du. The minus-sign angular Fourier transform
gives ĝ(ξ)=-2iH(ξ), whereas the pinned Mathlib Fourier inverse convention
uses exp(-2πiut). The change ξ=2πu, with its Jacobian, yields

    E = (4/π) ∫_(ξ>0) H(ξ)^2dξ,
    Re C(r) = (4/π) ∫_(ξ>0) cos(rξ)H(ξ)^2dξ,
    A_g(r) = (8/π) ∫_(ξ>0) (1-cos(rξ))H(ξ)^2dξ.

These precede the gamma integral and retain the antilinear-first correlation.
They are carried by WeilOddContinuousPlancherel.lean and the repaired
WeilOddShiftEnergySine.lean; the latter explicitly makes the full L¹
sine-square integrability argument available for reuse.

The complete physical gamma interchange is, for every **actual Admissible**,

    ∫_(r>0) gammaCorrectionDensity(a,g)(r) dr
      = (8/π) ∫_(ξ>0) H(ξ)^2
                   [∫_(r>0) K_a(r)(1-cos(rξ))dr] dξ.

Source declaration:
OddShiftEnergySine.gammaCorrectionIntegral_eq_sine_kernel.
In gammaSine_kernel_facts the product integrand

    F(r,ξ)=K_a(r)*(1-cos(rξ))*H(ξ)^2

is measurable and nonnegative on (0,∞)². Its ξ-section is integrable for
each positive r because 0≤1-cos≤2 and H²∈L¹. Its norm-integral is
(π/8)*gammaCorrectionDensity(a,g)(r). The **existing** Admissible
archimedean-integrability hypothesis therefore proves integrability of the
complete product by pinned mathlib integrable_prod_iff. Only then does
integral_integral_swap exchange the real iterated integrals. Nothing splits
the separately divergent ∫K_a or ∫K_a cos near r=0, and the infinite
positive tail is not dropped.

OddMultiplierBounds.periodicMultiplier_eq_kernel_integral identifies the
same positive cosine-difference integral with the *complete* parity series

    periodicMultiplier(a,ξ)
       = 2∫_(r>0)K_a(r)(1-cos(rξ))dr
       = Σ_(k≥0) 2ξ²/[b_k(b_k²+ξ²)],
    b_k=a+1/2+2k.

This follows from K_a(r)=Σ_(k≥0)e^(-b_k r) for r>0, nonnegative
monotone interchange, and the exact Laplace integral
∫_0^∞e^(-br)(1-cos(rξ))dr=ξ²/[b(b²+ξ²)] for b>0. The series is
absolutely convergent for each real ξ (terms O(k^-3)); ξ=0 gives zero.
The source declarations are gammaCorrectionIntegral_eq_periodicMultiplier
and its gammaSine_multiplier_facts supplier.

Finally, OddShiftEnergySine.originalPrimitiveQ_eq_sineMultiplier returns
to the **unchanged** arithmetic primitive value:

    Qχ,T(g)+E(g) = (4/π)∫_(ξ>0) mχ,T(ξ)H(ξ)^2dξ,

    mχ,T(ξ) = 1 + gammaConstant(q,a) + periodicMultiplier(a,ξ)
              -2Σ_(n∈activePrimePowers T)
                pairedPrimeWeight(χ,n) cos(ξ log n).

The source sum is finite at each T but contains *all* active prime powers.
For the primitive odd character modulo 3 at T=1, it includes integers
2,3,4,5,6,7 with native weights

    (-log2/sqrt2, 0, +log2/2, -log5/sqrt5, 0, +log7/sqrt7).

In particular Λ(4)=log2, while its translation lag is log4.
The negative pointwise sample m(13)<0 is a known hostile result for
**pointwise multiplier positivity**, not a compact-supported negative
Weil witness. This source equality is an exact identity, **not** a
proof of the original all-test lower sign.

## Independent in-domain parity/normalization falsification fixture

Use the genuine, real, compact, C², odd source test
f(t)=t(1-t²)^3 on |t|≤1, zero elsewhere. It satisfies the original
support/L²/gamma integrability conditions: the function and its first
two derivatives vanish at ±1, the physical shift energy is O(r²) near
r=0, and the full gamma tail is exponentially integrable. This is a
finite **hostile check**, not a universal certificate or independent
mathematical review.

Exact symbolic integration gives

    E = 2048/45045,

    C(r) = (r-2)^7 / 360360 *
           (7r^8+98r^7+574r^6+1764r^5+2808r^4
              +1680r^3-32r²-448r-128),  0≤r≤2,

and C(r)=0 for r≥2. Thus C(0)=E, C(2)=0 exactly. Put
A(r)=2(E-C(r)) on [0,2] and A(r)=2E for r≥2. The true
parity-one gamma tail beyond r=2 is

    ∫_2^∞ K_1(r)dr
       = atanh(exp(-1)) - atan(exp(-1)).

Ordinary exploratory quadrature (Python 3.13.5, SymPy 1.14.0,
SciPy 1.17.0, NumPy 2.3.5; no rigorous interval/roundoff certificate)
then gives gamma head ≈0.06660838883386797 and gamma tail
≈0.003042105853900249. With the original conductor-three parity-one
constant log(3/π)+ψ(3/4) and the four nonzero signed atoms,

    Qphysical ≈ 0.00003355645372365296,
    Qphysical + E ≈ 0.04549920191936912.

An independently evaluated angular integral using the complete real
digamma multiplier

    m(ξ)=1+log(3/π)+Re ψ(3/4+iξ/2)
          -2Σ_n w_n cos(ξ log n)

over ξ∈[0,1000] gives ≈0.045499201918622764, a difference of
approximately -7.46·10^-13. The omitted high-frequency tail and
numerical errors have NOT been certified. This check challenges wrong
2/π or 4/π translation factors, wrong n4 weight, n5 sign, or missing
gamma tail; it cannot establish any all-test sign or a universal source
identity by numerical extrapolation.

## Exact verification provenance and surviving frontier

The concurrent formalization publication was
math main 66dbc46049761f72d6518a7e7d1560030bf9f9a4, tree
0f845df1e05a34b7ab370828f8f9e7b1cbaf1b82,
module blob 9648a35fde01c9dbd1ccf3610df8af8eab582656,
and repaired shift-energy blob 5ee280db94d9253b3d73d1b164474fbe76aa4029.
The source receipt is grwtsk/math#1814, comment 6888223264.
It reports targeted Lake build and ordinary kernel replay **PASS**
under leanprover/lean4:v4.34.1 and mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Its seven audited declarations report only propext, Classical.choice
and Quot.sound. These are **reported earlier source-bound receipts**,
not new executions by this provenance author. The full fresh imported
closure was still **PENDING** in that receipt. Independent analytic
review and the repository-wide build remain NOT_RUN/UNASSESSED. The
separately attempted old full signed-ledger build **FAILED** in the
unchanged WeilExactGammaTail and WeilPhysicalThreeSliceCorrelation
dependencies; that failure is not erased by the newly verified leaf.

This record's own source-only provenance publication and exact readback
do not upgrade any proof status. The numerical test above is
EXPLORATORY_ONLY, not CERTIFIED. No new research axiom, sorry, admit,
or weakened arithmetic target is introduced.

First remaining proof-bearing sign supplier: identify the true compact
odd L²(0,1) nonnegative deficit operator B from the signed source
multiplier, prove its Hilbert–Schmidt/sinc double-integral formula on
the complete continuum, and independently prove universal exact
function/tail enclosures for the published rational checker before
claiming a radius-one PrimitiveStageLower. A separate written signed
physical exterior argument gives the candidate bound
Q_(q3,T1)≥-197E/200 but lacks independent review and full Lean checking.
The first distinct radius-four signed stage j=3 has a separate
458 nonzero unramified prime-power
inventory; the authoritative current source records 458, and the
complete signed Schur remainder is OPEN. Do not extrapolate from T=1.
The fixed-margin negative-direction topology still lacks a
source-preserving uniformly separated arithmetic construction that
would force empty compact negative strata.

Neither this identity nor the original conditional
DirichletStageChain.dirichletGRH_of_source_chains proves its required
hRH. RH for zeta needs both pole orientations and the full true
explicit-formula/zero-test correspondence; primitive nonprincipal GRH
needs all characters/windows and PrimitiveNegativeWitness, preserving
the dual-character zero divisor and multiplicities.
**RH and primitive Dirichlet GRH remain UNPROVED.**
