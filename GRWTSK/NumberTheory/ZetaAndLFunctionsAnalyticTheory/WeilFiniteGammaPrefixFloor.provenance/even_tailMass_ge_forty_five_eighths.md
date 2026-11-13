# FGPF-v1-04: even_tailMass_ge_forty_five_eighths

Attribution: grwtsk contributors. Edition 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Maintained source: ../WeilFiniteGammaPrefixFloor.lean
Fully qualified:
GRWTSK.NumberTheory.WeilQuadraticForm.FiniteGammaPrefixFloor.even_tailMass_ge_forty_five_eighths
Source blob SHA: e928db9026e1209bb27a51b2f0b8d10aeddb15c4

## Literal Lean statement

~~~lean
theorem even_tailMass_ge_forty_five_eighths
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50) :
    (45 / 8 : ℝ) ≤ tailMass 0 (2 * A)
~~~

## Mathematical proof and hypotheses

At n=12, A=1/50, exact rational evaluation of the EVEN affine prefix gives 64362711368/11229433215, exceeding 45/8 by 9577196269/89835465720. The affine prefix decreases as A increases, so for A<=1/50 it is at least this value. Apply FGPF-v1-02 with a=0.

## Arithmetic consumer and return to the canonical source

Even-parity original gamma tail lower floor. The source contains a private exact rational norm_num proof, not a floating-point inequality.

Exact source dependencies: ExactGammaTail.tailMass_eq_prefix_add_remainder,
tailMass_finite_enclosure, tailMass_pos; OptimizedShortWindow.
gammaIntegral_ge_exact_tail_of_contDiff and gammaConstant_odd_global_floor;
GammaData.gammaConstant_lower_sharp; ShortWindow.activePrimePowers_empty_of_exp_le_two;
SourcePrimeCorrelation.energy, correlation and gammaCorrectionDensity;
CharacterWindow.twistedPrime and WeilConductorFrontier.primitiveArithmeticValue.
The complete signed zeta pole orientations W(0)+W(1) remain present in
the distinct conductor-one WRITTEN source theorem in the companion.
All prime powers and character phases remain in the unchanged definitions.

Prior art: the exact gamma-tail recurrence is an existing GRWTSK source
declaration, not a new infinite series or a new research axiom.
The earlier WeilShortWindowCubicRefinement.lean already has a WRITTEN
A<=1/32, floor 1/21 result; this source improves the floor on the
narrower overlapping A<=1/50 domain and identifies a composable
gamma-prefix-to-original-source return. No novelty asserted.
Primary arithmetic context: Bombieri, Remarks on Weil's quadratic
functional (2000), Rend. Lincei 11, and Connes--Consani--Moscovici,
Zeta Spectral Triples (arXiv:2511.22755v1) (3.19)--(3.20).

Inspected canonical math/main 52fbea2005046447a2a164a3becd6a75ae22df41.
Lean leanprover/lean4:v4.34.1; Mathlib pin
d13f23b723b8a846827a245b89c10fc7d3f11612.
Evidence: LEAN SOURCE_PROOF_CANDIDATE. Elaboration NOT_RUN;
complete dependency build NOT_RUN; fresh kernel replay NOT_RUN;
transitive axiom audit NOT_RUN; certified numerical Weil evaluation
NOT_RUN; independent analytical review NOT_RUN; novelty UNASSESSED.
No sorry/admit, new research axiom, all-window sign, RH or primitive GRH.
