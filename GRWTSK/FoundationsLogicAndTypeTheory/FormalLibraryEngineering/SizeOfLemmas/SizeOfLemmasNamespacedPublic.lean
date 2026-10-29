-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.All.Variant073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/SizeOfLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
import all Init.Data.Char.Basic
import all Init.SizeOf
public import Init.Data.Char.Basic
import Init.Data.Nat.Internal.Linear
meta import Init.MetaTypes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51

public section

@[simp] protected theorem Fin.sizeOf (a : Fin n) : sizeOf a = a.val + 1 := by
  cases a; simp +arith

@[simp] protected theorem BitVec.sizeOf (a : BitVec w) : sizeOf a = sizeOf a.toFin + 1 := by
  cases a; simp +arith

@[simp] protected theorem UInt8.sizeOf (a : UInt8) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt8.toNat, BitVec.toNat]

@[simp] protected theorem UInt16.sizeOf (a : UInt16) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt16.toNat, BitVec.toNat]

@[simp] protected theorem UInt32.sizeOf (a : UInt32) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt32.toNat, BitVec.toNat]

@[simp] protected theorem UInt64.sizeOf (a : UInt64) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt64.toNat, BitVec.toNat]

@[simp] protected theorem USize.sizeOf (a : USize) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [USize.toNat, BitVec.toNat]

@[simp] protected theorem Char.sizeOf (a : Char) : sizeOf a = a.toNat + 4 := by
  cases a; simp +arith [Char.toNat]

@[simp] protected theorem Subtype.sizeOf {α : Sort u_1} {p : α → Prop} (s : Subtype p) : sizeOf s = sizeOf s.val + 1 := by
  cases s; simp
