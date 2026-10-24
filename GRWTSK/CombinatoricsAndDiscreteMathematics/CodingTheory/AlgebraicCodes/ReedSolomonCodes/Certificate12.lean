/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Coefficients

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 12. -/
theorem coefficients12 : ∀ j : Fin 4, compose recover12 encode12 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip12_exact (x : Four) : roundTrip12 x = x := by
  unfold roundTrip12
  rw [transform_compose]
  have h : compose recover12 encode12 = identityMatrix := funext coefficients12
  rw [h, transform_identity]

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
