import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
open GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
-- A map with rational-to-real values that violates the scalar-extension laws
-- fails to preserve even the simplest harmonic constant vector.
def driftingMap (x : ℚ × ℚ) : ℝ × ℝ := ((x.1 : ℝ), (x.2 : ℝ) + 1)
example : edgeHodge.IsHarmonic0 (constantRepresentative 0) :=
  constantRepresentative_harmonic 0
example : ¬ realEdgeHodge.IsHarmonic0 (driftingMap (constantRepresentative 0)) := by
  rw [realEdgeHarmonic_iff]
  norm_num [driftingMap, constantRepresentative]
