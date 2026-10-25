# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVDecide.Variant8543d9c5d6fcb5efc960a166cd1832fe7000d88299c1af1ca761779ff34f138b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb5611fbf65ca52791b071a21315222fb7c2dc42` · SHA-256 `ff8d94f7d18144aa7e2a540d2fae6bd2bc1466cb50b232371f3d38f257124437`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variantb88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Bitblast.Variantb88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast
public import Std.Tactic.BVDecide.LRAT
public import Std.Tactic.BVDecide.Normalize
public import Std.Tactic.BVDecide.Reflect
public import Std.Tactic.BVDecide.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variantb88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07

@[expose] public section

/-!
This directory contains the implementation of the bitblaster and LRAT checker for `bv_decide`,
as well as custom theorems used for reflection.
-/
```
