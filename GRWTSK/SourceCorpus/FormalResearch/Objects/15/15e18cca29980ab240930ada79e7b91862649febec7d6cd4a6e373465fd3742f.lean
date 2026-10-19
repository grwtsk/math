import Folder.Basic

/-!
# Folder.Presentation.ReferenceGraph

Radiation role: presentation-reference-graph
BinaryMatrix spine: This module stores reference edges used to order document views derived from BinaryMatrixStream archives.
Ontology: presentation.reference_graph
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure ModuleId where
  name : String
deriving DecidableEq, Repr

structure DeclarationId where
  moduleName : String
  name : String
deriving DecidableEq, Repr

inductive ReferenceKind where
  | import
  | theoremUse
  | definitionUse
  | namespaceMention
  | docMention
  | theoremWrapper
deriving DecidableEq, Repr

structure ReferenceEdge where
  source : ModuleId
  target : ModuleId
  kind : ReferenceKind
  weight : Nat
deriving DecidableEq, Repr

structure ReferenceGraph where
  modules : List ModuleId
  edges : List ReferenceEdge
deriving DecidableEq, Repr

def inboundWeight
    (G : ReferenceGraph)
    (M : ModuleId) : Nat :=
  (G.edges.filter (fun e => e.target = M)).foldl
    (fun acc e => acc + e.weight) 0

def outboundWeight
    (G : ReferenceGraph)
    (M : ModuleId) : Nat :=
  (G.edges.filter (fun e => e.source = M)).foldl
    (fun acc e => acc + e.weight) 0

end Presentation
end Folder
