# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9f09b2193021f34f205bd7ab434fa0bca6ec562` · SHA-256 `ce7c3dfe3331ca84bb32ec434060378d0029d7ebf7bd3b1c2dc818bb54314ef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Map.Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Map.Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc","mathematical_subject":"Logic.Foundations","original_sha256":"17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Control/Traversable/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Traversable.Lemmas
import Mathlib.Logic.Equiv.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Map.Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc

#align_import control.traversable.equiv from "leanprover-community/mathlib"@"706d88f2b8fdfeb0b22796433d7a6c1a010af9f2"

/-!
# Transferring `Traversable` instances along isomorphisms

This file allows to transfer `Traversable` instances along isomorphisms.

## Main declarations

* `Equiv.map`: Turns functorially a function `α → β` into a function `t' α → t' β` using the functor
  `t` and the equivalence `Π α, t α ≃ t' α`.
* `Equiv.functor`: `Equiv.map` as a functor.
* `Equiv.traverse`: Turns traversably a function `α → m β` into a function `t' α → m (t' β)` using
  the traversable functor `t` and the equivalence `Π α, t α ≃ t' α`.
* `Equiv.traversable`: `Equiv.traverse` as a traversable functor.
* `Equiv.isLawfulTraversable`: `Equiv.traverse` as a lawful traversable functor.
-/


universe u

namespace Equiv

section Functor

-- Porting note: `parameter` doesn't seem to work yet.
variable {t t' : Type u → Type u} (eqv : ∀ α, t α ≃ t' α)

variable [Functor t]

open Functor

