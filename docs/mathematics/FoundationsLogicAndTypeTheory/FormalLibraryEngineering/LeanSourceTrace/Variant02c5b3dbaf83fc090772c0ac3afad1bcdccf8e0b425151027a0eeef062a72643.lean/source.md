# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceTrace.Variant02c5b3dbaf83fc090772c0ac3afad1bcdccf8e0b425151027a0eeef062a72643

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb6eb6765852b0ec46265635f8105f109b473496` · SHA-256 `37cfb53008c695289c9709c067a44be3a24a004fe72473f399447f4c6df1eda3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MainAction.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MainAction.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/tools/LeanSourceTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm
import all tools.LeanSource.Cli


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MainAction.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc

public section

/-! # Pinned Lean source-command tracer -/

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathDiscoveryLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
```
