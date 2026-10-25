# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferParam.Variant04da3b8637739da90830ec4f9d157c321708aaa551ea2354d9c97596ac95d826

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d826ba1c1a0449768c573e46f96bf3ac0d1d2f4d` · SHA-256 `03c85ce27f8f351dd94b72c16494c67b82ebc8b4bf3fbc7a7d9f65d5ab9965c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variante268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variante268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/InferParam.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Mario Carneiro
-/
import Lean
import Mathlib.Lean.Expr.Basic

/-!
# Infer an optional parameter

In this file we define a tactic `infer_param` that closes a goal with default value by using
this default value.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variante268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161

namespace Mathlib.Tactic

open Lean Elab Tactic Meta

/-- Close a goal of the form `optParam α a` or `autoParam α stx` by using `a`. -/
elab (name := inferOptParam) "infer_param" : tactic => do
  let tgt ← getMainTarget
  if let some val := tgt.getOptParamDefault? then
    liftMetaTactic fun goal => do goal.assign val; pure []
  else if let some (.const tacticDecl ..) := tgt.getAutoParamTactic? then
    match evalSyntaxConstant (← getEnv) (← getOptions) tacticDecl with
    | .error err => throwError err
    | Except.ok tacticSyntax =>
      liftMetaTactic1 fun goal => do
        goal.replaceTargetDefEq (← goal.getType).consumeTypeAnnotations
      evalTactic tacticSyntax
  else throwError
    "`infer_param` only solves goals of the form `optParam _ _` or `autoParam _ _`, not {tgt}"
```
