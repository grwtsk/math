# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Identity.Variantc56732ff9b66219e633e6683248ca8435afab4f37db2acd272b166029ac1f5f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc207ba00154a285f4514931770d202a6753663a` · SHA-256 `974f4c7f97da1583e75a88033174f4ba54ea400a8a83db86d79bdf043c5f28dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropositionId.Variantd6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PropositionId.Variantd6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839","mathematical_subject":"Computation.DataStructures","original_sha256":"d6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Identity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Index.Records
import DAF.Manifest

/-!
# Stable world-model identities

The existing Continuous Assurance identifiers for mathematical objects,
formal declarations, representations, obligations, and artifacts are reused.
This module adds only identities not already present in the parent namespace.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropositionId.Variantd6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839

namespace Surface.ContinuousAssurance.WorldModel

/-- Stable identity of a proposition independently of its representation. -/
structure PropositionId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of an assumption in a finite assumption context. -/
structure AssumptionId where
  value : String
  deriving DecidableEq, Repr

/-- Stable semantic identity of one mathematical world model. -/
structure WorldModelId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one typed model translation. -/
structure TranslationId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one declared dependency edge. -/
structure DependencyId where
  value : String
  deriving DecidableEq, Repr

/-- Human-independent vocabulary identity for a model version. -/
structure Vocabulary where
  identity : ArtifactIdentity
  symbols : List String
  deriving DecidableEq, Repr

/-- Namespace boundary in which a model version publishes declarations. -/
structure DeclarationNamespace where
  value : String
  deriving DecidableEq, Repr

/-- Identity of the finite registry snapshot itself. -/
structure RegistryVersionId where
  version : DAF.Version
  sourceDigest : ArtifactIdentity
  deriving DecidableEq, Repr

end Surface.ContinuousAssurance.WorldModel

```
