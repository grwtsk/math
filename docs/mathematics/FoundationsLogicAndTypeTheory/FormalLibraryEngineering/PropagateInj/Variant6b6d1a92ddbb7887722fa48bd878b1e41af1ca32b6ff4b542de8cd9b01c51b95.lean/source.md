# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateInj.Variant6b6d1a92ddbb7887722fa48bd878b1e41af1ca32b6ff4b542de8cd9b01c51b95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a624a7a6eefedcf2e3907818c8b272336dc82c4` · SHA-256 `eeb75d30895dac14e6ab6e6edc0a109858a27fa9eaffa0bd6c8cc2bccceef61f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetInvFor.Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetInvFor.Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/PropagateInj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Init.Grind.Propagator
import Init.Grind.Injective
import Lean.Meta.Tactic.Grind.PropagatorAttr
import Lean.Meta.Tactic.Grind.Simp

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetInvFor.Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7

namespace Lean.Meta.Grind

def getInvFor? (f : Expr) (a : Expr) : GoalM (Option (Expr × Expr)) := do
  let some info := (← get).inj.fns.find? { expr := f } | return none
  if let some inv := info.inv? then
    return some inv
  let [u, _] := info.us | unreachable!
  let nonEmpty := mkApp2 (mkConst ``Nonempty.intro [u]) info.α a
  let inv := mkApp5 (mkConst ``Grind.leftInv info.us) info.α info.β f info.h nonEmpty
  let inv ← preprocessLight inv
  let args := inv.getAppArgs
  let heq := mkAppN (mkConst ``Grind.leftInv_eq info.us) args
  let inv? := some (inv, heq)
  let info := { info with inv? }
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } info }
  return inv?

/--
If `e` is an application of the form `f a` where `f` is an injective function
in `(← get).inj.fns`, asserts `f⁻¹ (f a) = a`
-/
public def mkInjEq (e : Expr) : GoalM Unit := do
  let .app f a := e | return ()
  let some (inv, heq) ← getInvFor? f a | return ()
  let invApp := mkApp inv e
  internalize invApp (← getGeneration e)
  trace[grind.inj.assert] "{invApp}, {a}"
  pushEq invApp a <| mkApp heq a

def initInjFn (us : List Level) (α β : Expr) (f : Expr) (h : Expr) : GoalM Unit := do
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } { us, α, β, h } }
  let hidx := f.toHeadIndex
  for e in (← get).appMap.findD hidx [] do
    if e.isApp && isSameExpr e.appFn! f then
      mkInjEq e

builtin_grind_propagator propagateInj ↓Function.Injective := fun e => do
  let_expr i@Function.Injective α β f := e | return ()
  if (← isEqTrue e) then
    let f' := f.eta
    let f ← if isSameExpr f f' then
      pure f
    else
      let f' ← preprocessLight f'
      internalize f' (← getGeneration e)
      pure f'
    initInjFn i.constLevels! α β f (mkOfEqTrueCore e (← mkEqTrueProof e))

end Lean.Meta.Grind
```
