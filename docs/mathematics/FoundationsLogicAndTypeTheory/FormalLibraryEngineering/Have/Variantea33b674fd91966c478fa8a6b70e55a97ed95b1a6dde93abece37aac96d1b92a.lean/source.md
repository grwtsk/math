# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24ab3df3b04ec751a5037835e554f26606748fa0` · SHA-256 `f9569ffbb59fbfeb548b28e478bd55e08567d8d43e020a4f1e74c98c914714c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMDup.Variant3634d1d74e25a0715461bbf2ccbeba6d4a0798518004e9e79777b2cc3feeb6aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3634d1d74e25a0715461bbf2ccbeba6d4a0798518004e9e79777b2cc3feeb6aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabMDup.Variant3634d1d74e25a0715461bbf2ccbeba6d4a0798518004e9e79777b2cc3feeb6aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3634d1d74e25a0715461bbf2ccbeba6d4a0798518004e9e79777b2cc3feeb6aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Have.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Basic
import Lean.Elab.Tactic.Do.ProofMode.Focus
import Lean.Elab.Tactic.ElabTerm


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMDup.Variant3634d1d74e25a0715461bbf2ccbeba6d4a0798518004e9e79777b2cc3feeb6aa

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

@[builtin_tactic Lean.Parser.Tactic.mdup]
def elabMDup : Tactic
  | `(tactic| mdup $h:ident => $h₂:ident) => do
    let (mvar, goal) ← ensureMGoal
    mvar.withContext do
    let some res := goal.focusHyp h.raw.getId | throwError m!"Hypothesis {h} not found"
    let P := goal.hyps
    let Q := res.restHyps
    let H := res.focusHyp
    let uniq ← mkFreshId
    let hyp := Hyp.mk h₂.raw.getId uniq H.consumeMData
    addHypInfo h goal.σs hyp (isBinder := true)
    let H' := hyp.toExpr
    let T := goal.target
    let newGoal := { goal with hyps := SPred.mkAnd! goal.u goal.σs P H' }
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    mvar.assign (mkApp7 (mkConst ``Have.dup [goal.u]) goal.σs P Q H T res.proof m)
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.mhave]
def elabMHave : Tactic
  | `(tactic| mhave $h $[: $ty?]? := $rhs) => do
    let (mvar, goal) ← ensureMGoal
    mvar.withContext do
    -- build goal `P ⊢ₛ T` from `P ⊢ₛ H` and residual goal `P ∧ H ⊢ₛ T`
    let P := goal.hyps
    let spred := mkApp (mkConst ``SPred [goal.u]) goal.σs
    let H ← match ty? with
      | some ty => elabTerm ty spred
      | _       => mkFreshExprMVar spred
    let uniq ← mkFreshId
    let hyp := Hyp.mk h.raw.getId uniq H
    addHypInfo h goal.σs hyp (isBinder := true)
    let H := hyp.toExpr
    let T := goal.target
    let (PH, hand) := SPred.mkAnd goal.u goal.σs P H
    let haveGoal := { goal with target := hyp.p }
    let hhave ← elabTermEnsuringType rhs haveGoal.toExpr
    let newGoal := { goal with hyps := PH }
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    mvar.assign (mkApp8 (mkConst ``Have.have [goal.u]) goal.σs P H PH T hand hhave m)
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.mreplace]
def elabMReplace : Tactic
  | `(tactic| mreplace $h $[: $ty?]? := $rhs) => do
    let (mvar, goal) ← ensureMGoal
    mvar.withContext do
    -- build goal `P ⊢ₛ T` from `P ⊢ₛ H` and residual goal `P ∧ H ⊢ₛ T`
    let PH := goal.hyps
    let some res := goal.focusHyp h.raw.getId | throwError m!"Hypothesis {h} not found"
    let P := res.restHyps
    let H := res.focusHyp
    let spred := mkApp (mkConst ``SPred [goal.u]) goal.σs
    let H' ← match ty? with
      | some ty => elabTerm ty spred
      | _       => mkFreshExprMVar spred
    let uniq ← mkFreshId
    let hyp := Hyp.mk h.raw.getId uniq H'
    addHypInfo h goal.σs hyp (isBinder := true)
    let H' := hyp.toExpr
    let haveGoal := { goal with target := hyp.p }
    let hhave ← elabTermEnsuringType rhs haveGoal.toExpr
    let T := goal.target
    let (PH', hand) := SPred.mkAnd goal.u goal.σs P H'
    let newGoal := { goal with hyps := PH' }
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    let prf := mkApp (mkApp10 (mkConst ``Have.replace [goal.u]) goal.σs P H H' PH PH' T res.proof hand hhave) m
    mvar.assign prf
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax
```
