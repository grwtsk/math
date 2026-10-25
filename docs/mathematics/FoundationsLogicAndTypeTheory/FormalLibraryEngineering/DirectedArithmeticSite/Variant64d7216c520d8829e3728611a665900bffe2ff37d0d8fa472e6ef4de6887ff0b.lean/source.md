# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArithmeticSite.Variant64d7216c520d8829e3728611a665900bffe2ff37d0d8fa472e6ef4de6887ff0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee40b515e7b6af7a90f1c804394a582a65a17afe` · SHA-256 `64d7216c520d8829e3728611a665900bffe2ff37d0d8fa472e6ef4de6887ff0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PivotAtlas

/-!
# Folder.CanonicalPath.DirectedArithmeticSite

Radiation role: research-boundary
BinaryMatrix spine: This module names the proposed directed arithmetic site, not BinaryMatrix data.
Ontology: directed_arithmetic_site
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Proposed directed arithmetic site for pivoted analytic continuation. This is a
site-shaped contract vocabulary, not a construction of a Grothendieck topology.
-/
structure DirectedArithmeticSite where
  Object : Type
  objectToPivot : Object → CanonicalPivot
  Morphism : Object → Object → Type
  isRefinement : ∀ {X Y}, Morphism X Y → Prop
  isOverlapInclusion : ∀ {X Y}, Morphism X Y → Prop
  isCertifiedTransport : ∀ {X Y}, Morphism X Y → Prop
  Cover : Object → Type
  coverIsPivotFamily : ∀ {X}, Cover X → Prop
  zeroFreeBoundariesPreventEscape : Prop
  sourceLabel : String

theorem directed_arithmetic_site_zero_barrier_contract
    (S : DirectedArithmeticSite)
    (h : S.zeroFreeBoundariesPreventEscape) :
    S.zeroFreeBoundariesPreventEscape :=
  h

theorem directed_arithmetic_site_cover_is_pivot_family
    (S : DirectedArithmeticSite)
    {X : S.Object}
    (C : S.Cover X)
    (h : S.coverIsPivotFamily C) :
    S.coverIsPivotFamily C :=
  h

end CanonicalPath
end Folder
```
