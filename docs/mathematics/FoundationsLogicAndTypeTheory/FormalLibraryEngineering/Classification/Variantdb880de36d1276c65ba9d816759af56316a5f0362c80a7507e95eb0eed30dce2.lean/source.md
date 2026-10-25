# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classification.Variantdb880de36d1276c65ba9d816759af56316a5f0362c80a7507e95eb0eed30dce2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cb403a536034e90b37fba204d0fb82aace3d616` · SHA-256 `55958b526683cc804ebe4c3579518016298fbfc48a215675fe1b017ff0c4a15f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variant67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f8ff4aee8f63f8901f3dcfee/workspace/lib/Surface/Core/Classification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean

/-!
# Canonical declaration classification

Every future exported mathematical declaration must be classified as a thin
Mathlib adapter or genuinely novel work.  Disposable generated declarations use
the candidate tag and remain outside the canonical root.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b

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

end Surface.Core
```
