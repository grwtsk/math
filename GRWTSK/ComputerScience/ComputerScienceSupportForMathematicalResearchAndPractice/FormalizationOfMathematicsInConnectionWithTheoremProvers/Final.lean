import Folder.RH.Final

/-!
# Folder.Theorem.RH.Final

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports final-cone audit facts.
Ontology: proof.rh.final
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace Final

theorem final_cone_declaration_name_fixed :
    Folder.RH.FinalRHConeDeclarationName =
      "Folder.RH.riemann_hypothesis" :=
  Folder.RH.final_cone_declaration_name_fixed

theorem current_final_rh_cone_rejects_unconditional_rh
    :
    ¬ Folder.RH.FinalRHConeClosed :=
  Folder.RH.current_final_rh_cone_rejects_unconditional_rh

end Final
end RH
end Theorem
end Folder
