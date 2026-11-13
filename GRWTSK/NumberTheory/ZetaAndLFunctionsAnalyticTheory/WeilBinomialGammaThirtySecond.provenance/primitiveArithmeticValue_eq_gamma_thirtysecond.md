# BGT-v1-09: primitiveArithmeticValue_eq_gamma_thirtysecond

Maintained source: ../WeilBinomialGammaThirtySecond.lean
Fully qualified: GRWTSK.NumberTheory.WeilQuadraticForm.BinomialGammaThirtySecond.primitiveArithmeticValue_eq_gamma_thirtysecond
Source candidate Git blob: 4c734c317ea15e3ce8336e9bd60581585aba6fb5
Byline: grwtsk contributors, 2026-11-12. MSC2020: 11M26, 11M41, 33B15.

## Literal theorem statement

~~~lean
theorem primitiveArithmeticValue_eq_gamma_thirtysecond
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (A : ℝ) (hsmall : A ≤ 1 / 32) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      gammaConstant q (gammaParity χ) * energy f +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity χ) f r)
~~~

## Proof and original source dependency

Unfold the original primitiveArithmeticValue and its full twistedPrime. Since the literal activePrimePowers inventory is empty, twistedPrime is identically zero for every character phase. The remaining gammaConstant*E plus full genuine gamma integral is unchanged.

## Arithmetic consumer

Same-source identity for primitive NONPRINCIPAL χ only; conductor-one signed two-pole zeta is separate.
This uses the native ExactGammaTail.tailPrefix/tailMass with its
positive infinite remainder, genuine GammaHeadIntegrability and
OptimizedShortWindow gamma lower theorem, original LowSchur
activePrimePowers and primitiveArithmeticValue, and native conductor
gammaConstant. The conductor-one zeta result in the written companion
retains BOTH signed moments Mplus*conj(Mminus)+Mminus*conj(Mplus).
No first-activated prime powers are hidden and no off-line zeros
are projected onto critical-line ordinates.

## Prior art and evidence

Classical Bernoulli exponential lower bound; compare the canonical
WeilShortWindowCubicRefinement A<=1/32 with lower 1/21, and
WeilFiniteGammaPrefixFloor A<=1/50. Primary arithmetic source:
Bombieri (2000), Remarks on Weil's quadratic functional I;
Connes--Consani--Moscovici (2025), Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20).
No novelty or independent review asserted.

Inspected grwtsk/math/main 185e410ed1696ab43bd3ba7cc228a089f7b7f1ae;
Lean leanprover/lean4:v4.34.1, mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE: elaboration NOT_RUN, full dependency build
NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN,
certified whole-form evaluation NOT_RUN, independent review NOT_RUN.
Novelty UNASSESSED. No research axiom, sorry/admit, RH or GRH claim.
