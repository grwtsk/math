# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelope.Variant649d7fe58cce650f3b640b0e014df8bc2d0700a02caa6a0e8b035c7be69d477d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96b5bd70d3f334942fafc4265ad85a6d2d146cdd` · SHA-256 `a9c95de77e6516ce0a49974dc8515f1e94c270b014abc8008191f3932ce75f5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelopeDescriptor.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CapacityEnvelopeDescriptor.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","mathematical_subject":"Foundations.Unclassified","original_sha256":"65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/CapacityEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelopeDescriptor.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4

namespace Mathematics.SemiLocalDefect

structure CapacityEnvelopeDescriptor where
  envelopeRef : String
  feasibleRegionRef : String
  containmentCertificateRef : Option String
  inconsistencyRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .certifiedCapacityEnvelope

end Mathematics.SemiLocalDefect
```
