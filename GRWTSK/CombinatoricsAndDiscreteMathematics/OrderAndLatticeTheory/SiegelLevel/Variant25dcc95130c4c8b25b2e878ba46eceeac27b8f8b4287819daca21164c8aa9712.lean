-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SymplecticLevelMarkingKind.Variant34164474b45f0b9be236c822f080ed017e27a360dace8d46f130826bee7dc015","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34164474b45f0b9be236c822f080ed017e27a360dace8d46f130826bee7dc015","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.SymplecticLevelMarkingKind.Variant34164474b45f0b9be236c822f080ed017e27a360dace8d46f130826bee7dc015","mathematical_subject":"Algebra.OrderTheory","original_sha256":"34164474b45f0b9be236c822f080ed017e27a360dace8d46f130826bee7dc015","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/SiegelLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.CohomologyLattice
import Mathematics.Homology.GramField

/-!
# Polarized Siegel level enrichment

Even rank and an alternating form are insufficient.  The enrichment also
records a compatible positive complex structure, integral polarization, and
an explicitly typed level marking.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SymplecticLevelMarkingKind.Variant34164474b45f0b9be236c822f080ed017e27a360dace8d46f130826bee7dc015

namespace Mathematics.Homology

universe u v

noncomputable section

inductive SymplecticLevelMarkingKind
  | markedPoint
  | isotropicSubgroup
  | fullSymplecticBasis
  deriving DecidableEq, Repr

/-- Certified polarized rank-`2g` specialization. -/
structure SiegelLevelEnrichment
    (IntegralCohomology : Type u)
    (V : Type v)
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V]
    (lattice : FreeCohomologyLattice IntegralCohomology V)
    (gram : PositiveGram V) where
  genus : Nat
  genus_positive : 0 < genus
  even_rank : Module.finrank ℝ V = 2 * genus
  symplecticForm : V →ₗ[ℝ] V →ₗ[ℝ] ℝ
  alternating :
    ∀ vector, symplecticForm vector vector = 0
  nondegenerate :
    ∀ vector,
      (∀ other, symplecticForm vector other = 0) →
        vector = 0
  complexStructure : V →ₗ[ℝ] V
  complex_squared :
    complexStructure.comp complexStructure = -LinearMap.id
  symplecticCompatible :
    ∀ left right,
      symplecticForm
          (complexStructure left)
          (complexStructure right) =
        symplecticForm left right
  riemannPositive :
    ∀ vector, vector ≠ 0 →
      0 < symplecticForm vector (complexStructure vector)
  gramCompatibilityCertificate : ObjectAddress
  integralPolarizationCertificate : ObjectAddress
  principalPolarization : Bool
  level : Nat
  level_positive : 0 < level
  markingKind : SymplecticLevelMarkingKind
  markedTorsionDigest : Digest
  levelCertificate : ObjectAddress
  lattice_bound : Digest
  lattice_bound_eq : lattice_bound = lattice.latticeDigest

/-- Further analytic data required before calling an object a Siegel modular form. -/
structure SiegelModularFormDatum where
  genus : Nat
  weight : Int
  symplecticAutomorphyCertificate : ObjectAddress
  holomorphyCertificate : ObjectAddress
  cuspOrGrowthCertificate : ObjectAddress

end

end Mathematics.Homology
