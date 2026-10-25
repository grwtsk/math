# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variante5161ffcca1105b9d7b551842c0591b21e21d172fba129c049c3eec59a6393c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ce4b8a9fe085a9404d60af004b2279dbfb83d7c` · SHA-256 `e6c744a676163e79844441669435ea6cad3e18f5b1b97c8327726d03e0ae1f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ErasesToMapEq.Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ErasesToMapEq.Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Do/Internal/Ensures/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Do.Internal.Ensures.Def
public import Init.Control.Lawful.MonadAttach.Lemmas
import Init.RCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ErasesToMapEq.Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80

set_option linter.missingDocs true

namespace Std.Do.Internal

/-- An `ErasesTo`-witnessed refinement `x` of `y` recovers `y` by projecting out the property. -/
public theorem ErasesTo.map_eq {α : Type u} {m : Type u → Type v} {P : α → Prop}
    {x : m {b : α // P b}} {y : m α} [Monad m] [LawfulMonad m] (h : ErasesTo x y) :
    Subtype.val <$> x = y := by
  simpa using h.bind_eq pure

/-- `MonadAttach.attach` is bind-faithful with `x`. -/
public theorem ErasesTo.of_attach [Monad m] [LawfulMonad m]
    [MonadAttach m] [WeaklyLawfulMonadAttach m] {α} {x : m α} :
    ErasesTo (MonadAttach.attach x) x := by
  refine ⟨fun {β} k =>?_⟩
  rw [← bind_map_left, WeaklyLawfulMonadAttach.map_attach]

/-- `pure a` is `Ensures`-witnessed at the singleton predicate `(· = a)`. -/
public theorem Ensures.pure [Monad m] [LawfulMonad m] {α : Type u} (a : α) :
    Ensures (· = a) (Pure.pure a : m α) :=
  ⟨⟨Pure.pure ⟨a, rfl⟩, ⟨fun {β} _ => by simp⟩⟩⟩

/-- Weaken an `Ensures`-witness via predicate implication. -/
public theorem Ensures.weaken {m : Type u → Type v} [Monad m] [LawfulMonad m]
    {α : Type u} {P Q : α → Prop} {x : m α}
    (h : Ensures P x) (hPQ : ∀ a, P a → Q a) : Ensures Q x := by
  obtain ⟨y, hy⟩ := h.exists_refinement
  refine ⟨⟨y >>= fun ⟨a, hp⟩ => Pure.pure ⟨a, hPQ a hp⟩, ⟨fun {β} k => ?_⟩⟩⟩
  rw [bind_assoc]; simp only [pure_bind]
  exact hy.bind_eq k

/-- Compose `Ensures`-witnesses across a monadic bind. -/
public theorem Ensures.bind {m : Type u → Type v} [Monad m] [LawfulMonad m]
    {α β : Type u} {x : m α} {P : α → Prop} {k : α → m β} {Q : β → Prop}
    (h : Ensures P x) (hk : ∀ a, P a → Ensures Q (k a)) :
    Ensures Q (x >>= k) := by
  obtain ⟨y, hy⟩ := h.exists_refinement
  obtain ⟨W, hW⟩ := Classical.skolem.mp
    (fun (a : {a : α // P a}) => (hk a.val a.property).exists_refinement)
  refine ⟨⟨y >>= fun a => W a, ⟨fun {γ} g => ?_⟩⟩⟩
  rw [bind_assoc, bind_assoc]
  refine Eq.trans ?_ (hy.bind_eq (fun a => k a >>= g))
  exact bind_congr fun a => (hW a).bind_eq g

/-- Every value returned by `x` satisfies `MonadAttach.CanReturn x`. -/
public theorem Ensures.canReturn [Monad m] [LawfulMonad m]
    [MonadAttach m] [WeaklyLawfulMonadAttach m] {α} {x : m α} :
    Ensures (MonadAttach.CanReturn x) x :=
  ⟨⟨MonadAttach.attach x, ErasesTo.of_attach⟩⟩

/-- `MonadAttach.CanReturn` implies `MayReturn` for `LawfulMonadAttach` instances. -/
public theorem MayReturn.of_canReturn [Monad m] [LawfulMonad m]
    [MonadAttach m] [LawfulMonadAttach m] {x : m α} {a : α}
    (h : MonadAttach.CanReturn x a) : MayReturn x a := by
  refine ⟨fun hEns => ?_⟩
  obtain ⟨y, hy⟩ := hEns.exists_refinement
  rw [← hy.map_eq] at h
  exact LawfulMonadAttach.canReturn_map_imp h

/-- `MayReturn` implies `MonadAttach.CanReturn` for `WeaklyLawfulMonadAttach` instances. -/
public theorem MayReturn.canReturn [Monad m] [LawfulMonad m]
    [MonadAttach m] [WeaklyLawfulMonadAttach m] {x : m α} {a : α}
    (h : MayReturn x a) : MonadAttach.CanReturn x a :=
  h.imp ⟨⟨MonadAttach.attach x, ErasesTo.of_attach⟩⟩

/-- `MayReturn` is equivalent to `MonadAttach.CanReturn` for `LawfulMonadAttach` instances. -/
public theorem MayReturn.canReturn_iff [Monad m] [LawfulMonad m]
    [MonadAttach m] [LawfulMonadAttach m] (x : m α) (a : α)
    : MonadAttach.CanReturn x a ↔ MayReturn x a :=
  ⟨MayReturn.of_canReturn, MayReturn.canReturn⟩

public theorem MayReturn.canReturn_eq [Monad m] [LawfulMonad m]
    [MonadAttach m] [LawfulMonadAttach m] (x : m α)
    : MonadAttach.CanReturn x = MayReturn x :=
  funext fun a => propext (MayReturn.canReturn_iff (x := x) (a := a))

/-- `MonadAttach.attach`, retagged with `MayReturn` proofs, witnesses `IsAttach`. -/
public theorem IsAttach.of_attach [Monad m] [LawfulMonad m]
    [MonadAttach m] [LawfulMonadAttach m] :
    IsAttach (m := m)
      (fun {_} (x : m _) =>
        MonadAttach.attach x >>= fun ⟨a, h⟩ => pure ⟨a, MayReturn.of_canReturn h⟩) := by
  refine ⟨fun {α} x => ⟨fun {β} k => ?_⟩⟩
  rw [bind_assoc]
  simp only [pure_bind]
  exact ErasesTo.of_attach.bind_eq k

end Std.Do.Internal
```
