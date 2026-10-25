# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant805bf2454b8d9dfd03fe11cbd9ab05c4d5e1ee59e06cf2c41e4d8bd4319b0513

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5bf0c7328f39fb9321d4c0881f0379a57f9bab3` · SHA-256 `bcbca00593534532d56d3f41a3d2e7b3383d5647370010bd2dd5eb7b01be0e41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rel.Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Rel.Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Option/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Classes.SetNotation
import Std.Classes.LawfulMonad
import Std.Tactic.NoMatch


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rel.Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972

namespace Option

/-- An elimination principle for `Option`. It is a nondependent version of `Option.recOn`. -/
@[simp, inline] protected def elim : Option α → β → (α → β) → β
  | some x, _, f => f x
  | none, y, _ => y

instance : Membership α (Option α) := ⟨fun a b => b = some a⟩

@[simp] theorem mem_def {a : α} {b : Option α} : a ∈ b ↔ b = some a := .rfl

instance [DecidableEq α] (j : α) (o : Option α) : Decidable (j ∈ o) :=
  inferInstanceAs <| Decidable (o = some j)

theorem isNone_iff_eq_none {o : Option α} : o.isNone ↔ o = none :=
  ⟨Option.eq_none_of_isNone, fun e => e.symm ▸ rfl⟩

theorem some_inj {a b : α} : some a = some b ↔ a = b := by simp

/--
`o = none` is decidable even if the wrapped type does not have decidable equality.
This is not an instance because it is not definitionally equal to `instance : DecidableEq Option`.
Try to use `o.isNone` or `o.isSome` instead.
-/
@[inline] def decidable_eq_none {o : Option α} : Decidable (o = none) :=
  decidable_of_decidable_of_iff isNone_iff_eq_none

instance {p : α → Prop} [DecidablePred p] : ∀ o : Option α, Decidable (∀ a ∈ o, p a)
| none => isTrue (by simp)
| some a =>
  if h : p a then isTrue fun o e => some_inj.1 e ▸ h
  else isFalse <| mt (· _ rfl) h

instance {p : α → Prop} [DecidablePred p] : ∀ o : Option α, Decidable (∃ a ∈ o, p a)
| none => isFalse fun.
| some a => if h : p a then isTrue ⟨_, rfl, h⟩ else isFalse fun ⟨_, ⟨rfl, hn⟩⟩ => h hn

/-- Extracts the value `a` from an option that is known to be `some a` for some `a`. -/
@[inline] def get {α : Type u} : (o : Option α) → isSome o → α
  | some x, _ => x

/-- `guard p a` returns `some a` if `p a` holds, otherwise `none`. -/
@[inline] def guard (p : α → Prop) [DecidablePred p] (a : α) : Option α :=
  if p a then some a else none

/--
Cast of `Option` to `List`. Returns `[a]` if the input is `some a`, and `[]` if it is `none`.
-/
@[inline] def toList : Option α → List α
  | none => []
  | some a => [a]

/--
Cast of `Option` to `Array`. Returns `[a]` if the input is `some a`, and `[]` if it is `none`.
-/
@[inline] def toArray : Option α → Array α
  | none => #[]
  | some a => #[a]

/--
Two arguments failsafe function. Returns `f a b` if the inputs are `some a` and `some b`, and
"does nothing" otherwise.
-/
def liftOrGet (f : α → α → α) : Option α → Option α → Option α
  | none, none => none
  | some a, none => some a
  | none, some b => some b
  | some a, some b => some (f a b)

/-- Lifts a relation `α → β → Prop` to a relation `Option α → Option β → Prop` by just adding
`none ~ none`. -/
inductive Rel (r : α → β → Prop) : Option α → Option β → Prop
  /-- If `a ~ b`, then `some a ~ some b` -/
  | some {a b} : r a b → Rel r (some a) (some b)
  /-- `none ~ none` -/
  | none : Rel r none none

/--
Partial bind. If for some `x : Option α`, `f : Π (a : α), a ∈ x → Option β` is a
partial function defined on `a : α` giving an `Option β`, where `some a = x`,
then `pbind x f h` is essentially the same as `bind x f`
but is defined only when all `x = some a`, using the proof to apply `f`.
-/
@[simp, inline]
def pbind : ∀ x : Option α, (∀ a : α, a ∈ x → Option β) → Option β
  | none, _ => none
  | some a, f => f a rfl

/--
Partial map. If `f : Π a, p a → β` is a partial function defined on `a : α` satisfying `p`,
then `pmap f x h` is essentially the same as `map f x` but is defined only when all members of `x`
satisfy `p`, using the proof to apply `f`.
-/
@[simp, inline] def pmap {p : α → Prop} (f : ∀ a : α, p a → β) :
    ∀ x : Option α, (∀ a ∈ x, p a) → Option β
  | none, _ => none
  | some a, H => f a (H a rfl)

/-- Flatten an `Option` of `Option`, a specialization of `joinM`. -/
@[simp, inline] def join (x : Option (Option α)) : Option α := x.bind id

/-- Map a monadic function which returns `Unit` over an `Option`. -/
@[inline] protected def forM [Pure m] : Option α → (α → m PUnit) → m PUnit
  | none  , _ => pure ()
  | some a, f => f a

instance : ForM m (Option α) α :=
  ⟨Option.forM⟩

instance : ForIn' m (Option α) α inferInstance where
  forIn' x init f := do
    match x with
    | none => return init
    | some a =>
      match ← f a rfl init with
      | .done r | .yield r => return r

/-- Like `Option.mapM` but for applicative functors. -/
@[inline] protected def mapA [Applicative m] {α β} (f : α → m β) : Option α → m (Option β)
  | none => pure none
  | some x => some <$> f x

/--
If you maybe have a monadic computation in a `[Monad m]` which produces a term of type `α`, then
there is a naturally associated way to always perform a computation in `m` which maybe produces a
result.
-/
@[inline] def sequence [Monad m] {α : Type u} : Option (m α) → m (Option α)
  | none => pure none
  | some fn => some <$> fn

/-- A monadic analogue of `Option.elim`. -/
@[inline] def elimM [Monad m] (x : m (Option α)) (y : m β) (z : α → m β) : m β :=
  do (← x).elim y z

/-- A monadic analogue of `Option.getD`. -/
@[inline] def getDM [Monad m] (x : Option α) (y : m α) : m α :=
  match x with
  | some a => pure a
  | none => y

instance (α) [BEq α] [LawfulBEq α] : LawfulBEq (Option α) where
  rfl {x} :=
    match x with
    | some x => LawfulBEq.rfl (α := α)
    | none => rfl
  eq_of_beq {x y h} := by
    match x, y with
    | some x, some y => rw [LawfulBEq.eq_of_beq (α := α) h]
    | none, none => rfl
```
