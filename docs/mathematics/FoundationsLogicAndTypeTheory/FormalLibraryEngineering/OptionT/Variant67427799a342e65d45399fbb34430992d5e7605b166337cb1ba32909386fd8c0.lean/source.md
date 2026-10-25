# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptionT.Variant67427799a342e65d45399fbb34430992d5e7605b166337cb1ba32909386fd8c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e19f2677893c563819170450968b4000442ec1f` · SHA-256 `dc2f5879822e501f4c5b10f13dcd1d2ff59c341fbc3e5ab638260a22d80b5792`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadState.Variant019b4d7dc7cdfaa79e5b9ba3864c689fa073a28c7bbbbb0da9811909a463b181","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"019b4d7dc7cdfaa79e5b9ba3864c689fa073a28c7bbbbb0da9811909a463b181","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulMonadState.Variant019b4d7dc7cdfaa79e5b9ba3864c689fa073a28c7bbbbb0da9811909a463b181","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"019b4d7dc7cdfaa79e5b9ba3864c689fa073a28c7bbbbb0da9811909a463b181","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Control/OptionT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

public import Batteries.Control.LawfulMonadState
import all Init.Control.Option


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadState.Variant019b4d7dc7cdfaa79e5b9ba3864c689fa073a28c7bbbbb0da9811909a463b181

@[expose] public section

/-!
# Lemmas About Option Monad Transformer

This file contains lemmas about the behavior of `OptionT` and `OptionT.run`.
-/

namespace OptionT

@[simp] theorem run_monadLift [Monad m] [LawfulMonad m] [MonadLiftT n m] (x : n α) :
    (monadLift x : OptionT m α).run = some <$> (monadLift x : m α) := (map_eq_pure_bind _ _).symm

@[simp] theorem run_mapConst [Monad m] [LawfulMonad m] (x : OptionT m α) (y : β) :
    (Functor.mapConst y x).run = Option.map (Function.const α y) <$> x.run := run_map _ _

instance [Monad m] [LawfulMonad m] [MonadStateOf σ m] [LawfulMonadStateOf σ m] :
    LawfulMonadStateOf σ (OptionT m) where
  modifyGet_eq f := by simp [← liftM_modifyGet, ← liftM_get, LawfulMonadStateOf.modifyGet_eq]
  get_bind_const mx := OptionT.ext (by simp [← liftM_get])
  get_bind_get_bind mx := OptionT.ext (by simp [← liftM_get])
  get_bind_set_bind mx := OptionT.ext (by simp [← liftM_get, ← liftM_set])
  set_bind_get s := OptionT.ext (by simp [← liftM_get, ← liftM_set])
  set_bind_set s s' := OptionT.ext (by simp [← liftM_set])

end OptionT
```
