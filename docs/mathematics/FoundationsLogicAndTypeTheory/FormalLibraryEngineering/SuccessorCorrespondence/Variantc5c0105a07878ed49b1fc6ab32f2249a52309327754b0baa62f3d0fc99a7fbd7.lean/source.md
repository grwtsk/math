# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorCorrespondence.Variantc5c0105a07878ed49b1fc6ab32f2249a52309327754b0baa62f3d0fc99a7fbd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `722a359da8900f2a380603b28aacc7bcd48ee671` · SHA-256 `cea96fa1b5eeb52bb4e142ae774273d78cb329b4cba61702c4c129d9bdda80e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorArithmeticCorrespondence.Variant0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SuccessorArithmeticCorrespondence.Variant0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6","mathematical_subject":"Foundations.Unclassified","original_sha256":"0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Arithmetic/SuccessorCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Successor arithmetic correspondence
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorArithmeticCorrespondence.Variant0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6

namespace Mathematics.StratifiedBoundary

structure SuccessorArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  predecessor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  successor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  traceConnectorRef : String
  arithmeticConnectorRef : String
  compatible : Prop
  compatibilityProof : compatible

end Mathematics.StratifiedBoundary
```
