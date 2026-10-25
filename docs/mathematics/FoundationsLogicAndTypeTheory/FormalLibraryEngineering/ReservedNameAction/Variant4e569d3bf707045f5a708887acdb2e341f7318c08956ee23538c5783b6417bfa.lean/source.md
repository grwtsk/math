# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReservedNameAction.Variant4e569d3bf707045f5a708887acdb2e341f7318c08956ee23538c5783b6417bfa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e995274236830dfb7a9843e05166c75e34145232` · SHA-256 `68356d127e08072ad83b8c1cbc5800ada6f4331e88ca5658baf477aacd0eb194`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterReservedNameAction.Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RegisterReservedNameAction.Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/ReservedNameAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Control.Do
public import Lean.CoreM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterReservedNameAction.Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506

public section

namespace Lean

/--
When trying to resolve a reserved name, an action can be executed to generate the actual definition/theorem.
The action returns `true` if it "handled" the given name.

Remark: usually when one install a reserved name predicate, an associated action is also installed.
-/
@[expose] def ReservedNameAction := Name → CoreM Bool

private builtin_initialize reservedNameActionsRef : IO.Ref (Array ReservedNameAction) ← IO.mkRef #[]

/--
Register a new function that is invoked when trying to resolve a reserved name.
-/
def registerReservedNameAction (act : ReservedNameAction) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError "failed to register reserved name action, this kind of extension can only be registered during initialization")
  reservedNameActionsRef.modify (·.push act)

/--
Execute a registered reserved action for the given reserved name.
Note that the handler can throw an exception.
-/
def executeReservedNameAction (name : Name) : CoreM Unit := do
  discard <|
    withTraceNode `ReservedNameAction (fun _ => pure m!"executeReservedNameAction for {name}") do
      (← reservedNameActionsRef.get).anyM (· name)

/--
Similar to `resolveGlobalName`, but also executes reserved name actions.
-/
def realizeGlobalName (id : Name) : CoreM (List (Name × List String)) := do
  let cs ← resolveGlobalName id
  cs.filterM fun (c, _) => do
    if (← getEnv).contains c then
      return true
    else
      try
        executeReservedNameAction c
        -- note that even if an action "handled" a name, it may still be undefined, e.g. with an
        -- out-of-bounds equation index
        return (← getEnv).containsOnBranch c
      catch ex =>
        -- We record the error produced by the reserved name action generator
        logError m!"Failed to realize constant {id}:{indentD ex.toMessageData}"
        return false

/--
Similar to `resolveGlobalConstCore`, but also executes reserved name actions.
-/
def realizeGlobalConstCore (n : Name) : CoreM (List Name) := do
  let cs ← realizeGlobalName n
  filterFieldList n cs

/--
Similar to `realizeGlobalConstNoOverloadCore`, but also executes reserved name actions.
-/
def realizeGlobalConstNoOverloadCore (n : Name) : CoreM Name := do
  ensureNoOverload n (← realizeGlobalConstCore n)

/--
Similar to `resolveGlobalConst`, but also executes reserved name actions.

Consider using `realizeGlobalConstWithInfo` if you want the syntax to show the resulting name's info
on hover.
-/
def realizeGlobalConst (stx : Syntax) : CoreM (List Name) :=
  withRef stx do preprocessSyntaxAndResolve stx realizeGlobalConstCore

/--
Similar to `realizeGlobalConstNoOverload`, but also executes reserved name actions.

Consider using `realizeGlobalConstNoOverloadWithInfo` if you want the syntax to show the resulting
name's info on hover.
-/
def realizeGlobalConstNoOverload (id : Syntax) : CoreM Name := do
  ensureNonAmbiguous id (← realizeGlobalConst id)


builtin_initialize
  registerTraceClass `ReservedNameAction

end Lean
```
