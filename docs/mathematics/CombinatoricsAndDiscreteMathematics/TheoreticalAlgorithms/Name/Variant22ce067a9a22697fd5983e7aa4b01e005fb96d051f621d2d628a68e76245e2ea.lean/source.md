# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Name.Variant22ce067a9a22697fd5983e7aa4b01e005fb96d051f621d2d628a68e76245e2ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6986a0181994216b4ea223af36dbb581e9aa55e` · SHA-256 `5fa52d8d49d415f9d08c72a60d418eb5ce6c3318cf6473b9e9f643d17bef5e60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsBlackListed.Variant7cc625ac90327b9e2a0f6a600cc2aa9c6886660dd170101c971cbd08d5036146","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cc625ac90327b9e2a0f6a600cc2aa9c6886660dd170101c971cbd08d5036146","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IsBlackListed.Variant7cc625ac90327b9e2a0f6a600cc2aa9c6886660dd170101c971cbd08d5036146","mathematical_subject":"Computation.DataStructures","original_sha256":"7cc625ac90327b9e2a0f6a600cc2aa9c6886660dd170101c971cbd08d5036146","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Lean/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.HashMap
import Mathlib.Lean.SMap
import Mathlib.Lean.Expr.Basic

/-!
# Additional functions on `Lean.Name`.

We provide `Name.getModule`,
and `allNames` and `allNamesByModule`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsBlackListed.Variant7cc625ac90327b9e2a0f6a600cc2aa9c6886660dd170101c971cbd08d5036146

open Lean Meta Elab

private def isBlackListed (declName : Name) : CoreM Bool := do
  if declName.toString.startsWith "Lean" then return true
  let env ← getEnv
  pure $ declName.isInternal'
   || isAuxRecursor env declName
   || isNoConfusion env declName
  <||> isRec declName <||> isMatcher declName

/--
Retrieve all names in the environment satisfying a predicate.
-/
def allNames (p : Name → Bool) : CoreM (Array Name) := do
  (← getEnv).constants.foldM (init := #[]) fun names n _ => do
    if p n && !(← isBlackListed n) then
      return names.push n
    else
      return names

/--
Retrieve all names in the environment satisfying a predicate,
gathered together into a `HashMap` according to the module they are defined in.
-/
def allNamesByModule (p : Name → Bool) : CoreM (Std.HashMap Name (Array Name)) := do
  (← getEnv).constants.foldM (init := Std.HashMap.empty) fun names n _ => do
    if p n && !(← isBlackListed n) then
      let some m ← findModuleOf? n | return names
      -- TODO use `Std.HashMap.modify` when we bump Std4 (or `alter` if that is written).
      match names.find? m with
      | some others => return names.insert m (others.push n)
      | none => return names.insert m #[n]
    else
      return names

/-- Returns the very first part of a name: for `Mathlib.Data.Set.Basic` it returns `Mathlib`. -/
def getModule (name : Name) (s := "") : Name :=
  match name with
    | .anonymous => s
    | .num _ _ => panic s!"panic in `getModule`: did not expect numerical name: {name}."
    | .str pre s => getModule pre s
```
