# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variantaca7e801d9bc9b5b1e83fa1580bcd2413861e8e128dc2e585a7c718de2c8aefb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `302fb32a2d01292555a5511384939275cf88f95d` · SHA-256 `e613d6b94770fed085278201868ce693c49149fb150edfd0609b4bfbe50270dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftBind.Variantdb069735c716e5d96d49e14f5724cfcfc505e2d2eafd2368a8ae3726e61bcaf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db069735c716e5d96d49e14f5724cfcfc505e2d2eafd2368a8ae3726e61bcaf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LiftBind.Variantdb069735c716e5d96d49e14f5724cfcfc505e2d2eafd2368a8ae3726e61bcaf0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"db069735c716e5d96d49e14f5724cfcfc505e2d2eafd2368a8ae3726e61bcaf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Control/Lawful/MonadLift/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Quang Dao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Quang Dao, Paul Reichert
-/
module

prelude
import all Init.Control.Option
import all Init.Control.Except
public import Init.Control.ExceptCps
import all Init.Control.ExceptCps
import all Init.Control.StateRef
public import Init.Control.StateCps
import all Init.Control.StateCps
import all Init.Control.Id
public import Init.Control.Lawful.MonadLift.Basic
public import Init.Control.Option
public import Init.Control.State
public import Init.Control.StateRef
import Init.Control.Lawful.Instances
import Init.Control.Lawful.MonadLift.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftBind.Variantdb069735c716e5d96d49e14f5724cfcfc505e2d2eafd2368a8ae3726e61bcaf0

public section

universe u v w x

variable {m : Type u → Type v} {n : Type u → Type w} {o : Type u → Type x}

variable (m n o) in
instance [Monad m] [Monad n] [Monad o] [MonadLift n o] [MonadLiftT m n]
    [LawfulMonadLift n o] [LawfulMonadLiftT m n] : LawfulMonadLiftT m o where
  monadLift_pure := fun a => by
    simp only [monadLift, LawfulMonadLift.monadLift_pure, liftM_pure]
  monadLift_bind := fun ma f => by
    simp only [monadLift, LawfulMonadLift.monadLift_bind, liftM_bind]

variable (m) in
instance [Monad m] : LawfulMonadLiftT m m where
  monadLift_pure _ := rfl
  monadLift_bind _ _ := rfl

namespace StateT

variable [Monad m] [LawfulMonad m]

instance {σ : Type u} : LawfulMonadLift m (StateT σ m) where
  monadLift_pure _ := by ext; simp [MonadLift.monadLift]
  monadLift_bind _ _ := by ext; simp [MonadLift.monadLift]

end StateT

namespace ReaderT

variable [Monad m]

instance {ρ : Type u} : LawfulMonadLift m (ReaderT ρ m) where
  monadLift_pure _ := rfl
  monadLift_bind _ _ := rfl

end ReaderT

namespace OptionT

variable [Monad m] [LawfulMonad m]

@[simp]
theorem lift_bind {α β : Type u} (ma : m α) (f : α → m β) :
    OptionT.lift (ma >>= f) = OptionT.lift ma >>= (fun a => OptionT.lift (f a)) := by
  simp only [bind, OptionT.bind, OptionT.mk, OptionT.lift, bind_pure_comp, bind_map_left,
    map_bind]

instance : LawfulMonadLift m (OptionT m) where
  monadLift_pure := lift_pure
  monadLift_bind := lift_bind

end OptionT

namespace ExceptT

variable [Monad m] [LawfulMonad m]

@[simp]
theorem lift_bind {α β ε : Type u} (ma : m α) (f : α → m β) :
    ExceptT.lift (ε := ε) (ma >>= f) = ExceptT.lift ma >>= (fun a => ExceptT.lift (f a)) := by
  simp only [bind, ExceptT.bind, mk, ExceptT.lift, bind_map_left, ExceptT.bindCont, map_bind]

instance : LawfulMonadLift m (ExceptT ε m) where
  monadLift_pure := lift_pure
  monadLift_bind := lift_bind

instance : LawfulMonadLift (Except ε) (ExceptT ε m) where
  monadLift_pure _ := by
    simp only [MonadLift.monadLift, mk, pure, Except.pure, ExceptT.pure]
  monadLift_bind ma _ := by
    simp only [bind, ExceptT.bind, mk, MonadLift.monadLift, pure_bind, ExceptT.bindCont, Except.bind]
    rcases ma with _ | _ <;> simp

end ExceptT

namespace StateRefT'

instance {ω σ : Type} {m : Type → Type} [Monad m] : LawfulMonadLift m (StateRefT' ω σ m) where
  monadLift_pure _ := by
    simp only [MonadLift.monadLift, pure]
    unfold StateRefT'.lift ReaderT.pure
    simp only
  monadLift_bind _ _ := by
    simp only [MonadLift.monadLift, bind]
    unfold StateRefT'.lift ReaderT.bind
    simp only

end StateRefT'

namespace StateCpsT

instance {σ : Type u} [Monad m] [LawfulMonad m] : LawfulMonadLift m (StateCpsT σ m) where
  monadLift_pure _ := by
    simp only [MonadLift.monadLift, pure]
    unfold StateCpsT.lift
    simp only [pure_bind]
  monadLift_bind _ _ := by
    simp only [MonadLift.monadLift, bind]
    unfold StateCpsT.lift
    simp only [bind_assoc]

end StateCpsT

namespace ExceptCpsT

instance {ε : Type u} [Monad m] [LawfulMonad m] : LawfulMonadLift m (ExceptCpsT ε m) where
  monadLift_pure _ := by
    simp only [MonadLift.monadLift, pure]
    unfold ExceptCpsT.lift
    simp only [pure_bind]
  monadLift_bind _ _ := by
    simp only [MonadLift.monadLift, bind]
    unfold ExceptCpsT.lift
    simp only [bind_assoc]

end ExceptCpsT

namespace Id

instance [Monad m] [LawfulMonad m] : LawfulMonadLiftT Id m where
  monadLift_pure a := by simp [monadLift]
  monadLift_bind a f := by simp [monadLift]

end Id
```
