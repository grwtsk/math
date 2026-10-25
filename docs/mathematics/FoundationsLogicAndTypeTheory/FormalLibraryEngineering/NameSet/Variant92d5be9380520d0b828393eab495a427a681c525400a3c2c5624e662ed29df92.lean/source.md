# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameSet.Variant92d5be9380520d0b828393eab495a427a681c525400a3c2c5624e662ed29df92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `196fc6a91adc125b275345fbf51ee12be9f2a4fc` · SHA-256 `1887256c5e4008e3bc8d8cfeccf9f67928bfcf1b8c748ed1723acb337d3f7b84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMap.Variantb11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NameMap.Variantb11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/NameSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Data.NameMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMap.Variantb11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662

@[expose] public section


namespace Lean.NameSet

instance : Singleton Name NameSet where
  singleton := fun n => (∅ : NameSet).insert n

instance : Union NameSet where
  union := fun s t => s.foldl (fun t n => t.insert n) t

instance : Inter NameSet where
  inter := fun s t => s.foldl (fun r n => if t.contains n then r.insert n else r) {}

instance : SDiff NameSet where
  sdiff := fun s t => t.foldl (fun s n => s.erase n) s

end Lean.NameSet
```
