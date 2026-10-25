# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULift.Variantce019e326fb568fdfe2ed5746f464dfb91c088a718123108329ba6123ab8ca84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a4b424e7bb7871226a7e4d677678db86faa3f5` · SHA-256 `80401a3f8e6b22ee54fc818632cb023cb3386a28d5679c38e1d6198a59daf9ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UpInjective.Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.UpInjective.Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b","mathematical_subject":"Logic.Foundations","original_sha256":"8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Control.ULift
import Mathlib.Logic.Equiv.Basic

/-!
# Extra lemmas about `ULift` and `PLift`

In this file we provide `Subsingleton`, `Unique`, `DecidableEq`, and `isEmpty` instances for
`ULift α` and `PLift α`. We also prove `ULift.forall`, `ULift.exists`, `PLift.forall`, and
`PLift.exists`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UpInjective.Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b

universe u v u' v'

open Function

namespace PLift

variable {α : Sort u} {β : Sort v} {f : α → β}

instance [Subsingleton α] : Subsingleton (PLift α) :=
  Equiv.plift.subsingleton

instance [Nonempty α] : Nonempty (PLift α) :=
  Equiv.plift.nonempty

instance [Unique α] : Unique (PLift α) :=
  Equiv.plift.unique

instance [DecidableEq α] : DecidableEq (PLift α) :=
  Equiv.plift.decidableEq

instance [IsEmpty α] : IsEmpty (PLift α) :=
  Equiv.plift.isEmpty

theorem up_injective : Injective (@up α) :=
  Equiv.plift.symm.injective

theorem up_surjective : Surjective (@up α) :=
  Equiv.plift.symm.surjective

theorem up_bijective : Bijective (@up α) :=
  Equiv.plift.symm.bijective

theorem up_inj {x y : α} : up x = up y ↔ x = y := by simp

theorem down_surjective : Surjective (@down α) :=
  Equiv.plift.surjective

theorem down_bijective : Bijective (@down α) :=
  Equiv.plift.bijective

-- This is not a good simp lemma, as its discrimination tree key is just an arrow.
theorem «forall» {p : PLift α → Prop} : (∀ x, p x) ↔ ∀ x : α, p (PLift.up x) :=
  up_surjective.forall

@[simp]
theorem «exists» {p : PLift α → Prop} : (∃ x, p x) ↔ ∃ x : α, p (PLift.up x) :=
  up_surjective.exists

@[simp] lemma map_injective : Injective (PLift.map f) ↔ Injective f :=
  (Injective.of_comp_iff' _ down_bijective).trans <| up_injective.of_comp_iff _

@[simp] lemma map_surjective : Surjective (PLift.map f) ↔ Surjective f :=
  (down_surjective.of_comp_iff _).trans <| Surjective.of_comp_iff' up_bijective _

@[simp] lemma map_bijective : Bijective (PLift.map f) ↔ Bijective f :=
  (down_bijective.of_comp_iff _).trans <| Bijective.of_comp_iff' up_bijective _

end PLift

namespace ULift

variable {α : Type u} {β : Type v} {f : α → β}

instance [Subsingleton α] : Subsingleton (ULift α) :=
  Equiv.ulift.subsingleton

instance [Nonempty α] : Nonempty (ULift α) :=
  Equiv.ulift.nonempty

instance [Unique α] : Unique (ULift α) :=
  Equiv.ulift.unique

instance [DecidableEq α] : DecidableEq (ULift α) :=
  Equiv.ulift.decidableEq

instance [IsEmpty α] : IsEmpty (ULift α) :=
  Equiv.ulift.isEmpty

theorem up_injective : Injective (@up α) :=
  Equiv.ulift.symm.injective

theorem up_surjective : Surjective (@up α) :=
  Equiv.ulift.symm.surjective

theorem up_bijective : Bijective (@up α) :=
  Equiv.ulift.symm.bijective

theorem up_inj {x y : α} : up x = up y ↔ x = y := by simp

theorem down_surjective : Surjective (@down α) :=
  Equiv.ulift.surjective

theorem down_bijective : Bijective (@down α) :=
  Equiv.ulift.bijective

@[simp]
theorem «forall» {p : ULift α → Prop} : (∀ x, p x) ↔ ∀ x : α, p (ULift.up x) :=
  up_surjective.forall

@[simp]
theorem «exists» {p : ULift α → Prop} : (∃ x, p x) ↔ ∃ x : α, p (ULift.up x) :=
  up_surjective.exists

@[simp] lemma map_injective : Injective (ULift.map f : ULift.{u'} α → ULift.{v'} β) ↔ Injective f :=
  (Injective.of_comp_iff' _ down_bijective).trans <| up_injective.of_comp_iff _

@[simp] lemma map_surjective :
    Surjective (ULift.map f : ULift.{u'} α → ULift.{v'} β) ↔ Surjective f :=
  (down_surjective.of_comp_iff _).trans <| Surjective.of_comp_iff' up_bijective _

@[simp] lemma map_bijective : Bijective (ULift.map f : ULift.{u'} α → ULift.{v'} β) ↔ Bijective f :=
  (down_bijective.of_comp_iff _).trans <| Bijective.of_comp_iff' up_bijective _

@[ext]
theorem ext (x y : ULift α) (h : x.down = y.down) : x = y :=
  congrArg up h

@[simp]
lemma rec_update {β : ULift α → Type*} [DecidableEq α]
    (f : ∀ a, β (.up a)) (a : α) (x : β (.up a)) :
    ULift.rec (update f a x) = update (ULift.rec f) (.up a) x :=
  Function.rec_update up_injective (ULift.rec ·) (fun _ _ => rfl) (fun
    | _, _, .up _, h => (h _ rfl).elim) _ _ _

end ULift
```
