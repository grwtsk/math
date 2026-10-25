# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `424472f17ab9ff3de3da2f57bcf67a5aacbde873` · SHA-256 `8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-!
# Discovery index

Declarations and concepts coexist in one advisory kernel index without becoming
the same semantic type.  The constructor records which side of the assignment
boundary an item inhabits.
-/

namespace Mathematics.Discovery

open Mathematics

inductive Index
  | entity (id : EntityId)
  | concept (id : ConceptId)
  deriving DecidableEq, Repr, Inhabited

@[simp] theorem entity_ne_concept
    (entityId : EntityId) (conceptId : ConceptId) :
    Index.entity entityId ≠ Index.concept conceptId := by
  intro equality
  cases equality

end Mathematics.Discovery
```
