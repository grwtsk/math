import Surface.ContinuousAssurance.Index.AuthorizationBinding

/-!
# Finite communication sites and restrictions

The first communication model is finite and explicit.  Its restriction laws
are fields checked by Lean; executable discovery of a cover remains external
evidence.
-/

universe u v

namespace Surface.ContinuousAssurance

/-- Finite preorder-shaped communication site with typed local sections. -/
structure FiniteCommunicationSite where
  Region : Type u
  regionFintype : Fintype Region
  regionDecEq : DecidableEq Region
  below : Region → Region → Prop
  belowDecidable : DecidableRel below
  belowRefl : ∀ region, below region region
  belowTrans : ∀ {small middle large},
    below small middle → below middle large → below small large
  Section : Region → Type v
  restrict : ∀ {small large}, below small large → Section large → Section small
  restrict_id : ∀ (region) (sectionValue : Section region),
    restrict (belowRefl region) sectionValue = sectionValue
  restrict_comp : ∀ {small middle large}
      (smallMiddle : below small middle)
      (middleLarge : below middle large)
      (sectionValue : Section large),
    restrict (belowTrans smallMiddle middleLarge) sectionValue =
      restrict smallMiddle (restrict middleLarge sectionValue)
  cover : Finset Region
  coefficientObject : String

attribute [local instance] FiniteCommunicationSite.regionFintype
attribute [local instance] FiniteCommunicationSite.regionDecEq
attribute [local instance] FiniteCommunicationSite.belowDecidable

/-- Identity restriction is exact. -/
theorem FiniteCommunicationSite.restrict_identity
    (site : FiniteCommunicationSite)
    (region : site.Region)
    (sectionValue : site.Section region) :
    site.restrict (site.belowRefl region) sectionValue = sectionValue :=
  site.restrict_id region sectionValue

/-- Composite restriction agrees with successive restriction. -/
theorem FiniteCommunicationSite.restrict_composition
    (site : FiniteCommunicationSite)
    {small middle large : site.Region}
    (smallMiddle : site.below small middle)
    (middleLarge : site.below middle large)
    (sectionValue : site.Section large) :
    site.restrict (site.belowTrans smallMiddle middleLarge) sectionValue =
      site.restrict smallMiddle (site.restrict middleLarge sectionValue) :=
  site.restrict_comp smallMiddle middleLarge sectionValue

end Surface.ContinuousAssurance
