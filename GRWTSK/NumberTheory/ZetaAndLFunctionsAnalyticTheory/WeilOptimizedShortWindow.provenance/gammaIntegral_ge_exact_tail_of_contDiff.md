# OSW-v1-02: gammaIntegral_ge_exact_tail_of_contDiff

Source author: grwtsk contributors. Edition 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Source: ../WeilOptimizedShortWindow.lean
Fully qualified theorem:
GRWTSK.NumberTheory.WeilQuadraticForm.OptimizedShortWindow.gammaIntegral_ge_exact_tail_of_contDiff
Source candidate Git blob: bc400a56b75a8b7c10c7082580033d0cf694a9f2

## Literal Lean statement

~~~lean
theorem gammaIntegral_ge_exact_tail_of_contDiff (a : ℕ)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) {A : ℝ}
    (hA : 0 < A)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    tailMass a (2 * A) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r
~~~

## Complete proof description

An original compact supported C1 test has a genuine Lipschitz constant and MemLp 2. Apply GammaHeadIntegrability.gammaCorrection_head_budget to get the original gamma density's head integral over (0,2A] nonnegative. Use gammaCorrection_eq_head_add_tail_of_contDiff at R=2A to identify the complete integral exactly with the head plus tailMass(a,2A)*E. No assumed gamma-integrability/positivity certificates.

## Native arithmetic consumer and source return

Returns a genuine lower bound for the ORIGINAL physical gamma integral, for every A>0 and natural a. Separate written analytic integration of the finite interval gives the stronger short-window floor.

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
