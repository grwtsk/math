/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE_SOURCE_ACCEPTANCE_TARGET / NOT_EXECUTED /
PARSING_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueSignedFibreArithmetic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletMeanSignedCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletMeanSignedFixedCutoff
import Mathlib

set_option autoImplicit false

/-!
# Exact-source native acceptance target: sharper mean signed offdiagonal

All source declarations below are candidates and these commands
have not been run. Pin the entire imports/toolchain and inspect
source-bound compiler, expected type, fresh kernel and full
transitive axiom evidence independently. No native scheduler
or out-of-contract runner is authorized by this file.

Reviewed host command to test if later authorized:
  lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletMeanSignedAcceptance.lean
-/

open GRWTSK.NumberTheory.Moebius.ResidueSignedFibreArithmetic
open GRWTSK.NumberTheory.Moebius.DirichletMeanSignedCross
open GRWTSK.NumberTheory.Moebius.DirichletMeanSignedFixedCutoff

#check complex_signed_square_le_of_card
#check complex_signed_square_ge_neg_diagonal
#check residueFibre_signed_square_le_quotient

#check residueWave_sq_sub_ownDiagonal_le
#check unitFibreSquares_eq_unitDiagonalDensity
#check unitResidueDensity_le_occupationUnitDiagonal
#check unitDiagonal_eq_integral_density
#check unitResidueEnergy_le_occupationUnitDiagonal

#check familyEnergy_eq_diagonal_add_cross
#check allCharacterDiagonal_eq_totient_unitDiagonal
#check meanSignedCross_eq_unitEnergy_sub_diagonal
#check unitDiagonal_nonneg_le_original
#check meanSignedCross_signed_bounds
#check meanSignedCross_le_quotient_quadratic

#check meanSignedCross_le_fixedCutoffEnvelope
#check scalar_fixedCutoffEnvelope_everyRate
#check meanSignedCross_everyRate_of_modulus_ge_fixedCutoff

#print axioms residueFibre_signed_square_le_quotient
#print axioms unitResidueEnergy_le_occupationUnitDiagonal
#print axioms meanSignedCross_eq_unitEnergy_sub_diagonal
#print axioms meanSignedCross_signed_bounds
#print axioms meanSignedCross_le_quotient_quadratic
#print axioms meanSignedCross_everyRate_of_modulus_ge_fixedCutoff
