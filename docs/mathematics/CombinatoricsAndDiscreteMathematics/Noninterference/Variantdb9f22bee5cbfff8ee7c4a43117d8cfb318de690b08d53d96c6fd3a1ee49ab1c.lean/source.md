# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Noninterference.Variantdb9f22bee5cbfff8ee7c4a43117d8cfb318de690b08d53d96c6fd3a1ee49ab1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1d6ca21bfecb8a6b0686d420c00d43a67a5a446` · SHA-256 `4f4e35692763312d14099792f3b2d96e0439dfe19b9422e11c98ce110daa5636`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.StratifiedObservation.Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.StratifiedObservation.Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Contract
import Mathematics.StratifiedBoundary.UnknownLedger

/-!
# Authority noninterference

Ordinal codes and spectral traces are proposal-bearing observations.  Only an
external accepted certificate may enter the authority-bearing constructor.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.StratifiedObservation.Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3

namespace Mathematics.StratifiedBoundary

structure StratifiedObservation where
  contract : StratifiedBoundaryTraceContract
  observationDigest : String
  unresolved :
    Finset TerminalInterface

def StratifiedObservation.authoritativeEffect
    (_observation : StratifiedObservation) : Bool :=
  false

theorem stratified_observation_nonauthoritative
    (observation : StratifiedObservation) :
    observation.authoritativeEffect = false :=
  rfl

structure ExternalAdmissionCertificate where
  certificateId : String
  authorityId : String
  immutableCutDigest : String
  accepted : Bool
  acceptedProof :
    accepted = true

inductive AdmissionResult
  | proposal (observation : StratifiedObservation)
  | rejected (reason : String)
  | accepted
      (observation : StratifiedObservation)
      (certificate : ExternalAdmissionCertificate)

theorem accepted_requires_external_certificate
    {result : AdmissionResult}
    (accepted :
      ∃ observation certificate,
        result =
          .accepted observation certificate) :
    ∃ certificate : ExternalAdmissionCertificate,
      certificate.accepted = true := by
  obtain ⟨_observation, certificate, _⟩ :=
    accepted
  exact ⟨certificate, certificate.acceptedProof⟩

end Mathematics.StratifiedBoundary
```
