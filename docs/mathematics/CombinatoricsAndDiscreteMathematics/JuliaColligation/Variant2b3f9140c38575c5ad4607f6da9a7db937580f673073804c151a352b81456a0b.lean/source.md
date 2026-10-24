# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.JuliaColligation.Variant2b3f9140c38575c5ad4607f6da9a7db937580f673073804c151a352b81456a0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f08b14e5342c42b95bbf8e8bb78401d3b74aa92` · SHA-256 `3422ced10b84a33ea1d9e63607b0b97cde88fa2877abcd14647b6dbdeddf375f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/JuliaColligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.DouglasConnector

/-!
# Julia colligation receipt

The colligation is generated only from a certified reduced Douglas connector.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure JuliaColligation
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    {canonical :
      CanonicalTransmission capacity}
    {operations :
      OperatorComposition model}
    {cut : Finset Prime}
    {prime : Prime}
    (douglas :
      ReducedDouglasConnector
        canonical operations cut prime) where
  blockOperator : model.Operator
  unitaryOnDeclaredRange : Prop
  unitaryOnDeclaredRangeProof :
    unitaryOnDeclaredRange
  realizesConnector : Prop
  realizesConnectorProof :
    realizesConnector

end Mathematics.SemiLocalDefect.Hardy
```
