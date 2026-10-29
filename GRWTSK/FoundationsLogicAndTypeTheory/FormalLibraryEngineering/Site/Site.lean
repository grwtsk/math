import Folder.Site.Cover
import Folder.Site.GeneratedTopology

/-!
# Folder.Stack.Site

Radiation role: stack-architecture
BinaryMatrix spine: This module names local shell observations over the stack without adding new BinaryMatrix carrier theorems.
Ontology: stack.site
Pivot role: none
Zero typology: shell
Contract boundary: contract
Composite stack role: shell
-/

namespace Folder
namespace Stack

structure LocalShellObservation where
  Obs : Type
  valid : Obs → Prop

structure StackCoverData where
  Local : Type
  overlapCompatible : Prop

end Stack
end Folder
