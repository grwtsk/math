# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLevel.Variante49e57bd377bafef9266fbc6c8e2d3367a5bd96db35d58a44677530d996dea72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f996c561950e03879bc215fd362a22a41e7a8747` · SHA-256 `a6a74fd47a1bd1b1e1cd40422d7999e20a5f27e27423dcb09d17bc10d63d468e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLevelMarkingKind.Variant2a78223eebbd98a5f47607f7d22d1032637822b505093643940e4dbc1a05270b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a78223eebbd98a5f47607f7d22d1032637822b505093643940e4dbc1a05270b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.EllipticLevelMarkingKind.Variant2a78223eebbd98a5f47607f7d22d1032637822b505093643940e4dbc1a05270b","mathematical_subject":"Algebra.OrderTheory","original_sha256":"2a78223eebbd98a5f47607f7d22d1032637822b505093643940e4dbc1a05270b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/EllipticLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.CohomologyLattice
import Mathematics.Homology.GramField

/-!
# Rank-two elliptic level enrichment

An oriented rank-two lattice with compatible complex and positive metric data
defines an elliptic moduli point after choosing scale normalization.  A
modular form is additional automorphic, holomorphic, and growth data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLevelMarkingKind.Variant2a78223eebbd98a5f47607f7d22d1032637822b505093643940e4dbc1a05270b

namespace Mathematics.Homology

universe u v

noncomputable section

inductive EllipticLevelMarkingKind
  | markedPoint
  | cyclicSubgroup
  | fullBasis
  deriving DecidableEq, Repr

/-- Certified elliptic specialization of one free cohomology lattice. -/
structure EllipticLevelEnrichment
    (IntegralCohomology : Type u)
    (V : Type v)
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V]
    (lattice : FreeCohomologyLattice IntegralCohomology V)
    (gram : PositiveGram V) where
  rank_two : Module.finrank ℝ V = 2
  orientationDigest : Digest
  complexStructure : V →ₗ[ℝ] V
  complex_squared :
    complexStructure.comp complexStructure = -LinearMap.id
  gramCompatible :
    ∀ left right,
      gram.form
          (complexStructure left)
          (complexStructure right) =
        gram.form left right
  positiveAreaCertificate : ObjectAddress
  covolume : ℝ
  covolume_positive : 0 < covolume
  shapeNormalizationCertificate : ObjectAddress
  level : Nat
  level_positive : 0 < level
  markingKind : EllipticLevelMarkingKind
  markedTorsionDigest : Digest
  levelCertificate : ObjectAddress
  lattice_bound : Digest
  lattice_bound_eq : lattice_bound = lattice.latticeDigest

/-- Data required in addition to an elliptic lattice to claim a modular form. -/
structure EllipticModularFormDatum where
  weight : Int
  automorphyLawCertificate : ObjectAddress
  holomorphyCertificate : ObjectAddress
  cuspOrGrowthCertificate : ObjectAddress

end

end Mathematics.Homology
```
