# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant18984ddac4935f0df4f1cfb9ef816caea1e126f1f6081cdd6bb74bc5fc041d55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8bc4e66319a49e12a883d6ff81e13ba4f0b106c` · SHA-256 `4620b4042f122986f1d69235cce0845d99840ff9810a64546adaeb485b762dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticCertificate.Variante308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnalyticCertificate.Variante308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2","mathematical_subject":"Foundations.Unclassified","original_sha256":"e308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/AnalyticNumber/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Authority

/-!
# Analytic number certificates

This file gives `AnalyticNumber` a local name for the generic authority
certificate vocabulary. It is not a compatibility layer; it is the analytic
number-theory certificate surface.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticCertificate.Variante308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2

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
