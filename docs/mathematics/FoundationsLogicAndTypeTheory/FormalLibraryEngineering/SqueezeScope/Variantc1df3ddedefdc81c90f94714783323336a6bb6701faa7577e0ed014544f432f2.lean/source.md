# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqueezeScope.Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b82412e40f6d57fd738b28148934f343d3ae5f7` · SHA-256 `0cd78fb8a82edaa3179040275138623efdf36774e43e1f6756358423696e4bf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Simp.Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/SqueezeScope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Simp
import Std.Tactic.SimpTrace

/-!
# `squeeze_scope` tactic

The `squeeze_scope` tactic allows aggregating multiple calls to `simp` coming from the same syntax
but in different branches of execution, such as in `cases x <;> simp`.
The reported `simp` call covers all simp lemmas used by this syntax.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c

namespace Std.Tactic
open Lean Elab Parser Tactic

/--
`squeeze_scope a => tacs` is part of the implementation of `squeeze_scope`.
Inside `tacs`, invocations of `simp` wrapped with `squeeze_wrap a _ => ...` will contribute
to the accounting associated to scope `a`.
-/
local syntax (name := squeezeScopeIn) "squeeze_scope " ident " => " tacticSeq : tactic
/--
`squeeze_wrap a x => tac` is part of the implementation of `squeeze_scope`.
Here `tac` will be a `simp` or `dsimp` syntax, and `squeeze_wrap` will run the tactic
and contribute the generated `usedSimps` to the `squeezeScopes[a][x]` variable.
-/
local syntax (name := squeezeWrap) "squeeze_wrap " ident ppSpace ident " => " tactic : tactic

open TSyntax.Compat in
/--
The `squeeze_scope` tactic allows aggregating multiple calls to `simp` coming from the same syntax
but in different branches of execution, such as in `cases x <;> simp`.
The reported `simp` call covers all simp lemmas used by this syntax.
```
@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"
```
-/
macro (name := squeezeScope) "squeeze_scope " seq:tacticSeq : tactic => do
  let a ← withFreshMacroScope `(a)
  let seq ← seq.raw.rewriteBottomUpM fun stx =>
    match stx.getKind with
    | ``dsimp | ``simpAll | ``simp => do
      withFreshMacroScope `(tactic| squeeze_wrap $a x => $stx)
    | _ => pure stx
  `(tactic| squeeze_scope $a => $seq)

open Meta

/--
We implement `squeeze_scope` using a global variable that tracks all `squeeze_scope` invocations
in flight. It is a map `a => (x => (stx, simps))` where `a` is a unique identifier for
the `squeeze_scope` invocation which is shared with all contained simps, and `x` is a unique
identifier for a particular piece of simp syntax (which can be called multiple times).
Within that, `stx` is the simp syntax itself, and `simps` is the aggregated list of simps used
so far.
-/
initialize squeezeScopes : IO.Ref (NameMap (NameMap (Syntax × List Simp.UsedSimps))) ← IO.mkRef {}

elab_rules : tactic
  | `(tactic| squeeze_scope $a => $tac) => do
    let a := a.getId
    let old ← squeezeScopes.modifyGet fun map => (map.find? a, map.insert a {})
    let reset map := match old with | some old => map.insert a old | none => map.erase a
    let new ← try
      Elab.Tactic.evalTactic tac
      squeezeScopes.modifyGet fun map => (map.find? a, reset map)
    catch e =>
      squeezeScopes.modify reset
      throw e
    if let some new := new then
      for (_, stx, usedSimps) in new do
        let usedSimps := usedSimps.foldl (fun s usedSimps => usedSimps.fold .insert s) {}
        let stx' ← mkSimpCallStx stx usedSimps
        TryThis.addSuggestion stx[0] stx' (origSpan? := stx)

elab_rules : tactic
  | `(tactic| squeeze_wrap $a $x => $tac) => do
    let stx := tac.raw
    let usedSimps ← match stx.getKind with
    | ``Parser.Tactic.simp => do
      let { ctx, dischargeWrapper } ← withMainContext <| mkSimpContext stx (eraseLocal := false)
      dischargeWrapper.with fun discharge? =>
        simpLocation ctx discharge? (expandOptLocation stx[5])
    | ``Parser.Tactic.simpAll => do
      let { ctx, .. } ← mkSimpContext stx
        (eraseLocal := true) (kind := .simpAll) (ignoreStarArg := true)
      let (result?, usedSimps) ← simpAll (← getMainGoal) ctx
      match result? with
      | none => replaceMainGoal []
      | some mvarId => replaceMainGoal [mvarId]
      pure usedSimps
    | ``Parser.Tactic.dsimp => do
      let { ctx, .. } ← withMainContext <| mkSimpContext stx (eraseLocal := false) (kind := .dsimp)
      dsimpLocation' ctx (expandOptLocation stx[5])
    | _ => Elab.throwUnsupportedSyntax
    let a := a.getId; let x := x.getId
    squeezeScopes.modify fun map => Id.run do
      let some map1 := map.find? a | return map
      let newSimps := match map1.find? x with
      | some (stx, oldSimps) => (stx, usedSimps :: oldSimps)
      | none => (stx, [usedSimps])
      map.insert a (map1.insert x newSimps)
````
