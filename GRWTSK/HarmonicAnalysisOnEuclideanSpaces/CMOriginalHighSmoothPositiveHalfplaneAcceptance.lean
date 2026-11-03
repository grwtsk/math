/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE_ACCEPTANCE_TARGET / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothPositiveHalfplane

/-!
# Passive exact-declaration checks for original high Dirichlet mass

Run only through an authorized pinned Lean v4.34.1,
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 environment
and capture module/source/digest/bounded-trust evidence separately.

This file is NOT an acceptance receipt; #check and #print commands
are inert source text until that replay succeeds. The original
low-source analytic-cancellation theorem and RH remain OPEN.
-/

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPositiveHalfplane

#check highCountRateFactor
#check highShell_card_le_positive_rate
#check highShellPowerMass_le_count
#check highShellPowerMass_le_geometric
#check finiteHighPowerMass_uniform
#check highShellDirichletWave_norm_le_mass
#check finiteHighDirichletWave_norm_le_mass
#check finiteHighDirichletWave_uniform
#check originalFiniteDirichlet_eq_high_add_low
#check HighPositiveHalfplaneHolomorphy

#print axioms highShell_card_le_positive_rate
#print axioms highShellPowerMass_le_geometric
#print axioms finiteHighPowerMass_uniform
#print axioms finiteHighDirichletWave_norm_le_mass
#print axioms originalFiniteDirichlet_eq_high_add_low
