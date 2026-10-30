/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/ConstructionModelBounds.lean (blob b62082a6368ba80c3f4e8df6531389ee4594a16d).
Only module imports and the enclosing namespace are adapted.
-/
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.ConstructionModel

namespace GRWTSK.Combinatorics.ProgressionColoring

/-!
# Elementary bounds for the actual coordinate cells

These inequalities follow from the selected mesh and dilation definitions.
They are not extra hypotheses on the finite geometric construction.
-/

noncomputable section

namespace QuantitativeVanDerWaerden.ConstructionModel

open Parameters

variable {k : ℕ}

theorem uniformWidth_le_meshH (s : Data k) (hk : 3 ≤ k) :
    1 / (uniformCount k : ℝ) ≤ (mesh s hk).H := by
  rw [uniformWidth_eq, mesh_H]
  exact div_le_self (meshScale_pos (by omega : 0 < k)).le
    (by exact_mod_cast lambda_pos k)

theorem lambda_mul_uniformWidth (s : Data k) (hk : 3 ≤ k) :
    (lambda k : ℝ) * (1 / (uniformCount k : ℝ)) = (mesh s hk).H := by
  rw [uniformWidth_eq, mesh_H]
  have hl : (lambda k : ℝ) ≠ 0 := by exact_mod_cast lambda_ne_zero k
  exact mul_div_cancel₀ _ hl

theorem mesh_alpha_le (s : Data k) (hk : 3 ≤ k) :
    (mesh s hk).alpha ≤ 1 / (s.q : ℝ) ^ dimension k := by
  rw [mesh_alpha]
  have hq : (1 : ℝ) ≤ s.q := by exact_mod_cast (show 1 ≤ s.q by have := s.two_le; omega)
  exact one_div_le_one_div_of_le (pow_pos (by exact_mod_cast s.pos) _)
    (pow_le_pow_right₀ hq (Nat.le_succ _))

end QuantitativeVanDerWaerden.ConstructionModel

end

end GRWTSK.Combinatorics.ProgressionColoring
