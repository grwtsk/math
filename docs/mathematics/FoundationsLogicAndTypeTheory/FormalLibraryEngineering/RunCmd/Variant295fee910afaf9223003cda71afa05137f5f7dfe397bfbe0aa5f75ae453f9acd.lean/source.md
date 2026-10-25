# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunCmd.Variant295fee910afaf9223003cda71afa05137f5f7dfe397bfbe0aa5f75ae453f9acd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf481c33b092be7b8e072e70dd54c37897f2d039` · SHA-256 `eac535456508c546c0aca7d2c258df7afd53f547e7f2416a852c27d27f0d2ab1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variantd2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ElabTerm.Variantd2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/run_cmd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Tactic.ElabTerm
import Std.Tactic.RunCmd
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variantd2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039

open Lean Elab Tactic

/-- info: hello world -/
#guard_msgs in
run_cmd logInfo m!"hello world"

example : True := by
  run_tac
    evalApplyLikeTactic MVarId.apply (← `(True.intro))

example : True := by_elab
  Term.elabTerm (← `(True.intro)) none
```
