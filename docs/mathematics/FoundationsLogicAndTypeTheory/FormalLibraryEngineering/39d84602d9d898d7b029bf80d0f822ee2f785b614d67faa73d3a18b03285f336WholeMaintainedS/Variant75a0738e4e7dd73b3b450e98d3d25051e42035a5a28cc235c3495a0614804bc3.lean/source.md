# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336WholeMaintainedS.Variant75a0738e4e7dd73b3b450e98d3d25051e42035a5a28cc235c3495a0614804bc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc1110e30af867208d0385d78e50ca05787d31e7` · SHA-256 `5b4daf5cd04dbb8793cc010a38b944d89818783e487e22d4411a550734d9abeb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalResearch.Variant39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FormalResearch.Variant39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/39/39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336--WholeMaintainedSignatures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch
import Lean.Elab.Print


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalResearch.Variant39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336

open Lean Elab Command

elab "audit_maintained_signatures" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index =>
        let owner := modules[index]!.toString
        owner == "FormalResearch" || owner.startsWith "FormalResearch."
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  for (name, _) in candidates do
    logInfo m!"STRUCTURE_DECLARATION_BEGIN {name.toString}"
    let ident := mkIdent name
    elabCommand (← `(command| #print sig $ident:ident))
    logInfo m!"STRUCTURE_DECLARATION_END {name.toString}"
  logInfo m!"Whole maintained signature count: {candidates.size}."

audit_maintained_signatures
```
