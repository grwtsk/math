-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddToCompletionBlackList.Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddToCompletionBlackList.Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CompletionName.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Match.MatcherInfo


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddToCompletionBlackList.Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e

public section

/-!
This exports a predicate for checking whether a name should be made
visible in auto-completion and other tactics that suggest names to
insert into Lean code.

The `exact?` tactic is an example of a tactic that benefits from this
functionality.  `exact?` finds lemmas in the environment to use to
prove a theorem, but it needs to avoid inserting references to theorems
with unstable names such as auxiliary lemmas that could change with
minor unintentional modifications to definitions.

It uses a blacklist environment extension to enable names in an
environment to be specifically hidden.
-/
namespace Lean.Meta

builtin_initialize completionBlackListExt : TagDeclarationExtension ← mkTagDeclarationExtension

def addToCompletionBlackList (env : Environment) (declName : Name) : Environment :=
  completionBlackListExt.tag env declName

/--
Checks whether a given name is internal due to something other than `_private`.
Correctly deals with names like `_private.<SomeNamespace>.0.<SomeType>._sizeOf_1` in a private type
`SomeType`, which `n.isInternal && !isPrivateName n` does not.
-/
private def isInternalNameModuloPrivate : Name → Bool
  | n@(.str p s) => s.front == '_' && n != privateHeader || isInternalNameModuloPrivate p
  | .num p _ => isInternalNameModuloPrivate p
  | _       => false

/--
Return true if name is blacklisted for completion purposes.
-/
private def isBlacklisted (env : Environment) (declName : Name) : Bool :=
  isInternalNameModuloPrivate declName
  || isAuxRecursor env declName
  || isNoConfusion env declName
  || isRecCore env declName
  || completionBlackListExt.isTagged env declName
  || isMatcherCore env declName

/--
Return true if completion is allowed for name.
-/
def allowCompletion (env : Environment) (declName : Name) : Bool :=
  !(isBlacklisted env declName)

end Lean.Meta
