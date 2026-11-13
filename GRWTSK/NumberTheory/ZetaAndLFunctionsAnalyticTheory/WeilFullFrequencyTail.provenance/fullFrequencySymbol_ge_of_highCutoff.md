# WFFT-v1-03: fullFrequencySymbol_ge_of_highCutoff

Byline: grwtsk contributors, 2026-11-12. MSC2020: 11M41, 42A38.
Maintained source: ../WeilFullFrequencyTail.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.FullFrequencyTail.fullFrequencySymbol_ge_of_highCutoff
Source proof candidate Git blob: 06feea3b3342486e93d224344a342e22c5117930

## Literal theorem type

~~~lean
theorem fullFrequencySymbol_ge_of_highCutoff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (A ξ η : ℝ)
    (hcut : highFrequencyCutoff χ A η ≤ |ξ|) :
    η ≤ fullFrequencySymbol χ A ξ
~~~

## Proof explanation

Let b=a+1/2>0, h=M+|c|+eta. If |xi|>=b exp(h), then exp(h)<=|xi|/b and h<=log(|xi|/b)<=1/2 log(1+xi^2/b^2). Apply WFFT-v1-02; c+|c|>=0 yields eta<=m_chi,A(xi). No RH, exceptional-zero-free strip, or low-band positivity premise enters. It works for arbitrary complex character phases and both xi signs.

## Native arithmetic consumer and source return

Direct source-bound high-frequency positivity on the nonprincipal primitive Fourier form. For zeta, the native physical two-pole source needs the separate leakage/Young bound proved in companion §4.

The native sources are LowSchur.activePrimePowers and primeWeight,
CharacterWindow.twistedPrime, SourcePrimeCorrelation.correlation,
OddRootProjection.gammaParity and gammaConstant,
OddMultiplierBounds.periodicMultiplier and
log_lower_le_periodicMultiplier, and
CharacterSensitiveFrobeniusFloor.characterPrimeMass.
For every primitive nonprincipal character, the real Fourier
symbol is the exact original WeilGammaPhysicalReturn physical
arithmetic expression, under its genuine integrability premises.
Conductor-one zeta retains M_plus*conj(M_minus)+M_minus*conj(M_plus)
with the exact negative sign possible; it cannot be instanced via
a nonprincipal primitive theorem. The Fourier/Plancherel transfer
and pole tail estimate are written in WeilFullFrequencyTail.md,
not proved by this scalar Lean declaration.

## Prior-art comparison and evidence

The log lower bound is a local prior declaration at
grwtsk/math main 42210191a69cdd35046ff3f452fe9df8f0185610,
mathlib pin d13f23b723b8a846827a245b89c10fc7d3f11612.
The arithmetic Fourier convention is Connes--Consani--Moscovici,
Zeta Spectral Triples (2025), (3.19)--(3.20).
Bombieri (2000), Remarks on Weil's quadratic functional, I,
Rend. Lincei 11, §§2--3, treats the Fourier/variational form.
This is an adaptation/local consequence, not a novelty claim.

Lean leanprover/lean4:v4.34.1.
SOURCE_PROOF_CANDIDATE: elaboration NOT_RUN, full dependency
build NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit
NOT_RUN, independent review NOT_RUN, numerical certification NOT_RUN.
Novelty UNASSESSED. No new research axiom, sorry/admit,
universal all-test sign, RH or primitive Dirichlet GRH claim.
