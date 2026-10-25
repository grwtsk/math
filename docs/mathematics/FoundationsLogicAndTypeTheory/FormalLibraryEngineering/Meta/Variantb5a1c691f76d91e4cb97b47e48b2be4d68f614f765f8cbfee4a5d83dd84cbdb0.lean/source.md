# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variantb5a1c691f76d91e4cb97b47e48b2be4d68f614f765f8cbfee4a5d83dd84cbdb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1e07eb2b0937e8f2c1ec8d2cd286f14840ea997` · SHA-256 `afa3a913bf970383e7d90f63e4fcf8fe0b8057a42dbac3280f8220c233b124f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AST.Variante60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AST.Variante60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Meta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Meta.AST
import Surface.Meta.Slug

/-!
# Surface metaprogramming adapters

What is formalized:
Small metadata helpers used by Surface generation. Runner-facing export helpers
that depend on the root `Surface` namespace are intentionally kept outside this
aggregator to avoid an import cycle.

What is certificate-gated:
Any use of generated metadata as evidence for theorem status.

What is not claimed:
Metaprogramming adapters do not replace Lean kernel checking or claim-boundary
audits.

Primary mathematical source:
Internal Surface generation utilities.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AST.Variante60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f

```
