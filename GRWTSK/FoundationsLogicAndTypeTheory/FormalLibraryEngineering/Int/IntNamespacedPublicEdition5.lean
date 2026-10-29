-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant6d4145aaac6ceae09da06647d5e909a885ea8f053becdb53421e2fac759f6adc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d4145aaac6ceae09da06647d5e909a885ea8f053becdb53421e2fac759f6adc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Instances.Variant6d4145aaac6ceae09da06647d5e909a885ea8f053becdb53421e2fac759f6adc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6d4145aaac6ceae09da06647d5e909a885ea8f053becdb53421e2fac759f6adc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.Instances
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant6d4145aaac6ceae09da06647d5e909a885ea8f053becdb53421e2fac759f6adc

public section

namespace Std.PRange

instance : UpwardEnumerable Int where
  succ? x := some (x + 1)
  succMany? n x := some (x + n)

instance : LawfulUpwardEnumerable Int where
  ne_of_lt := by
    simp only [UpwardEnumerable.LT, UpwardEnumerable.succMany?, Option.some.injEq]
    omega
  succMany?_zero := by simp [UpwardEnumerable.succMany?]
  succMany?_add_one := by
    simp only [UpwardEnumerable.succMany?, UpwardEnumerable.succ?,
      Option.bind_some, Option.some.injEq]
    omega

instance : InfinitelyUpwardEnumerable Int where
  isSome_succ? x := by simp [UpwardEnumerable.succ?]

instance : LawfulUpwardEnumerableLE Int where
  le_iff x y := by
    simp [UpwardEnumerable.LE, UpwardEnumerable.succMany?, Int.le_def, Int.nonneg_def,
      Int.sub_eq_iff_eq_add', eq_comm (a := y)]

instance : LawfulUpwardEnumerableLT Int := inferInstance

instance : Rxc.HasSize Int where
  size lo hi := (hi + 1 - lo).toNat

instance : Rxc.LawfulHasSize Int where
  size_eq_zero_of_not_le lo hi := by
    simp only [Rxc.HasSize.size]
    omega
  size_eq_one_of_succ?_eq_none lo hi := by
    simp [Rxc.HasSize.size, UpwardEnumerable.succ?]

  size_eq_succ_of_succ?_eq_some bound init x := by
    simp only [UpwardEnumerable.succ?, Rxc.HasSize.size, Option.some.injEq]
    omega

instance : Rxc.IsAlwaysFinite Int := inferInstance

instance : Rxo.HasSize Int := .ofClosed
instance : Rxo.LawfulHasSize Int := inferInstance
instance : Rxo.IsAlwaysFinite Int := inferInstance

end Std.PRange
