-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.RoundingSetTransportIff.Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RoundingSetTransportIff.Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/RoundingNaturality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.Rounding

/-!
# Naturality of complete rounding fibers

A bijective lattice transport that preserves every Gram cost preserves the
entire nearest-lattice-point fiber, including every Voronoi-wall tie.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.RoundingSetTransportIff.Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0

namespace Mathematics.Homology

universe u₁ u₂ v₁ v₂

noncomputable section

variable
    {SourceIntegral : Type u₁} {TargetIntegral : Type u₂}
    {SourceReal : Type v₁} {TargetReal : Type v₂}
    [AddCommGroup SourceIntegral] [AddCommGroup TargetIntegral]
    [NormedAddCommGroup SourceReal] [NormedSpace ℝ SourceReal]
    [FiniteDimensional ℝ SourceReal]
    [NormedAddCommGroup TargetReal] [NormedSpace ℝ TargetReal]
    [FiniteDimensional ℝ TargetReal]

/-- Membership in a complete rounding fiber is invariant under exact transport. -/
theorem roundingSet_transport_iff
    (sourceLattice :
      FreeCohomologyLattice SourceIntegral SourceReal)
    (targetLattice :
      FreeCohomologyLattice TargetIntegral TargetReal)
    (sourceGram : PositiveGram SourceReal)
    (targetGram : PositiveGram TargetReal)
    (pointTransport : SourceReal → TargetReal)
    (latticeTransport :
      sourceLattice.lattice ≃ targetLattice.lattice)
    (costPreserving :
      ∀ point integral,
      targetGram.squaredDistance
          (pointTransport point) (latticeTransport integral) =
        sourceGram.squaredDistance point integral)
    (point : SourceReal)
    (integral : sourceLattice.lattice) :
    latticeTransport integral ∈
        RoundingSet targetLattice targetGram (pointTransport point) ↔
      integral ∈ RoundingSet sourceLattice sourceGram point := by
  constructor
  · intro targetMinimal sourceCompetitor
    have compared :=
      targetMinimal (latticeTransport sourceCompetitor)
    simpa only [
      costPreserving point integral,
      costPreserving point sourceCompetitor,
    ] using compared
  · intro sourceMinimal targetCompetitor
    have compared :=
      sourceMinimal (latticeTransport.symm targetCompetitor)
    have competitorTransported :=
      costPreserving point (latticeTransport.symm targetCompetitor)
    calc
      targetGram.squaredDistance
          (pointTransport point) (latticeTransport integral) =
        sourceGram.squaredDistance point integral :=
          costPreserving point integral
      _ ≤ sourceGram.squaredDistance
          point (latticeTransport.symm targetCompetitor) :=
        compared
      _ = targetGram.squaredDistance
          (pointTransport point) targetCompetitor := by
        rw [← competitorTransported]
        simp

/-- Exact transport preserves the complete set of tied minimizers. -/
theorem roundingSet_transport
    (sourceLattice :
      FreeCohomologyLattice SourceIntegral SourceReal)
    (targetLattice :
      FreeCohomologyLattice TargetIntegral TargetReal)
    (sourceGram : PositiveGram SourceReal)
    (targetGram : PositiveGram TargetReal)
    (pointTransport : SourceReal → TargetReal)
    (latticeTransport :
      sourceLattice.lattice ≃ targetLattice.lattice)
    (costPreserving :
      ∀ point integral,
        targetGram.squaredDistance
            (pointTransport point) (latticeTransport integral) =
          sourceGram.squaredDistance point integral)
    (point : SourceReal) :
    latticeTransport ''
        RoundingSet sourceLattice sourceGram point =
      RoundingSet targetLattice targetGram (pointTransport point) := by
  ext targetIntegral
  constructor
  · rintro ⟨sourceIntegral, sourceMinimal, rfl⟩
    exact (roundingSet_transport_iff
      sourceLattice targetLattice sourceGram targetGram
      pointTransport latticeTransport costPreserving
      point sourceIntegral).2 sourceMinimal
  · intro targetMinimal
    refine ⟨latticeTransport.symm targetIntegral, ?_, by simp⟩
    exact (roundingSet_transport_iff
      sourceLattice targetLattice sourceGram targetGram
      pointTransport latticeTransport costPreserving
      point (latticeTransport.symm targetIntegral)).1
      (by simpa using targetMinimal)

end

end Mathematics.Homology
