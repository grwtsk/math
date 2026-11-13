# FGPF-v1-05: odd_tailMass_ge_twenty_one_eighths

Attribution: grwtsk contributors. Edition 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Maintained source: ../WeilFiniteGammaPrefixFloor.lean
Fully qualified:
GRWTSK.NumberTheory.WeilQuadraticForm.FiniteGammaPrefixFloor.odd_tailMass_ge_twenty_one_eighths
Source blob SHA: e928db9026e1209bb27a51b2f0b8d10aeddb15c4

## Literal Lean statement

~~~lean
theorem odd_tailMass_ge_twenty_one_eighths
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50) :
    (21 / 8 : ℝ) ≤ tailMass 1 (2 * A)
~~~

## Mathematical proof and hypotheses

The same exact n=12 rational calculation with ODD rates 4j+3 gives 48683047863224/18498959203725, exceeding 21/8 by 986239627567/147991673629800. Radius antitonicity and FGPF-v1-02 give the complete true odd tail bound.

## Arithmetic consumer and return to the canonical source

Odd-parity original gamma tail floor with all exact physical parity rates.

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
