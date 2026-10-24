-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.FiniteSoninHorizon.Variant8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.FiniteSoninHorizon.Variant8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP1/SoninHorizon/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathematics.SemiLocalDefect.WP0.All

/-!
# Sonin-carrier and connector primitive
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.FiniteSoninHorizon.Variant8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f

namespace Mathematics.SemiLocalDefect.SoninCore

universe uSonin

structure FiniteSoninHorizon
    (U : FinitePrimeHorizon) where
  Sonin :
    PrimeCut U → Type uSonin
  [soninNormed :
    ∀ S,
      NormedAddCommGroup (Sonin S)]
  [soninInner :
    ∀ S,
      InnerProductSpace ℂ (Sonin S)]
  [soninComplete :
    ∀ S,
      CompleteSpace (Sonin S)]
  connector :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Sonin S →L[ℂ] Sonin T
  connector_id :
    ∀ S,
      connector
        (show S ⊆ S from
          fun _ h => h)
      =
      ContinuousLinearMap.id
        ℂ
        (Sonin S)
  connector_comp :
    ∀ {S T R : PrimeCut U}
      (hST : S ⊆ T)
      (hTR : T ⊆ R),
      (connector hTR).comp
        (connector hST)
      =
      connector
        (fun _ hp =>
          hTR (hST hp))
  connector_injective :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      Function.Injective
        (connector hST)

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    NormedAddCommGroup (H.Sonin S) :=
  H.soninNormed S

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    InnerProductSpace ℂ (H.Sonin S) :=
  H.soninInner S

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    CompleteSpace (H.Sonin S) :=
  H.soninComplete S

end Mathematics.SemiLocalDefect.SoninCore
