-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant85397b4141711098989de385d817dc43961fd1cc632b11aa8eb24d9a4f50da1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85397b4141711098989de385d817dc43961fd1cc632b11aa8eb24d9a4f50da1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FilterMap.Variant85397b4141711098989de385d817dc43961fd1cc632b11aa8eb24d9a4f50da1b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"85397b4141711098989de385d817dc43961fd1cc632b11aa8eb24d9a4f50da1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.DTreeMap.Raw.Basic
public import Std.Data.DTreeMap.Internal.WF.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant85397b4141711098989de385d817dc43961fd1cc632b11aa8eb24d9a4f50da1b

@[expose] public section

/-!
# Additional dependent tree map operations

This file defines more operations on `Std.DTreeMap`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : α → Type v} {γ : α → Type w} {cmp : α → α → Ordering}

namespace Std.DTreeMap
local instance : Coe (Type v) (α → Type v) where coe γ := fun _ => γ
open Std.DTreeMap.Internal (Impl)

/--
Updates the values of the map by applying the given function to all mappings, keeping
only those mappings where the function returns `some` value.
-/
@[inline]
def filterMap (f : (a : α) → β a → Option (γ a)) (t : DTreeMap α β cmp) : DTreeMap α γ cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.filterMap f t.wf.balanced |>.impl, t.wf.filterMap⟩

/-- Updates the values of the map by applying the given function to all mappings. -/
@[inline]
def map (f : (a : α) → β a → γ a) (t : DTreeMap α β cmp) : DTreeMap α γ cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.map f, t.wf.map⟩

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the smallest key that is
greater than or equal to the given key.
-/
@[inline]
def getEntryGE [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) :
    (a : α) × β a :=
  letI : Ord α := ⟨cmp⟩; Impl.getEntryGE k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the smallest key that is
greater than the given key.
-/
@[inline]
def getEntryGT [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) :
    (a : α) × β a :=
  letI : Ord α := ⟨cmp⟩; Impl.getEntryGT k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the largest key that is
less than or equal to the given key.
-/
@[inline]
def getEntryLE [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) :
    (a : α) × β a :=
  letI : Ord α := ⟨cmp⟩; Impl.getEntryLE k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the largest key that is
less than the given key.
-/
@[inline]
def getEntryLT [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) :
    (a : α) × β a :=
  letI : Ord α := ⟨cmp⟩; Impl.getEntryLT k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the smallest key that is
greater than or equal to the given key.
-/
@[inline]
def getKeyGE [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) : α :=
  letI : Ord α := ⟨cmp⟩; Impl.getKeyGE k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the smallest key that is
greater than the given key.
-/
@[inline]
def getKeyGT [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) : α :=
  letI : Ord α := ⟨cmp⟩; Impl.getKeyGT k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the largest key that is
less than or equal to the given key.
-/
@[inline]
def getKeyLE [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) : α :=
  letI : Ord α := ⟨cmp⟩; Impl.getKeyLE k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the largest key that is
less than the given key.
-/
@[inline]
def getKeyLT [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) : α :=
  letI : Ord α := ⟨cmp⟩; Impl.getKeyLT k t.inner t.wf.ordered h

namespace Const

variable {β : Type v}

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the smallest key that is
greater than or equal to the given key.
-/
@[inline]
def getEntryGE [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) :
    α × β :=
  letI : Ord α := ⟨cmp⟩; Impl.Const.getEntryGE k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the smallest key that is
greater than the given key.
-/
@[inline]
def getEntryGT [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) :
    α × β :=
  letI : Ord α := ⟨cmp⟩; Impl.Const.getEntryGT k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the largest key that is
less than or equal to the given key.
-/
@[inline]
def getEntryLE [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) :
    α × β :=
  letI : Ord α := ⟨cmp⟩; Impl.Const.getEntryLE k t.inner t.wf.ordered h

/--
Given a proof that such a mapping exists, retrieves the key-value pair with the largest key that is
less than the given key.
-/
@[inline]
def getEntryLT [TransCmp cmp] (t : DTreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) :
    α × β :=
  letI : Ord α := ⟨cmp⟩; Impl.Const.getEntryLT k t.inner t.wf.ordered h

end Const

end Std.DTreeMap
