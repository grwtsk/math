# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsetOption.Variantf816db0c37e38753dfad0d38813b8ec8c418d3e8f2b26e942e8f22cced7e2a57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca873e0ede50ee17f1b28189786de4d445d71693` · SHA-256 `2b98970a7fe046a88a4636118c8bfae3003658f1806ef3459d61524683ef7309`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabUnsetOption.Variantb81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabUnsetOption.Variantb81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/UnsetOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Init
import Lean.Parser.Term
import Lean.Parser.Do
import Lean.Elab.Command

/-!
# The `unset_option` command

This file defines an `unset_option` user command, which unsets user configurable
options.
For example, inputting `set_option blah 7` and then `unset_option blah`
returns the user to the default state before any `set_option` command is called.
This is helpful when the user does not know the default value of the option or it
is cleaner not to write it explicitly, or for some options where the default
behaviour is different from any user set value.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabUnsetOption.Variantb81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39

namespace Lean.Elab

variable {m : Type → Type} [Monad m] [MonadOptions m] [MonadRef m] [MonadInfoTree m]

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
```
