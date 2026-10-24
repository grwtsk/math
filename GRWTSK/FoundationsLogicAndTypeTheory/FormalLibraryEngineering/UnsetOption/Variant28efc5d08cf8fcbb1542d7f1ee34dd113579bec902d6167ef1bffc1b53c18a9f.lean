-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabUnsetOption.Variantef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabUnsetOption.Variantef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/UnsetOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Lean.Parser.Term
import Lean.Parser.Do
import Lean.Elab.Command
import Mathlib.Data.KVMap

/-!
# The `unset_option` command

This file defines an `unset_option` user command, which unsets user configurable
options.
For example inputing `set_option blah 7` and then `unset_option blah`
returns the user to the default state before any `set_option` command is called.
This is helpful when the user does not know the default value of the option or it
is cleaner not to write it explicitly, or for some options where the default
behaviour is different from any user set value.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabUnsetOption.Variantef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0

set_option autoImplicit true

namespace Lean.Elab

variable [Monad m] [MonadOptions m] [MonadExceptOf Exception m] [MonadRef m]
variable [AddErrorMessageContext m] [MonadLiftT (EIO Exception) m] [MonadInfoTree m]

/-- unset the option specified by id -/
def elabUnsetOption (id : Syntax) : m Options := do
  -- We include the first argument (the keyword) for position information in case `id` is `missing`.
  addCompletionInfo <| CompletionInfo.option (← getRef)
  unsetOption id.getId.eraseMacroScopes
where
  /-- unset the given option name -/
  unsetOption (optionName : Name) : m Options := return (← getOptions).erase optionName

namespace Command

/-- Unset a user option -/
elab (name := unsetOption) "unset_option " opt:ident : command => do
  let options ← Elab.elabUnsetOption opt
  modify fun s ↦ { s with maxRecDepth := maxRecDepth.get options }
  modifyScope fun scope ↦ { scope with opts := options }

end Command
end Lean.Elab
