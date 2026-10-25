import Folder.DerivedSheaf.BaseCasePropagation

/-!
# Folder.Theorem.DerivedSheaf.BaseCasePropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case propagation facts, not BinaryMatrix data.
Ontology: base.index_propagation
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem transported_base_case_euler_nonzero
    (T : Folder.DerivedSheaf.TransportedBaseCaseEuler) :
    T.transport.eulerTransport.targetEuler.value ≠ 0 :=
  Folder.DerivedSheaf.transported_base_case_euler_nonzero T

theorem base_case_propagation_conclusion
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.DerivedSheaf.BaseCaseCriticalLinePropagation M) :
    P.criticalLineConclusion :=
  Folder.DerivedSheaf.base_case_propagation_conclusion P

end DerivedSheaf
end Theorem
end Folder
