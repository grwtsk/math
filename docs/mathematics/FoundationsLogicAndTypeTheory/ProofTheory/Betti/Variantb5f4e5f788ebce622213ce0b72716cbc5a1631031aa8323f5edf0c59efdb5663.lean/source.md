# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Betti.Variantb5f4e5f788ebce622213ce0b72716cbc5a1631031aa8323f5edf0c59efdb5663

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e52c95efb2ba4df8cd746a73d2d1efa7f1689ab` · SHA-256 `7357aa7395c57177ad9f763c23af60503c20e2678566263d9a3d4666160b7937`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.BettiCertificateDescriptor.Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.BettiCertificateDescriptor.Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c","mathematical_subject":"Logic.ProofTheory","original_sha256":"874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Homology/Betti.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Homology.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.BettiCertificateDescriptor.Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c

namespace Surface

structure BettiCertificateDescriptor where
  homology : HomologyDescriptor
  bettiNumber : Nat
  numericalSmokeTest : Bool
  proofCertificate : Prop

theorem bettiCertificate_not_python_proof
    (B : BettiCertificateDescriptor) :
    B.numericalSmokeTest = true -> B.proofCertificate -> B.proofCertificate := by
  intro _ h
  exact h

end Surface
```
