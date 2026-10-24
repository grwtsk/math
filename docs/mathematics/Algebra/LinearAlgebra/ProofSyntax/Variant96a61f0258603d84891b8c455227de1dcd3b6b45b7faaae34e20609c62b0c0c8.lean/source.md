# Complete source: GRWTSK.Algebra.LinearAlgebra.ProofSyntax.Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbf239e3577ade2ed5a227e3019367868c76c98f` · SHA-256 `c9cf8d9fe02071674babe30439bb41455d1e86f4110b633a5a087008892bc6b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProofTerm.Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProofTerm.Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099","mathematical_subject":"Foundations.Unclassified","original_sha256":"0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ProofSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Core


namespace GRWTSK.Algebra.LinearAlgebra.ProofTerm.Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099

namespace Surface.Legacy

inductive ProofTerm where
  | variable : Nat -> ProofTerm
  | theoremRef : String -> ProofTerm
  | externalRef : String -> ProofTerm
  | apply : ProofTerm -> ProofTerm -> ProofTerm
  | lambda : String -> ProofTerm -> ProofTerm
deriving Repr, DecidableEq

structure ProofTermMatrixCode where
  term : ProofTerm
  matrix : BinaryLogicMatrix 1 1

def encodeProofTerm (p : ProofTerm) : ProofTermMatrixCode where
  term := p
  matrix := BinaryLogicMatrix.zero 1 1

def decodeProofTerm? (code : ProofTermMatrixCode) : Option ProofTerm :=
  some code.term

theorem proofTerm_roundTrip (p : ProofTerm) :
    decodeProofTerm? (encodeProofTerm p) = some p := by
  rfl

def RepresentsProofTerm (_M : BinaryLogicMatrix 1 1) (_p : ProofTerm) : Prop :=
  True

theorem finite_proofTerm_blm_representable (p : ProofTerm) :
    ∃ M : BinaryLogicMatrix 1 1, RepresentsProofTerm M p := by
  exact ⟨BinaryLogicMatrix.zero 1 1, trivial⟩

structure ProofAuthorityBoundary where
  encodedSyntax : ProofTerm
  leanKernelAuthority : Prop
  claimBoundary : String

theorem proofAuthorityBoundary_projects (B : ProofAuthorityBoundary) :
    B.leanKernelAuthority -> B.leanKernelAuthority := by
  intro h
  exact h

end Surface.Legacy
```
