# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variant813af27bca0fab10225f7028f6e9899f383b0a683ed82813b040b30d5f85642a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3161f3ab3e4eeb7b4169f86942b1ad44c1eaec8` · SHA-256 `26f91f2d3d640ce4e81de03ce7599d645d18a52070563fd9aa08e871b9b8b3ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddCommZero.Variant53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddCommZero.Variant53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Find.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Find


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddCommZero.Variant53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af

theorem add_comm_zero {n} : 0 + n = n + 0 := Nat.add_comm _ _

#find _ + _ = _ + _
#find ?n + _ = _ + ?n
#find (_ : Nat) + _ = _ + _
#find Nat → Nat
#find ?n ≤ ?m → ?n + _ ≤ ?m + _
```
