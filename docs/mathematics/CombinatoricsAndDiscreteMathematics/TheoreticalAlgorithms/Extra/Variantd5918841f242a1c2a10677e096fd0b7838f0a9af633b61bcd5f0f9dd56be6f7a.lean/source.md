# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extra.Variantd5918841f242a1c2a10677e096fd0b7838f0a9af633b61bcd5f0f9dd56be6f7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f11c61b9ee4df56912dc9c66c25881fefd981313` · SHA-256 `cd6331bc4ef944e27a33d1dc180ae1028c2773d024ee797ca609ee39355f494b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteArrayToUInt64LE.Variant230cafaacc0cf7f2543cbea37743a1f1f7d7a6b2a2650ebb052b01a9bde01708","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"230cafaacc0cf7f2543cbea37743a1f1f7d7a6b2a2650ebb052b01a9bde01708","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ByteArrayToUInt64LE.Variant230cafaacc0cf7f2543cbea37743a1f1f7d7a6b2a2650ebb052b01a9bde01708","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"230cafaacc0cf7f2543cbea37743a1f1f7d7a6b2a2650ebb052b01a9bde01708","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/ByteArray/Extra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.ByteArray.Basic
import Init.Data.String.Defs
import Init.Data.UInt.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteArrayToUInt64LE.Variant230cafaacc0cf7f2543cbea37743a1f1f7d7a6b2a2650ebb052b01a9bde01708

set_option doc.verso true

/--
Interprets a {name}`ByteArray` of size 8 as a little-endian {name}`UInt64`.

Panics if the array's size is not 8.
-/
public def ByteArray.toUInt64LE! (bs : ByteArray) : UInt64 :=
  assert! bs.size == 8
  (bs.get! 7).toUInt64 <<< 0x38 |||
  (bs.get! 6).toUInt64 <<< 0x30 |||
  (bs.get! 5).toUInt64 <<< 0x28 |||
  (bs.get! 4).toUInt64 <<< 0x20 |||
  (bs.get! 3).toUInt64 <<< 0x18 |||
  (bs.get! 2).toUInt64 <<< 0x10 |||
  (bs.get! 1).toUInt64 <<< 0x8  |||
  (bs.get! 0).toUInt64

/--
Interprets a {name}`ByteArray` of size 8 as a big-endian {name}`UInt64`.

Panics if the array's size is not 8.
-/
public def ByteArray.toUInt64BE! (bs : ByteArray) : UInt64 :=
  assert! bs.size == 8
  (bs.get! 0).toUInt64 <<< 0x38 |||
  (bs.get! 1).toUInt64 <<< 0x30 |||
  (bs.get! 2).toUInt64 <<< 0x28 |||
  (bs.get! 3).toUInt64 <<< 0x20 |||
  (bs.get! 4).toUInt64 <<< 0x18 |||
  (bs.get! 5).toUInt64 <<< 0x10 |||
  (bs.get! 6).toUInt64 <<< 0x8  |||
  (bs.get! 7).toUInt64
```
