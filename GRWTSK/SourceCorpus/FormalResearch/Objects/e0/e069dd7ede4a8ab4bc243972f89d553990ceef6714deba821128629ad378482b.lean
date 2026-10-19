import Folder.AdelicInfinityTopos.CriticalLineConclusion

/-!
# Folder.Theorem.AdelicInfinityTopos.CriticalLineConclusion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the conditional critical-line theorem for supplied adelic alignment.
Ontology: proof.adelic.conditional_critical_line
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace CriticalLineConclusion

theorem conditional_critical_line_from_adelic_boundary_alignment
    (C : Folder.AdelicInfinityTopos.AdelicCriticalLineContract) :
    Folder.AdelicInfinityTopos.AllZerosOnCriticalLine C :=
  Folder.AdelicInfinityTopos.conditional_critical_line_from_adelic_boundary_alignment C

end CriticalLineConclusion
end AdelicInfinityTopos
end Theorem
end Folder
