# Original odd Weil shift energy: analytic proof and Lean source correspondence

**2026-11-14 · grwtsk contributors · AI-assisted.** This is the individual
source-local proof/provenance record for
[WeilOddShiftEnergySine.lean](WeilOddShiftEnergySine.lean).
The new Lean file is a **SOURCE_PROOF_CANDIDATE**, not an accepted kernel proof.
Lean elaboration **NOT_RUN**, fresh kernel replay **NOT_RUN**, transitive axiom
audit **NOT_RUN**, independent mathematical review **UNASSESSED**.

## Exact arithmetic source and consumer

The original source is
\`GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue\`,
\`SourcePrimeCorrelation.energy\` and its conjugated-first \`correlation\`,
\`gammaCorrectionDensity\`, \`parityKernel\`, and
\`DirichletStageChain.Admissible\`. Their definitions, the original
\`DirichletCharacter ℂ q\`, every signed prime power, and all conductor,
gamma and parity data are unchanged.

Direct consumer: \`DirichletStageChain.PrimitiveStageLower\` for q=3, j=0,
followed by the original complete physical gamma interchange and signed
prime source return. The q3 stage still demands **every** original odd C²
admissible test supported in [-1,1]; no band-limited surrogate, pointwise
multiplier sign or finite-frequency test has replaced it.

## Mathematical proof and declaration map

For real odd continuous f supported on [-T,T], let
g(t)=(f(t):ℂ), E=∫|g|² and C(r)=∫conj(g(t))g(t+r)dt.
Assume the *genuine* MemLp g 2 volume. Expanding the original
squared norm and using Lebesgue translation invariance gives

\`\`\`text
A_g(r) := ∫_ℝ |g(t+r)-g(t)|² dt
        = 2 E - 2 Re C(r).
\`\`\`

In the new source, this is
\`OddShiftEnergySine.physical_shiftEnergy_eq_two_energy_sub_two_re_correlation\`.
It reuses the genuine integrability of the original L² correlation.
This derivation was already present as
\`GammaThreeBandFloor.shiftEnergy_eq_two_energy_sub_two_re_correlation\`,
but the new proof does not import its **previously failing** physical
three-slice/gamma-tail dependency closure.

Let \`H(ξ)=∫₀ᵀ f(u)sin(ξu)du\`. Odd reflection in the **angular** transform
gives \`ĝ(ξ)=-2iH(ξ)\`. The pre-existing
\`OddContinuousSine.energy_eq_sine_integral\` and
\`correlation_re_eq_sine_integral\` use the actual Fourier inverse with
Mathlib's \`2π\` change of variable and give

\`\`\`text
E = (4/π)∫₀∞H(ξ)²dξ,
Re C(r) = (4/π)∫₀∞cos(rξ)H(ξ)²dξ.
\`\`\`

The new private \`halfSineMoment_sq_integrable\` supplier proves that
H² belongs to genuine L¹: L² Plancherel supplies the inverse-Fourier
square integrability and the pointwise odd identity transports the
density with its \`2π\` Jacobian. Since |cos|≤1, the cosine-weighted
term is likewise integrable. Thus **ordinary integral linearity applies**,
giving the exact original physical formula

\`\`\`text
A_g(r) = (8/π)∫₀∞(1-cos(rξ))H(ξ)²dξ.
\`\`\`

Declarations:
- \`OddShiftEnergySine.shiftEnergy_eq_halfSine_integral\` establishes this
  on the real odd supported L² class.
- \`OddShiftEnergySine.shiftEnergy_eq_halfSine_of_admissible\` applies
  it without weakening the true \`Admissible χ T f\` hypotheses.
- \`OddShiftEnergySine.gammaCorrectionDensity_eq_halfSine_of_admissible\`
  rewrites **the actual source** \`gammaCorrectionDensity\` pointwise as
  \`parityKernel(a,r)*(8/π)*∫(1-cos(rξ))H(ξ)²dξ\`.

These three declarations are candidate proof terms in published source,
not elaboration/kernel receipts. The first integral's finite values
and the second cosine moment are handled before subtracting, rather than
appealing to the totalized value of a possibly nonintegrable integral.

## First unproved source return and falsifiers

The next substantive theorem must interchange the nonnegative
**combined** integrand on positive physical shifts and nonnegative
angular frequencies:

\`\`\`text
Γ_a(g) = ∫₀∞K_a(r)A_g(r)dr
       = (8/π)∫₀∞H(ξ)² [∫₀∞K_a(r)(1-cos(rξ))dr]dξ.
\`\`\`

Here \`K_a(r)=exp(-(a+1/2)r)/(1-exp(-2r))\` on r>0.
Tonelli is appropriate because K_a, 1-cos, H² are nonnegative.
Original \`Admissible.harch\` supplies finiteness.
Do **not** split the separately divergent terms
\`∫K_a\` and \`∫K_a cos\`.
For the full infinite parity kernel, the exponential-series/Laplace
proof must establish
\`2∫K_a(r)(1-cos(rξ))dr = Σ_(j≥0)2ξ²/[b_j(b_j²+ξ²)]\`,
\`b_j=a+1/2+2j\`, with all parameters and interchanges justified.
Thereafter return to all genuine
\`activePrimePowers T\` and \`pairedPrimeWeight χ n\`
via \`OddContinuousSine.primitiveArithmeticValue_eq_sine_terms\`.
Neither the universal Hilbert–Schmidt deficit certificate nor even
the fixed q3 \`PrimitiveStageLower\` is proved by the present source.

Hostile checks: changing 8/π to 4/π; treating Mathlib's Fourier
character as angular rather than \`2π\`; losing complex conjugation in
C; using an unverified L¹ density; dropping the gamma infinite tail;
using a fake parity-zero kernel; omitting \`vonMangoldt(4)=log 2\`;
erasing the negative n=2/n=5 or positive n=4/n=7 signed responses;
or treating fixed T=1 as all stages. Earlier independent native
signed-ledger build failures remain **FAIL**, not replaced by this
uncompiled independent source candidate.

## Relevant prior art and exact source comparison

- Connes, Consani and Moscovici, *Zeta Spectral Triples*,
  arXiv:2511.22755v1 (2025), §3, equations (3.19)–(3.20):
  source physical Weil quadratic form with archimedean and prime
  contributions; the present statement specializes its actual
  logarithmic real-test translation and Fourier normalization.
- Weil's positivity criterion, as discussed by Enrico Bombieri,
  *Remarks on Weil's quadratic functional in the theory of prime
  numbers, I*, *Rend. Mat. Acc. Lincei* 11 (2000), 183–233,
  §§2–3: this is background for the genuine positivity consumer,
  **not** evidence of the missing lower sign.
- The actual repository declarations
  \`WeilOddContinuousSine.angularFourier_norm_sq_eq\`,
  \`WeilOddContinuousPlancherel.energy_eq_sine_integral\`
  and \`correlation_re_eq_sine_integral\`; these existing declarations
  and their previously reported targeted checks are **not** reverified
  by publishing this new module.
- [WeilPrimitiveNegativePersistence.md](WeilPrimitiveNegativePersistence.md)
  independently constructs the proposed fixed-margin topological
  negative strata. Its compactness and window-persistence discussion
  does not establish the missing arithmetic exclusion theorem.

Other outstanding root requirements: conductor-one **pole-inclusive**
zeta RH with both pole orientations, \`PrimitiveNegativeWitness\`,
every primitive character/conductor/window, dual-character phase
and multiplicity preservation, completed explicit formula and test
density, and all-scale certified source return. RH and primitive
Dirichlet GRH are **UNPROVED**.

Verification disposition: GitHub source publication and readback only;
no local Lean/Lake toolchain or verified attached math worktree was
available; independent review and any claimed complete-source kernel
acceptance are absent.