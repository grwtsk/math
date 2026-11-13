# BGT-v1-10: primitiveArithmeticValue_ge_sixteenth_thirtysecond

Maintained source: ../WeilBinomialGammaThirtySecond.lean
Fully qualified: GRWTSK.NumberTheory.WeilQuadraticForm.BinomialGammaThirtySecond.primitiveArithmeticValue_ge_sixteenth_thirtysecond
Source candidate Git blob: 4c734c317ea15e3ce8336e9bd60581585aba6fb5
Byline: grwtsk contributors, 2026-11-12. MSC2020: 11M26, 11M41, 33B15.

## Literal theorem statement

~~~lean
theorem primitiveArithmeticValue_ge_sixteenth_thirtysecond
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 32)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (1 / 16 : ℝ) * energy f ≤
      primitiveArithmeticValue χ hprimitive hnonprincipal A f
~~~

## Proof and original source dependency

The exact primitive source equals cχ E+Γ. Original q>=1 and parity a=0∨a=1. If even, c>=-11/2 and Γ>=45/8 E giving E/8. If odd, c>=-5/2 and Γ>=41/16 E giving E/16. The conclusion E/16 applies to every complex compact C1 test with true source support.

## Arithmetic consumer

Direct unconditional original arithmetic inequality at every primitive nonprincipal conductor and window A<=1/32; no claim for larger A or conductor-one without its separate pole budget.
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
