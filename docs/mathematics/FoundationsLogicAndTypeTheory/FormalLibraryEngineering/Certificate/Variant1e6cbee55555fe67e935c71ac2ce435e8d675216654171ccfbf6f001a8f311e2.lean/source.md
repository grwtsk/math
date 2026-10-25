# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant1e6cbee55555fe67e935c71ac2ce435e8d675216654171ccfbf6f001a8f311e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10b9bf515acf6339455dd0b9155b70bd560c87ac` · SHA-256 `11684f7f92482cab52712ac6cd9cb9a63448566f277dfccf74994a2b0361d1d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticCertificate.Variant86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnalyticCertificate.Variant86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940","mathematical_subject":"Foundations.Unclassified","original_sha256":"86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Authority

/-!
# Analytic number certificates

This file gives `AnalyticNumber` a local name for the generic authority
certificate vocabulary.  It is not a compatibility layer; it is the analytic
number-theory certificate surface.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticCertificate.Variant86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940

namespace AnalyticNumber

abbrev AnalyticCertificate :=
  Authority.Certificate

abbrev AnalyticBoundaryKind :=
  Authority.BoundaryKind

theorem analytic_certificate_sound
    (C : AnalyticCertificate) :
    C.sound :=
  Authority.certificate_sound C

end AnalyticNumber
```
