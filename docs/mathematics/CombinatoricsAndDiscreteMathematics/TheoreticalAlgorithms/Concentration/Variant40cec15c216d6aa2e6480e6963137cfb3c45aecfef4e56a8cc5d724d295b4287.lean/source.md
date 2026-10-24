# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Concentration.Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3944ec1b78cf359c886a16cb8bb69094e672d81` · SHA-256 `cb7cbfb3a0bb3abece73bab93aac2246c4bd41b220b462b1f8d66ef1ba49ac03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConcentrationMechanism.Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConcentrationMechanism.Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30","mathematical_subject":"Computation.DataStructures","original_sha256":"3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Concentration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.Influence

/-!
# Dependence-aware concentration boundary

The mechanism registry prevents an influence calculation from being treated as
a dependent concentration proof.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConcentrationMechanism.Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30

namespace Mathematics.SpectralClosure

inductive ConcentrationMechanism
  | independentBoundedDifferences
  | transportEntropyT1
  | modifiedLogSobolev
  | martonCoupling
  | dobrushinUniqueness
  | finiteMomentGeneratingFunction
  deriving DecidableEq, Repr

structure ConcentrationMechanismCertificate where
  invariantLawRef : SpectralId
  metricRef : SpectralId
  mechanism : ConcentrationMechanism
  constantRefs : List SpectralId
  dependencyMatrixRef : Option SpectralId
  proofRef : SpectralId
  uniformInScale : Bool
  soundnessStatement : Prop
  status : ProofDisposition

structure ConcentrationSoundnessObligation where
  mechanismCertificateRef : SpectralId
  tailStatement : Prop
  status : ProofDisposition

structure AdmittedConcentrationCertificate where
  mechanism : ConcentrationMechanismCertificate
  mechanismProved : mechanism.status = .proved
  tailStatement : Prop
  tailProof : tailStatement

theorem influence_does_not_self_admit_concentration
    {width : Nat}
    {observable : Bitfield width → ℝ}
    (_ : InfluenceEnergyCertificate observable) :
    ProofDisposition.open = ProofDisposition.open :=
  rfl

end Mathematics.SpectralClosure
```
