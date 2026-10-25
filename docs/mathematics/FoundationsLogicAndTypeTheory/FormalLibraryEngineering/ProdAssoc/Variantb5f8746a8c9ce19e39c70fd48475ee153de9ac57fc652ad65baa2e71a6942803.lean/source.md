# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variantb5f8746a8c9ce19e39c70fd48475ee153de9ac57fc652ad65baa2e71a6942803

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92f58a6cfd96aff3646d8754448764c2a2e4d646` · SHA-256 `3e3d1bc4fc9cb07d9ff81f425c0db834b12cd5510c9683f65896b7af2085b3a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variant80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ProdAssoc.Variant80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ProdAssoc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ProdAssoc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variant80822f7d72e85684972e59d83ce154464c6c71c965bcb0a4e5e8252a2b3a63d1

variable {α β γ δ : Type*}

example : (α × β) × (γ × δ) ≃ α × (β × γ) × δ := by
  exact (prod_assoc% : (α × β) × (γ × δ) ≃ α × (β × γ) × δ)

example : (α × β) × (γ × δ) ≃ α × (β × γ) × δ := prod_assoc%

example : (α × β) × (γ × δ) ≃ α × (β × γ) × δ :=
  (prod_assoc% : _ ≃ α × β × γ × δ).trans prod_assoc%

example {α β γ δ : Type*} (x : (α × β) × (γ × δ)) : α × (β × γ) × δ := prod_assoc% x

example : Nat ≃ Nat := prod_assoc%

example (x : α) (y : β) (z : γ) (w : δ) :
    prod_assoc% ((x,y),(z,w)) = (x,y,z,w) :=
  rfl

example (x : α) (y : β) (z : γ) (w : δ) :
    prod_assoc% ((x,y),(z,w)) = (x,(y,z),w) :=
  rfl

example : (α × β) × (γ × δ) → α × (β × γ) × δ :=
  prod_assoc%
```
