# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExcept.Variant26ef5cb826d939897559810262e3f79d22aa676d4f79e63e1c9c0ce66eae4ae5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f873bdadd7b8b4b1c66c8f812822dd41b74bb77` · SHA-256 `e015b396f34d62e4e59cef71e571af792e6e461379eb412ca0d548df3295ef4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetVarsToClear.Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetVarsToClear.Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ClearExcept.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joshua Clune. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joshua Clune
-/
module

public import Mathlib.Init
public meta import Lean.Elab.Tactic.ElabTerm

/-!
# The `clear*` tactic

This file provides a variant of the `clear` tactic, which clears all hypotheses it can
besides a provided list, class instances, and auxiliary declarations.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetVarsToClear.Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733

public meta section

open Lean.Meta

namespace Lean.Elab.Tactic

/-- Returns the free variable IDs that can be cleared, excluding those in the preserve list,
class instances, and auxiliary declarations (e.g. recursive hypotheses). -/
def getVarsToClear (preserve : Array FVarId) : MetaM (Array FVarId) := do
  let mut toClear : Array FVarId := #[]
  for decl in ← getLCtx do
    unless preserve.contains decl.fvarId || decl.isAuxDecl do
      if let none ← isClass? decl.type then
        toClear := toClear.push decl.fvarId
  return toClear

/-- Clears all hypotheses from a goal except those in the preserve list, class instances, and
auxiliary declarations (e.g. recursive hypotheses). -/
def clearExcept (preserve : Array FVarId) (goal : MVarId) : MetaM MVarId := do
  let toClear ← getVarsToClear preserve
  goal.tryClearMany toClear

/-- Clears all hypotheses it can, except those provided after a minus sign, class instances, and
hidden auxiliary declarations (for example recursive hypotheses). Example:
```
  clear * - h₁ h₂
```
The intent is that `clear * -` only clears user-visible local declarations; hidden auxiliary
declarations should be handled by more specific mechanisms when needed. -/
@[nolint tacticAlt]
syntax (name := clearExceptTactic) "clear " "*" " -" (ppSpace colGt ident)* : tactic

elab_rules : tactic
  | `(tactic| clear * - $hs:ident*) => do
    let fvarIds ← getFVarIds hs
    liftMetaTactic1 fun goal ↦ clearExcept fvarIds goal

end Lean.Elab.Tactic
````
