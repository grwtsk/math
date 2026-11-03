/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE SOURCE_ACCEPTANCE_TARGET / NATIVE_COMMANDS_NOT_RUN /
PARSING_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueOrthogonality
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletLargeModulusEnergy
import Mathlib

set_option autoImplicit false

/-!
# Exact source acceptance for the original Dirichlet character-residue wave

The declarations below must be checked using the FULL exact new
GRWTSK source and pinned Mathlib. The commands are NOT RUN
merely by publishing this file. The GRWTSK source depends on
earlier unverified Hermitian Gram and arithmetic coefficient
candidate modules, which must compile and pass kernel checks too.

Proposed command on an authorized reviewed native host:
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletResidueAcceptance.lean

No primitive-only orthogonality or GRH theorem is asserted.
-/

open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
open GRWTSK.NumberTheory.Moebius.DirichletLargeModulusEnergy

#check character_pair_orthogonality
#check sum_character_hermitian_pairs
#check originalCharacterWave_eq_residueFourier
#check originalCharacterWave_eq_familyResponse
#check originalFullGram_characterAverage
#check originalOffdiag_characterAverage
#check originalOffdiag_characterAverage_zero_of_largeModulus

#check finite_character_parseval_complex
#check finite_character_parseval
#check original_character_wave_parseval
#check all_character_energy_parseval

#check allCharactersFullGram_eq_residueProjection
#check allCharactersOffdiagCross_zero
#check allCharactersFullGram_eq_unitDiagonal
#check allCharactersEnergy_eq_unitDiagonal
#check allCharactersEnergy_le_quadraticAverage

#print axioms character_pair_orthogonality
#print axioms originalOffdiag_characterAverage_zero_of_largeModulus
#print axioms finite_character_parseval
#print axioms all_character_energy_parseval
#print axioms allCharactersOffdiagCross_zero
#print axioms allCharactersEnergy_eq_unitDiagonal
#print axioms allCharactersEnergy_le_quadraticAverage
