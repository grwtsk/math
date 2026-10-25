# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitCorrespondence.Variantef5d05ab14744f6309a4334e57ecd1894c55a957e3a8674b44f155f61b5d2b92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `161b58e1ae152c2f6169482c83c6918160c19134` · SHA-256 `5102a8ad80d8fb0ee2776cba59719d71dc77149adf381538cbff7a8d28bd2881`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitArithmeticCorrespondence.Variant4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LimitArithmeticCorrespondence.Variant4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d","mathematical_subject":"Foundations.Unclassified","original_sha256":"4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Arithmetic/LimitCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence

/-!
# Limit arithmetic correspondence

Cylinder-trace stability alone does not inhabit this structure.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitArithmeticCorrespondence.Variant4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d

namespace Mathematics.StratifiedBoundary

structure LimitArithmeticCorrespondence
    (CylinderTraceValue ArithmeticValue : Type u) where
  cylinderTraceValue : CylinderTraceValue
  arithmeticValue : ArithmeticValue
  exactRealization :
    CylinderTraceValue → ArithmeticValue
  exact :
    exactRealization cylinderTraceValue = arithmeticValue
  projectiveArithmeticSourceRef : String
  exactLimitTraceFormulaRef : String

end Mathematics.StratifiedBoundary
```
