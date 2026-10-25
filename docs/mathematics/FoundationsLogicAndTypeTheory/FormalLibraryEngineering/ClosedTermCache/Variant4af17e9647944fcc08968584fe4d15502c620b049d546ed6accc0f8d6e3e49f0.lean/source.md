# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosedTermCache.Variant4af17e9647944fcc08968584fe4d15502c620b049d546ed6accc0f8d6e3e49f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c25d4c6456043c17fcd18e0aa2359daacef03e2e` · SHA-256 `4f14db9e2c6b737dc13a28b5e93df0d9a4650240786c5a8dbb8a9322ea9b0060`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosedTermCache.Variante1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ClosedTermCache.Variante1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/ClosedTermCache.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosedTermCache.Variante1184350de6ef6ade1dc0f34d7320a4fc7445c5f9a7132d9ed7fc1f5518c38b9

public section

namespace Lean

structure ClosedTermCache where
  map        : PHashMap Expr Name := {}
  constNames : NameSet := {}
  -- used for `replay?` only
  revExprs   : List Expr := []
  deriving Inhabited

builtin_initialize closedTermCacheExt : EnvExtension ClosedTermCache ←
  registerEnvExtension (pure {}) (asyncMode := .sync)  -- compilation is non-parallel anyway
    (replay? := some fun oldState newState _ s =>
      let newExprs := newState.revExprs.take (newState.revExprs.length - oldState.revExprs.length)
      newExprs.foldl (init := s) fun s e =>
        let c := newState.map.find! e
        { s with map := s.map.insert e c, constNames := s.constNames.insert c, revExprs := e :: s.revExprs })

def cacheClosedTermName (env : Environment) (e : Expr) (n : Name) : Environment :=
  closedTermCacheExt.modifyState env fun s =>
    { s with map := s.map.insert e n, constNames := s.constNames.insert n, revExprs := e :: s.revExprs }

def getClosedTermName? (env : Environment) (e : Expr) : Option Name :=
  (closedTermCacheExt.getState env).map.find? e

def isClosedTermName (env : Environment) (n : Name) : Bool :=
  (closedTermCacheExt.getState env).constNames.contains n

end Lean
```
