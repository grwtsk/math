# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injection.Variantcfe40376c15a75a0662184f0927c5eff81c40b5800358955b5ffd0d0c2a33ef4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa1321fcc704b0b01f114a2a3f14be1dae79860f` · SHA-256 `79705e4a4bab6c7d60a166b8fa5694e094bfac5ab14bbee7046fbdb3dbef8c37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injection.Variantcb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Injection.Variantcb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Injection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.Meta.Tactic.Clear
import Lean.Meta.AppBuilder
import Lean.Meta.CtorRecognizer

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injection.Variantcb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d

public section
namespace Lean.Meta.Grind
/--
The `grind` tactic includes an auxiliary `injection?` tactic that is not intended for direct use by users.
This tactic is automatically applied when introducing non-dependent propositions.
It differs from the user-facing Lean `injection` tactic in the following ways:

- It does not introduce new propositions. Instead, the `grind` tactic preprocessor is responsible for introducing them.
- It assumes that `fvarId` is the latest local declaration in the current goal.
- It does not handle cases where the constructors are different because the simplifier already reduces such equalities to `False`.
- It does not have support for heterogeneous equality. Recall that the simplifier already reduces them to `Eq` if
  the types are definitionally equal.
-/
def injection? (mvarId : MVarId) (fvarId : FVarId) : MetaM (Option MVarId) := mvarId.withContext do
  let decl ← fvarId.getDecl
  let_expr Eq _ a b := decl.type | return none
  match (← isConstructorAppCore? a), (← isConstructorAppCore? b) with
  | some aCtor, some bCtor =>
    if aCtor.name != bCtor.name then return none -- Simplifier handles this case
    let target ← mvarId.getType
    let val ← mkNoConfusion target (mkFVar fvarId)
    let .forallE _ targetNew _ _ ← whnfD (← inferType val) | return none
    let targetNew := targetNew.headBeta
    let tag ← mvarId.getTag
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
    mvarId.assign (mkApp val mvarNew)
    /-
    **Note**: The goal may depend on this hypothesis. So, we use `tryClear`.
    Another possible solution is to construct a new proof using the new hypotheses.
    -/
    return some (← mvarNew.mvarId!.tryClear fvarId)
  | _, _ => return none

end Lean.Meta.Grind
```
