# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyAt.Variant025e4600a0f8a9b308171b991c2cbebf01e5fcbb5d93b4452fe51d03a6b79cd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1a6220398ad5e1f6b79682609dd14bda8ac9a56` · SHA-256 `48bf77d9afec949c901663f70ce9549c1d38804f9b5e9615df314f27fd47b00c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant16dee08e7f7e4bcc3bb9cd232985d5b8ecb0f867d37be0d148972d4532e8703d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16dee08e7f7e4bcc3bb9cd232985d5b8ecb0f867d37be0d148972d4532e8703d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant16dee08e7f7e4bcc3bb9cd232985d5b8ecb0f867d37be0d148972d4532e8703d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"16dee08e7f7e4bcc3bb9cd232985d5b8ecb0f867d37be0d148972d4532e8703d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ApplyAt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Lean.Elab.Tactic.ElabTerm
import Mathlib.Lean.Meta.Basic

/-!
# Apply at

A tactic for applying functions at hypotheses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant16dee08e7f7e4bcc3bb9cd232985d5b8ecb0f867d37be0d148972d4532e8703d

open Lean Meta Elab Tactic Term

namespace Mathlib.Tactic

/--
`apply t at i` will use forward reasoning with `t` at the hypothesis `i`.
Explicitly, if `t : α₁ → ⋯ → αᵢ → ⋯ → αₙ` and `i` has type `αᵢ`, then this tactic will add
metavariables/goals for any terms of `αⱼ` for `j = 1, …, i-1`,
then replace the type of `i` with `αᵢ₊₁ → ⋯ → αₙ` by applying those metavariables and the
original `i`.
-/
elab "apply" t:term "at" i:ident : tactic => withSynthesize <| withMainContext do
  let f ← elabTermForApply t
  let some ldecl := (← getLCtx).findFromUserName? i.getId
    | throwErrorAt i m!"Identifier {i} not found"
  let (mvs, bis, _) ← forallMetaTelescopeReducingUntilDefEq (← inferType f) ldecl.type
  for (m, b) in mvs.zip bis do
    if b.isInstImplicit && !(← m.mvarId!.isAssigned) then
      try m.mvarId!.inferInstance
      catch _ => continue
  let (_, mainGoal) ← (← getMainGoal).note ldecl.userName
    (← mkAppOptM' f (mvs.pop.push ldecl.toExpr |>.map some))
  let mainGoal ← mainGoal.tryClear ldecl.fvarId
  replaceMainGoal <| [mainGoal] ++ mvs.pop.toList.map (·.mvarId!)

end Mathlib.Tactic
```
