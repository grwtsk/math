# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variant9e8b67fcdf36142b2c4be5b19d15d510fe842bd997693fcbe91eaef7f79b19f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11a7528921d708ecdd5494ef918dc931687f6913` · SHA-256 `d86e47fffa05abd127811f2d74c0d757ca311d4457d11b0b3cb543fc6d1c2bef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Ian Benway. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ian Benway
-/
import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm

/-!
# The `set` tactic

This file defines the `set` tactic and its variant `set!`.

`set a := t with h` is a variant of `let a := t`. It adds the hypothesis `h : a = t` to
the local context and replaces `t` with `a` everywhere it can.
`set a := t with ← h` will add `h : t = a` instead.
`set! a := t with h` does not do any replacing.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c

namespace Mathlib.Tactic
open Lean Elab Elab.Tactic Meta

syntax setArgsRest := ppSpace ident (" : " term)? " := " term (" with " "← "? ident)?

-- This is called `setTactic` rather than `set`
-- as we sometimes refer to `MonadStateOf.set` from inside `Mathlib.Tactic`.
syntax (name := setTactic) "set" "!"? setArgsRest : tactic

macro "set!" rest:setArgsRest : tactic => `(tactic| set ! $rest:setArgsRest)

/--
`set a := t with h` is a variant of `let a := t`. It adds the hypothesis `h : a = t` to
the local context and replaces `t` with `a` everywhere it can.

`set a := t with ← h` will add `h : t = a` instead.

`set! a := t with h` does not do any replacing.

```lean
example (x : Nat) (h : x + x - x = 3) : x + x - x = 3 := by
  set y := x with ← h2
  sorry
/-
x : Nat
y : Nat := x
h : y + y - y = 3
h2 : x = y
⊢ y + y - y = 3
-/
```
-/
elab_rules : tactic
| `(tactic| set%$tk $[!%$rw]? $a:ident $[: $ty:term]? := $val:term $[with $[←%$rev]? $h:ident]?) =>
  withMainContext do
    let (ty, vale) ← match ty with
    | some ty =>
      let ty ← Term.elabType ty
      pure (ty, ← elabTermEnsuringType val ty)
    | none =>
      let val ← elabTerm val none
      pure (← inferType val, val)
    let fvar ← liftMetaTacticAux fun goal ↦ do
      let (fvar, goal) ← (← goal.define a.getId ty vale).intro1P
      pure (fvar, [goal])
    withMainContext <|
      Term.addTermInfo' (isBinder := true) a (mkFVar fvar)
    if rw.isNone then
      evalTactic (← `(tactic| try rewrite [show $(← Term.exprToSyntax vale) = $a from rfl] at *))
    match h, rev with
    | some h, some none =>
      evalTactic (← `(tactic| have%$tk
        $h : $a = ($(← Term.exprToSyntax vale) : $(← Term.exprToSyntax ty)) := rfl))
    | some h, some (some _) =>
      evalTactic (← `(tactic| have%$tk
        $h : ($(← Term.exprToSyntax vale) : $(← Term.exprToSyntax ty)) = $a := rfl))
    | _, _ => pure ()

end Mathlib.Tactic
````
