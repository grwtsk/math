# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Edge.Variantf38a88d22de886976dd06c81e2327936b884200dffa4854d749bb794a4e61830

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d0541141eb3d7099b118319412b547f22e7a677` · SHA-256 `5aad4856ea7ff0ca4e7012a3b94ffc9992aa519d22e65d8a500ce55abe470dcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceEdgeKind.Variant480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceEdgeKind.Variant480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e","mathematical_subject":"Foundations.Unclassified","original_sha256":"480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Element/Edge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Element.State

/-! # Typed source-support edges -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceEdgeKind.Variant480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e

namespace Mathematics.Element

open Mathematics

inductive SourceEdgeKind
  | kernelDependency
  | earlierSourceDeclaration
  | syntaxProvider
  | macroProvider
  | notationProvider
  | namespaceContext
  | sectionVariableContext
  | optionProvider
  | attributeProvider
  | localInstanceProvider
  | scopedInstanceProvider
  | commandElaborator
  | privateClusterCoupling
  | sourceGeneration
  | generatedCompanion
  deriving DecidableEq, Repr, Inhabited

structure SourceEdge where
  id : SourceEdgeId
  provider : SourceCommandId
  consumer : SourceCommandId
  kind : SourceEdgeKind
  evidenceDigest : Digest
  mandatory : Bool
  deriving DecidableEq, Repr

end Mathematics.Element
```
