# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variantd6b9fd408310f011c93e3fc622fd3d7ba3efb895c92ae147fca258950c797b93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34c21963a739cfffb94456858829b95cd7ccf281` · SHA-256 `7a39cb1e83d6763b79f497d67a899b6f4f1827988df6f7f295c81c5f88e5ad9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsBlackListed.Variant6ec979c696b7032327bda85959636ef3a46809e2f85e13425582f0cb58f4f5c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ec979c696b7032327bda85959636ef3a46809e2f85e13425582f0cb58f4f5c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsBlackListed.Variant6ec979c696b7032327bda85959636ef3a46809e2f85e13425582f0cb58f4f5c2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6ec979c696b7032327bda85959636ef3a46809e2f85e13425582f0cb58f4f5c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Lean/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

import Lean.Meta.Match.MatcherInfo
public import Lean.CoreM

/-!
TODO: Some declarations in this file are duplicated from mathlib, but especially `isBlacklisted`
is deemed to specific for upstreaming to Batteries.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsBlackListed.Variant6ec979c696b7032327bda85959636ef3a46809e2f85e13425582f0cb58f4f5c2

namespace Lean.Name

open Lean Meta Elab

namespace ImportGraph

/-- Note: copied from `Mathlib.Lean.Name` -/
private def isBlackListed (declName : Name) : CoreM Bool := do
  if declName.toString.startsWith "Lean" then return true
  let env ← getEnv
  pure $ declName.isInternalDetail
   || isAuxRecursor env declName
   || isNoConfusion env declName
  <||> isRec declName <||> isMatcher declName

/--
Retrieve all names in the environment satisfying a predicate.

Note: copied from `Mathlib.Lean.Name`
-/
public def allNames (p : Name → Bool) : CoreM (Array Name) := do
  (← getEnv).constants.foldM (init := #[]) fun names n _ => do
    if p n && !(← isBlackListed n) then
      return names.push n
    else
      return names

/--
Retrieve all names in the environment satisfying a predicate,
gathered together into a `HashMap` according to the module they are defined in.

Note: copied from `Mathlib.Lean.Name`
-/
public def allNamesByModule (p : Name → Bool) : CoreM (Std.HashMap Name (Array Name)) := do
  (← getEnv).constants.foldM (init := ∅) fun names n _ => do
    if p n && !(← isBlackListed n) then
      let some m ← findModuleOf? n | return names
      -- TODO use `modify`/`alter` when available
      match names[m]? with
      | some others => return names.insert m (others.push n)
      | none => return names.insert m #[n]
    else
      return names

/-- Returns the very first part of a name: for `ImportGraph.Lean.NameMap` it
returns `ImportGraph`.
-/
public def getModule (name : Name) (s := "") : Name :=
  match name with
    | .anonymous => .mkSimple s
    | .num _ _ => panic s!"panic in `getModule`: did not expect numerical name: {name}."
    | .str pre s => getModule pre s
```
