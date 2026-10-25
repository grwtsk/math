# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bb900d92a8125f033edd4b204dfd0cd99ad0749` · SHA-256 `2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Core.Id

/-!
# Discovery index

Declarations and concepts coexist in one advisory kernel index without becoming
the same semantic type.  The constructor records which side of the assignment
boundary an item inhabits.
-/

namespace MathDiscovery.Discovery

open MathDiscovery

inductive Index
  | entity (id : EntityId)
  | concept (id : ConceptId)
  deriving DecidableEq, Repr, Inhabited

@[simp] theorem entity_ne_concept
    (entityId : EntityId) (conceptId : ConceptId) :
    Index.entity entityId ≠ Index.concept conceptId := by
  intro equality
  cases equality

end MathDiscovery.Discovery
```
