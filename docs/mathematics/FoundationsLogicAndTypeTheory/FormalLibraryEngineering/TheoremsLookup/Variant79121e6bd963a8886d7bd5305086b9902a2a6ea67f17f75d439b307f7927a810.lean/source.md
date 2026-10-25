# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TheoremsLookup.Variant79121e6bd963a8886d7bd5305086b9902a2a6ea67f17f75d439b307f7927a810

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b265008d3174fba4cad392dced5ba7bafbd870fa` · SHA-256 `35b18ee51d6eac6d552f15a985d86bd6dd80a206c0c1b33d3aed408b57c05364`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvTheoremsLookupState.Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CbvTheoremsLookupState.Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cbv/TheoremsLookup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/

module

prelude
public import Lean.Meta.Sym.Simp.Theorems
import Lean.Meta.Match.MatchEqsExt
import Lean.Meta.Eqns


/-!
# Cached Theorem Lookup

Per-function cache of `Sym.Simp.Theorem` objects for equation theorems, unfold
equations, and match equations. Avoids repeated `mkTheoremFromDecl` calls (which
involve pattern extraction and discrimination tree insertion).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvTheoremsLookupState.Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd

namespace Lean.Meta.Sym.Simp

def Theorems.insertMany (thms : Theorems) (toInsert : Array Theorem) : Theorems :=
  Array.foldl Theorems.insert thms toInsert

end Lean.Meta.Sym.Simp

namespace Lean.Meta.Tactic.Cbv
open Lean.Meta.Sym.Simp

public structure CbvTheoremsLookupState where
  eqnTheorems : PHashMap Name Theorems := {}
  unfoldTheorems : PHashMap Name Theorem := {}
  matchTheorems : PHashMap Name Theorems := {}
  deriving Inhabited

builtin_initialize cbvTheoremsLookup : EnvExtension CbvTheoremsLookupState ←
  registerEnvExtension (pure {}) (asyncMode := .local)

public def getEqnTheorems (fnName : Name) : MetaM Theorems := do
  let env ← getEnv
  let cache := cbvTheoremsLookup.getState env
  if let some thms := cache.eqnTheorems.find? fnName then
    return thms
  else
    -- Compute theorems from equation names
    let some eqnNames ← getEqnsFor? fnName | return {}
    let thms := Theorems.insertMany {} <| ← eqnNames.mapM mkTheoremFromDecl
    -- Store in cache
    modifyEnv fun env =>
      cbvTheoremsLookup.modifyState env fun cache =>
        { cache with eqnTheorems := cache.eqnTheorems.insert fnName thms }
    return thms

public def getUnfoldTheorem (fnName : Name) : MetaM (Option Theorem) := do
  let env ← getEnv
  let cache := cbvTheoremsLookup.getState env
  if let some thm := cache.unfoldTheorems.find? fnName then
    return some thm
  else
    let some unfoldEqn ← getUnfoldEqnFor? fnName (nonRec := true) | return none
    let thm ← mkTheoremFromDecl unfoldEqn

    modifyEnv fun env =>
      cbvTheoremsLookup.modifyState env fun cache =>
        { cache with unfoldTheorems := cache.unfoldTheorems.insert fnName thm }
    return some thm

public def getMatchTheorems (matcherName : Name) : MetaM Theorems := do
  let env ← getEnv
  let cache := cbvTheoremsLookup.getState env
  if let some thms := cache.matchTheorems.find? matcherName then
    return thms
  else
    let eqns ← Match.getEquationsFor matcherName
    let thms := Theorems.insertMany {} <| ← eqns.eqnNames.mapM mkTheoremFromDecl

    modifyEnv fun env =>
      cbvTheoremsLookup.modifyState env fun cache =>
        { cache with matchTheorems := cache.matchTheorems.insert matcherName thms }
    return thms

end Lean.Meta.Tactic.Cbv
```
