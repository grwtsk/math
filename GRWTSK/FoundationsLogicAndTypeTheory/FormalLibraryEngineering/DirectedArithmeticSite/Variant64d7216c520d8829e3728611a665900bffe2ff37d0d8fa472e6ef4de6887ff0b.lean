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
