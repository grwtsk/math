# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TextCarrier.Variantc13fe13a5f863ae42fb83f08f7e654c91a09d73ccad97c16aedce2d14dd9b270

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec99d13486898f7f5323e53f2ceb65c13c49e795` · SHA-256 `3ce3c8233f39f4e86a39060a053b0322cf93cff659549e3fdf5941e2ad090a54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RawText.Variant8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RawText.Variant8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051","mathematical_subject":"Computation.DataStructures","original_sha256":"8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/TextCarrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Basic

/-!
# Immutable raw and normalized text carriers
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RawText.Variant8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051

namespace Mathematics.SemanticTokenization

structure RawText where
  id : TextId
  chars : Array Char
  sourceDigest : Digest
deriving Repr

structure TextCarrier where
  id : TextId
  chars : Array Char
  normalizedDigest : Digest
  sourceDigest : Digest
deriving Repr

def SameTextVersion (left right : TextCarrier) : Prop :=
  left.id = right.id ∧
  left.normalizedDigest = right.normalizedDigest ∧
  left.sourceDigest = right.sourceDigest

theorem sameTextVersion_refl (text : TextCarrier) :
    SameTextVersion text text :=
  ⟨rfl, rfl, rfl⟩

theorem sameTextVersion_symm {left right : TextCarrier} :
    SameTextVersion left right →
    SameTextVersion right left := by
  rintro ⟨hId, hDigest, hSource⟩
  exact ⟨hId.symm, hDigest.symm, hSource.symm⟩

theorem sameTextVersion_trans {a b c : TextCarrier} :
    SameTextVersion a b →
    SameTextVersion b c →
    SameTextVersion a c := by
  rintro
    ⟨hId₁, hDigest₁, hSource₁⟩
    ⟨hId₂, hDigest₂, hSource₂⟩
  exact
    ⟨hId₁.trans hId₂,
      hDigest₁.trans hDigest₂,
      hSource₁.trans hSource₂⟩

end Mathematics.SemanticTokenization
```
