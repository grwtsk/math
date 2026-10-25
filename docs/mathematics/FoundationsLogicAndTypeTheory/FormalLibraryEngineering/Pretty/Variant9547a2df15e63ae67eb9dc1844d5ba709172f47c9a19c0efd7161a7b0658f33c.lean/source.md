# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pretty.Variant9547a2df15e63ae67eb9dc1844d5ba709172f47c9a19c0efd7161a7b0658f33c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94c052c46cbb007bd6e9e23c3404dd2fc3d5a5a7` · SHA-256 `c2269377a2cf6434a44382b03d6fa24a4c21e9d20b4bfa01322a9c4bdc0a2069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PadRight.Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PadRight.Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Explode/Pretty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Evgenia Karunus, Kyle Miller
-/
import Lean.Meta.Basic
import Mathlib.Tactic.Explode.Datatypes

/-!
# Explode command: pretty

This file contains UI code to render the Fitch table.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PadRight.Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b

open Lean
namespace Mathlib.Explode

/--
Given a list of `MessageData`s, make them of equal length.
We need this in order to form columns in our Fitch table.

```lean
padRight ["hi", "hello"] = ["hi   ", "hello"]
```
-/
def padRight (mds : List MessageData) : MetaM (List MessageData) := do
  -- 1. Find the max length of the word in a list
  let mut maxLength := 0
  for md in mds do
    maxLength := max maxLength (← md.toString).length

  -- 2. Pad all words in a list with " "
  let pad (md : MessageData) : MetaM MessageData := do
    let padWidth : Nat := maxLength - (← md.toString).length
    return md ++ "".pushn ' ' padWidth

  mds.mapM pad

/-- Render a particular row of the Fitch table. -/
def rowToMessageData :
    List MessageData → List MessageData → List MessageData → List Entry → MetaM MessageData
  | line :: lines, dep :: deps, thm :: thms, en :: es => do
    let pipes := String.join (List.replicate en.depth "│ ")
    let pipes := match en.status with
      | Status.sintro => s!"├ "
      | Status.intro  => s!"│ {pipes}┌ "
      | Status.cintro => s!"│ {pipes}├ "
      | Status.lam    => s!"│ {pipes}"
      | Status.reg    => s!"│ {pipes}"

    let row := m!"{line}│{dep}│ {thm} {pipes}{en.type}\n"
    return (← rowToMessageData lines deps thms es).compose row
  | _, _, _, _ => return MessageData.nil

/-- Given all `Entries`, return the entire Fitch table. -/
def entriesToMessageData (entries : Entries) : MetaM MessageData := do
  -- ['1', '2', '3']
  let paddedLines ← padRight <| entries.l.map fun entry => m!"{entry.line!}"
  -- ['   ', '1,2', '1  ']
  let paddedDeps ← padRight <| entries.l.map fun entry =>
    String.intercalate "," <| entry.deps.map (fun dep => (dep.map toString).getD "_")
  -- ['p  ', 'hP ', '∀I ']
  let paddedThms ← padRight <| entries.l.map (·.thm)

  rowToMessageData paddedLines paddedDeps paddedThms entries.l

end Explode

end Mathlib
````
