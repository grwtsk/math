# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fin.Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbe16791f5a55c6ec3196b5999107e7dcb0c60b9` · SHA-256 `e5965adebba178fc8503f316aee7bf1430a06b2f3254aff0783f9bf0357aea6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PRangeSucc.Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PRangeSucc.Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"eb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic/Fin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Range.Polymorphic.Instances
public import Init.Data.Fin.OverflowAware
import Init.Grind
import Init.Data.Fin.Lemmas
import Init.Data.Int.OfNat
import Init.Data.Nat.Internal.Linear
import Init.Data.Option.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PRangeSucc.Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37

public section

open Std Std.PRange

namespace Fin

instance : UpwardEnumerable (Fin n) where
  succ? i := i.addNat? 1
  succMany? m i := i.addNat? m

@[simp, grind =]
theorem pRangeSucc?_eq : PRange.succ? (α := Fin n) = (·.addNat? 1) := rfl

@[simp, grind =]
theorem pRangeSuccMany?_eq : PRange.succMany? m (α := Fin n) = (·.addNat? m) :=
  rfl

instance : LawfulUpwardEnumerable (Fin n) where
  ne_of_lt a b := by grind [UpwardEnumerable.LT]
  succMany?_zero a := by simp
  succMany?_add_one m a := by grind

instance : LawfulUpwardEnumerableLE (Fin n) where
  le_iff x y := by
    simp only [le_def, UpwardEnumerable.LE, pRangeSuccMany?_eq, Fin.addNat?_eq_dif,
      Option.dite_none_right_eq_some, Option.some.injEq, ← val_inj, exists_prop]
    exact ⟨fun h => ⟨y - x, by grind⟩, by grind⟩

instance : Least? (Fin 0) where
  least? := none

instance : LawfulUpwardEnumerableLeast? (Fin 0) where
  least?_le a := False.elim (Nat.not_lt_zero _ a.isLt)

@[simp]
theorem least?_eq_of_zero : Least?.least? (α := Fin 0) = none := rfl

instance [NeZero n] : Least? (Fin n) where
  least? := some 0

instance [NeZero n] : LawfulUpwardEnumerableLeast? (Fin n) where
  least?_le a := ⟨0, rfl, (LawfulUpwardEnumerableLE.le_iff 0 a).1 (Fin.zero_le _)⟩

@[simp]
theorem least?_eq [NeZero n] : Least?.least? (α := Fin n) = some 0 := rfl

instance : LawfulUpwardEnumerableLT (Fin n) := inferInstance

instance : Rxc.HasSize (Fin n) where
  size lo hi := hi + 1 - lo

@[grind =]
theorem rxcHasSize_eq :
    Rxc.HasSize.size (α := Fin n) = fun (lo hi : Fin n) => (hi + 1 - lo : Nat) := rfl

instance : Rxc.LawfulHasSize (Fin n) where
  size_eq_zero_of_not_le bound x := by grind
  size_eq_one_of_succ?_eq_none lo hi := by grind
  size_eq_succ_of_succ?_eq_some lo hi x := by grind

instance : Rxc.IsAlwaysFinite (Fin n) := inferInstance

instance : Rxo.HasSize (Fin n) := .ofClosed
instance : Rxo.LawfulHasSize (Fin n) := inferInstance
instance : Rxo.IsAlwaysFinite (Fin n) := inferInstance

instance : Rxi.HasSize (Fin n) where
  size lo := n - lo

@[grind =]
theorem rxiHasSize_eq :
    Rxi.HasSize.size (α := Fin n) = fun (lo : Fin n) => (n - lo : Nat) := rfl

instance : Rxi.LawfulHasSize (Fin n) where
  size_eq_one_of_succ?_eq_none x := by grind
  size_eq_succ_of_succ?_eq_some lo lo' := by grind

instance : Rxi.IsAlwaysFinite (Fin n) := inferInstance

end Fin
```
