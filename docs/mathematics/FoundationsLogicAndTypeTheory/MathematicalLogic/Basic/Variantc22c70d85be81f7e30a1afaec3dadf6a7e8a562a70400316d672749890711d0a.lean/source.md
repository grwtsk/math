# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantc22c70d85be81f7e30a1afaec3dadf6a7e8a562a70400316d672749890711d0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f8381583425e28126d62c45257a7eca703584f2` · SHA-256 `2a47dcb021eed6e5f0d9b0e8ad7f73b0ddf9de59b38071617a3227ad41cde8a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MapEqBindPureComp.Variant91a41feb1093bcce8511b243a36d4c383853f3417c453cb7cb7b8f0d7f7ee014","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91a41feb1093bcce8511b243a36d4c383853f3417c453cb7cb7b8f0d7f7ee014","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MapEqBindPureComp.Variant91a41feb1093bcce8511b243a36d4c383853f3417c453cb7cb7b8f0d7f7ee014","mathematical_subject":"Logic.Foundations","original_sha256":"91a41feb1093bcce8511b243a36d4c383853f3417c453cb7cb7b8f0d7f7ee014","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Control/Monad/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
module

public import Mathlib.Logic.Equiv.Defs
public import Batteries.Lean.Except


/-!
# Monad

## Attributes

* `ext`
* `functor_norm`
* `monad_norm`

## Implementation Details

Set of rewrite rules and automation for monads in general and
`ReaderT`, `StateT`, `ExceptT` and `OptionT` in particular.

The rewrite rules for monads are carefully chosen so that `simp with functor_norm`
will not introduce monadic vocabulary in a context where
applicatives would do just fine but will handle monadic notation
already present in an expression.

In a context where monadic reasoning is desired `simp with monad_norm`
will translate functor and applicative notation into monad notation
and use regular `functor_norm` rules as well.

## Tags

functor, applicative, monad, simp

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MapEqBindPureComp.Variant91a41feb1093bcce8511b243a36d4c383853f3417c453cb7cb7b8f0d7f7ee014

@[expose] public section

universe u v
variable {α β σ : Type u}

attribute [ext] ReaderT.ext StateT.ext ExceptT.ext

@[monad_norm]
theorem map_eq_bind_pure_comp (m : Type u → Type v) [Monad m] [LawfulMonad m]
    (f : α → β) (x : m α) : f <$> x = x >>= pure ∘ f :=
  (bind_pure_comp f x).symm

/-- run a `StateT` program and discard the final state -/
def StateT.eval {m : Type u → Type v} [Functor m] (cmd : StateT σ m α) (s : σ) : m α :=
  Prod.fst <$> cmd.run s

universe u₀ u₁ v₀ v₁
/-- reduce the equivalence between two state monads to the equivalence between
their respective function spaces -/
def StateT.equiv {σ₁ α₁ : Type u₀} {σ₂ α₂ : Type u₁}
    {m₁ : Type u₀ → Type v₀} {m₂ : Type u₁ → Type v₁}
    (F : (σ₁ → m₁ (α₁ × σ₁)) ≃ (σ₂ → m₂ (α₂ × σ₂))) : StateT σ₁ m₁ α₁ ≃ StateT σ₂ m₂ α₂ :=
  F

/-- reduce the equivalence between two reader monads to the equivalence between
their respective function spaces -/
def ReaderT.equiv {ρ₁ α₁ : Type u₀} {ρ₂ α₂ : Type u₁}
    {m₁ : Type u₀ → Type v₀} {m₂ : Type u₁ → Type v₁}
    (F : (ρ₁ → m₁ α₁) ≃ (ρ₂ → m₂ α₂)) : ReaderT ρ₁ m₁ α₁ ≃ ReaderT ρ₂ m₂ α₂ :=
  F
```
