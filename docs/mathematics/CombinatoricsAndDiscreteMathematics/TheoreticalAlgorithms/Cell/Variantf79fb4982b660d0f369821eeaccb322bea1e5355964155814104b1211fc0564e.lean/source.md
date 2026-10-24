# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cell.Variantf79fb4982b660d0f369821eeaccb322bea1e5355964155814104b1211fc0564e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32e6dae65f7a65b3660f611883ad586f7436060f` · SHA-256 `3203f6a074f18a281954a791800cd6d12c560e36e31153ed0d3444459eb1b5cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirtyClass.Variant8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DirtyClass.Variant8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77","mathematical_subject":"Computation.DataStructures","original_sha256":"8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Reactive/Cell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-! # Dependency-declared reactive cells -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirtyClass.Variant8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77

namespace Mathematics.Reactive

universe u v

inductive DirtyClass
  | semantic
  | representation
  | runtime
  deriving DecidableEq, Repr

/-- A reactive derivation records every semantic dependency explicitly. -/
structure Cell (Value : Type u) where
  id : StableId
  revision : Nat
  value : Value
  dependencies : List ElementRef
  dirtyClass : DirtyClass

def Cell.map {α : Type u} {β : Type v}
    (cell : Cell α) (id : StableId) (transform : α → β) : Cell β where
  id := id
  revision := cell.revision
  value := transform cell.value
  dependencies := cell.dependencies
  dirtyClass := cell.dirtyClass

end Mathematics.Reactive
```
