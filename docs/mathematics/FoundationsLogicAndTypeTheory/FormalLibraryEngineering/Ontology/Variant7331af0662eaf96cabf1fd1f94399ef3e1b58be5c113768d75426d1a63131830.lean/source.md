# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ontology.Variant7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e020d8d37aa59c7031287c153585cce1f0fc4b84` · SHA-256 `7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
