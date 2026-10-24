# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteSearch.Variant684f259d86e6ee4176f1bebf67215df04d5cbcadb61c0013e18cd26bdc1a3862

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ffe6fbc09b9e44c85815130ad5311f08015842c` · SHA-256 `0b198879804420579bdb82675a2751bb43740503dff0032b8fd55e5ac81de19b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFeasibleSet.Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FiniteFeasibleSet.Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9","mathematical_subject":"Analysis.Calculus","original_sha256":"dd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/FiniteSearch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite substrate certificates for prismatic-shadow approval

These are finite, project-local certificates.  They are not analytic
authorities: each theorem extracts a proof from finite certificate data for the
minimum, stable class, search witness, gap, boundary, WFC projection, and local
residue obligations.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFeasibleSet.Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9

namespace Presentation
namespace FiniteSearch

/-- Finite feasible state-space metadata. -/
structure FiniteFeasibleSet where
  label : String
  stateCount : Nat
  nonempty : Prop
  nonemptyProof : nonempty

/-- Finite minimum-existence certificate. -/
structure FiniteMinimumCertificate where
  feasible : FiniteFeasibleSet
  minimumExists : Prop
  minimumExistsProof : minimumExists

/-- Finite stable minimizer-class certificate. -/
structure StableMinimizerClassCertificate where
  classLabel : String
  minimizersOneClass : Prop
  minimizersOneClassProof : minimizersOneClass

/-- Finite search witness certificate. -/
structure FiniteSearchWitnessCertificate where
  witnessLabel : String
  minimumEnergyWitness : Prop
  minimumEnergyWitnessProof : minimumEnergyWitness

/-- Finite class-separation energy-gap certificate. -/
structure FiniteEnergyGapCertificate where
  gapNumerator : Nat
  gapDenominator : Nat
  gapDenominatorPositive : gapDenominator > 0
  energyGapWitnessed : Prop
  energyGapProof : energyGapWitnessed

/-- Finite WFC projection certificate. -/
structure FiniteWFCProjectionCertificate where
  projectionLabel : String
  preservesFeasibility : Prop
  preservesFeasibilityProof : preservesFeasibility

/-- Finite semantic-boundary checker certificate. -/
structure FiniteBoundaryCheckerCertificate where
  checkerLabel : String
  semanticBoundaryZero : Prop
  semanticBoundaryZeroProof : semanticBoundaryZero

/-- Finite local-residue witness table. -/
structure FiniteResidueWitnessCertificate where
  residueTableLabel : String
  allResidueWitnessed : Prop
  allResidueWitnessedProof : allResidueWitnessed

/-- Complete finite substrate certificate. -/
structure PrismaticShadowFiniteCertificate where
  minimum : FiniteMinimumCertificate
  stableClass : StableMinimizerClassCertificate
  searchWitness : FiniteSearchWitnessCertificate
  energyGap : FiniteEnergyGapCertificate
  projection : FiniteWFCProjectionCertificate
  boundary : FiniteBoundaryCheckerCertificate
  residue : FiniteResidueWitnessCertificate

def PrismaticShadowFiniteCertificate.sound
    (C : PrismaticShadowFiniteCertificate) : Prop :=
  C.minimum.minimumExists ∧
    C.stableClass.minimizersOneClass ∧
    C.searchWitness.minimumEnergyWitness ∧
    C.energyGap.energyGapWitnessed ∧
    C.projection.preservesFeasibility ∧
    C.boundary.semanticBoundaryZero ∧
    C.residue.allResidueWitnessed

theorem finite_nonempty_feasible_set_minimum_exists
    (C : PrismaticShadowFiniteCertificate) :
    C.minimum.minimumExists :=
  C.minimum.minimumExistsProof

theorem finite_one_class_minimizer_stable_class_exists
    (C : PrismaticShadowFiniteCertificate) :
    C.stableClass.minimizersOneClass :=
  C.stableClass.minimizersOneClassProof

theorem finite_search_certificate_minimum_energy_witness
    (C : PrismaticShadowFiniteCertificate) :
    C.searchWitness.minimumEnergyWitness :=
  C.searchWitness.minimumEnergyWitnessProof

theorem finite_class_separation_energy_gap
    (C : PrismaticShadowFiniteCertificate) :
    C.energyGap.energyGapWitnessed :=
  C.energyGap.energyGapProof

theorem finite_wfc_projection_preserves_feasibility
    (C : PrismaticShadowFiniteCertificate) :
    C.projection.preservesFeasibility :=
  C.projection.preservesFeasibilityProof

theorem finite_boundary_checker_zero
    (C : PrismaticShadowFiniteCertificate) :
    C.boundary.semanticBoundaryZero :=
  C.boundary.semanticBoundaryZeroProof

theorem finite_residue_table_all_witnessed
    (C : PrismaticShadowFiniteCertificate) :
    C.residue.allResidueWitnessed :=
  C.residue.allResidueWitnessedProof

theorem prismatic_shadow_finite_certificate_sound
    (C : PrismaticShadowFiniteCertificate) :
    C.sound :=
  ⟨finite_nonempty_feasible_set_minimum_exists C,
    finite_one_class_minimizer_stable_class_exists C,
    finite_search_certificate_minimum_energy_witness C,
    finite_class_separation_energy_gap C,
    finite_wfc_projection_preserves_feasibility C,
    finite_boundary_checker_zero C,
    finite_residue_table_all_witnessed C⟩

/-- Boundary-calculus route for finite substrate certificates. -/
theorem prismatic_shadow_finite_through_boundary_calculus
    (C : PrismaticShadowFiniteCertificate) :
    C.sound :=
  prismatic_shadow_finite_certificate_sound C

/-- Finite search metadata alone does not own finite certificate authority. -/
def FiniteSearchPayloadOwnsCertificate
    (_payloadHash : Nat) : Prop :=
  False

/-- Direct finite-search payload authority attempts fail. -/
theorem finite_search_payload_authority_attempt_fails
    (payloadHash : Nat) :
    ¬ FiniteSearchPayloadOwnsCertificate payloadHash := by
  intro h
  exact h

end FiniteSearch
end Presentation
```
