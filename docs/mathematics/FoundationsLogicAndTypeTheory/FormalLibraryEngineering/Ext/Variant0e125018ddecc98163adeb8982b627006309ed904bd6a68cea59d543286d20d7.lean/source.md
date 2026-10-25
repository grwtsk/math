# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant0e125018ddecc98163adeb8982b627006309ed904bd6a68cea59d543286d20d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ff5e8fcbd983c7eadf27f4263fc82fb28ff16a0` · SHA-256 `56eeb33f5dc8056e55311319e7064ac4606ae8087b82b557c54511137acac019`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtTheorem.Variant93beb6ec9041dd274d3b702ed809dde75965b8579735bdb990084b7e54573323","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93beb6ec9041dd274d3b702ed809dde75965b8579735bdb990084b7e54573323","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExtTheorem.Variant93beb6ec9041dd274d3b702ed809dde75965b8579735bdb990084b7e54573323","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"93beb6ec9041dd274d3b702ed809dde75965b8579735bdb990084b7e54573323","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro
-/
module
prelude
public import Init.Data.Array.InsertionSort
public import Lean.Meta.DiscrTree

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtTheorem.Variant93beb6ec9041dd274d3b702ed809dde75965b8579735bdb990084b7e54573323

public section
namespace Lean.Meta.Ext

/-!
### Environment extension for `ext` theorems
-/

/-- Information about an extensionality theorem, stored in the environment extension. -/
structure ExtTheorem where
  /-- Declaration name of the extensionality theorem. -/
  declName : Name
  /-- Priority of the extensionality theorem. -/
  priority : Nat
  /--
  Key in the discrimination tree,
  for the type in which the extensionality theorem holds.
  -/
  keys : Array DiscrTree.Key
  deriving Inhabited, Repr, BEq, Hashable

/-- The state of the `ext` extension environment -/
structure ExtTheorems where
  /-- The tree of `ext` extensions. -/
  tree   : DiscrTree ExtTheorem := {}
  /-- Erased `ext`s via `attribute [-ext]`. -/
  erased  : PHashSet Name := {}
  deriving Inhabited

/-- The environment extension to track `@[ext]` theorems. -/
builtin_initialize extExtension :
    SimpleScopedEnvExtension ExtTheorem ExtTheorems ←
  registerSimpleScopedEnvExtension {
    addEntry := fun { tree, erased } thm =>
      { tree := tree.insertKeyValue thm.keys thm, erased := erased.erase thm.declName }
    initial := {}
  }

/-- Gets the list of `@[ext]` theorems corresponding to the key `ty`,
ordered from high priority to low. -/
@[inline] def getExtTheorems (ty : Expr) : MetaM (Array ExtTheorem) := do
  let extTheorems := extExtension.getState (← getEnv)
  let arr ← extTheorems.tree.getMatch ty
  let erasedArr := arr.filter fun thm => !extTheorems.erased.contains thm.declName
  -- Using insertion sort because it is stable and the list of matches should be mostly sorted.
  -- Most ext theorems have default priority.
  return erasedArr.insertionSort (·.priority < ·.priority) |>.reverse

/--
Erases a name marked `ext` by adding it to the state's `erased` field and
removing it from the state's list of `Entry`s.

This is triggered by `attribute [-ext] name`.
-/
def ExtTheorems.eraseCore (d : ExtTheorems) (declName : Name) : ExtTheorems :=
 { d with erased := d.erased.insert declName }

/-- Returns `true` if `d` contains theorem with name `declName`. -/
def ExtTheorems.contains (d : ExtTheorems) (declName : Name) : Bool :=
  d.tree.containsValueP (·.declName == declName) && !d.erased.contains declName

/-- Returns `true` if `declName` is tagged with `[ext]` attribute. -/
def isExtTheorem (declName : Name) : CoreM Bool := do
  let extTheorems := extExtension.getState (← getEnv)
  return extTheorems.contains declName

/--
Erases a name marked as a `ext` attribute.
Check that it does in fact have the `ext` attribute by making sure it names a `ExtTheorem`
found somewhere in the state's tree, and is not erased.
-/
def ExtTheorems.erase [Monad m] [MonadError m] (d : ExtTheorems) (declName : Name) :
    m ExtTheorems := do
  unless d.contains declName do
    throwError "Cannot erase `[ext]` attribute from `{.ofConstName declName}`: It does not have this attribute"
  return d.eraseCore declName

end Lean.Meta.Ext
```
