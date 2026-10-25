# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulEqCmp.Variantfb4fcaddf2680d8ade4351e8e31e2ff2abd6444e29de184505bd01936eb8b6b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90e96df3d4ee94d94357776a8d004eae255c1a8b` · SHA-256 `b5e31d41133d21e5751574d23f5613b29de497df5e62d3d81f413291919809a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLawfulEqCmpThm.Variant536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLawfulEqCmpThm.Variant536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/LawfulEqCmp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Util
import Lean.Meta.Tactic.Grind.SynthInstance

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLawfulEqCmpThm.Variant536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1

public section
namespace Lean.Meta.Grind
/-!
Support for type class `LawfulEqCmp`.
-/
/-
**Note**: we will have similar support for `Associative` and `Commutative`. In the future, we should have
a mechanism for letting users to install their own handlers.
-/

/--
If `op` implements `LawfulEqCmp`, then returns the proof term for
`∀ a b, op a b = .eq → a = b`
-/
def getLawfulEqCmpThm? (op : Expr) : GrindM (Option Expr) := do
  if let some thm? := (← get).lawfulEqCmpMap.find? { expr := op } then
    return thm?
  let thm? ← go?
  modify fun s => { s with lawfulEqCmpMap := s.lawfulEqCmpMap.insert { expr := op } thm? }
  return thm?
where
  go? : MetaM (Option Expr) := do
    unless (← getEnv).contains ``Std.LawfulEqCmp do return none
    let opType ← whnf (← inferType op)
    let .forallE _ α b _ := opType | return none
    if b.hasLooseBVars then return none
    let .forallE _ α' b _ ← whnf b | return none
    unless b.isConstOf ``Ordering do return none
    unless (← isDefEq α α') do return none
    let u ← getLevel α
    let some u ← decLevel? u | return none
    let lawfulEqCmp := mkApp2 (mkConst ``Std.LawfulEqCmp [u]) α op
    let some lawfulEqCmpInst ← synthInstanceMeta? lawfulEqCmp | return none
    return some <| mkApp3 (mkConst ``Std.LawfulEqCmp.eq_of_compare [u]) α op lawfulEqCmpInst

def propagateLawfulEqCmp (e : Expr) : GoalM Unit := do
  let some op := getBinOp e | return ()
  let some thm ← getLawfulEqCmpThm? op | return ()
  let oeq ← getOrderingEqExpr
  unless (← isEqv e oeq) do return ()
  let a := e.appFn!.appArg!
  let b := e.appArg!
  pushEq a b <| mkApp3 thm a b (← mkEqProof e oeq)

end Lean.Meta.Grind
```
