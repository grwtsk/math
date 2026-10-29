import Mathematics.Homology.CohomologyLattice
import Mathematics.Homology.GramField

/-!
# Polarized Siegel level enrichment

Even rank and an alternating form are insufficient.  The enrichment also
records a compatible positive complex structure, integral polarization, and
an explicitly typed level marking.
-/

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
