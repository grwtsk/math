-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrElsePrime.Variant441ea57c8ef0eee9491d9636e50a531ba22711612d5abbd5900a5407b809de93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"441ea57c8ef0eee9491d9636e50a531ba22711612d5abbd5900a5407b809de93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OrElsePrime.Variant441ea57c8ef0eee9491d9636e50a531ba22711612d5abbd5900a5407b809de93","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"441ea57c8ef0eee9491d9636e50a531ba22711612d5abbd5900a5407b809de93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Control/EState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.ToString.Basic
public import Init.Control.State


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrElsePrime.Variant441ea57c8ef0eee9491d9636e50a531ba22711612d5abbd5900a5407b809de93

public section
universe u v

namespace EStateM

variable {ε σ α : Type u}

instance [ToString ε] [ToString α] : ToString (Result ε σ α) where
  toString
    | Result.ok a _    => String.Internal.append "ok: " (toString a)
    | Result.error e _ => String.Internal.append "error: " (toString e)

instance [Repr ε] [Repr α] : Repr (Result ε σ α) where
  reprPrec
    | Result.error e _, prec => Repr.addAppParen ("EStateM.Result.error " ++ reprArg e) prec
    | Result.ok a _, prec    => Repr.addAppParen ("EStateM.Result.ok " ++ reprArg a) prec

instance : MonadAttach (EStateM ε σ) where
  CanReturn x a := Exists fun s => Exists fun s' => x.run s = .ok a s'
  attach x s := match h : x s with
    | .ok a s' => .ok ⟨a, s, s', h⟩ s'
    | .error e s' => .error e s'

end EStateM

namespace EStateM

variable {ε σ α β : Type u}

/--
Alternative orElse operator that allows callers to select which exception should be used when both
operations fail. The default is to use the first exception since the standard `orElse` uses the
second.
-/
@[always_inline, inline]
protected def orElse' {δ} [Backtrackable δ σ] (x₁ x₂ : EStateM ε σ α) (useFirstEx := true) : EStateM ε σ α := fun s =>
  let d := Backtrackable.save s;
  match x₁ s with
  | Result.error e₁ s₁ =>
    match x₂ (Backtrackable.restore s₁ d) with
    | Result.error e₂ s₂ => Result.error (if useFirstEx then e₁ else e₂) s₂
    | ok                 => ok
  | ok                 => ok

@[always_inline]
instance : MonadFinally (EStateM ε σ) := {
  tryFinally' := fun x h s =>
    let r := x s
    match r with
    | Result.ok a s    => match h (some a) s with
      | Result.ok b s    => Result.ok (a, b) s
      | Result.error e s => Result.error e s
    | Result.error e₁ s => match h none s with
      | Result.ok _ s     => Result.error e₁ s
      | Result.error e₂ s => Result.error e₂ s
}

/--
Converts a state monad action into a state monad action with exceptions.

The resulting action does not throw an exception.
-/
@[always_inline, inline] def fromStateM {ε σ α : Type} (x : StateM σ α) : EStateM ε σ α := fun s =>
  match x.run s with
  | (a, s') => EStateM.Result.ok a s'

end EStateM
