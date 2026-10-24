# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Constraint.Variant172357da3c04a6b2d37f51fe0937297fad4c137beb11e74be9b16d496485b204

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2733977f216c64d30de3744ee332fdcfc82c0f19` · SHA-256 `f1872fc068c3d42b3fff65d0d06d670ce142d15da6a2512c80b680611cc4f5c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConstraintKind.Variant8c38ae07500fe2c524755083971aeb5220b9a08121290e3aaf4ed84607a1f60e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c38ae07500fe2c524755083971aeb5220b9a08121290e3aaf4ed84607a1f60e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConstraintKind.Variant8c38ae07500fe2c524755083971aeb5220b9a08121290e3aaf4ed84607a1f60e","mathematical_subject":"Computation.DataStructures","original_sha256":"8c38ae07500fe2c524755083971aeb5220b9a08121290e3aaf4ed84607a1f60e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Refactor/Constraint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Refactor.Profile

/-! # Hard module-planning constraints -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConstraintKind.Variant8c38ae07500fe2c524755083971aeb5220b9a08121290e3aaf4ed84607a1f60e

namespace Mathematics.Refactor

open Mathematics

inductive ConstraintKind
  | exactlyOneModule
  | mustLink
  | cannotLink
  | acyclicImports
  | reconstructibleContext
  | publicNamePreservation
  | statementPreservation
  | trustNonincrease
  | safetyPreservation
  | stableLayering
  | canonicalRootIsolation
  | importOnlyUmbrella
  deriving DecidableEq, Repr, Inhabited

structure Constraint where
  id : StableId
  kind : ConstraintKind
  elementIds : Array SourceElementId
  moduleIds : Array TargetModuleId
  evidenceDigest : Digest
  satisfied : Bool
  deriving DecidableEq, Repr

end Mathematics.Refactor
```
