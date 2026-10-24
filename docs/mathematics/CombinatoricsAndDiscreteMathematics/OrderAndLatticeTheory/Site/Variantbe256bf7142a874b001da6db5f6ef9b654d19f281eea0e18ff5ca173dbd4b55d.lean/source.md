# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Site.Variantbe256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0c10fe12867d263e314e6940d15a000007b9fce` · SHA-256 `be256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.Carrier
import Mathlib.Order.Defs.PartialOrder

/-!
# Finite communication site

This is a finite poset equipped with declared finite covering families. It is
not called an arithmetic, prismatic, or unrestricted Grothendieck site.
-/

universe u

namespace Surface.ContinuousAssurance.WorldModel

/-- Finite cover metadata for every object of a finite poset. -/
structure FiniteCommunicationSite where
  Object : Type u
  objectFintype : Fintype Object
  objectDecEq : DecidableEq Object
  partialOrder : PartialOrder Object
  orderDecidable :
    DecidableRel (@LE.le Object partialOrder.toPreorder.toLE)
  cover : Object → Finset Object
  cover_below :
    ∀ {base member}, member ∈ cover base →
      @LE.le Object partialOrder.toPreorder.toLE member base
  identity : ArtifactIdentity

attribute [instance] FiniteCommunicationSite.objectFintype
  FiniteCommunicationSite.objectDecEq

namespace FiniteCommunicationSite

/-- The site's explicitly stored partial order relation. -/
def le (site : FiniteCommunicationSite) : site.Object → site.Object → Prop :=
  @LE.le site.Object site.partialOrder.toPreorder.toLE

instance (site : FiniteCommunicationSite) : DecidableRel site.le :=
  site.orderDecidable

/-- SITE-01 order component: reflexivity of the stored order. -/
theorem le_refl (site : FiniteCommunicationSite) (object : site.Object) :
    site.le object object :=
  @Preorder.le_refl site.Object site.partialOrder.toPreorder object

/-- SITE-02 order component: transitivity of the stored order. -/
theorem le_trans
    (site : FiniteCommunicationSite)
    {first second third : site.Object}
    (hfirst : site.le first second)
    (hsecond : site.le second third) :
    site.le first third :=
  @Preorder.le_trans site.Object site.partialOrder.toPreorder
    first second third hfirst hsecond

/-- Every declared cover member lies below its base. -/
theorem cover_member_below
    (site : FiniteCommunicationSite)
    {base member : site.Object}
    (h : member ∈ site.cover base) :
    site.le member base :=
  site.cover_below h

/-- Every cover is finite by representation. -/
theorem cover_finite
    (site : FiniteCommunicationSite)
    (base : site.Object) :
    Set.Finite {member | member ∈ site.cover base} :=
  Set.finite_mem_finset _

end FiniteCommunicationSite

end Surface.ContinuousAssurance.WorldModel

```
