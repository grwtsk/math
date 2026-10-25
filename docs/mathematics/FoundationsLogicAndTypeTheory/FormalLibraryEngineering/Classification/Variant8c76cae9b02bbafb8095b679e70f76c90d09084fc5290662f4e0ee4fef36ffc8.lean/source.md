# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classification.Variant8c76cae9b02bbafb8095b679e70f76c90d09084fc5290662f4e0ee4fef36ffc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4793a93d01da33388a9314c7a7163c48d63f4806` · SHA-256 `7bc913c1d8162ff3ed71717e0f8ddaef8735e4fd6e6e308f0cc481add4120d6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variant49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Classification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean

/-!
# Canonical declaration classification

Every future exported mathematical declaration must be classified as a thin
Mathlib adapter or genuinely novel work.  Disposable generated declarations use
the candidate tag and remain outside the canonical root.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421

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
