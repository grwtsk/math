# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLaw.Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `057e099bb706e446c1119f8144344ee36b59df4c` · SHA-256 `cc2af782edab9c05bcaaef8b26a47a69a1b1d5155db5e48e96c570b2c8ed9c1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLawCertificate.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InvariantLawCertificate.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/InvariantLaw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.Contraction

/-!
# Invariant-law certificates and honest existence boundary
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLawCertificate.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d

namespace Mathematics.SpectralClosure

structure InvariantLawCertificate
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X) where
  law : FiniteLaw X
  invariant : IsInvariantLaw kernel law
  proofRef : SpectralId

structure FiniteInvariantLawExistenceObligation
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X) where
  existenceStatement : ∃ law, IsInvariantLaw kernel law
  status : ProofDisposition

inductive BoundaryTailClassification
  | exactBoundaryLaw
  | residualBoundaryLaw
  | unboundedBoundaryDefect
  | unknownBoundaryTail
  deriving DecidableEq, Repr

structure BoundaryTailCertificate where
  classification : BoundaryTailClassification
  residualRadius : Option ℝ
  classificationStatement : Prop
  status : ProofDisposition

theorem certified_invariant_laws_coincide
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (contraction : ContractionCertificate kernel metric)
    (left right : InvariantLawCertificate kernel) :
    left.law = right.law :=
  invariantLaw_unique_under_strict_contraction
    kernel metric contraction left.law right.law
    left.invariant right.invariant

end Mathematics.SpectralClosure
```
