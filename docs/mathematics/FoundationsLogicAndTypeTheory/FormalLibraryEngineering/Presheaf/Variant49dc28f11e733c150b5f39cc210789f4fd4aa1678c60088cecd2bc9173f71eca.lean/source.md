# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presheaf.Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fbf8719af1a7849af749081f43cf3a416b51c71` · SHA-256 `c418683b924f3b17cfb8d92d4390a2eeba77b0e229c864f3c9fdf98e60562192`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteWorldModelPresheaf.Variant61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteWorldModelPresheaf.Variant61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a","mathematical_subject":"Foundations.Unclassified","original_sha256":"61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Presheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Site

/-!
# Finite presheaves and explicit descent capability

Restriction identity/composition are fields of a finite presheaf. Descent is a
separate capability; this module never declares every presheaf to be a sheaf.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteWorldModelPresheaf.Variant61f3904b92660465745f7c364af88cdf9464595ccf89835854f9915cd58b952a

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
