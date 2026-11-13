# IWS-v1-03: gammaConstant_global_floor

Byline: grwtsk contributors. Edition 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Canonical source: ../WeilImprovedShortWindow.lean
Full declaration prefix:
GRWTSK.NumberTheory.WeilQuadraticForm.ImprovedShortWindow.gammaConstant_global_floor
Git source blob SHA: 57315901e8e7a85d0239625baa7873110adac632

## Literal source declaration

~~~lean
theorem gammaConstant_global_floor
    (q a : ℕ) (hq : 0 < q) (ha : a ≤ 1) :
    -(11 / 2 : ℝ) ≤ gammaConstant q a
~~~

## Exact mathematical argument

Reuse the already sourced GammaData.gammaConstant_lower_sharp(q,hq,a,ha): log(q)-11/2<=gammaConstant(q,a). Since q is a positive natural and log q>=0, derive -11/2<=gammaConstant(q,a). No fresh digamma evaluation or assumed sign.

## Arithmetic source consumer

Combined with the literal positive shift-energy gamma lower bound to give primitive nonprincipal Q>=E/8, with conductor one handled separately.

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
