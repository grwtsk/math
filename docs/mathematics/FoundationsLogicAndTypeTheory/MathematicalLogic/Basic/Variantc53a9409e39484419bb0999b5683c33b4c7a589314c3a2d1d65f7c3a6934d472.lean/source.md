# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantc53a9409e39484419bb0999b5683c33b4c7a589314c3a2d1d65f7c3a6934d472

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b79bac6c8a6d37a6051c8acf37fae60d78900ed` · SHA-256 `ebcd0c4741d65b8151c4daf1c86d11b6d4f569a6132183b9961ef90dc6d6ee15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MapEqBindPureComp.Variant75e325aa85e661135d5281975c127395636de1dd69934ae0f462a98ac248a319","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75e325aa85e661135d5281975c127395636de1dd69934ae0f462a98ac248a319","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MapEqBindPureComp.Variant75e325aa85e661135d5281975c127395636de1dd69934ae0f462a98ac248a319","mathematical_subject":"Logic.Foundations","original_sha256":"75e325aa85e661135d5281975c127395636de1dd69934ae0f462a98ac248a319","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/Monad/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Logic.Equiv.Defs

/-!
# Monad

## Attributes

* ext
* functor_norm
* monad_norm

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MapEqBindPureComp.Variant75e325aa85e661135d5281975c127395636de1dd69934ae0f462a98ac248a319

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
