import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Recoverability

/-!
# Dependency adapter for the existing recoverability calculus

This is the sole dependency on the original owning research namespace. These
exports reference the original declarations; they neither copy definitions nor
change their statements. Promotion can later replace this import without
requiring the atlas to duplicate a semantic core.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

export FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
  (RecoverableFrom RecoveryObstruction not_recoverableFrom_of_collision
    recoverableFrom_quotient_iff)

end FormalResearch.MathematicalTooling.Semantics.Atlas
