import Folder.RH.ZeroData

/-!
# Folder.Theorem.RH.ZeroData

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports raw zero-data facts.
Ontology: proof.rh.zero_data
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace ZeroData

theorem raw_zeta_zero_has_zero_statement
    (Z : Folder.RH.RawZetaZeroData) :
    Folder.RH.CompletedZeta Z.point = 0 :=
  Folder.RH.raw_zeta_zero_has_zero_statement Z

theorem raw_zeta_zero_has_nontrivial_statement
    (Z : Folder.RH.RawZetaZeroData) :
    Folder.RH.NontrivialZetaZeroCondition Z.point :=
  Folder.RH.raw_zeta_zero_has_nontrivial_statement Z

theorem raw_h0_zero_has_zero_statement
    (Z : Folder.RH.RawH0ZeroData) :
    Folder.RH.H0 Z.point = 0 :=
  Folder.RH.raw_h0_zero_has_zero_statement Z

end ZeroData
end RH
end Theorem
end Folder
