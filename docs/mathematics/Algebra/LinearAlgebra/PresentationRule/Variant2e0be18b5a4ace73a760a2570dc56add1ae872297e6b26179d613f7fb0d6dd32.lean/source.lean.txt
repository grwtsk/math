import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.PresentationRule

Radiation role: archive-rule-engine
BinaryMatrix spine: This module separates local reconstruction rules from materialized BinaryMatrixStream storage.
Ontology: archive.presentation_rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure PresentationRule where
  name : String
  apply : Carrier.BinaryMatrix → Carrier.BinaryMatrix

def IsFixedBy
    (R : PresentationRule)
    (M : Carrier.BinaryMatrix) : Prop :=
  R.apply M = M

def copyRule : PresentationRule where
  name := "copy"
  apply := id

theorem copyRule_fixed
    (M : Carrier.BinaryMatrix) :
    IsFixedBy copyRule M :=
  rfl

end Archive
end Folder
