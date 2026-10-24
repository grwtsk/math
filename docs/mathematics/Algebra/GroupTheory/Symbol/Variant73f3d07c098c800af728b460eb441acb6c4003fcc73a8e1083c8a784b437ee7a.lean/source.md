# Complete source: GRWTSK.Algebra.GroupTheory.Symbol.Variant73f3d07c098c800af728b460eb441acb6c4003fcc73a8e1083c8a784b437ee7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2819c4ccac263ba0b4c8aa886de33e787f5ff97d` · SHA-256 `fb5e40961c9cd71ee3417394480c77dd6df84fed2f12cd2b7004dd71033da592`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