/-- Given a functor `t`, a function `t' : Type u → Type u`, and
equivalences `t α ≃ t' α` for all `α`, then every function `α → β` can
be mapped to a function `t' α → t' β` functorially (see
`Equiv.functor`). -/
protected def map {α β : Type u} (f : α → β) (x : t' α) : t' β :=
  eqv β <| map f ((eqv α).symm x)
#align equiv.map Equiv.map

/-- The function `Equiv.map` transfers the functoriality of `t` to
`t'` using the equivalences `eqv`.  -/
protected def functor : Functor t' where map := Equiv.map eqv
#align equiv.functor Equiv.functor

-- Porting note: `LawfulFunctor` is missing an `#align`.
variable [LawfulFunctor t]

protected theorem id_map {α : Type u} (x : t' α) : Equiv.map eqv id x = x := by
  simp [Equiv.map, id_map]
#align equiv.id_map Equiv.id_map

protected theorem comp_map {α β γ : Type u} (g : α → β) (h : β → γ) (x : t' α) :
    Equiv.map eqv (h ∘ g) x = Equiv.map eqv h (Equiv.map eqv g x) := by
  simp [Equiv.map]; apply comp_map
#align equiv.comp_map Equiv.comp_map

protected theorem lawfulFunctor : @LawfulFunctor _ (Equiv.functor eqv) :=
  -- Porting note: why is `_inst` required here?
  let _inst := Equiv.functor eqv; {
    map_const := fun {_ _} => rfl
    id_map := Equiv.id_map eqv
    comp_map := Equiv.comp_map eqv }
#align equiv.is_lawful_functor Equiv.lawfulFunctor

protected theorem lawfulFunctor' [F : Functor t']
    (h₀ : ∀ {α β} (f : α → β), Functor.map f = Equiv.map eqv f)
    (h₁ : ∀ {α β} (f : β), Functor.mapConst f = (Equiv.map eqv ∘ Function.const α) f) :
    LawfulFunctor t' := by
  have : F = Equiv.functor eqv := by
    cases F
    dsimp [Equiv.functor]
    congr <;> ext <;> dsimp only <;> [rw [← h₀]; rw [← h₁]] <;> rfl
  subst this
  exact Equiv.lawfulFunctor eqv
#align equiv.is_lawful_functor' Equiv.lawfulFunctor'

end Functor

section Traversable

variable {t t' : Type u → Type u} (eqv : ∀ α, t α ≃ t' α)

variable [Traversable t]

variable {m : Type u → Type u} [Applicative m]

variable {α β : Type u}

/-- Like `Equiv.map`, a function `t' : Type u → Type u` can be given
the structure of a traversable functor using a traversable functor
`t'` and equivalences `t α ≃ t' α` for all α. See `Equiv.traversable`. -/
protected def traverse (f : α → m β) (x : t' α) : m (t' β) :=
  eqv β <$> traverse f ((eqv α).symm x)
#align equiv.traverse Equiv.traverse

/-- The function `Equiv.traverse` transfers a traversable functor
instance across the equivalences `eqv`. -/
protected def traversable : Traversable t' where
  toFunctor := Equiv.functor eqv
  traverse := Equiv.traverse eqv
#align equiv.traversable Equiv.traversable

end Traversable

section Equiv

variable {t t' : Type u → Type u} (eqv : ∀ α, t α ≃ t' α)

-- Is this to do with the fact it lives in `Type (u+1)` not `Prop`?
variable [Traversable t] [LawfulTraversable t]

variable {F G : Type u → Type u} [Applicative F] [Applicative G]

variable [LawfulApplicative F] [LawfulApplicative G]

variable (η : ApplicativeTransformation F G)

variable {α β γ : Type u}

open LawfulTraversable Functor

-- Porting note: Id.bind_eq is missing an `#align`.

protected theorem id_traverse (x : t' α) : Equiv.traverse eqv (pure : α → Id α) x = x := by
  -- Porting note: Changing this `simp` to an `rw` somehow breaks the proof of `comp_traverse`.
  simp [Equiv.traverse]
#align equiv.id_traverse Equiv.id_traverse

protected theorem traverse_eq_map_id (f : α → β) (x : t' α) :
    Equiv.traverse eqv ((pure : β → Id β) ∘ f) x = pure (Equiv.map eqv f x) := by
  simp [Equiv.traverse, traverse_eq_map_id, functor_norm]; rfl
#align equiv.traverse_eq_map_id Equiv.traverse_eq_map_id

protected theorem comp_traverse (f : β → F γ) (g : α → G β) (x : t' α) :
    Equiv.traverse eqv (Comp.mk ∘ Functor.map f ∘ g) x =
      Comp.mk (Equiv.traverse eqv f <$> Equiv.traverse eqv g x) := by
  simp [Equiv.traverse, comp_traverse, functor_norm]; congr; ext; simp
#align equiv.comp_traverse Equiv.comp_traverse

protected theorem naturality (f : α → F β) (x : t' α) :
    η (Equiv.traverse eqv f x) = Equiv.traverse eqv (@η _ ∘ f) x := by
  simp only [Equiv.traverse, functor_norm]
#align equiv.naturality Equiv.naturality

/-- The fact that `t` is a lawful traversable functor carries over the
equivalences to `t'`, with the traversable functor structure given by
`Equiv.traversable`. -/
protected theorem isLawfulTraversable : @LawfulTraversable t' (Equiv.traversable eqv) :=
  -- Porting note: Same `_inst` local variable problem.
  let _inst := Equiv.traversable eqv; {
    toLawfulFunctor := Equiv.lawfulFunctor eqv
    id_traverse := Equiv.id_traverse eqv
    comp_traverse := Equiv.comp_traverse eqv
    traverse_eq_map_id := Equiv.traverse_eq_map_id eqv
    naturality := Equiv.naturality eqv }
#align equiv.is_lawful_traversable Equiv.isLawfulTraversable

/-- If the `Traversable t'` instance has the properties that `map`,
`map_const`, and `traverse` are equal to the ones that come from
carrying the traversable functor structure from `t` over the
equivalences, then the fact that `t` is a lawful traversable functor
carries over as well. -/
protected theorem isLawfulTraversable' [Traversable t']
    (h₀ : ∀ {α β} (f : α → β), map f = Equiv.map eqv f)
    (h₁ : ∀ {α β} (f : β), mapConst f = (Equiv.map eqv ∘ Function.const α) f)
    (h₂ :
      ∀ {F : Type u → Type u} [Applicative F],
        ∀ [LawfulApplicative F] {α β} (f : α → F β), traverse f = Equiv.traverse eqv f) :
    LawfulTraversable t' := by
  -- we can't use the same approach as for `lawful_functor'` because
  -- h₂ needs a `LawfulApplicative` assumption
  refine' { toLawfulFunctor := Equiv.lawfulFunctor' eqv @h₀ @h₁.. } <;> intros
  · rw [h₂, Equiv.id_traverse]
  · rw [h₂, Equiv.comp_traverse, h₂]
    congr
    rw [h₂]
  · rw [h₂, Equiv.traverse_eq_map_id, h₀]; rfl
  · rw [h₂, Equiv.naturality, h₂]
#align equiv.is_lawful_traversable' Equiv.isLawfulTraversable'

end Equiv

end Equiv
```
