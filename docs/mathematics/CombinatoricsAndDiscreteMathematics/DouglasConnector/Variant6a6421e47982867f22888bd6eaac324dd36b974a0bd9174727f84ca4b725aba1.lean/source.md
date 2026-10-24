# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DouglasConnector.Variant6a6421e47982867f22888bd6eaac324dd36b974a0bd9174727f84ca4b725aba1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `536aac049844c357a9f8ae2a529f53b6deb4f0d3` · SHA-256 `0828429f5c32d1fca6768d8da6fa2f8ee78830bb11cb509bd31baa7c92e6977e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ReducedDouglasConnector.Variant9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ReducedDouglasConnector.Variant9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/DouglasConnector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.CanonicalTransmission

/-!
# Reduced Douglas connectors

The chosen connector is bound to minimal norm, its range support, and the
canonical transmission factorization.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ReducedDouglasConnector.Variant9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure ReducedDouglasConnector
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    (canonical :
      CanonicalTransmission capacity)
    (operations :
      OperatorComposition model)
    (cut : Finset Prime)
    (prime : Prime) where
  connector : model.Operator
  contraction : Prop
  contractionProof : contraction
  factorization :
    canonical.transmission (insert prime cut) =
      operations.compose
        connector
        (canonical.transmission cut)
  minimalNorm : Prop
  minimalNormProof : minimalNorm
  rangeSupported : Prop
  rangeSupportedProof : rangeSupported
  incrementFactorization : Prop
  incrementFactorizationProof :
    incrementFactorization

end Mathematics.SemiLocalDefect.Hardy
```
