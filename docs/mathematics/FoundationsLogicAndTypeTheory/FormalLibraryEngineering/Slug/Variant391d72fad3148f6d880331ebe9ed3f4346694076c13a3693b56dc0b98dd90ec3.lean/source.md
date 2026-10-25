# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slug.Variant391d72fad3148f6d880331ebe9ed3f4346694076c13a3693b56dc0b98dd90ec3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `075cc87a8892ae3ac9c083e86c5f5c4e7ee3d637` · SHA-256 `43ed6cf21183391e10207b7ef01b9dfa765cbc8b31f1c31a1075955dcb1c5151`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slug.Variant06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Slug.Variant06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2","mathematical_subject":"Foundations.Unclassified","original_sha256":"06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/Slug.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slug.Variant06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2

namespace Surface

namespace AST

structure Slug where
  value : String
deriving Repr

namespace Slug

def Nonempty (slug : Slug) : Prop :=
  slug.value ≠ ""

end Slug

structure TrustedDeclaration where
  fullName : String
  trusted : Bool
  nonemptyName : fullName ≠ ""

def slugOfDeclaration (d : TrustedDeclaration) : Slug where
  value := d.fullName

def TrustedDeclarationValid (d : TrustedDeclaration) : Prop :=
  d.trusted = true ∧ d.fullName ≠ ""

theorem slug_nonempty_for_trusted_declaration
    {d : TrustedDeclaration} :
    TrustedDeclarationValid d ->
      Slug.Nonempty (slugOfDeclaration d) := by
  intro h
  exact h.2

end AST

end Surface
```
