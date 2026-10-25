# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SynthesizeUsing.Variant922b9523902f3d9d590618259766c3e99d1462bb8bac2cb0295dcadd624be133

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbc8204da8d4cde88a6abdd1b38458304a13b24e` · SHA-256 `996505c0ac872b04c7b2e68495289969dd4503ea5f45ac65c002e90a395985e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SynthesizeUsing.Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SynthesizeUsing.Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/SynthesizeUsing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Qq

/-!
# `SynthesizeUsing`

This is a slight simplification of the `solve_aux` tactic in Lean3.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SynthesizeUsing.Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00

open Lean Elab Tactic Meta Qq

/--
`synthesizeUsing type tac` synthesizes an element of type `type` using tactic `tac`.

The tactic `tac` is allowed to leave goals open, and these remain as metavariables in the
returned expression.
-/
-- In Lean3 this was called `solve_aux`,
-- and took a `TacticM α` and captured the produced value in `α`.
-- As this was barely used, we've simplified here.
def synthesizeUsing {u : Level} (type : Q(Sort u)) (tac : TacticM Unit) :
    MetaM (List MVarId × Q($type)) := do
  let m ← mkFreshExprMVar type
  let goals ← (Term.withoutErrToSorry <| run m.mvarId! tac).run'
  return (goals, ← instantiateMVars m)

/--
`synthesizeUsing type tac` synthesizes an element of type `type` using tactic `tac`.

The tactic must solve for all goals, in contrast to `synthesizeUsing`.
-/
def synthesizeUsing' {u : Level} (type : Q(Sort u)) (tac : TacticM Unit) : MetaM Q($type) := do
  let (goals, e) ← synthesizeUsing type tac
  -- Note: doesn't use `tac *> Tactic.done` since that just adds a message
  -- rather than raising an error.
  unless goals.isEmpty do
    throwError m!"synthesizeUsing': unsolved goals\n{goalsToMessageData goals}"
  return e

/--
`synthesizeUsing type tacticSyntax` synthesizes an element of type `type` by evaluating the
given tactic syntax.

Example:
```lean
let (gs, e) ← synthesizeUsingTactic ty (← `(tactic| congr!))
```

The tactic `tac` is allowed to leave goals open, and these remain as metavariables in the
returned expression.
-/
def synthesizeUsingTactic {u : Level} (type : Q(Sort u)) (tac : Syntax) :
    MetaM (List MVarId × Q($type)) := do
  synthesizeUsing type (do evalTactic tac)

/--
`synthesizeUsing' type tacticSyntax` synthesizes an element of type `type` by evaluating the
given tactic syntax.

Example:
```lean
let e ← synthesizeUsingTactic' ty (← `(tactic| norm_num))
```

The tactic must solve for all goals, in contrast to `synthesizeUsingTactic`.

If you need to insert expressions into a tactic proof, then you might use `synthesizeUsing'`
directly, since the `TacticM` monad has access to the `TermElabM` monad. For example, here
is a term elaborator that wraps the `simp at ...` tactic:
```
def simpTerm (e : Expr) : MetaM Expr := do
  let mvar ← Meta.mkFreshTypeMVar
  let e' ← synthesizeUsing' mvar
    (do evalTactic (← `(tactic| have h := $(← Term.exprToSyntax e); simp at h; exact h)))
  -- Note: `simp` does not always insert type hints, so to ensure that we get a term
  -- with the simplified type (as opposed to one that is merely defeq), we should add
  -- a type hint ourselves.
  Meta.mkExpectedTypeHint e' mvar

elab "simpTerm% " t:term : term => do simpTerm (← Term.elabTerm t none)
```
-/
def synthesizeUsingTactic' {u : Level} (type : Q(Sort u)) (tac : Syntax) : MetaM Q($type) := do
  synthesizeUsing' type (do evalTactic tac)
````
