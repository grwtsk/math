import Folder.Basic

/-!
# Folder.Core.Ontology

Radiation role: core
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: concept.ontology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

inductive OntologyStatus where
  | proved
  | definition
  | contract
  | theoremTarget
  | external
  | runtime
  | deprecated
deriving DecidableEq, Repr

inductive OntologyKind where
  | concept
  | leanModule
  | theorem
  | definition
  | grammar
  | representation
  | carrier
  | relation
  | contract
  | externalWitness
  | runtimeMirror
deriving DecidableEq, Repr

structure OntologyEntity where
  id : String
  label : String
  kind : OntologyKind
  status : OntologyStatus
  leanModule : String
  description : String
deriving Repr

structure OntologyRelation where
  id : String
  source : String
  target : String
  relation : String
  status : OntologyStatus
  theorem? : Option String
  description : String
deriving Repr

end Core
end Folder
