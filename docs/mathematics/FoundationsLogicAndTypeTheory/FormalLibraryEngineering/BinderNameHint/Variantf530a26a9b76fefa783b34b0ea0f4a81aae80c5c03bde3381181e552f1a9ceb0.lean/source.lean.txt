-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinderNameHint.Variant0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BinderNameHint.Variant0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/BinderNameHint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Prelude
import Init.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinderNameHint.Variant0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f

public section

set_option linter.unusedVariables false in
/--
The expression `binderNameHint v binder e` defined to be `e`.

If it is used on the right-hand side of an equation that is used for rewriting by `rw` or `simp`,
and `v` is a local variable, and `binder` is an expression that (after beta-reduction) is a binder
(`fun w => …` or `∀ w, …`), then it will rename `v` to the name used in that binder, and remove
the `binderNameHint`.

A typical use of this gadget would be as follows; the gadget ensures that after rewriting, the local
variable is still `name`, and not `x`:
```
theorem all_eq_not_any_not (l : List α) (p : α → Bool) :
    l.all p = !l.any fun x => binderNameHint x p (!p x) := sorry

example (names : List String) : names.all (fun name => "Waldo".isPrefixOf name) = true := by
  rw [all_eq_not_any_not]
  -- ⊢ (!names.any fun name => !"Waldo".isPrefixOf name) = true
```

If `binder` is not a binder, then the name of `v` attains a macro scope. This only matters when the
resulting term is used in a non-hygienic way, e.g. in termination proofs for well-founded recursion.

This gadget is supported by
* `simp`, `dsimp` and `rw` in the right-hand-side of an equation
* `simp` in the assumptions of congruence rules

It is ineffective in other positions (hypotheses of rewrite rules) or when used by other tactics
(e.g. `apply`).
-/
/- One might expect/hope that this was `implicit_reducible` rather than `instance_reducible`.
Currently, the test `tests/elab/binderNameHintSimp.lean` fails (in a stage 2 build) if we make this change. -/
@[simp ↓, expose, implicit_reducible]
def binderNameHint {α : Sort u} {β : Sort v} {γ : Sort w} (v : α) (binder : β) (e : γ) : γ := e
