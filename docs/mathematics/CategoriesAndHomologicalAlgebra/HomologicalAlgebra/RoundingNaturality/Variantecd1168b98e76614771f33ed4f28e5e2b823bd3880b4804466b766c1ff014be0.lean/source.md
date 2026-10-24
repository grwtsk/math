# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.RoundingNaturality.Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce831a1565b37abe81e99d9051881aabedb3d6eb` · SHA-256 `ecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.Rounding

/-!
# Naturality of complete rounding fibers

A bijective lattice transport that preserves every Gram cost preserves the
entire nearest-lattice-point fiber, including every Voronoi-wall tie.
-/

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
```
