# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldEnvironment.Variant7cb3feb496c0b68b99a630aa0abc8119f925df449224a6340bcc27faeff3fec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e402cebd80f9663a9ab8cdb39441b864dc84bf48` · SHA-256 `417fe2b2a2e3f386675caaaac481e8d98026434a84347567dafcdfadaba889ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldDeclErrorRef.Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FoldDeclErrorRef.Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Lean/FoldEnvironment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

public import Lean.Meta.Basic
public import Mathlib.Init

/-!
# Folding through the environment efficiently

This file defines `foldImportedDecls`, a function for efficiently folding through the environment.
It splits the environment into parts, each of which is folded over in a separate thread.

We also provide `foldCurrFileDecls` which loops through the declarations of the current module,
without any parallelism.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldDeclErrorRef.Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b

variable {α : Type}

open Lean

namespace Lean.Meta

/-- An `IO.Ref` that keeps track of any errors that could have been thrown by `act`
when folding over the constants in the environment. -/
public abbrev FoldDeclErrorRef := IO.Ref (List MessageData)

/-- Run `act env name constInfo`, catching potential errors. -/
@[inline]
def visitConst (modName : Name) (errorRef : FoldDeclErrorRef)
    (act : α → Name → ConstantInfo → MetaM α)
    (a : α) (name : Name) (constInfo : ConstantInfo) : MetaM α := do
  try
    act a name constInfo
  catch e =>
    let msg := m!"Processing failure with {name} in {modName}:\n  {e.toMessageData}"
    errorRef.modify (msg :: ·)
    return a

/-- Loop through all constants in modules with module index from `start` to `stop - 1`. -/
@[specialize]
def foldModules (ngen : NameGenerator) (errorRef : FoldDeclErrorRef)
    (env : Environment) (init : α) (act : α → Name → ConstantInfo → MetaM α)
    (mctx : Meta.Context) (cctx : Core.Context)
    (start stop : Nat) : EIO Exception α := do
  let cctx := { cctx with initHeartbeats := ← IO.getNumHeartbeats }
  let go : MetaM α := do
    let mut a := init
    for i in start...stop do
      Core.checkInterrupted
      let modName := env.header.moduleNames[i]!
      let { constNames, constants, .. } := env.header.moduleData[i]!
      for h : i in *...constNames.size do
        let name := constNames[i]
        let constInfo := constants[i]!
        a ← visitConst modName errorRef act a name constInfo
    return a
  go.run' mctx {} |>.run' cctx { env, ngen }

/-- Fold through all imported constants using `act`.
This uses parallelism, with each thread independently folding over a subset of modules.
The array of tasks is returned, so this function typically returns before all tasks have finished.
The results can then be combined using `Array.foldl`. -/
@[specialize]
public def foldImportedDecls (init : α) (cfg : Config)
    (act : α → Name → ConstantInfo → MetaM α) (constantsPerTask : Nat := 5000) :
    CoreM (Array (Task (Except Exception α)) × FoldDeclErrorRef) := do
  let env ← getEnv
  let numModules := env.header.moduleData.size
  let mctx := { keyedConfig := cfg.toConfigWithKey }
  let cctx ← read
  let errorRef ← IO.mkRef {}
  let mut tasks := #[]
  let mut start := 0
  let mut count := 0
  for h : idx in *...numModules do
    count := count + env.header.moduleData[idx].constants.size
    if count > constantsPerTask then
      let (childNGen, parentNGen) := (← getNGen).mkChild
      setNGen parentNGen
      let t ← (foldModules childNGen errorRef env init act mctx cctx start (idx + 1)).asTask
      tasks := tasks.push t
      count := 0
      start := idx + 1
  if start < numModules then
    let (childNGen, parentNGen) := (← getNGen).mkChild
    setNGen parentNGen
    let t ← (foldModules childNGen errorRef env init act mctx cctx start numModules).asTask
    tasks := tasks.push t
  return (tasks, errorRef)

/-- Fold through all constants of the current file using `act`. -/
@[specialize]
public def foldCurrFileDecls (init : α) (cfg : Config)
    (act : α → Name → ConstantInfo → MetaM α) : CoreM (α × FoldDeclErrorRef) := do
  let env ← getEnv
  let modName := env.header.mainModule
  let errorRef ← IO.mkRef {}
  let (childNGen, parentNGen) := (← getNGen).mkChild
  setNGen parentNGen
  let go : MetaM α := env.constants.map₂.foldlM (visitConst modName errorRef act) init
  let result ← go.run' { keyedConfig := cfg.toConfigWithKey } {}
    |>.run' (← read) { env, ngen := childNGen }
  return (result, errorRef)

end Lean.Meta
```
