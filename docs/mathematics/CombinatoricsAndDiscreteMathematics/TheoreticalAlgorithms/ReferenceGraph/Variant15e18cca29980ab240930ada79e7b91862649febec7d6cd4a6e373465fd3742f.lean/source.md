# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReferenceGraph.Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `669f7a742a0897e1fc1b073308e48ff0170e0ed4` · SHA-256 `15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
