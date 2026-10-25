# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocPrime.Variantd5d72806b5e2e68fc4cce0e9168c38415eaeff88ee946911ac90ecb79cc5bb26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a8b6d0eef5ba7930e1cf908c1322821494ede2` · SHA-256 `468b9526077faef488f844abb9c54dd85e9b86a88080a4d4eb42a2ef3ab8693b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocPrimeLinter.Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DocPrimeLinter.Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linter/DocPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Lean.Elab.Command
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header

/-!
# The "docPrime" linter

The "docPrime" linter emits a warning on declarations that have no doc-string and whose
name ends with a `'`. Such declarations are expected to have a documented explanation
for the presence of a `'` in their name. This may consist of discussion of the difference relative
to an unprimed version of that declaration, or an explanation as to why no better naming scheme
is possible.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocPrimeLinter.Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4

open Lean Elab

namespace Mathlib.Linter

/--
The "docPrime" linter emits a warning on declarations that have no doc-string and whose
name ends with a `'`.

The file `scripts/nolints_prime_decls.txt` contains a list of temporary exceptions to this linter.
This list should not be appended to, and become emptied over time.
-/
register_option linter.docPrime : Bool := {
  defValue := false
  descr := "enable the docPrime linter"
}

namespace DocPrime

@[inherit_doc Mathlib.Linter.linter.docPrime]
def docPrimeLinter : Linter where run := withSetOptionIn fun stx ↦ do
  unless Linter.getLinterValue linter.docPrime (← getOptions) do
    return
  if (← get).messages.hasErrors then
    return
  unless [``Lean.Parser.Command.declaration, `lemma].contains stx.getKind do return
  -- ignore private declarations
  if (stx.find? (·.isOfKind ``Lean.Parser.Command.private)).isSome then return
  -- ignore examples
  if (stx.find? (·.isOfKind ``Lean.Parser.Command.example)).isSome then return
  let docstring := stx[0][0]
  -- The current declaration's id, possibly followed by a list of universe names.
  let declId :=
    if stx[1].isOfKind ``Lean.Parser.Command.instance then
      stx[1][3][0]
    else
      stx[1][1]
  if let .missing := declId then return
  -- The name of the current declaration, with namespaces resolved.
  let declName : Name :=
    if let `_root_ :: rest := declId[0].getId.components then
      rest.foldl (· ++ ·) default
    else (← getCurrNamespace) ++ declId[0].getId
  let msg := m!"`{declName}` is missing a doc-string, please add one.\n\
      Declarations whose name ends with a `'` are expected to contain an explanation for the \
      presence of a `'` in their doc-string. This may consist of discussion of the difference \
      relative to the unprimed version, or an explanation as to why no better naming scheme \
      is possible."
  if docstring[0][1].getAtomVal.isEmpty && declName.toString.back == '\'' then
    if ← System.FilePath.pathExists "scripts/nolints_prime_decls.txt" then
      if (← IO.FS.lines "scripts/nolints_prime_decls.txt").contains declName.toString then
        return
      else
        Linter.logLint linter.docPrime declId msg
    else
      Linter.logLint linter.docPrime declId msg

initialize addLinter docPrimeLinter

end DocPrime

end Mathlib.Linter
```
