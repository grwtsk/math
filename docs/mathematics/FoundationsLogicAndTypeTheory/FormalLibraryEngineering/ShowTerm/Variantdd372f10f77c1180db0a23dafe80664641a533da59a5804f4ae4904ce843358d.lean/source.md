# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variantdd372f10f77c1180db0a23dafe80664641a533da59a5804f4ae4904ce843358d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54babcf5505ec63a66b36c91aca47822ad2b7631` · SHA-256 `c3fd43c2a85079431418e4a0a3732c53f30e396d1a579b7aa07a9d1f35d44747`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca","mathematical_subject":"Foundations.Unclassified","original_sha256":"69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/show_term.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca

/--
info: Try this:
  [apply] exact (n, 37)
-/
#guard_msgs in example (n : Nat) : Nat × Nat := by
  show_term
    constructor
    exact n
    exact 37

/--
info: Try this:
  [apply] refine (?_, ?_)
-/
#guard_msgs in example : Nat × Nat := by
  show_term constructor
  repeat exact 42

/--
info: Try this:
  [apply] fun {X} => X
-/
#guard_msgs in example : {_a : Nat} → Nat :=
  show_term by
    intro X
    exact X
```
