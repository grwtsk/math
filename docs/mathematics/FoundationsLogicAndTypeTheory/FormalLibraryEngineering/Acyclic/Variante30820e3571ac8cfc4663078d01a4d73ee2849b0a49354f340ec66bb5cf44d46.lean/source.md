# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Acyclic.Variante30820e3571ac8cfc4663078d01a4d73ee2849b0a49354f340ec66bb5cf44d46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bef21decaef1dbd1ded16bee72cc06e8969c893b` · SHA-256 `591efbb28325c534ed489a232c448df7264a59fd2e76aa45084ed19ccd364708`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsTarget.Variant36183faf84d0782f009ebe08bd9b29f2ea36100564cd7fef4e21ef26147a78e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36183faf84d0782f009ebe08bd9b29f2ea36100564cd7fef4e21ef26147a78e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsTarget.Variant36183faf84d0782f009ebe08bd9b29f2ea36100564cd7fef4e21ef26147a78e5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"36183faf84d0782f009ebe08bd9b29f2ea36100564cd7fef4e21ef26147a78e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Acyclic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.MatchUtil
import Lean.Meta.Tactic.Simp.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsTarget.Variant36183faf84d0782f009ebe08bd9b29f2ea36100564cd7fef4e21ef26147a78e5

public section

namespace Lean.MVarId
open Meta

private def isTarget (lhs rhs : Expr) : MetaM Bool := do
  if !lhs.isFVar || !lhs.occurs rhs then
    return false
  else
    isConstructorApp' rhs

/--
  Close the given goal if `h` is a proof for an equality such as `as = a :: as`.
  Inductive datatypes in Lean are acyclic.
-/
def acyclic (mvarId : MVarId) (h : Expr) : MetaM Bool := mvarId.withContext do
  let type ← whnfD (← inferType h)
  trace[Meta.Tactic.acyclic] "type: {type}"
  let some (_, lhs, rhs) := type.eq? | return false
  if (← isTarget lhs rhs) then
    go h lhs rhs
  else if (← isTarget rhs lhs) then
    go (← mkEqSymm h) rhs lhs
  else
    return false
where
  go (h lhs rhs : Expr) : MetaM Bool := do
    try
      let sizeOf_lhs ← mkAppM ``sizeOf #[lhs]
      let sizeOf_rhs ← mkAppM ``sizeOf #[rhs]
      let sizeOfEq ← mkLT sizeOf_lhs sizeOf_rhs
      let hlt ← mkFreshExprSyntheticOpaqueMVar sizeOfEq
      -- TODO: we only need the `sizeOf` simp theorems
      let ctx ← Simp.mkContext
         (config := { arith := true })
         (simpTheorems := #[ (← getSimpTheorems) ])
      match (← simpTarget hlt.mvarId! ctx {}).1 with
      | some _ => return false
      | none   =>
        let heq ← mkCongrArg sizeOf_lhs.appFn! (← mkEqSymm h)
        let hlt_self ← mkAppM ``Nat.lt_of_lt_of_eq #[hlt, heq]
        let hlt_irrelf ← mkAppM ``Nat.lt_irrefl #[sizeOf_lhs]
        mvarId.assign (← mkFalseElim (← mvarId.getType) (mkApp hlt_irrelf hlt_self))
        trace[Meta.Tactic.acyclic] "succeeded"
        return true
    catch ex =>
      trace[Meta.Tactic.acyclic] "failed with\n{ex.toMessageData}"
      return false

builtin_initialize
  registerTraceClass `Meta.Tactic.acyclic

end Lean.MVarId
```
