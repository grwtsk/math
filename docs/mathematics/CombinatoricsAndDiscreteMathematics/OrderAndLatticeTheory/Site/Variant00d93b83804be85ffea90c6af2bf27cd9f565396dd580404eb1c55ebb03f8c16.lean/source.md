# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Site.Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2500d11432c7fe586d3d1fb19faf36a1dff58e37` · SHA-256 `0e646405cd297319dda6a56b22c1eda210ee746cf4cb1fd70745adb4083bd870`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FiniteCommunicationSite.Variantbe256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FiniteCommunicationSite.Variantbe256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d","mathematical_subject":"Algebra.OrderTheory","original_sha256":"be256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Site.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Carrier
import Mathlib.Order.Defs.PartialOrder

/-!
# Finite communication site

This is a finite poset equipped with declared finite covering families. It is
not called an arithmetic, prismatic, or unrestricted Grothendieck site.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FiniteCommunicationSite.Variantbe256bf7142a874b001da6db5f6ef9b654d19f281eea0e18ff5ca173dbd4b55d

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
