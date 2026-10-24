# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalGram.Variant9ee118d25c31b3d134ad1bb6df96c5024f56f7361ab28e84605198a37ff11ec8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86fcd4f8f986dd85e4a0cd9dda49a79409a1e228` · SHA-256 `d3d0cabf3b38c0b38100ab981df1f8dd01008bb0a58a7c917c1847ac258266b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalPrimeHorizon.Variantecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CofinalPrimeHorizon.Variantecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/CofinalGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.FiniteHorizonGram

/-!
# Cofinal Sonin Gram stability

Convergence topology and nondegeneracy are explicit certificate data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalPrimeHorizon.Variantecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure CofinalPrimeHorizon
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  cut : Nat → Finset Prime
  monotone :
    ∀ index,
      cut index ⊆ cut (index + 1)
  cofinal :
    ∀ prime,
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          prime ∈ cut index

inductive GramConvergenceMode
  | operatorNorm
  | strongOperator
  | packetTrace
deriving DecidableEq, Repr

structure CofinalSoninGramStability
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (grams :
      FiniteHorizonGramFamily
        model connectors range)
    (horizons :
      CofinalPrimeHorizon Prime) where
  limitGram : Finset Prime → model.Operator
  mode : GramConvergenceMode
  converges : Prop
  convergesProof : converges
  limitSelfAdjoint :
    ∀ cut,
      model.SelfAdjoint (limitGram cut)
  limitNonnegative :
    ∀ cut,
      model.Nonnegative (limitGram cut)
  uniformlyNondegenerate : Prop
  uniformlyNondegenerateProof :
    uniformlyNondegenerate

end Mathematics.SemiLocalDefect.Sonin
```
