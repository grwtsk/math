# IWS-v1-02: parityKernel_ge_inverse_minus_three_quarters

Byline: grwtsk contributors. Edition 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Canonical source: ../WeilImprovedShortWindow.lean
Full declaration prefix:
GRWTSK.NumberTheory.WeilQuadraticForm.ImprovedShortWindow.parityKernel_ge_inverse_minus_three_quarters
Git source blob SHA: 57315901e8e7a85d0239625baa7873110adac632

## Literal source declaration

~~~lean
theorem parityKernel_ge_inverse_minus_three_quarters
    (a : ℕ) (ha : a ≤ 1) {r : ℝ}
    (hr : 0 < r) (hrupper : r ≤ 1 / 4) :
    1 / (2 * r) - (3 / 4 : ℝ) ≤ parityKernel a r
~~~

## Exact mathematical argument

Rearrange the previous exact physical kernel inequality by the identity (1-3r/2)/(2r)=1/(2r)-3/4, valid for r>0. The proof charges the real denominator explicitly.

## Arithmetic source consumer

The logarithm-plus-linear integral of the literal K_a over the actual physical shifts 2A<=r<=1/4.

Original source dependencies: OddRootProjection.parityKernel,
GammaData.gammaConstant_lower_sharp,
ShortWindow.activePrimePowers_empty_of_exp_le_two and
twistedPrime_zero_of_exp_le_two, SourcePrimeCorrelation.energy,
correlation, primitiveArithmeticValue, gammaCorrectionDensity;
ExactGammaTail.shiftEnergy_eq_two_of_cutoff/gammaTail_integrable_and_eq;
GammaHeadIntegrability.gammaCorrection_integrableOn_of_contDiff.
The separate conductor-one formula uses the literal signed
W(0)+W(1) pole products via WeilZetaPoleRankOneReturn.
All primitive conductors, both parities, entire test phases,
and the exact active prime-power cutoff are preserved.

The complete all-character claim for 0<A<=1/3500 with
Q_chi,A(f)>=(1/16)E(f) is a WRITTEN analytical result in
WeilImprovedShortWindow.md; this declaration is only its
identified source-specific primitive component. Its
integration and zeta pole return are not Lean declarations
in this file and must NOT be inferred from proof status.

Prior art/source comparison: canonical
WeilUniformShortWindowCoercivity.lean covers 0<A<=2^(-22)
with a stronger 3/2 floor, at a much shorter support window.
The new lower kernel barrier is an elementary exp/log
source comparison. Bombieri (2000), Remarks on Weil's quadratic
functional I, Rend. Lincei 11; Connes--Consani--Moscovici,
Zeta Spectral Triples (arXiv:2511.22755v1) equations
(3.19)--(3.20). Novelty UNASSESSED.

Source inspection at grwtsk/math/main
89670e58d1b0eb4414e24dcd4f72f32aced2dfd8;
Lean leanprover/lean4:v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
LEAN SOURCE_PROOF_CANDIDATE: elaboration NOT_RUN,
complete dependency build NOT_RUN, kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, numerical certification NOT_RUN,
independent analytic review NOT_RUN. No sorry/admit/new research
axiom, no all-window Weil sign and no RH/GRH claim.
