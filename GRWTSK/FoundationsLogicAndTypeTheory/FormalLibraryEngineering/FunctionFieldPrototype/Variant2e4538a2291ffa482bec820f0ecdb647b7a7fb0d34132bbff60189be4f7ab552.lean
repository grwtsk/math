import Folder.CanonicalPath.FunctionFieldPrototype

/-!
# Folder.Theorem.CanonicalPath.FunctionFieldPrototype

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports function-field prototype facts.
Ontology: proof.canonical_path.function_field_prototype
Pivot role: spectral
Zero typology: frobenius-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem function_field_zeros_realized_by_frobenius
    {B : Folder.CanonicalPath.FunctionFieldBase}
    (R : Folder.CanonicalPath.CohomologicalSpectralRealization B) :
    R.zerosRealizedByFrobeniusEigenvalues :=
  Folder.CanonicalPath.function_field_zeros_realized_by_frobenius R

theorem function_field_trace_identity_holds
    {B : Folder.CanonicalPath.FunctionFieldBase}
    (P : Folder.CanonicalPath.FunctionFieldIndexPrototype B) :
    P.traceIdentityHolds :=
  Folder.CanonicalPath.function_field_trace_identity_holds P

theorem function_field_alignment_conclusion
    {B : Folder.CanonicalPath.FunctionFieldBase}
    (P : Folder.CanonicalPath.FunctionFieldIndexPrototype B) :
    P.alignmentConclusion :=
  Folder.CanonicalPath.function_field_alignment_conclusion P

end CanonicalPath
end Theorem
end Folder
