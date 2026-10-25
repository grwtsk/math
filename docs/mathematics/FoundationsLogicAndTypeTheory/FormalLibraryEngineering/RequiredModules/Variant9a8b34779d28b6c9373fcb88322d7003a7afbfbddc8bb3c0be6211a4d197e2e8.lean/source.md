# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequiredModules.Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26cfef4f6873418109a471d05c9d67276ba2497b` · SHA-256 `72dbbf43155ccfde4337009a7128a936267ad89d927fe65b19c83c50c6963fcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameRequiredModules.Variant376952cd46c9bc674ab92ce443e0a3fb51a10a58c426b0cdf76fdbdb5ce8d00f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"376952cd46c9bc674ab92ce443e0a3fb51a10a58c426b0cdf76fdbdb5ce8d00f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NameRequiredModules.Variant376952cd46c9bc674ab92ce443e0a3fb51a10a58c426b0cdf76fdbdb5ce8d00f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"376952cd46c9bc674ab92ce443e0a3fb51a10a58c426b0cdf76fdbdb5ce8d00f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Imports/RequiredModules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.CoreM
public import Lean.Data.NameMap.Basic
public import Lean.Environment
import ImportGraph.Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameRequiredModules.Variant376952cd46c9bc674ab92ce443e0a3fb51a10a58c426b0cdf76fdbdb5ce8d00f

public section

namespace Lean

open Lean

/--
Return the names of the modules in which constants used in the specified declaration were defined.

Note that this will *not* account for tactics and syntax used in the declaration,
so the results may not suffice as imports.
-/
def Name.requiredModules (n : Name) : CoreM NameSet := do
  let env ← getEnv
  let mut requiredModules : NameSet := {}
  let ci ← getConstInfo n
  for n in ci.getUsedConstantsAsSet do
    match env.getModuleFor? n with
    | some m =>
      if ¬ (`Init).isPrefixOf m then
        requiredModules := requiredModules.insert m
    | none => pure ()
  return requiredModules

/--
Return the names of the constants used in the specified declarations,
and the constants they use transitively.
-/
def NameSet.transitivelyUsedConstants (s : NameSet) : CoreM NameSet := do
  let mut usedConstants : NameSet := {}
  let mut toProcess : NameSet := s
  while !toProcess.isEmpty do
    let current := toProcess.min!
    toProcess := toProcess.erase current
    usedConstants := usedConstants.insert current
    for m in (← getConstInfo current).getUsedConstantsAsSet do
      if !usedConstants.contains m then
        toProcess := toProcess.insert m
  return usedConstants

/--
Return the names of the constants used in the specified declaration,
and the constants they use transitively.
-/
def Name.transitivelyUsedConstants (n : Name) : CoreM NameSet :=
  NameSet.transitivelyUsedConstants {n}

/--
Return the names of the modules in which constants used transitively
in the specified declarations were defined.

Note that this will *not* account for tactics and syntax used in the declaration,
so the results may not suffice as imports.
-/
def NameSet.transitivelyRequiredModules (s : NameSet) (env : Environment) : CoreM NameSet := do
  let mut requiredModules : NameSet := {}
  for m in (← s.transitivelyUsedConstants) do
    if let some module := env.getModuleFor? m then
      requiredModules := requiredModules.insert module
  return requiredModules

/--
Return the names of the modules in which constants used transitively
in the specified declaration were defined.

Note that this will *not* account for tactics and syntax used in the declaration,
so the results may not suffice as imports.
-/
def Name.transitivelyRequiredModules (n : Name) (env : Environment) : CoreM NameSet :=
  NameSet.transitivelyRequiredModules {n} env

/--
Finds all constants defined in the specified module,
and identifies all modules containing constants which are transitively required by those constants.
-/
def Environment.transitivelyRequiredModules (env : Environment) (module : Name) : CoreM NameSet := do
  let constants := env.constants.map₁.values.map (·.name)
    |>.filter (! ·.isInternal)
    |>.filter (env.getModuleFor? · = some module)
  (NameSet.ofList constants).transitivelyRequiredModules env

/--
Computes all the modules transitively required by the specified modules.
Should be equivalent to calling `transitivelyRequiredModules` on each module, but shares more of the work.
-/
partial def Environment.transitivelyRequiredModules' (env : Environment) (modules : List Name) (verbose : Bool := false) :
    CoreM (NameMap NameSet) := do
  let N := env.header.moduleNames.size
  let mut c2m : NameMap (BitVec N) := {}
  let mut pushed : NameSet := {}
  let mut result : NameMap NameSet := {}
  for m in modules do
    if verbose then
      IO.println s!"Processing module {m}"
    let mut r : BitVec N := 0
    for n in env.header.moduleData[(env.header.moduleNames.idxOf? m).getD 0]!.constNames do
      if ! n.isInternal then
      -- This is messy: Mathlib is big enough that writing a recursive function causes a stack overflow.
      -- So we use an explicit stack instead. We visit each constant twice:
      -- once to record the constants transitively used by it,
      -- and again to record the modules which defined those constants.
      let mut stack : List (Name × Option NameSet) := [⟨n, none⟩]
      pushed := pushed.insert n
      while !stack.isEmpty do
        match stack with
        | [] => panic! "Stack is empty"
        | (c, used?) :: tail =>
          stack := tail
          match used? with
          | none =>
            if !c2m.contains c then
              let used := (← getConstInfo c).getUsedConstantsAsSet
              stack := ⟨c, some used⟩ :: stack
              for u in used do
                if !pushed.contains u then
                  stack := ⟨u, none⟩ :: stack
                  pushed := pushed.insert u
          | some used =>
            let usedModules : NameSet :=
              used.foldl (init := {}) (fun s u => if let some m := env.getModuleFor? u then s.insert m else s)
            let transitivelyUsed : BitVec N :=
              used.foldl (init := toBitVec usedModules) (fun s u => s ||| ((c2m.find? u).getD 0))
            c2m := c2m.insert c transitivelyUsed
      r := r ||| ((c2m.find? n).getD 0)
    result := result.insert m (toNameSet r)
  return result
where
  toBitVec {N : Nat} (s : NameSet) : BitVec N :=
    s.foldl (init := 0) (fun b n => b ||| BitVec.twoPow _ ((env.header.moduleNames.idxOf? n).getD 0))
  toNameSet {N : Nat} (b : BitVec N) : NameSet :=
    env.header.moduleNames.zipIdx.foldl (init := {}) (fun s (n, i) => if b.getLsbD i then s.insert n else s)

/--
Return the names of the modules in which constants used in the current file were defined.

Note that this will *not* account for tactics and syntax used in the file,
so the results may not suffice as imports.
-/
def Environment.requiredModules (env : Environment) : NameSet := Id.run do
  let localConstantInfos := env.constants.map₂
  let mut requiredModules : NameSet := {}
  for (_, ci) in localConstantInfos do
    for n in ci.getUsedConstantsAsSet do
      match env.getModuleFor? n with
      | some m =>
        if ¬ (`Init).isPrefixOf m then
          requiredModules := requiredModules.insert m
      | none => pure ()
  return requiredModules

end Lean
```
