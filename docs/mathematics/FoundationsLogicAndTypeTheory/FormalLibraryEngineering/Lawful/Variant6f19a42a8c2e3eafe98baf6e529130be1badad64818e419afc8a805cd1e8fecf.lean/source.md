# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lawful.Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b03db4b533f2ca1895ac660949ad2b031d0287c` · SHA-256 `9cd8a1416be1634fb7e0822bd0e7e25c786103fca09d4f0474d555752631912e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mk.Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Mk.Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/Lawful.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/

import Mathlib.Tactic.Basic

/-!
# Functor Laws, applicative laws, and monad Laws
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mk.Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a

universe u v

namespace StateT

section

variable {σ : Type u}
variable {m : Type u → Type v}
variable {α : Type u}

/-
Porting note:
In Lean 4, `StateT` doesn't require a constructor, but it appears confusing to declare the
following theorem as a simp theorem.
```lean
@[simp]
theorem run_fun (f : σ → m (α × σ)) (st : σ) : StateT.run (fun s => f s) st = f st :=
  rfl
```
If we declare this theorem as a simp theorem, `StateT.run f st` is simplified to `f st` by eta
reduction. This breaks the structure of `StateT`.
So, we declare a constructor-like definition `StateT.mk` and a simp theorem for it.
-/

protected def mk (f : σ → m (α × σ)) : StateT σ m α := f

@[simp]
theorem run_mk (f : σ → m (α × σ)) (st : σ) : StateT.run (StateT.mk f) st = f st :=
  rfl

-- Porting note: `StateT.adapt` is removed.

end

end StateT

namespace ExceptT

variable {α ε : Type u} {m : Type u → Type v} (x : ExceptT ε m α)

attribute [simp] run_bind

@[simp]
theorem run_monadLift {n} [Monad m] [MonadLiftT n m] (x : n α) :
    (monadLift x : ExceptT ε m α).run = Except.ok <$> (monadLift x : m α) :=
  rfl

@[simp]
theorem run_monadMap {n} [MonadFunctorT n m] (f : ∀ {α}, n α → n α) :
    (monadMap (@f) x : ExceptT ε m α).run = monadMap (@f) x.run :=
  rfl

end ExceptT

namespace ReaderT

section

variable {m : Type u → Type v}
variable {α σ : Type u}

/-
Porting note:
In Lean 4, `ReaderT` doesn't require a constructor, but it appears confusing to declare the
following theorem as a simp theorem.
```lean
@[simp]
theorem run_fun (f : σ → m α) (r : σ) : ReaderT.run (fun r' => f r') r = f r :=
  rfl
```
If we declare this theorem as a simp theorem, `ReaderT.run f st` is simplified to `f st` by eta
reduction. This breaks the structure of `ReaderT`.
So, we declare a constructor-like definition `ReaderT.mk` and a simp theorem for it.
-/

protected def mk (f : σ → m α) : ReaderT σ m α := f

@[simp]
theorem run_mk (f : σ → m α) (r : σ) : ReaderT.run (ReaderT.mk f) r = f r :=
  rfl

end

end ReaderT
````
