# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classification.Variantd8e2188b9727a365af916c37108e06795f8a40bece0107dc8dcb794e6364ac62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d30a91256c9d8f80ee449c25b2c3cfa515ff0e2e` · SHA-256 `8886cc231e4b6cedbab6caf752a610149136481ea9d350abf271c82716eff94d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variantb092b0e8ccdf23cc340b2721a85be207688017ff086b0e150ad55dddba21d7d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b092b0e8ccdf23cc340b2721a85be207688017ff086b0e150ad55dddba21d7d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variantb092b0e8ccdf23cc340b2721a85be207688017ff086b0e150ad55dddba21d7d7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b092b0e8ccdf23cc340b2721a85be207688017ff086b0e150ad55dddba21d7d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/export/formal/lib/SurfaceCore/Surface/Core/Classification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean

/-!
# Canonical declaration classification

Every future public mathematical declaration must be classified as a thin
Mathlib adapter or genuinely novel work.  Disposable generated declarations use
the candidate tag and remain outside the canonical root.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variantb092b0e8ccdf23cc340b2721a85be207688017ff086b0e150ad55dddba21d7d7

public section

open Lean

namespace Surface.Core

initialize surfaceAdapterAttr : TagAttribute ←
  registerTagAttribute `surface_adapter
    "thin transport around an existing Mathlib declaration"

initialize surfaceNovelAttr : TagAttribute ←
  registerTagAttribute `surface_novel
    "project-local mathematics or proof-process invariants not supplied by Mathlib"

initialize surfaceCandidateAttr : TagAttribute ←
  registerTagAttribute `surface_candidate
    "disposable untrusted search product; forbidden from canonical publication"

initialize surfacePublishedAttr : TagAttribute ←
  registerTagAttribute `surface_published
    "explicit public declaration governed by publication classification audits"

initialize surfaceCertificateAttr : TagAttribute ←
  registerTagAttribute `surface_certificate
    "finite evidence or receipt declaration with an executable verification boundary"

initialize surfaceInterfaceAttr : TagAttribute ←
  registerTagAttribute `surface_interface
    "typed staging boundary whose inhabitants supply explicitly named proof obligations"

end Surface.Core
```
