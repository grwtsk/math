# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.LimitClosure.Variant3c1c7acdc9ba46e2608cc127327bad774ba266fbdc246a66020bdc2d3258c32e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3571b19ee30beebfba85c75e7cba564799ed78c1` · SHA-256 `3121464846715155619e6535f962b05aa7b33360fe8f0c0509587c1fdaf966a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.LimitSquareRootClosure.Variantf37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LimitSquareRootClosure.Variantf37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf","mathematical_subject":"Foundations.Unclassified","original_sha256":"f37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/SquareRoot/LimitClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily
import Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence

/-!
# Conditional limit square-root closure

Finite bounds pass to a declared limit only through norm compatibility and an
exact arithmetic correspondence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.LimitSquareRootClosure.Variantf37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf

namespace Mathematics.StratifiedBoundary

structure LimitSquareRootClosure
    (CylinderTraceValue ArithmeticValue : Type u) where
  ordinalFamily : OrdinalFamilySquareRootCertificate
  arithmetic :
    LimitArithmeticCorrespondence
      CylinderTraceValue ArithmeticValue
  limitNormCompatibility : Prop
  limitNormCompatibilityProof : limitNormCompatibility
  finiteSquareRootNorm : Nat
  finiteSquareRootNormEvidence : Prop
  finiteSquareRootNormProof : finiteSquareRootNormEvidence

end Mathematics.StratifiedBoundary
```
