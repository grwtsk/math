# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunIndCollect.Variant34e913746a35ad020401b7551602e7289a8ace8a80c0003b31f80987f7e62245

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c881abbb9ff6dcf84b01ea006d8bc3fcfa363d91` · SHA-256 `94ad9b3394946036b26a7222fcd9c23fef8961cea2787400aa2597e1ccead8fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Call.Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Call.Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/FunIndCollect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Meta.Tactic.Util
public import Lean.Meta.Tactic.FunIndInfo


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Call.Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832

public section

/-!
Support for collecting function calls that could be used for `fun_induction` or `fun_cases`.
Used by `fun_induction foo`, and the `Calls` structure is also used by `try?`.
-/

namespace Lean.Meta.FunInd

structure Call where
  /- The full function call -/
  expr : Expr
  /- Used to avoid adding calls that differ only in dropped arguments -/
  relevantArgs : Expr
  deriving Hashable, BEq

structure SeenCalls where
  /-- the full calls -/
  calls : Array Expr
  /-- only function name and relevant arguments -/
  seen : Std.HashSet (Name × Array Expr)

instance : EmptyCollection SeenCalls where
  emptyCollection := ⟨#[], {}⟩

def SeenCalls.isEmpty  (sc : SeenCalls) : Bool :=
  sc.calls.isEmpty

def SeenCalls.push (e : Expr) (funIndInfo : FunIndInfo) (args : Array Expr) (calls : SeenCalls) :
    MetaM SeenCalls := do
  if funIndInfo.params.size != args.size then return calls
  let mut keys := #[]
  for arg in args, kind in funIndInfo.params do
    if kind matches .target then
      if !arg.isFVar then return calls
    unless kind matches .dropped do
      keys := keys.push arg
  let key := (funIndInfo.funName, keys)
  if calls.seen.contains key then return calls
  return { calls := calls.calls.push e, seen := calls.seen.insert key }

/--
Which functions have exactly one candidate application. Used by `try?` to determine whether
we can use `fun_induction foo` or need `fun_induction foo x y z`.
-/
def SeenCalls.uniques (calls : SeenCalls) : NameSet := Id.run do
  let mut seen : NameSet := {}
  let mut seenTwice : NameSet := {}
  for (n, _) in calls.seen do
    unless seenTwice.contains n do
      if seen.contains n then
        seenTwice := seenTwice.insert n
      else
        seen := seen.insert n
  return seen.filter (! seenTwice.contains ·)

namespace Collector

abbrev M := ReaderT FunIndInfo <| StateRefT SeenCalls MetaM

def saveFunInd (e : Expr) (funIndInfo : FunIndInfo) (args : Array Expr) : M Unit := do
  set (← (← get).push e funIndInfo args)

def visitApp (e : Expr) (funIndInfo : FunIndInfo) (args : Array Expr) : M Unit := do
  saveFunInd e funIndInfo args

unsafe abbrev Cache := PtrSet Expr

unsafe def visit (e : Expr) : StateRefT Cache M Unit := do
  unless (← get).contains e do
    modify fun s => s.insert e
    match e with
      | .const _ _        => pure ()
      | .forallE _ d b _  => visit d; visit b
      | .lam _ d b _      => visit d; visit b
      | .mdata _ b        => visit b
      | .letE _ t v b _   => visit t; visit v; visit b
      | .app ..           => e.withApp fun f args => do
        if let .const declName _ := f then
          if declName = (← read).funName then
            unless e.hasLooseBVars do -- TODO: We can allow them in `.dropped` arguments
              visitApp e (← read) args
        else
          visit f
        args.forM visit
      | .proj _ _ b       => visit b
      | _                 => return ()

unsafe def main (needle : FunIndInfo) (mvarId : MVarId) : MetaM (Array Expr) := mvarId.withContext do
  let (_, s) ← go |>.run mkPtrSet |>.run needle |>.run {}
  return s.calls
where
  go : StateRefT Cache M Unit := do
    for localDecl in (← getLCtx) do
      unless localDecl.isAuxDecl do
        if let some val := localDecl.value? then
          visit (← instantiateMVars val)
        else
          visit (← instantiateMVars localDecl.type)
    visit (← instantiateMVars (← mvarId.getType))

end Collector

def collect (needle : FunIndInfo) (mvarId : MVarId) : MetaM (Array Expr) := do
  unsafe Collector.main needle mvarId

end Lean.Meta.FunInd
```
