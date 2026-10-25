# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlFlow.Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfdbe4b527ce45213f6a7598001588a21629cade` · SHA-256 `a1a8569ca6e758b793836e0804674c63ff30d594e31c736f0f67e7b538957466`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpIte.Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpIte.Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/ControlFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.Meta.Sym.AlphaShareBuilder
import Lean.Meta.Sym.InferType
import Lean.Meta.Sym.Simp.App
import Lean.Meta.Sym.Util
import Lean.Meta.WHNF
import Lean.Meta.AppBuilder
import Init.Sym.Lemmas

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpIte.Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29

namespace Lean.Meta.Sym.Simp
open Lean.Meta.Sym.Internal

/--
Simplifies a non-dependent `if-then-else` expression.
-/
def simpIte : Simproc := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 5) fun e => do
    let_expr f@ite α c _ a b := e | return .rfl
    -- **cd propagation**: `cd` from `simp c` is propagated to ALL branches.
    -- When `cd = true`, `simp c` might produce a different result in another context
    -- (e.g., a conditional rewrite could change `c`). This means the entire `ite`
    -- result might differ — even branches like `isTrueExpr c` that seem ground-determined,
    -- because in another context `simp c` might not return `.rfl` at all.
    match (← simp c) with
    | .rfl _ cd =>
      if (← isTrueExpr c) then
        return .step a (mkApp3 (mkConst ``ite_true f.constLevels!) α a b) (contextDependent := cd)
      else if (← isFalseExpr  c) then
        return .step b (mkApp3 (mkConst ``ite_false f.constLevels!) α a b) (contextDependent := cd)
      else
        return mkRflResult (done := true) (contextDependent := cd)
    | .step c' h _ cd =>
      if (← isTrueExpr c') then
        return .step a (mkApp (e.replaceFn ``ite_cond_eq_true) h) (contextDependent := cd)
      else if (← isFalseExpr c') then
        return .step b (mkApp (e.replaceFn ``ite_cond_eq_false) h) (contextDependent := cd)
      else
        let .some inst' ← trySynthInstance (mkApp (mkConst ``Decidable) c') | return .rfl
        let inst' ← shareCommon inst'
        let e' := e.getBoundedAppFn 4
        let e' ← mkAppS₄ e' c' inst' a b
        let h' := mkApp3 (e.replaceFn ``Sym.ite_cond_congr) c' inst' h
        return .step e' h' (done := true) (contextDependent := cd)

/--
Simplifies a dependent `if-then-else` expression.
-/
def simpDIte : Simproc := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 5) fun e => do
    let_expr f@dite α c _ a b := e | return .rfl
    -- See `simpIte` for why `cd` is propagated to all branches.
    match (← simp c) with
    | .rfl _ cd =>
      if (← isTrueExpr c) then
        let a' ← share <| a.betaRev #[mkConst ``True.intro]
        return .step a' (mkApp3 (mkConst ``dite_true f.constLevels!) α a b) (contextDependent := cd)
      else if (← isFalseExpr c) then
        let b' ← share <| b.betaRev #[mkConst ``not_false]
        return .step b' (mkApp3 (mkConst ``dite_false f.constLevels!) α a b) (contextDependent := cd)
      else
        return mkRflResult (done := true) (contextDependent := cd)
    | .step c' h _ cd =>
      if (← isTrueExpr c') then
        let h' ← shareCommon <| mkOfEqTrueCore c h
        let a ← share <| a.betaRev #[h']
        return .step a (mkApp (e.replaceFn ``dite_cond_eq_true) h) (contextDependent := cd)
      else if (← isFalseExpr c') then
        let h' ← shareCommon <| mkOfEqFalseCore c h
        let b ← share <| b.betaRev #[h']
        return .step b (mkApp (e.replaceFn ``dite_cond_eq_false) h) (contextDependent := cd)
      else
        let .some inst' ← trySynthInstance (mkApp (mkConst ``Decidable) c') | return .rfl
        let inst' ← shareCommon inst'
        let e' := e.getBoundedAppFn 4
        let h ← shareCommon h
        let a ← share <| mkLambda `h .default c' (a.betaRev #[mkApp4 (mkConst ``Eq.mpr_prop) c c' h (mkBVar 0)])
        let b ← share <| mkLambda `h .default (mkNot c') (b.betaRev #[mkApp4 (mkConst ``Eq.mpr_not) c c' h (mkBVar 0)])
        let e' ← mkAppS₄ e' c' inst' a b
        let h' := mkApp3 (e.replaceFn ``Sym.dite_cond_congr) c' inst' h
        return .step e' h' (done := true) (contextDependent := cd)

/--
Simplifies a `cond` expression (aka Boolean `if-then-else`).
-/
public def simpCond : Simproc := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 4 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 4) fun e => do
    let_expr f@cond α c a b := e | return .rfl
    -- See `simpIte` for why `cd` is propagated to all branches.
    match (← simp c) with
    | .rfl _ cd =>
      if isSameExpr c (← getBoolTrueExpr) then
        return .step a (mkApp3 (mkConst ``cond_true f.constLevels!) α a b) (contextDependent := cd)
      else if isSameExpr c (← getBoolFalseExpr) then
        return .step b (mkApp3 (mkConst ``cond_false f.constLevels!) α a b) (contextDependent := cd)
      else
        return mkRflResult (done := true) (contextDependent := cd)
    | .step c' h _ cd =>
      if isSameExpr c' (← getBoolTrueExpr) then
        return .step a (mkApp (e.replaceFn ``Sym.cond_cond_eq_true) h) (contextDependent := cd)
      else if isSameExpr c' (← getBoolFalseExpr) then
        return .step b (mkApp (e.replaceFn ``Sym.cond_cond_eq_false) h) (contextDependent := cd)
      else
        let e' := e.getBoundedAppFn 3
        let e' ← mkAppS₃ e' c' a b
        let h' := mkApp2 (e.replaceFn ``Sym.cond_cond_congr) c' h
        return .step e' h' (done := true) (contextDependent := cd)

/--
Simplifies a `match`-expression.
-/
def simpMatch (declName : Name) : Simproc := fun e => do
  if let some e' ← reduceRecMatcher? e then
    -- Iota-reduction may expose kernel `Expr.proj` terms via struct-eta,
    -- which the structural simplifier cannot consume directly.
    let e'' ← Sym.foldProjs e'
    let e'' ← share e''
    return .step e'' (← mkEqRefl e'')
  let some info ← getMatcherInfo? declName
    | return .rfl
  -- **Note**: Simplify only the discriminants
  let start := info.numParams + 1
  let stop  := start + info.numDiscrs
  let r ← simpAppArgRange e start stop
  match r with
  | .step .. => return r
  | .rfl _ cd => return mkRflResult (done := true) (contextDependent := cd)

/--
Simplifies control-flow expressions such as `if-then-else` and `match` expressions.
It visits only the conditions and discriminants.
-/
public def simpControl : Simproc := fun e => do
  if !e.isApp then return .rfl
  let .const declName _ := e.getAppFn | return .rfl
  if declName == ``ite then
    simpIte e
  else if declName == ``cond then
    simpCond e
  else if declName == ``dite then
    simpDIte e
  else
    simpMatch declName e

end Lean.Meta.Sym.Simp
```
