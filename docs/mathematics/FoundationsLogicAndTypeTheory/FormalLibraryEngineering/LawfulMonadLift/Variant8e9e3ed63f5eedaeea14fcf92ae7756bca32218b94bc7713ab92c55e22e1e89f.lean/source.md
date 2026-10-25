# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadLift.Variant8e9e3ed63f5eedaeea14fcf92ae7756bca32218b94bc7713ab92c55e22e1e89f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6702117d94e75ec3bc2bf5e23e97fca0a17766d3` · SHA-256 `8ad655cc3f79da4c82af1dee6a17de6f6b168960e42de956cd1fa2926992e7d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EIOBindEqESTBind.Variant6a3d35370071dbb29d910733653b338fb09dc24ab826d51ec4ebe81b7a05d516","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a3d35370071dbb29d910733653b338fb09dc24ab826d51ec4ebe81b7a05d516","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EIOBindEqESTBind.Variant6a3d35370071dbb29d910733653b338fb09dc24ab826d51ec4ebe81b7a05d516","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a3d35370071dbb29d910733653b338fb09dc24ab826d51ec4ebe81b7a05d516","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/LawfulMonadLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Quang Dao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Quang Dao
-/
module

public import Lean.Elab.Command
import all Lean.CoreM  -- for unfolding `liftIOCore`
import all Init.System.IO  -- for unfolding `BaseIO.toEIO`
import all Init.Control.StateRef  -- for unfolding `StateRefT'.lift`
import all Init.System.ST


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EIOBindEqESTBind.Variant6a3d35370071dbb29d910733653b338fb09dc24ab826d51ec4ebe81b7a05d516

@[expose] public section

/-!
# Lawful instances of `MonadLift` for the Lean monad stack.
-/

open Lean Elab Term Tactic Command

instance : LawfulMonadLift (ST σ) (EST ε σ) where
  monadLift_pure _ := rfl
  monadLift_bind _ _ := rfl

instance : LawfulMonadLift BaseIO (EIO ε) :=
  inferInstanceAs <| LawfulMonadLift (ST IO.RealWorld) (EST ε IO.RealWorld)

/-! ### `EIO.adapt` simp lemmas -/

@[simp] theorem EIO.adapt_pure (f : ε₁ → ε₂) (a : α) :
    EIO.adapt f (pure a : EIO ε₁ α) = (pure a : EIO ε₂ α) := by rfl

private theorem EIO.bind_eq_EST_bind (ma : EIO ε α) (f : α → EIO ε β) :
    (ma >>= f) = EST.bind ma f := by rfl

private theorem EIO.adapt_EST_bind (f : ε₁ → ε₂) (ma : EIO ε₁ α) (g : α → EIO ε₁ β) :
    EIO.adapt f (EST.bind ma g) = EST.bind (EIO.adapt f ma) (fun a => EIO.adapt f (g a)) := by
  funext s; simp only [EIO.adapt, EST.bind]; cases ma s <;> rfl

set_option allowUnsafeReducibility true in
attribute [implicit_reducible] EIO

@[simp] theorem EIO.adapt_bind (f : ε₁ → ε₂) (ma : EIO ε₁ α) (g : α → EIO ε₁ β) :
    EIO.adapt f (ma >>= g) = EIO.adapt f ma >>= fun a => EIO.adapt f (g a) := by
  simp only [EIO.bind_eq_EST_bind, EIO.adapt_EST_bind]

/-! ### `StateRefT'.lift` simp lemmas -/

@[simp] theorem StateRefT'.lift_pure [Monad m] (a : α) :
    (StateRefT'.lift (pure a) : StateRefT' ω σ m α) = pure a := by rfl

@[simp] theorem StateRefT'.lift_bind [Monad m] (ma : m α) (f : α → m β) :
    (StateRefT'.lift (ma >>= f) : StateRefT' ω σ m β) =
      StateRefT'.lift ma >>= fun a => StateRefT'.lift (f a) := by rfl

/-! ### `LawfulMonadLift IO CoreM` -/

private theorem Core.run_liftIOCore (x : IO α) (r : Core.Context) :
    ReaderT.run (Core.liftIOCore x) r =
      (StateRefT'.lift
        (EIO.adapt
          (fun err => Exception.error r.ref (MessageData.ofFormat (format (toString err)))) x) :
        StateRefT' IO.RealWorld Core.State (EIO Exception) α) := by rfl

instance : LawfulMonadLift IO CoreM where
  monadLift_pure a := by
    ext r
    simp [MonadLift.monadLift, Core.run_liftIOCore]
  monadLift_bind ma f := by
    ext r
    simp [MonadLift.monadLift, Core.run_liftIOCore]

instance : LawfulMonadLiftT (EIO Exception) CommandElabM := inferInstance
instance : LawfulMonadLiftT (EIO Exception) CoreM := inferInstance
instance : LawfulMonadLiftT CoreM MetaM := inferInstance
instance : LawfulMonadLiftT MetaM TermElabM := inferInstance
instance : LawfulMonadLiftT TermElabM TacticM := inferInstance
```
