-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToIntEq.Variant8c1d4c9b2c93b8cb940a2a133ac2f5f3386835a3c7639a1982a2e74ddf941242","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c1d4c9b2c93b8cb940a2a133ac2f5f3386835a3c7639a1982a2e74ddf941242","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToIntEq.Variant8c1d4c9b2c93b8cb940a2a133ac2f5f3386835a3c7639a1982a2e74ddf941242","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8c1d4c9b2c93b8cb940a2a133ac2f5f3386835a3c7639a1982a2e74ddf941242","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/OrderInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.String.Defs
public import Init.Grind.ToInt
public import Init.Data.Order.Classes
import Init.Data.Order.PackageFactories
import Init.Omega
public import Init.Data.Order.PackageFactories


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToIntEq.Variant8c1d4c9b2c93b8cb940a2a133ac2f5f3386835a3c7639a1982a2e74ddf941242

public section

/-!
# Register string positions with `grind`.
-/

namespace String

namespace Internal

scoped macro "order" : tactic => `(tactic| {
    simp [Pos.Raw.lt_iff, Pos.Raw.le_iff, String.Pos.lt_iff, String.Pos.le_iff, Slice.Pos.lt_iff,
      Slice.Pos.le_iff, Pos.Raw.ext_iff, String.Pos.ext_iff, Slice.Pos.ext_iff] at *;
    try omega })

end Internal

open Internal

namespace Pos.Raw

instance : Lean.Grind.ToInt String.Pos.Raw (.ci 0) where
  toInt p := p.byteIdx
  toInt_inj p q := by simp [Pos.Raw.ext_iff, ← Int.ofNat_inj]
  toInt_mem := by simp

@[simp]
theorem toInt_eq {p : Pos.Raw} : Lean.Grind.ToInt.toInt p = p.byteIdx := rfl

instance : Lean.Grind.ToInt.LE String.Pos.Raw (.ci 0) where
  le_iff := by simp [Pos.Raw.le_iff]

instance : Lean.Grind.ToInt.LT String.Pos.Raw (.ci 0) where
  lt_iff := by simp [Pos.Raw.lt_iff]

instance : Std.Total (α := String.Pos.Raw) (· ≤ ·) := ⟨fun _ _ => by order⟩
instance : Trans (α := String.Pos.Raw) (· ≤ ·) (· ≤ ·) (· ≤ ·) := ⟨fun _ _ => by order⟩
instance : Std.Antisymm (α := String.Pos.Raw) (· ≤ ·) := ⟨fun _ _ => by order⟩

instance : Std.LawfulOrderBEq String.Pos.Raw := ⟨fun _ _ => by order⟩
instance : Std.LawfulOrderLT String.Pos.Raw := ⟨fun _ _ => by order⟩

instance : Std.LinearOrderPackage String.Pos.Raw := .ofLE _

end Pos.Raw

namespace Pos

instance {s : String} : Lean.Grind.ToInt s.Pos (.co 0 (s.utf8ByteSize + 1)) where
  toInt p := p.offset.byteIdx
  toInt_inj p q := by simp [Pos.ext_iff, Pos.Raw.ext_iff, ← Int.ofNat_inj]
  toInt_mem p := by have := p.isValid.le_utf8ByteSize; simp; omega

@[simp]
theorem toInt_eq {s : String} {p : s.Pos} : Lean.Grind.ToInt.toInt p = p.offset.byteIdx := rfl

instance {s : String} : Lean.Grind.ToInt.LE s.Pos (.co 0 (s.utf8ByteSize + 1)) where
  le_iff := by simp [Pos.le_iff, Pos.Raw.le_iff]

instance {s : String} : Lean.Grind.ToInt.LT s.Pos (.co 0 (s.utf8ByteSize + 1)) where
  lt_iff := by simp [Pos.lt_iff, Pos.Raw.lt_iff]

instance {s : String} : Std.Total (α := s.Pos) (· ≤ ·) := ⟨fun _ _ => by order⟩
instance {s : String} : Trans (α := s.Pos) (· ≤ ·) (· ≤ ·) (· ≤ ·) := ⟨fun _ _ => by order⟩
instance {s : String} : Std.Antisymm (α := s.Pos) (· ≤ ·) := ⟨fun _ _ => by order⟩

instance {s : String} : Std.LawfulOrderBEq s.Pos := ⟨fun _ _ => by order⟩
instance {s : String} : Std.LawfulOrderLT s.Pos := ⟨fun _ _ => by order⟩

instance {s : String} : Std.LinearOrderPackage s.Pos := .ofLE _

end Pos

namespace Slice.Pos

instance {s : Slice} : Lean.Grind.ToInt s.Pos (.co 0 (s.utf8ByteSize + 1)) where
  toInt p := p.offset.byteIdx
  toInt_inj p q := by simp [Pos.ext_iff, Pos.Raw.ext_iff, ← Int.ofNat_inj]
  toInt_mem p := by have := p.isValidForSlice.le_utf8ByteSize; simp; omega

@[simp]
theorem toInt_eq {s : Slice} {p : s.Pos} : Lean.Grind.ToInt.toInt p = p.offset.byteIdx := rfl

instance {s : Slice} : Lean.Grind.ToInt.LE s.Pos (.co 0 (s.utf8ByteSize + 1)) where
  le_iff := by simp [Pos.le_iff, Pos.Raw.le_iff]

instance {s : Slice} : Lean.Grind.ToInt.LT s.Pos (.co 0 (s.utf8ByteSize + 1)) where
  lt_iff := by simp [Pos.lt_iff, Pos.Raw.lt_iff]

instance {s : Slice} : Std.Total (α := s.Pos) (· ≤ ·) := ⟨fun _ _ => by order⟩
instance {s : Slice} : Trans (α := s.Pos) (· ≤ ·) (· ≤ ·) (· ≤ ·) := ⟨fun _ _ => by order⟩
instance {s : Slice} : Std.Antisymm (α := s.Pos) (· ≤ ·) := ⟨fun _ _ => by order⟩

instance {s : Slice} : Std.LawfulOrderBEq s.Pos := ⟨fun _ _ => by order⟩
instance {s : Slice} : Std.LawfulOrderLT s.Pos := ⟨fun _ _ => by order⟩

instance {s : Slice} : Std.LinearOrderPackage s.Pos := .ofLE _

end Slice.Pos

end String
