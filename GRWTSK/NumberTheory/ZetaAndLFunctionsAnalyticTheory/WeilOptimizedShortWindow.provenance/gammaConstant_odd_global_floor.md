# OSW-v1-03: gammaConstant_odd_global_floor

Source author: grwtsk contributors. Edition 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Source: ../WeilOptimizedShortWindow.lean
Fully qualified theorem:
GRWTSK.NumberTheory.WeilQuadraticForm.OptimizedShortWindow.gammaConstant_odd_global_floor
Source candidate Git blob: bc400a56b75a8b7c10c7082580033d0cf694a9f2

## Literal Lean statement

~~~lean
theorem gammaConstant_odd_global_floor (q : ℕ) (hq : 0 < q) :
    -(5 / 2 : ℝ) ≤ gammaConstant q 1
~~~

## Complete proof description

The existing gammaConstant_global_floor(q,0) gives >=-11/2. The native exact parity identity gammaConstant(q,1)=gammaConstant(q,0)+pi, together with pi>3, gives >=-5/2. The exact primitive conductor q remains unchanged.

## Native arithmetic consumer and source return

Combines with the odd physical gamma integral floor >=4E to prove the written odd primitive arithmetic bound >=3E/2.

The original source uses OddRootProjection.parityKernel and
gammaCorrectionDensity, GammaData.gammaConstant and the exact parity
identity, GammaHeadIntegrability.gammaCorrection_head_budget,
ExactGammaTail.gammaCorrection_eq_head_add_tail_of_contDiff,
ShortWindow.activePrimePowers_empty_of_exp_le_two and the
unchanged primitiveArithmeticValue. The complete WRITTEN
short-window positivity proof is in WeilOptimizedShortWindow.md.
For conductor-one zeta BOTH original signed pole orientations are
retained via ZetaPoleRankOneReturn.sourcePole; q=1 is not a
nonprincipal primitive case. Nothing is proved about a window
outside 0<A<=1/800 or about the original all-scale sign.

Prior art: the classical finite-interval gamma-kernel/logarithm method,
pinned Mathlib Real.exp_one_lt_d9, Real.exp_nat_mul,
and the prior canonical WeilImprovedShortWindow (A<=1/3500).
Paper comparison: Bombieri, Remarks on Weil's quadratic functional,
I (2000), Rend. Lincei 11; Connes--Consani--Moscovici,
Zeta Spectral Triples (arXiv:2511.22755v1), (3.19)-(3.20).
No novelty claim or independent analytic review.

Inspected math/main 6df8ecc0e16f123c476c1418fb611e73ff13e86c.
Lean leanprover/lean4:v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE. Elaboration NOT_RUN,
complete dependency build NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, certified computation NOT_RUN,
independent mathematical review NOT_RUN. Novelty UNASSESSED.
No research axiom, sorry/admit, RH or primitive Dirichlet GRH result.
