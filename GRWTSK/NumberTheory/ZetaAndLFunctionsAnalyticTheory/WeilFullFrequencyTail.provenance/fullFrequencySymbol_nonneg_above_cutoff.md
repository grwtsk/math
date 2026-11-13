# WFFT-v1-04: fullFrequencySymbol_nonneg_above_cutoff

Byline: grwtsk contributors, 2026-11-12. MSC2020: 11M41, 42A38.
Maintained source: ../WeilFullFrequencyTail.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.FullFrequencyTail.fullFrequencySymbol_nonneg_above_cutoff
Source proof candidate Git blob: 06feea3b3342486e93d224344a342e22c5117930

## Literal theorem type

~~~lean
theorem fullFrequencySymbol_nonneg_above_cutoff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (A ξ : ℝ) (hcut : highFrequencyCutoff χ A 0 ≤ |ξ|) :
    0 ≤ fullFrequencySymbol χ A ξ
~~~

## Proof explanation

Specialize WFFT-v1-03 to eta=0. The source symbol remains signed inside the bounded cutoff; no zero-free RH statement is asserted. This corollary gives an unconditional fixed-window high complement threshold.

## Native arithmetic consumer and source return

Explicit high-frequency tail consumer of the unchanged physical multiplier; does not prove the low signed prime/gamma/pole inequality.

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
