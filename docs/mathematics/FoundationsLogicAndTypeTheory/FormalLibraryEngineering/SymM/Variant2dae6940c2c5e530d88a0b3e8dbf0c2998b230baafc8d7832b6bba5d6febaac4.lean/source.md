# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Variant2dae6940c2c5e530d88a0b3e8dbf0c2998b230baafc8d7832b6bba5d6febaac4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ec76e1f4a966d46d4a8d23b6047ae8888db3b96` · SHA-256 `c4f24fb59a1de464392044aa302a08fe9aa45be3e4f0ac7840160a5e9b6e0d94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanExprRelSidesIfSymm.Varianta0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanExprRelSidesIfSymm.Varianta0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Relation/Symm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Meta.Tactic.Symm

/-!
# `relSidesIfSymm?`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanExprRelSidesIfSymm.Varianta0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140

open Lean Meta Symm

namespace Mathlib.Tactic

open Lean.Elab.Tactic

/-- If `e` is the form `@R .. x y`, where `R` is a symmetric
relation, return `some (R, x, y)`.
As a special case, if `e` is `@HEq α a β b`, return ``some (`HEq, a, b)``. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanExprRelSidesIfSymm.Varianta0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140.Lean.Expr.relSidesIfSymm? (e : Expr) : MetaM (Option (Name × Expr × Expr)) := do
  if let some (_, lhs, rhs) := e.eq? then
    return (``Eq, lhs, rhs)
  if let some (lhs, rhs) := e.iff? then
    return (``Iff, lhs, rhs)
  if let some (_, lhs, _, rhs) := e.heq? then
    return (``HEq, lhs, rhs)
  if let .app (.app rel lhs) rhs := e then
    unless (← (symmExt.getState (← getEnv)).getMatch rel).isEmpty do
      match rel.getAppFn.constName? with
      | some n => return some (n, lhs, rhs)
      | none => return none
  return none

end Mathlib.Tactic
```
