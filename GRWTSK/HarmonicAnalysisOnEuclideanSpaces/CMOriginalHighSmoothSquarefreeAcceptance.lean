/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE_ACCEPTANCE_TARGET / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothEntireCorrection

/-!
# Source-bound acceptance: original Möbius squarefree high support is FINITE

This is inert check source, NOT an execution receipt or permission to run
a native host. Required replay: pinned Lean 4.34.1, Mathlib revision
d13f23b723b8a846827a245b89c10fc7d3f11612 and full imports.

The original fixed B is the already defined PrimeBand.
No arbitrary coefficient model, changed high predicate or growing bank.
The low-sector cancellation and canonical RH remain unsupplied.
-/

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothSquarefreeCutoff
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothEntireCorrection
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPositiveHalfplane

#check bankPrimeProduct
#check squarefree_bankSmooth_dvd_primeProduct
#check original_moebius_zero_of_nonsquarefree
#check original_high_divisor_le_primeProduct
#check high_source_nonzero_implies_finite_real_bound
#check highGlobal_nonzero_mem_finite_cutoff
#check original_high_mu_zero_above_cutoff
#check originalHighShellWave_zero_after_finite_cutoff
#check originalHighWave_stabilizes
#check highGlobal_moebius_zero_outside_finite_support
#check highTwistedDirichletSeries_eq_finite
#check highDirichletSeries_eq_finite
#check highFiniteTwistedPolynomial_differentiable
#check highTwistedDirichletSeries_entire
#check highDirichletSeries_entire
#check highPositiveHalfplaneHolomorphy_proof
#check originalLowMoebiusCoefficient_eq_original_above
#check twistedLowMoebiusTerm_eq_original_above

#print axioms squarefree_bankSmooth_dvd_primeProduct
#print axioms high_source_nonzero_implies_finite_real_bound
#print axioms highGlobal_nonzero_mem_finite_cutoff
#print axioms original_high_mu_zero_above_cutoff
#print axioms originalHighWave_stabilizes
#print axioms highTwistedDirichletSeries_eq_finite
#print axioms highTwistedDirichletSeries_entire
#print axioms highPositiveHalfplaneHolomorphy_proof
