-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCertificate.Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedPointCertificate.Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a","mathematical_subject":"Foundations.Unclassified","original_sha256":"c79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/FixedPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.DefectTransport

/-! # Fixed points and explicitly open analytic obligations -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCertificate.Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a

namespace Mathematics.Stability

def IsFixedPoint {X : Type} (construction : X → X) (point : X) : Prop :=
  construction point = point

structure FixedPointCertificate
    {X : Type}
    (construction : ReflectiveMap X) where
  point : X
  member : construction.domain.contains point
  fixed : IsFixedPoint construction.apply point

theorem certified_point_satisfies_exact_equation
    {X : Type}
    {construction : ReflectiveMap X}
    (certificate : FixedPointCertificate construction) :
    construction.apply certificate.point = certificate.point :=
  certificate.fixed

structure FixedPointAnalyticObligations
    {X : Type}
    (construction : ReflectiveMap X) where
  existenceStatement :
    ∃ point, construction.domain.contains point ∧
      IsFixedPoint construction.apply point
  uniquenessStatement :
    ∀ p q,
      construction.domain.contains p →
      construction.domain.contains q →
      IsFixedPoint construction.apply p →
      IsFixedPoint construction.apply q →
      p = q
  basinStatement : X → Prop
  existenceStatus : ProofDisposition
  uniquenessStatus : ProofDisposition
  basinStatus : ProofDisposition

/-!
This is a theorem from a supplied separation premise, not an assertion that
every registered map has a unique fixed point.
-/
theorem fixed_point_unique_from_separation
    {X : Type}
    (construction : X → X)
    (separates :
      ∀ p q,
        IsFixedPoint construction p →
        IsFixedPoint construction q →
        p = q)
    {p q : X}
    (pFixed : IsFixedPoint construction p)
    (qFixed : IsFixedPoint construction q) :
    p = q :=
  separates p q pFixed qFixed

end Mathematics.Stability
