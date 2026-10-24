/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Coefficients

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 14. -/
theorem coefficients14 : ∀ j : Fin 4, compose recover14 encode14 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip14_exact (x : Four) : roundTrip14 x = x := by
  unfold roundTrip14
  rw [transform_compose]
  have h : compose recover14 encode14 = identityMatrix := funext coefficients14
  rw [h, transform_identity]

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
