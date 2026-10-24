-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SemiLocalSymbolProfile.Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SemiLocalSymbolProfile.Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68","mathematical_subject":"Algebra.Groups","original_sha256":"4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/Symbol.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ShapleyAttribution

/-!
# Archimedean-anchored semi-local symbols

Finite-place products never discard the distinguished archimedean factor.
-/


namespace GRWTSK.Algebra.GroupTheory.SemiLocalSymbolProfile.Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol

structure SemiLocalSymbolProfile
    (Prime : Type uPrime)
    (Symbol : Type uSymbol)
    [CommGroup Symbol] where
  archimedeanRatio : Symbol
  finiteRatio : Prime → Symbol

def SemiLocalSymbolProfile.totalSymbol
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (cut : Finset Prime) :
    Symbol :=
  profile.archimedeanRatio *
    ∏ prime ∈ cut, profile.finiteRatio prime

structure QuasiInnerClass
    (Symbol : Type uSymbol)
    [Mul Symbol] where
  member : Symbol → Prop
  multiplicationClosed :
    ∀ {left right : Symbol},
      member left →
      member right →
      member (left * right)

end Mathematics.SemiLocalDefect.Hardy
