# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presheaf.Variant61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ee20633e46dbdb508f4ccb9bf9c53425fad1ca9` · SHA-256 `61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.Site

/-!
# Finite presheaves and explicit descent capability

Restriction identity/composition are fields of a finite presheaf. Descent is a
separate capability; this module never declares every presheaf to be a sheaf.
-/

universe u v w

namespace Surface.ContinuousAssurance.WorldModel

/-- Presheaf of sections on the declared finite poset. -/
structure FiniteWorldModelPresheaf
    (site : FiniteCommunicationSite) where
  Section : site.Object → Type v
  restrict :
    ∀ {larger smaller}, site.le smaller larger →
      Section larger → Section smaller
  restrict_id :
    ∀ object value,
      restrict (site.le_refl object) value = value
  restrict_comp :
    ∀ {largest middle smallest}
      (hmiddle : site.le middle largest)
      (hsmallest : site.le smallest middle)
      (value : Section largest),
      restrict hsmallest (restrict hmiddle value) =
        restrict (site.le_trans hsmallest hmiddle) value

namespace FiniteWorldModelPresheaf

/-- SITE-01: restriction along identity is identity. -/
theorem restriction_identity
    {site : FiniteCommunicationSite}
    (presheaf : FiniteWorldModelPresheaf site)
    (object : site.Object)
    (value : presheaf.Section object) :
    presheaf.restrict (site.le_refl object) value = value :=
  presheaf.restrict_id object value

/-- SITE-02: restriction respects order composition. -/
theorem restriction_composition
    {site : FiniteCommunicationSite}
    (presheaf : FiniteWorldModelPresheaf site)
    {largest middle smallest : site.Object}
    (hmiddle : site.le middle largest)
    (hsmallest : site.le smallest middle)
    (value : presheaf.Section largest) :
    presheaf.restrict hsmallest (presheaf.restrict hmiddle value) =
      presheaf.restrict (site.le_trans hsmallest hmiddle) value :=
  presheaf.restrict_comp hmiddle hsmallest value

end FiniteWorldModelPresheaf

/--
An actual descent interface. `localize` records all covered restrictions for
this capability; `glue` and uniqueness make localize/glue inverse operations.
-/
structure FiniteDescentCapability
    {site : FiniteCommunicationSite}
    (presheaf : FiniteWorldModelPresheaf site) where
  CompatibleFamily : Type w
  GlobalSection : Type w
  localize : GlobalSection → CompatibleFamily
  glue : CompatibleFamily → GlobalSection
  restrict_glue : ∀ family, localize (glue family) = family
  glue_unique :
    ∀ family global,
      localize global = family → global = glue family

namespace FiniteDescentCapability

/-- GLUE-01: every declared compatible family glues. -/
theorem compatible_family_glues
    {site : FiniteCommunicationSite}
    {presheaf : FiniteWorldModelPresheaf site}
    (descent : FiniteDescentCapability presheaf)
    (family : descent.CompatibleFamily) :
    descent.localize (descent.glue family) = family :=
  descent.restrict_glue family

/-- GLUE-02: a global section inducing a family is its unique glue. -/
theorem glued_section_unique
    {site : FiniteCommunicationSite}
    {presheaf : FiniteWorldModelPresheaf site}
    (descent : FiniteDescentCapability presheaf)
    (family : descent.CompatibleFamily)
    (global : descent.GlobalSection)
    (restricts : descent.localize global = family) :
    global = descent.glue family :=
  descent.glue_unique family global restricts

/-- A descent capability yields an exact equivalence of global and compatible data. -/
def equivCompatible
    {site : FiniteCommunicationSite}
    {presheaf : FiniteWorldModelPresheaf site}
    (descent : FiniteDescentCapability presheaf) :
    descent.GlobalSection ≃ descent.CompatibleFamily where
  toFun := descent.localize
  invFun := descent.glue
  left_inv := fun global ↦
    descent.glue_unique (descent.localize global) global rfl |>.symm
  right_inv := descent.restrict_glue

end FiniteDescentCapability

end Surface.ContinuousAssurance.WorldModel
```
