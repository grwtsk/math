# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variante5239e85b876b6ca53e92192ca166b981580d95718d5b6aa2c0688202a3d1dcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebb125362ca2a6eee170857e8faff794af60f3b2` · SHA-256 `c72beceb10753393aaa7667be7fbfc433fa9a52cb75b31aa8f42d721f5f36f9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RflTac.Variant5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RflTac.Variant5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Relation/Rfl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Newell Jensen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Newell Jensen
-/
import Mathlib.Init
import Lean.Meta.Tactic.Rfl

/-!
# `Lean.MVarId.liftReflToEq`

Convert a goal of the form `x ~ y` into the form `x = y`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute `[refl]`.
If this can't be done, returns the original `MVarId`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RflTac.Variant5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f

namespace Mathlib.Tactic

open Lean Meta Elab Tactic Rfl

/--
This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
def rflTac : TacticM Unit :=
  withMainContext do liftMetaFinishingTactic (·.applyRfl)

/-- If `e` is the form `@R .. x y`, where `R` is a reflexive
relation, return `some (R, x, y)`.
As a special case, if `e` is `@HEq α a β b`, return ``some (`HEq, a, b)``. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RflTac.Variant5261ae9d1aac193826937dfec3421b14a25e78467c2251825d8b649d00ec845f.Lean.Expr.relSidesIfRefl? (e : Expr) : MetaM (Option (Name × Expr × Expr)) := do
  if let some (_, lhs, rhs) := e.eq? then
    return (``Eq, lhs, rhs)
  if let some (lhs, rhs) := e.iff? then
    return (``Iff, lhs, rhs)
  if let some (_, lhs, _, rhs) := e.heq? then
    return (``HEq, lhs, rhs)
  if let .app (.app rel lhs) rhs := e then
    unless (← (reflExt.getState (← getEnv)).getMatch rel).isEmpty do
      match rel.getAppFn.constName? with
      | some n => return some (n, lhs, rhs)
      | none => return none
  return none

end Mathlib.Tactic
```
