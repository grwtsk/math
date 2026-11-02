/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE_ACCEPTANCE_TARGET / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothAllRateEquivalence

/-!
# Passive exact-declaration acceptance for original fixed-bank high/low return

A permitted pinned Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612 replay MUST execute
these checks before any kernel acceptance claim. Source publication
or a static list of declaration names is NOT a compiler receipt.

Expected target: ONLY the complete unsmoothed original Möbius
source with true fixed-bank high-smooth-divisor selection.
-/

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothScalarClosure
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothAllRateEquivalence

#check inv_sqrt_dyadic_as_exp
#check highShellCost_le_canonical_factor
#check canonicalShellScalarDecay_proof
#check globalHighEnvelope_proof
#check highShell_le_upper
#check highShell_pairwise_disjoint
#check highIndexUnion_subset_indices
#check originalHighWave_eq_highIndexUnion
#check originalLowComplementReturn_proof
#check riemannHypothesis_of_low_energy_only
#check originalLowAllRate_iff_originalGrid
#check originalLowAllRate_iff_globalEnergy

#print axioms highShellCost_le_canonical_factor
#print axioms canonicalShellScalarDecay_proof
#print axioms globalHighEnvelope_proof
#print axioms originalLowComplementReturn_proof
#print axioms originalLowAllRate_iff_globalEnergy
#print axioms riemannHypothesis_of_low_energy_only
