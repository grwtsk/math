# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coherence.Variantaf738ffa339f04357ab086a918d15ff055e7338a66a0b419b4c6b899ed14443b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9253f36ef17e19e01fdd8db7a1806bef53ad6e14` · SHA-256 `5bfb09eddaf460342382928129fee50ac9ddcf7270ddccc3d50b8036dff82a09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HorizonEmbeddingCoherence.Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HorizonEmbeddingCoherence.Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f","mathematical_subject":"Foundations.Unclassified","original_sha256":"bc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/HorizonEmbedding/Coherence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP0.HorizonEmbedding.Definition

/-!
# Horizon-embedding coherence primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HorizonEmbeddingCoherence.Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonEmbeddingCoherence
    (Low Mid High : FinitePrimeHorizon)
    (ι₁ : HorizonEmbedding Low Mid)
    (ι₂ : HorizonEmbedding Mid High)
    (ι₃ : HorizonEmbedding Low High) :
    Prop where
  mapCut_comp :
    ∀ S,
      ι₃.mapCut S =
      ι₂.mapCut (ι₁.mapCut S)
  persistent_id_comp :
    ∀ S,
      ι₃.persistent_cut_id S =
      ι₂.persistent_cut_id
        (ι₁.mapCut S)

end Mathematics.SemiLocalDefect.SoninCore
```
