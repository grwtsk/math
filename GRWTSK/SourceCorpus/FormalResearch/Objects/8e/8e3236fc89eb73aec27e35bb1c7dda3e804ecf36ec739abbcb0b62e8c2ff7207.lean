/-!
# Folder.CanonicalPath.SuperconnectionTracePackage

Radiation role: research-boundary
BinaryMatrix spine: This module records superconnection trace packages.
Ontology: canonical.trace_realization
Pivot role: spectral
Zero typology: trace
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure SuperconnectionTracePackage where
  FamilyData : Type
  SuperconnectionData : Type
  heatKernelData : Type
  chernCharacterRepresentative : Type
  supertraceFormula : Prop
  supertraceFormula_certified : supertraceFormula
  familyIndexCompatibility : Prop
  familyIndexCompatibility_certified : familyIndexCompatibility
  sourceLabel : String

theorem superconnection_trace_formula_if_supplied
    (S : SuperconnectionTracePackage) :
    S.supertraceFormula :=
  S.supertraceFormula_certified

theorem superconnection_family_index_compatible
    (S : SuperconnectionTracePackage) :
    S.familyIndexCompatibility :=
  S.familyIndexCompatibility_certified

end CanonicalPath
end Folder
