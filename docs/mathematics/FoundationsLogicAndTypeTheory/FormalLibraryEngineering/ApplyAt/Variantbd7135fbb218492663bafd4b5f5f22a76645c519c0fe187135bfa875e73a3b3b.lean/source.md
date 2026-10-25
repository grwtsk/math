# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyAt.Variantbd7135fbb218492663bafd4b5f5f22a76645c519c0fe187135bfa875e73a3b3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6abe5bea7fcfd69c68a88b1c618b071fda983553` · SHA-256 `a59e3a746d65d545468cc5eb98c7fef4199a928fc45570fb6ef924791487a214`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ApplyAt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
module

public meta import Lean.Elab.Tactic.ElabTerm
public meta import Mathlib.Lean.Meta.Basic
public import Mathlib.Init

/-!
# Apply at

A tactic for applying functions at hypotheses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c

public meta section

open Lean Meta Elab Tactic Term

namespace Mathlib.Tactic

/--
`apply t at i` uses forward reasoning with `t` at the hypothesis `i`.
Explicitly, if `t : α₁ → ⋯ → αᵢ → ⋯ → αₙ` and `i` has type `αᵢ`, then this tactic adds
metavariables/goals for any terms of `αⱼ` for `j = 1, …, i-1`,
then replaces the type of `i` with `αᵢ₊₁ → ⋯ → αₙ` by applying those metavariables and the
original `i`.
-/
@[nolint tacticAlt]
elab "apply " t:term " at " i:ident : tactic => withSynthesize <| withMainContext do
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
