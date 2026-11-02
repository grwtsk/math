/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE SOURCE_ACCEPTANCE_TARGET / NATIVE_COMMANDS_NOT_RUN /
PARSING_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueFibreArithmetic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueFibreCapacity
import Mathlib

set_option autoImplicit false

/-!
# Independent finite occupancy and original Dirichlet mean-energy acceptance

These are executable Lean checks ONLY when an authorized pinned
environment actually runs this importing module. Publishing the
commands does not mean they were run or accepted by the kernel.

Arithmetic part imports no prior GRWTSK analytic source.
The family mean-energy part imports the genuine original causal
Dirichlet Parseval and finite Gram candidate dependencies.

Suggested reviewed command (not run):
  lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletResidueFibreCapacityAcceptance.lean

Pin source commit, dependency lock, outputs and axiom report
before interpreting a native receipt.
-/

open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic
open GRWTSK.NumberTheory.Moebius.DirichletResidueFibreCapacity

#check residueFibre
#check residueFibre_quotient_injective
#check residueFibre_card_le_quotient_succ
#check residueFibre_card_le_one_of_large_modulus

#check originalResidueWave_eq_fibre
#check originalResidueWave_norm_sq_le_card
#check originalResidueWave_norm_sq_le_capacity
#check sum_residueFibre_indexSquare
#check unitResidueWaveDensity_le_occupationDiagonal
#check unitResidueEnergy_le_occupationDiagonal
#check allCharactersEnergy_le_occupationDiagonal
#check allCharactersEnergy_le_occupationQuadratic
#check meanCharacterEnergy_le_occupationQuadratic
#check meanCharacterEnergy_le_quadratic_of_largeModulus

#print axioms residueFibre_card_le_quotient_succ
#print axioms originalResidueWave_norm_sq_le_card
#print axioms unitResidueEnergy_le_occupationDiagonal
#print axioms meanCharacterEnergy_le_occupationQuadratic
#print axioms meanCharacterEnergy_le_quadratic_of_largeModulus
