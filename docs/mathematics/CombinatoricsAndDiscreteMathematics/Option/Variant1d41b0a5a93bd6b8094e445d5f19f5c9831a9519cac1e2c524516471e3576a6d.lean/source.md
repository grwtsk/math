# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5a92c8965571a98806ea62535ff5af4b2974fb5` · SHA-256 `0efb7eacace7c639201d54c3b95e842b0df370a4cacc7b776d7ae12e19a43915`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.UnivOption.Variantf5bc6d5c05298fd2815794f60de94420c9ba07f0f0b5dea85301abb1ef876b72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5bc6d5c05298fd2815794f60de94420c9ba07f0f0b5dea85301abb1ef876b72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.UnivOption.Variantf5bc6d5c05298fd2815794f60de94420c9ba07f0f0b5dea85301abb1ef876b72","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f5bc6d5c05298fd2815794f60de94420c9ba07f0f0b5dea85301abb1ef876b72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Finset.Option

/-!
# fintype instances for option
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.UnivOption.Variantf5bc6d5c05298fd2815794f60de94420c9ba07f0f0b5dea85301abb1ef876b72

assert_not_exists MonoidWithZero MulAction

open Function

open Nat

universe u v

variable {α β : Type*}

open Finset Function

instance {α : Type*} [Fintype α] : Fintype (Option α) :=
  ⟨Finset.insertNone univ, fun a => by simp⟩

theorem univ_option (α : Type*) [Fintype α] : (univ : Finset (Option α)) = insertNone univ :=
  rfl

@[simp]
theorem Fintype.card_option {α : Type*} [Fintype α] :
    Fintype.card (Option α) = Fintype.card α + 1 :=
  (Finset.card_cons (by simp)).trans <| congr_arg₂ _ (card_map _) rfl

/-- If `Option α` is a `Fintype` then so is `α` -/
def fintypeOfOption {α : Type*} [Fintype (Option α)] : Fintype α :=
  ⟨Finset.eraseNone (Fintype.elems (α := Option α)), fun x =>
    mem_eraseNone.mpr (Fintype.complete (some x))⟩

/-- A type is a `Fintype` if its successor (using `Option`) is a `Fintype`. -/
def fintypeOfOptionEquiv [Fintype α] (f : α ≃ Option β) : Fintype β :=
  haveI := Fintype.ofEquiv _ f
  fintypeOfOption

namespace Fintype

/-- A recursor principle for finite types, analogous to `Nat.rec`. It effectively says
that every `Fintype` is either `Empty` or `Option α`, up to an `Equiv`. -/
def truncRecEmptyOption {P : Type u → Sort v} (of_equiv : ∀ {α β}, α ≃ β → P α → P β)
    (h_empty : P PEmpty) (h_option : ∀ {α} [Fintype α] [DecidableEq α], P α → P (Option α))
    (α : Type u) [Fintype α] [DecidableEq α] : Trunc (P α) := by
  suffices ∀ n : ℕ, Trunc (P (ULift <| Fin n)) by
    apply Trunc.bind (this (Fintype.card α))
    intro h
    apply Trunc.map _ (Fintype.truncEquivFin α)
    intro e
    exact of_equiv (Equiv.ulift.trans e.symm) h
  intro n
  induction n with
  | zero =>
    have : card PEmpty = card (ULift (Fin 0)) := by
      simp only [card_fin, card_pempty, card_ulift]
    apply Trunc.bind (truncEquivOfCardEq this)
    intro e
    apply Trunc.mk
    exact of_equiv e h_empty
  | succ n ih =>
    have : card (Option (ULift (Fin n))) = card (ULift (Fin n.succ)) := by
      simp only [card_fin, card_option, card_ulift]
    apply Trunc.bind (truncEquivOfCardEq this)
    intro e
    apply Trunc.map _ ih
    intro ih
    exact of_equiv e (h_option ih)

/-- An induction principle for finite types, analogous to `Nat.rec`. It effectively says
that every `Fintype` is either `Empty` or `Option α`, up to an `Equiv`. -/
@[elab_as_elim]
theorem induction_empty_option {P : ∀ (α : Type u) [Fintype α], Prop}
    (of_equiv : ∀ (α β) [Fintype β] (e : α ≃ β), @P α (@Fintype.ofEquiv α β ‹_› e.symm) → @P β ‹_›)
    (h_empty : P PEmpty) (h_option : ∀ (α) [Fintype α], P α → P (Option α)) (α : Type u)
    [h_fintype : Fintype α] : P α := by
  obtain ⟨p⟩ :=
    let f_empty := fun i => by convert h_empty
    let h_option : ∀ {α : Type u} [Fintype α] [DecidableEq α],
          (∀ (h : Fintype α), P α) → ∀ (h : Fintype (Option α)), P (Option α)  := by
      rintro α hα - Pα hα'
      convert h_option α (Pα _)
    @truncRecEmptyOption (fun α => ∀ h, @P α h) (@fun α β e hα hβ => @of_equiv α β hβ e (hα _))
      f_empty h_option α _ (Classical.decEq α)
  exact p _
  -- ·

end Fintype

/-- An induction principle for finite types, analogous to `Nat.rec`. It effectively says
that every `Fintype` is either `Empty` or `Option α`, up to an `Equiv`. -/
theorem Finite.induction_empty_option {P : Type u → Prop} (of_equiv : ∀ {α β}, α ≃ β → P α → P β)
    (h_empty : P PEmpty) (h_option : ∀ {α} [Fintype α], P α → P (Option α)) (α : Type u)
    [Finite α] : P α := by
  cases nonempty_fintype α
  refine Fintype.induction_empty_option ?_ ?_ ?_ α
  exacts [fun α β _ => of_equiv, h_empty, @h_option]
```
