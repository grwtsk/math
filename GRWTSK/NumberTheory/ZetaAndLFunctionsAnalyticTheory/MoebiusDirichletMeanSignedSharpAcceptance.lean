/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE_ACCEPTANCE_TARGET / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueFibreSharpArithmetic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueSharpSignedFibre
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletMeanSignedSharp
import Mathlib

set_option autoImplicit false

/-!
# Source-bound sharp residue occupancy and Hermitian signed mean

These are ONLY prospective pinned Lean expected-type and
transitive-axiom inspection commands. Merely publishing this
module does not run the compiler, kernel or any independent audit.

An authorized reviewer should compile the standalone finite
arithmetic first, then the signed finite complex lemma, then
the entire original Möbius causal/Hermitian dependency closure.
Proposed commands, NOT EXECUTED:

lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusResidueFibreSharpArithmetic.lean
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusResidueSharpSignedFibre.lean
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletMeanSignedSharpAcceptance.lean

Bind the exact math SHA, Mathlib lock, expected declaration types,
complete kernel replay and all transitive axiom results.
-/

open GRWTSK.NumberTheory.Moebius.ResidueFibreSharpArithmetic
open GRWTSK.NumberTheory.Moebius.ResidueSharpSignedFibre
open GRWTSK.NumberTheory.Moebius.DirichletMeanSignedSharp

#check shifted_remainders_eq
#check residueFibre_shifted_quotient_injective
#check residueFibre_card_le_sharp_quotient
#check residueFibre_card_le_sharpCapacity
#check residueFibre_card_le_one_of_modulus_ge
#check residueFibre_injective_of_modulus_ge

#check residueFibre_signed_square_le_sharp
#check complex_signed_square_zero_of_card_le_one
#check residueFibre_signed_square_zero_of_modulus_ge

#check originalResidueWave_sq_sub_diagonal_le_sharp
#check unitResidueDensity_le_sharpCapacity
#check unitResidueEnergy_le_sharpCapacity
#check meanSignedCross_sharp_bounds
#check meanSignedCross_le_sharp_quotient_quadratic
#check unitResidueDensity_eq_diagonal_of_modulus_ge
#check unitResidueEnergy_eq_diagonal_of_modulus_ge
#check meanSignedCross_eq_zero_of_modulus_ge

#print axioms residueFibre_card_le_sharp_quotient
#print axioms residueFibre_injective_of_modulus_ge
#print axioms residueFibre_signed_square_le_sharp
#print axioms meanSignedCross_sharp_bounds
#print axioms meanSignedCross_eq_zero_of_modulus_ge
