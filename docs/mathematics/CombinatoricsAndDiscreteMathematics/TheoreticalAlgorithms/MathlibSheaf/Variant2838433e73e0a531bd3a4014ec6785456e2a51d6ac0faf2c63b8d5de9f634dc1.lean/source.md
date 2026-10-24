# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MathlibSheaf.Variant2838433e73e0a531bd3a4014ec6785456e2a51d6ac0faf2c63b8d5de9f634dc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3713115b74394f5250b833257590c8a6b548501` · SHA-256 `7aa91f14e5bf609bd9eab48cda557d912538f3c7da3aeb596d3cffc6d26a1ab0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrismaticSiteMathlibSheafAdapter.Variant7654bbf25f8bd39853e00c7f5a80f868f82f19927d619cfd4b834cc845b577c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7654bbf25f8bd39853e00c7f5a80f868f82f19927d619cfd4b834cc845b577c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrismaticSiteMathlibSheafAdapter.Variant7654bbf25f8bd39853e00c7f5a80f868f82f19927d619cfd4b834cc845b577c8","mathematical_subject":"Computation.DataStructures","original_sha256":"7654bbf25f8bd39853e00c7f5a80f868f82f19927d619cfd4b834cc845b577c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/Site/MathlibSheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Prismatic.Site.MathlibRingedPresheaf


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrismaticSiteMathlibSheafAdapter.Variant7654bbf25f8bd39853e00c7f5a80f868f82f19927d619cfd4b834cc845b577c8

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from `CertifiedStructureSheafOfRings` to a future
Mathlib sheaf-of-rings backend.

What is certificate-gated:
The actual Mathlib sheaf backend and the existing Surface final-theorem
construction status of the certified structure sheaf.

What is not claimed:
This file does not prove the prismatic structure sheaves are sheaves in Mathlib.
It exposes the exact obligations required to transfer the already typed Surface
certificate into such a backend.

Primary mathematical source:
Surface.Prismatic.Site and Surface.Prismatic.MathlibAdapters.
-/

/-- Exact-file adapter for a certified prismatic structure sheaf of rings. -/
structure PrismaticSiteMathlibSheafAdapter
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X) where
  sheafAdapter : MathlibSheafOfRingsAdapter S
  ringedPresheafAdapter :
    PrismaticSiteMathlibRingedPresheafAdapter S.ringPresheaf
  sheafConditionUsesActualSections : Prop
  sheafConditionUsesActualSectionsCertified :
    sheafConditionUsesActualSections
  boundary : List String

def PrismaticSiteMathlibSheafAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibSheafAdapter S) :
    Prop :=
  A.sheafAdapter.usableForFinalTheorem ∧
    A.ringedPresheafAdapter.usableForFinalTheorem

theorem PrismaticSiteMathlibSheafAdapter.requires_Surface_sheaf_ready
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibSheafAdapter S)
    (h : A.usableForFinalTheorem) :
    S.usableForFinalTheorem :=
  A.sheafAdapter.usableForFinalTheorem_has_structureSheaf h.1

theorem PrismaticSiteMathlibSheafAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibSheafAdapter S)
    (h : A.sheafAdapter.backend = MathlibAdapterBackend.unavailable) :
    ¬ A.usableForFinalTheorem := by
  intro hUse
  exact A.sheafAdapter.unavailable_not_usableForFinalTheorem h hUse.1

/--
Exact-file adapter for a pullback-certified prismatic structure sheaf of rings.

This is the preferred Mathlib-facing sheaf adapter for major proof cones: the
Surface input already records actual dependent sections and pullback-certified
overlaps.
-/
structure PrismaticSiteMathlibPullbackSheafAdapter
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X) where
  sheafAdapter : MathlibPullbackSheafOfRingsAdapter S
  ringedPresheafAdapter :
    PrismaticSiteMathlibRingedPresheafAdapter S.ringPresheaf
  sheafConditionUsesActualSections : Prop
  sheafConditionUsesActualSectionsCertified :
    sheafConditionUsesActualSections
  sheafConditionUsesPullbackOverlaps : Prop
  sheafConditionUsesPullbackOverlapsCertified :
    sheafConditionUsesPullbackOverlaps
  boundary : List String

def PrismaticSiteMathlibPullbackSheafAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibPullbackSheafAdapter S) :
    Prop :=
  A.sheafAdapter.usableForFinalTheorem ∧
    A.ringedPresheafAdapter.usableForFinalTheorem

theorem PrismaticSiteMathlibPullbackSheafAdapter.requires_Surface_sheaf_ready
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibPullbackSheafAdapter S)
    (h : A.usableForFinalTheorem) :
    S.usableForFinalTheorem :=
  A.sheafAdapter.usableForFinalTheorem_has_structureSheaf h.1

theorem PrismaticSiteMathlibPullbackSheafAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibPullbackSheafAdapter S)
    (h : A.sheafAdapter.backend = MathlibAdapterBackend.unavailable) :
    ¬ A.usableForFinalTheorem := by
  intro hUse
  exact A.sheafAdapter.unavailable_not_usableForFinalTheorem h hUse.1

end Surface.Prismatic
```
