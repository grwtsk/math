# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UInt.Variant27e6ce92e9359e344e08a6d0752b37ddb13828aa809ca1708420249176ee1bf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bd0e73722d49599abb1f6ae89074ce2ffdc027c` · SHA-256 `6b7853a0ea542fdbaa2386d753263fce8d783911e0c7f76eee790c606ec7b1b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant3dfef9b3dd420463b6c4b81c6fd41347e535a21d760754c16354250d957da848","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dfef9b3dd420463b6c4b81c6fd41347e535a21d760754c16354250d957da848","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ord.Variant3dfef9b3dd420463b6c4b81c6fd41347e535a21d760754c16354250d957da848","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3dfef9b3dd420463b6c4b81c6fd41347e535a21d760754c16354250d957da848","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Ord/UInt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Paul Reichert, Robin Arnez
-/
module

prelude
public import Init.Data.Order.Ord
public import Init.Data.Order.ClassesExtra
public import Init.Data.UInt.Basic
import Init.Data.UInt.Lemmas
import Init.Data.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant3dfef9b3dd420463b6c4b81c6fd41347e535a21d760754c16354250d957da848

public section

/-!
# Instances for fixed width unsigned integer types.

-/

set_option autoImplicit false
set_option linter.missingDocs true

open Std

namespace UInt8

instance : Ord UInt8 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd UInt8 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    UInt8.le_antisymm UInt8.le_trans UInt8.le_total UInt8.not_le

instance : LawfulEqOrd UInt8 where
  eq_of_compare h := compareOfLessAndEq_eq_eq UInt8.le_refl UInt8.not_le |>.mp h

instance : LawfulOrderOrd UInt8 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end UInt8

namespace UInt16

instance : Ord UInt16 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd UInt16 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    UInt16.le_antisymm UInt16.le_trans UInt16.le_total UInt16.not_le

instance : LawfulEqOrd UInt16 where
  eq_of_compare h := compareOfLessAndEq_eq_eq UInt16.le_refl UInt16.not_le |>.mp h

instance : LawfulOrderOrd UInt16 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end UInt16

namespace UInt32

instance : Ord UInt32 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd UInt32 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    UInt32.le_antisymm UInt32.le_trans UInt32.le_total UInt32.not_le

instance : LawfulEqOrd UInt32 where
  eq_of_compare h := compareOfLessAndEq_eq_eq UInt32.le_refl UInt32.not_le |>.mp h

instance : LawfulOrderOrd UInt32 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end UInt32

namespace UInt64

instance : Ord UInt64 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd UInt64 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    UInt64.le_antisymm UInt64.le_trans UInt64.le_total UInt64.not_le

instance : LawfulEqOrd UInt64 where
  eq_of_compare h := compareOfLessAndEq_eq_eq UInt64.le_refl UInt64.not_le |>.mp h

instance : LawfulOrderOrd UInt64 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end UInt64

namespace USize

instance : Ord USize where
  compare x y := compareOfLessAndEq x y

instance : TransOrd USize :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    USize.le_antisymm USize.le_trans USize.le_total USize.not_le

instance : LawfulEqOrd USize where
  eq_of_compare h := compareOfLessAndEq_eq_eq USize.le_refl USize.not_le |>.mp h

instance : LawfulOrderOrd USize where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end USize
```
