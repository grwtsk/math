# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SInt.Variant124460abfd0808476a104bf016cef55cadfa99e7eb8acbd6a329849ae8d1b55b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a59871fd049b083689f58704712959fc5d3e39e0` · SHA-256 `381c3a460f277e866fe5cfb429612360a0579bfea8c925f1a14e27a500cc8765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant8130f9cdfc6c5515fff08b52a78c0efa268d59851775c0810e2268eb80a013ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8130f9cdfc6c5515fff08b52a78c0efa268d59851775c0810e2268eb80a013ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ord.Variant8130f9cdfc6c5515fff08b52a78c0efa268d59851775c0810e2268eb80a013ef","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8130f9cdfc6c5515fff08b52a78c0efa268d59851775c0810e2268eb80a013ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Ord/SInt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Paul Reichert, Robin Arnez
-/
module

prelude
public import Init.Data.Order.Ord
public import Init.Data.Order.ClassesExtra
public import Init.Data.SInt.Basic
import Init.Data.SInt.Lemmas
import Init.Data.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant8130f9cdfc6c5515fff08b52a78c0efa268d59851775c0810e2268eb80a013ef

public section

/-!
# Instances for fixed width signed integer types.

-/

set_option autoImplicit false
set_option linter.missingDocs true

open Std

namespace Int8

instance : Ord Int8 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd Int8 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    Int8.le_antisymm Int8.le_trans Int8.le_total Int8.not_le

instance : LawfulEqOrd Int8 where
  eq_of_compare h := compareOfLessAndEq_eq_eq Int8.le_refl Int8.not_le |>.mp h

instance : LawfulOrderOrd Int8 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end Int8

namespace Int16

instance : Ord Int16 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd Int16 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    Int16.le_antisymm Int16.le_trans Int16.le_total Int16.not_le

instance : LawfulEqOrd Int16 where
  eq_of_compare h := compareOfLessAndEq_eq_eq Int16.le_refl Int16.not_le |>.mp h

instance : LawfulOrderOrd Int16 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end Int16

namespace Int32

instance : Ord Int32 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd Int32 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    Int32.le_antisymm Int32.le_trans Int32.le_total Int32.not_le

instance : LawfulEqOrd Int32 where
  eq_of_compare h := compareOfLessAndEq_eq_eq Int32.le_refl Int32.not_le |>.mp h

instance : LawfulOrderOrd Int32 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end Int32

namespace Int64

instance : Ord Int64 where
  compare x y := compareOfLessAndEq x y

instance : TransOrd Int64 :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    Int64.le_antisymm Int64.le_trans Int64.le_total Int64.not_le

instance : LawfulEqOrd Int64 where
  eq_of_compare h := compareOfLessAndEq_eq_eq Int64.le_refl Int64.not_le |>.mp h

instance : LawfulOrderOrd Int64 where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end Int64

namespace ISize

instance : Ord ISize where
  compare x y := compareOfLessAndEq x y

instance : TransOrd ISize :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    ISize.le_antisymm ISize.le_trans ISize.le_total ISize.not_le

instance : LawfulEqOrd ISize where
  eq_of_compare h := compareOfLessAndEq_eq_eq ISize.le_refl ISize.not_le |>.mp h

instance : LawfulOrderOrd ISize where
  isLE_compare _ _ := isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)
  isGE_compare _ _ := isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ => Std.le_total)

end ISize
```
