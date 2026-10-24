-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RoundingExistenceCertificate.Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RoundingExistenceCertificate.Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e","mathematical_subject":"Analysis.Integration","original_sha256":"39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/Rounding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.GramField

/-!
# Branch-preserving cohomological rounding

Rounding is the complete nearest-lattice-point set.  A Voronoi-wall tie is
retained as multiple branches; there is no authoritative default minimizer.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.RoundingExistenceCertificate.Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e

namespace Mathematics.Homology

open Set

universe u v

noncomputable section

variable
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]

/-- All integral lattice points minimizing the Gram distance to `point`. -/
def RoundingSet
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) :
    Set lattice.lattice :=
  {integralPoint |
    ∀ competitor : lattice.lattice,
      gram.squaredDistance point integralPoint ≤
        gram.squaredDistance point competitor}

/-- A point lies on a Voronoi wall exactly when it has distinct minimizers. -/
def OnVoronoiWall
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) : Prop :=
  ∃ left right : lattice.lattice,
    left ≠ right ∧
      left ∈ RoundingSet lattice gram point ∧
      right ∈ RoundingSet lattice gram point

/-- Existence is certificate-bearing until derived from lattice compactness. -/
structure RoundingExistenceCertificate
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology) where
  exists_minimizer :
    ∀ point, (RoundingSet lattice gram point).Nonempty
  certificate : ObjectAddress

/-- Persisted exact finite enumeration of every tied minimizer. -/
structure FiniteRoundingCertificate
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) where
  minimizers : Finset lattice.lattice
  nonempty : minimizers.Nonempty
  exact :
    ∀ integralPoint,
      integralPoint ∈ minimizers ↔
        integralPoint ∈ RoundingSet lattice gram point
  receipt : ObjectAddress

/-- One explicitly selected branch from the complete rounding fiber. -/
structure RoundedBranch
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) where
  integral : lattice.lattice
  minimizes : integral ∈ RoundingSet lattice gram point
  selectionCertificate : ObjectAddress

namespace RoundedBranch

variable
    {lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology}
    {gram : PositiveGram RealCohomology}
    {point : RealCohomology}
    (branch : RoundedBranch lattice gram point)

/-- Continuous stretch residue after selecting one certified branch. -/
def residue : RealCohomology :=
  point - branch.integral

/-- Exact cohomological split `ω = λ + ε`. -/
theorem integral_add_residue :
    (branch.integral : RealCohomology) + branch.residue = point := by
  simp [residue]

/-- Every retained minimizer has the same Gram cost. -/
theorem equal_cost
    (other : RoundedBranch lattice gram point) :
    gram.squaredDistance point branch.integral =
      gram.squaredDistance point other.integral :=
  le_antisymm
    (branch.minimizes other.integral)
    (other.minimizes branch.integral)

end RoundedBranch

end

end Mathematics.Homology
