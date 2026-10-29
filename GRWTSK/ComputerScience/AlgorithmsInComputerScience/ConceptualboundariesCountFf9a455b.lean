import Formal.Ast.Blueprint.blueprint_residue.files_count_e5edc52fb589
import Formal.Ast.Blueprint.blueprint_residue.files_count_7e8683b2aad3
import Formal.Ast.Blueprint.complex_special_functions.files_count_8367b86d0137
import Formal.Ast.Blueprint.proof_authority.files_count_1f39d2bd11cd
import Formal.Ast.Blueprint.harmonic_tauberian.files_count_a446835a6b62
import Formal.Ast.Blueprint.prime_asymptotics.files_count_35e4424a3de4
import Formal.Ast.Blueprint.blueprint_residue.files_count_c5e6f1ebd23e

/-!
Analytic blueprint surface.

This module exposes the conceptual boundaries of the analytic blueprint layer.
It deliberately imports only marker modules, not the unresolved theorem corpus.
-/

namespace Formal.Blueprint.Analytic

def conceptualBoundaries : List String :=
  [ "Foundation"
  , "Geometry"
  , "ComplexZeta"
  , "MellinPerron"
  , "FourierTauberian"
  , "PrimeAsymptotics"
  , "ArithmeticConstants"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 7 := by
  rfl

end Formal.Blueprint.Analytic
