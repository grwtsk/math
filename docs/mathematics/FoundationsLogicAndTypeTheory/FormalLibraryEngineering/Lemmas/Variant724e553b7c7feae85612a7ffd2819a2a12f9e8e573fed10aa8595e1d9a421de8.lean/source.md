# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant724e553b7c7feae85612a7ffd2819a2a12f9e8e573fed10aa8595e1d9a421de8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e7aac5eb06d4ee21df2c706b71d9024350bdfb5` · SHA-256 `abd1ff581306c4a24d221534dbf2dd1204809db2d9774ce4fc638ab045d3d01d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant28db32250844c2ec1640ea43066ddb1b426f7692c0c71a58e74135add290e106","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28db32250844c2ec1640ea43066ddb1b426f7692c0c71a58e74135add290e106","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.All.Variant28db32250844c2ec1640ea43066ddb1b426f7692c0c71a58e74135add290e106","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"28db32250844c2ec1640ea43066ddb1b426f7692c0c71a58e74135add290e106","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Control/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais, Eric Wieser
-/
module
import all Init.Control.Reader
import all Init.Control.State


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant28db32250844c2ec1640ea43066ddb1b426f7692c0c71a58e74135add290e106

@[expose] public section

namespace ReaderT

attribute [ext] ReaderT.ext

@[simp] theorem run_failure [Monad m] [Alternative m] (ctx : ρ) :
    (failure : ReaderT ρ m α).run ctx = failure := (rfl)

@[simp] theorem run_orElse [Monad m] [Alternative m] (x y : ReaderT ρ m α) (ctx : ρ) :
    (x <|> y).run ctx = (x.run ctx <|> y.run ctx) := (rfl)

@[simp] theorem run_throw [MonadExceptOf ε m] (e : ε) (ctx : ρ) :
    (throw e : ReaderT ρ m α).run ctx = throw e := rfl

@[simp] theorem run_throwThe [MonadExceptOf ε m] (e : ε) (ctx : ρ) :
    (throwThe ε e : ReaderT ρ m α).run ctx = throwThe ε e := rfl

@[simp] theorem run_tryCatch [MonadExceptOf ε m]
    (body : ReaderT ρ m α) (handler : ε → ReaderT ρ m α) (ctx : ρ) :
    (tryCatch body handler).run ctx = tryCatch (body.run ctx) (handler · |>.run ctx) := rfl

@[simp] theorem run_tryCatchThe [MonadExceptOf ε m]
    (body : ReaderT ρ m α) (handler : ε → ReaderT ρ m α) (ctx : ρ) :
    (tryCatchThe ε body handler).run ctx = tryCatchThe ε (body.run ctx) (handler · |>.run ctx) :=
  rfl

end ReaderT

namespace StateT

attribute [ext] StateT.ext

@[simp] theorem run_failure {α σ} [Monad m] [Alternative m] (s : σ) :
    (failure : StateT σ m α).run s = failure := (rfl)

@[simp] theorem run_orElse {α σ} [Monad m] [Alternative m] (x y : StateT σ m α) (s : σ) :
    (x <|> y).run s = (x.run s <|> y.run s) := (rfl)

@[simp] theorem run_throw [Monad m] [MonadExceptOf ε m] (e : ε) (s : σ) :
    (throw e : StateT σ m α).run s = (do let a ← throw e; pure (a, s)) := rfl

@[simp] theorem run_throwThe [Monad m] [MonadExceptOf ε m] (e : ε) (s : σ) :
    (throwThe ε e : StateT σ m α).run s = (do let a ← throwThe ε e; pure (a, s)) := rfl

@[simp] theorem run_tryCatch [Monad m] [MonadExceptOf ε m]
    (body : StateT σ m α) (handler : ε → StateT σ m α) (s : σ) :
    (tryCatch body handler).run s = tryCatch (body.run s) (handler · |>.run s) := rfl

@[simp] theorem run_tryCatchThe [Monad m] [MonadExceptOf ε m]
    (body : StateT σ m α) (handler : ε → StateT σ m α) (s : σ) :
    (tryCatchThe ε body handler).run s = tryCatchThe ε (body.run s) (handler · |>.run s) := rfl

end StateT
```
