# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterators.Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cd1124b07777808d3b3eeba696d5599494db31f` · SHA-256 `7df4a6ab7c698f242b83d9ee213f0c0695269fc570aff441d4325884319ce20b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIter.Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InternalIter.Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic/Iterators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.RangeIterator
public import Init.Data.Range.Polymorphic.Basic
public import Init.Data.Iterators.Consumers.Collect
import Init.Data.Iterators.Consumers.Loop
import Init.Data.Option.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIter.Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267

@[expose] public section

set_option doc.verso true

open Std.Iterators

namespace Std
open PRange

namespace Rcc

variable {α : Type u}

/--
Internal function that constructs an iterator for a closed range {lit}`lo...=hi`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Rcc.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] (r : Rcc α) : Iter (α := Rxc.Iterator α) α :=
  ⟨⟨some r.lower, r.upper⟩⟩

/--
Returns the elements of the given closed range as a list in ascending order.
-/
@[always_inline, inline]
def toList [LE α] [DecidableLE α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxc.IsAlwaysFinite α] (r : Rcc α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given closed range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [LE α] [DecidableLE α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxc.IsAlwaysFinite α] (r : Rcc α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given closed range.
-/
@[always_inline, inline]
def size [Rxc.HasSize α] (r : Rcc α) : Nat :=
  Rxc.HasSize.size r.lower r.upper

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LE α] [DecidableLE α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    {r : Rcc α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxc.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    refine ⟨?_, hu⟩
    rw [LawfulUpwardEnumerableLE.le_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · rw [hr, Option.bind_some] at hn
      cases hr
      exact ⟨n, hn⟩
  · rintro ⟨hl, hu⟩
    rw [LawfulUpwardEnumerableLE.le_iff] at hl
    obtain ⟨n, hn⟩ := hl
    exact ⟨n, by simp [Internal.iter, hn], hu⟩

open Std.Rxc.Iterator in
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIter.Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.Std.Rxc.Iterator.upwardEnumerableLe_of_isPlausibleIndirectOutput
    [UpwardEnumerable α] [LE α] [DecidableLE α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    {it : Iter (α := Rxc.Iterator α) α} {out : α}
    (hout : it.IsPlausibleIndirectOutput out) :
    ∃ a, it.internalState.next = some a ∧ UpwardEnumerable.LE a out := by
  have ⟨a, ha⟩ := Option.isSome_iff_exists.mp (isSome_next_of_isPlausibleIndirectOutput hout)
  refine ⟨a, ha, ?_⟩
  simp only [isPlausibleIndirectOutput_iff, ha, Option.bind_some, exists_and_right] at hout
  exact hout.1

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LE α] [DecidableLE α] [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [Monad m] [Finite (Rxc.Iterator α) Id] :
    ForIn' m (Rcc α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxc.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Rcc

namespace Rco

variable {α : Type u}

/--
Internal function that constructs an iterator for a closed range {lit}`lo...hi`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Rco.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] (r : Rco α) : Iter (α := Rxo.Iterator α) α :=
  ⟨⟨some r.lower, r.upper⟩⟩

/--
Returns the elements of the given left-closed right-open range as a list in ascending order.
-/
@[always_inline, inline]
def toList [LT α] [DecidableLT α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxo.IsAlwaysFinite α] (r : Rco α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given left-closed right-open range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [LT α] [DecidableLT α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxo.IsAlwaysFinite α] (r : Rco α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given left-closed right-open range.
-/
@[always_inline, inline]
def size [Rxo.HasSize α] (r : Rco α) : Nat :=
  Rxo.HasSize.size r.lower r.upper

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LE α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α] [LawfulUpwardEnumerableLE α]
    {r : Rco α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxo.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    refine ⟨?_, hu⟩
    rw [LawfulUpwardEnumerableLE.le_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · rw [hr, Option.bind_some] at hn
      cases hr
      exact ⟨n, hn⟩
  · rintro ⟨hl, hu⟩
    rw [LawfulUpwardEnumerableLE.le_iff] at hl
    obtain ⟨n, hn⟩ := hl
    exact ⟨n, by simp [Internal.iter, hn], hu⟩

open Std.Rxo.Iterator in
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIter.Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.Std.Rxo.Iterator.upwardEnumerableLe_of_isPlausibleIndirectOutput
    [UpwardEnumerable α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    {it : Iter (α := Rxo.Iterator α) α} {out : α}
    (hout : it.IsPlausibleIndirectOutput out) :
    ∃ a, it.internalState.next = some a ∧ UpwardEnumerable.LE a out := by
  have ⟨a, ha⟩ := Option.isSome_iff_exists.mp (isSome_next_of_isPlausibleIndirectOutput hout)
  refine ⟨a, ha, ?_⟩
  simp only [isPlausibleIndirectOutput_iff, ha, Option.bind_some, exists_and_right] at hout
  exact hout.1

@[no_expose]
instance {m} [UpwardEnumerable α] [LE α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α] [LawfulUpwardEnumerableLT α]
    [Monad m] [Finite (Rxo.Iterator α) Id] :
    ForIn' m (Rco α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxo.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Rco

namespace Rci

variable {α : Type u}

/--
Internal function that constructs an iterator for a closed range {lit}`lo...*`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Rcc.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] (r : Rci α) : Iter (α := Rxi.Iterator α) α :=
  ⟨⟨some r.lower⟩⟩

/--
Returns the elements of the given left-closed right-unbounded range as a list in ascending order.
-/
@[always_inline, inline]
def toList [UpwardEnumerable α] [LawfulUpwardEnumerable α] [Rxi.IsAlwaysFinite α] (r : Rci α) :
    List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given left-closed right-unbounded range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [UpwardEnumerable α] [LawfulUpwardEnumerable α] [Rxi.IsAlwaysFinite α] (r : Rci α) :
    Array α :=
  Internal.iter r |>.toArray


/--
Returns the number of elements contained in the given left-closed right-unbounded range.
-/
@[always_inline, inline]
def size [Rxi.HasSize α] (r : Rci α) : Nat :=
  Rxi.HasSize.size r.lower

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LE α] [LawfulUpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] {r : Rci α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxi.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn⟩
    simp only [Membership.mem, LawfulUpwardEnumerableLE.le_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · rw [hr, Option.bind_some] at hn
      cases hr
      exact ⟨n, hn⟩
  · intro hl
    simp only [Membership.mem, LawfulUpwardEnumerableLE.le_iff] at hl
    obtain ⟨n, hn⟩ := hl
    exact ⟨n, by simp [Internal.iter, hn]⟩

open Std.Rxi.Iterator in
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIter.Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.Std.Rxi.Iterator.upwardEnumerableLe_of_isPlausibleIndirectOutput
    [UpwardEnumerable α]
    [LawfulUpwardEnumerable α]
    {it : Iter (α := Rxi.Iterator α) α} {out : α}
    (hout : it.IsPlausibleIndirectOutput out) :
    ∃ a, it.internalState.next = some a ∧ UpwardEnumerable.LE a out := by
  have ⟨a, ha⟩ := Option.isSome_iff_exists.mp (isSome_next_of_isPlausibleIndirectOutput hout)
  refine ⟨a, ha, ?_⟩
  simpa only [isPlausibleIndirectOutput_iff, ha, Option.bind_some] using! hout

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LE α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [Monad m] [Finite (Rxi.Iterator α) Id] :
    ForIn' m (Rci α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxi.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Rci

namespace Roc

variable {α : Type u}

/--
Internal function that constructs an iterator for a left-open right-closed range {lit}`lo<...=hi`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Roc.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] (r : Roc α) : Iter (α := Rxc.Iterator α) α :=
  ⟨⟨UpwardEnumerable.succ? r.lower, r.upper⟩⟩

/--
Returns the elements of the given left-open right-closed range as a list in ascending order.
-/
@[always_inline, inline]
def toList [LE α] [DecidableLE α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxc.IsAlwaysFinite α] (r : Roc α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given left-open right-closed range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [LE α] [DecidableLE α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxc.IsAlwaysFinite α] (r : Roc α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given left-open right-closed range.
-/
@[always_inline, inline]
def size [Rxc.HasSize α] [UpwardEnumerable α] (r : Roc α) : Nat :=
  match UpwardEnumerable.succ? r.lower with
  | none => 0
  | some lower => Rxc.HasSize.size lower r.upper

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LE α] [DecidableLE α] [LT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [LawfulUpwardEnumerableLT α]
    {r : Roc α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxc.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    refine ⟨?_, hu⟩
    rw [LawfulUpwardEnumerableLT.lt_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · rw [hr, Option.bind_some] at hn
      simp only [iter] at hr
      apply UpwardEnumerable.lt_of_lt_of_le
      · exact ⟨0, by simpa [UpwardEnumerable.succMany?_one]⟩
      · exact ⟨_, hn⟩
  · rintro ⟨hl, hu⟩
    rw [LawfulUpwardEnumerableLT.lt_iff] at hl
    obtain ⟨n, hn⟩ := hl
    exact ⟨n,
      by simp [Internal.iter, hn, ← UpwardEnumerable.succMany?_add_one_eq_succ?_bind_succMany?], hu⟩

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LE α] [DecidableLE α] [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [LT α] [LawfulUpwardEnumerableLT α]
    [Monad m] [Finite (Rxc.Iterator α) Id] :
    ForIn' m (Roc α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxc.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Roc

namespace Roo

variable {α : Type u}

/--
Internal function that constructs an iterator for an open range {lit}`lo<...hi`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Roo.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] (r : Roo α) : Iter (α := Rxo.Iterator α) α :=
  ⟨⟨UpwardEnumerable.succ? r.lower, r.upper⟩⟩

/--
Returns the elements of the given open range as a list in ascending order.
-/
@[always_inline, inline]
def toList [LT α] [DecidableLT α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxo.IsAlwaysFinite α] (r : Roo α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given open range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [LT α] [DecidableLT α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxo.IsAlwaysFinite α] (r : Roo α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given open range.
-/
@[always_inline, inline]
def size [Rxo.HasSize α] [UpwardEnumerable α] (r : Roo α) : Nat :=
  match UpwardEnumerable.succ? r.lower with
  | none => 0
  | some lower => Rxo.HasSize.size lower r.upper

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LT α] [DecidableLT α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α] [LawfulUpwardEnumerableLT α]
    {r : Roo α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxo.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    refine ⟨?_, hu⟩
    rw [LawfulUpwardEnumerableLT.lt_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · rw [hr, Option.bind_some] at hn
      simp only [iter] at hr
      apply UpwardEnumerable.lt_of_lt_of_le
      · exact ⟨0, by simpa [UpwardEnumerable.succMany?_one]⟩
      · exact ⟨_, hn⟩
  · rintro ⟨hl, hu⟩
    rw [LawfulUpwardEnumerableLT.lt_iff] at hl
    obtain ⟨n, hn⟩ := hl
    exact ⟨n,
      by simp [Internal.iter, hn, ← UpwardEnumerable.succMany?_add_one_eq_succ?_bind_succMany?], hu⟩

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    [Monad m] [Finite (Rxo.Iterator α) Id] :
    ForIn' m (Roo α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxo.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Roo

namespace Roi

variable {α : Type u}

/--
Internal function that constructs an iterator for a closed range {lit}`lo<...*`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Roi.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] (r : Roi α) : Iter (α := Rxi.Iterator α) α :=
  ⟨⟨UpwardEnumerable.succ? r.lower⟩⟩

/--
Returns the elements of the given left-open right-unbounded range as a list in ascending order.
-/
@[always_inline, inline]
def toList[UpwardEnumerable α] [LawfulUpwardEnumerable α] [Rxi.IsAlwaysFinite α]
    (r : Roi α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given left-open right-unbounded range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [UpwardEnumerable α] [LawfulUpwardEnumerable α] [Rxi.IsAlwaysFinite α]
    (r : Roi α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given left-open right-unbounded range.
-/
@[always_inline, inline]
def size [Rxi.HasSize α] [UpwardEnumerable α] (r : Roi α) : Nat :=
  match UpwardEnumerable.succ? r.lower with
  | none => 0
  | some lower => Rxi.HasSize.size lower

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LT α] [LawfulUpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] {r : Roi α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxi.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn⟩
    simp only [Membership.mem, LawfulUpwardEnumerableLT.lt_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · rw [hr, Option.bind_some] at hn
      apply UpwardEnumerable.lt_of_lt_of_le
      · exact ⟨0, by simpa [UpwardEnumerable.succMany?_one]⟩
      · exact ⟨_, hn⟩
  · intro hl
    simp only [Membership.mem, LawfulUpwardEnumerableLT.lt_iff] at hl
    obtain ⟨n, hn⟩ := hl
    exact ⟨n,
      by simp [Internal.iter, hn, ← UpwardEnumerable.succMany?_add_one_eq_succ?_bind_succMany?]⟩

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LT α] [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    [Monad m] [Finite (Rxi.Iterator α) Id] :
    ForIn' m (Roi α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxi.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Roi

namespace Ric

variable {α : Type u}

/--
Internal function that constructs an iterator for a left-unbounded right-closed range {lit}`*...=hi`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Ric.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [Least? α] (r : Ric α) : Iter (α := Rxc.Iterator α) α :=
  ⟨⟨Least?.least?, r.upper⟩⟩

/--
Returns the elements of the given closed range as a list in ascending order.
-/
@[always_inline, inline]
def toList [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxc.IsAlwaysFinite α] (r : Ric α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given closed range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxc.IsAlwaysFinite α] (r : Ric α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given closed range.
-/
@[always_inline, inline]
def size [Rxc.HasSize α] [Least? α] (r : Ric α) : Nat :=
  match Least?.least? (α := α) with
  | none => 0
  | some least => Rxc.HasSize.size least r.upper

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [Least? α] [LE α] [DecidableLE α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [LawfulUpwardEnumerableLeast? α]
    {r : Ric α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxc.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    simp only [Membership.mem, LawfulUpwardEnumerableLE.le_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · simpa [LawfulUpwardEnumerableLE.le_iff] using! hu
  · intro hu
    obtain ⟨init, hi, hia⟩ := LawfulUpwardEnumerableLeast?.least?_le a
    simpa [iter, hi] using ⟨hia, hu⟩

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LE α] [DecidableLE α] [Least? α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [LawfulUpwardEnumerableLeast? α]
    [Monad m] [Finite (Rxc.Iterator α) Id] :
    ForIn' m (Ric α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxc.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Ric

namespace Rio

variable {α : Type u}

/--
Internal function that constructs an iterator for a left-unbounded right-open range {lit}`*...hi`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Rio.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] [Least? α] (r : Rio α) : Iter (α := Rxo.Iterator α) α :=
  ⟨⟨Least?.least?, r.upper⟩⟩

/--
Returns the elements of the given closed range as a list in ascending order.
-/
@[always_inline, inline]
def toList [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxo.IsAlwaysFinite α] (r : Rio α) : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given closed range as an array in ascending order.
-/
@[always_inline, inline]
def toArray [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    [Rxo.IsAlwaysFinite α] (r : Rio α) : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the given closed range.
-/
@[always_inline, inline]
def size [Rxo.HasSize α] [Least? α] (r : Rio α) : Nat :=
  match Least?.least? (α := α) with
  | none => 0
  | some least => Rxo.HasSize.size least r.upper

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [LT α] [DecidableLT α] [Least? α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    [LawfulUpwardEnumerableLeast? α] {r : Rio α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxo.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    simp only [Membership.mem, LawfulUpwardEnumerableLT.lt_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · simpa [LawfulUpwardEnumerableLT.lt_iff] using! hu
  · intro hu
    obtain ⟨init, hi, hia⟩ := LawfulUpwardEnumerableLeast?.least?_le a
    simpa [iter, hi] using ⟨hia, hu⟩

@[no_expose]
instance {m} [UpwardEnumerable α]
    [LT α] [DecidableLT α] [Least? α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    [LawfulUpwardEnumerableLeast? α]
    [Monad m] [Finite (Rxo.Iterator α) Id] :
    ForIn' m (Rio α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxo.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Rio

namespace Rii

variable {α : Type u}

/--
Internal function that constructs an iterator for the full range {lean}`*...*`.
This is an internal function.
Use {name (scope := "Std.Data.Iterators.Producers.Range")}`Rio.iter` instead, which requires
importing {module -checked}`Std.Data.Iterators`.
-/
@[always_inline, inline]
def Internal.iter [UpwardEnumerable α] [Least? α] (_ : Rii α) : Iter (α := Rxi.Iterator α) α :=
  ⟨⟨Least?.least?⟩⟩

/--
Returns the elements of the given full range as a list in ascending order.
-/
@[always_inline, inline]
def toList [UpwardEnumerable α] [Least? α] (r : Rii α)
    [Iterator (Rxi.Iterator α) Id α] [Finite (Rxi.Iterator α) Id] : List α :=
  Internal.iter r |>.toList

/--
Returns the elements of the given full range as an array in ascending order.
-/
@[always_inline, inline]
def toArray {α} [UpwardEnumerable α] [Least? α] (r : Rii α)
    [Iterator (Rxi.Iterator α) Id α] [Finite (Rxi.Iterator α) Id] : Array α :=
  Internal.iter r |>.toArray

/--
Returns the number of elements contained in the full range.
-/
@[always_inline, inline]
def size (_ : Rii α) [Least? α] [Rxi.HasSize α] : Nat :=
  match Least?.least? (α := α) with
  | none => 0
  | some least => Rxi.HasSize.size least

section Iterator

theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [Least? α] [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLeast? α]
    {r : Rii α} {a : α} : (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxi.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · simp [Membership.mem]
  · obtain ⟨init, hi, hia⟩ := LawfulUpwardEnumerableLeast?.least?_le a
    simpa [Membership.mem, iter, hi] using! hia

@[no_expose]
instance {m} [UpwardEnumerable α] [Least? α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLeast? α]
    [Monad m] [Finite (Rxi.Iterator α) Id] :
    ForIn' m (Rii α) α inferInstance where
  forIn' r init f := by
    haveI := Iter.instForIn' (α := Rxi.Iterator α) (β := α) (n := m)
    refine ForIn'.forIn' (α := α) (Internal.iter r) init (fun a ha acc => f a ?_ acc)
    simp only [Membership.mem] at ha
    rwa [Internal.isPlausibleIndirectOutput_iter_iff] at ha

end Iterator

end Rii

end Std
```
