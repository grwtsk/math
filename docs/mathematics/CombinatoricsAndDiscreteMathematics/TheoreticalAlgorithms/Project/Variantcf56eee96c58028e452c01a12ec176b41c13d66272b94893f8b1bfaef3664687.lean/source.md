# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variantcf56eee96c58028e452c01a12ec176b41c13d66272b94893f8b1bfaef3664687

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f5809c3c0e6897a2081b018f623e1552e9e399f` · SHA-256 `7191330d14dd7e51f7902f29646220a308e58e44091419119a0d1ed40c27dee3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variant42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Project.Variant42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb","mathematical_subject":"Computation.DataStructures","original_sha256":"42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/System/Project.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.System.Core

/-! # Projects, workspaces, and tenants -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variant42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb

namespace Mathematics.System

/-- A project is a versioned semantic subsystem with explicit dependencies. -/
structure Project where
  id : ProjectId
  revision : Nat
  semanticDigest : Digest
  dependencies : List ProjectId
  deriving DecidableEq, Repr

/-- A workspace is a closed project collection, not a filesystem directory. -/
structure Workspace where
  id : WorkspaceId
  projects : List Project
  projectIdsUnique : (projects.map Project.id).Nodup

/-- Tenant state is isolated while foundational project identities may be shared. -/
structure Tenant where
  id : TenantId
  workspace : WorkspaceId
  enabledProjects : List ProjectId
  stateDigest : Digest
  deriving Repr

end Mathematics.System
```
