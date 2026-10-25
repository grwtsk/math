# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceTrace.Variant5fe58f083c5cc7d10473704b5e59c271284dfad1b8da84d3600e5c212124a5cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2dbe5cae748563e57406056492dfa02a12e4ff9` · SHA-256 `daa9ed0e89bc7c68e9f5bbd24d09be23ecd3a518c654585ece3368e837b85021`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MainAction.Variant99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MainAction.Variant99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSourceTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm
import all tools.LeanSource.Cli


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MainAction.Variant99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a

public section

/-! # Pinned Lean source-command tracer -/

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathematicsLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
```
