# Complete source: GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1460687ec9d8df93a0d9a42fafc2fa7eac4024b` · SHA-256 `e3498aaebc64e90fe4fb105bd1a9446966dea38e9fef76d2e53ab53c63e881aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import GRWTSK.NumberTheory.Moebius.LogarithmicResponse
import GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct

/-!
One-sided endpoint tests for the literal source atom. The entry value is
continuous, but the derivative changes by n^(-1/2), preserving the signed
Möbius coefficient when atoms are assembled into a fixed finite pickup.
-/

noncomputable section

namespace PPNCP04

theorem atom_smooth_branch_derivative (n : ℕ) (u : ℝ) :
    HasDerivAt (fun v : ℝ =>
      2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-v / 2)))
      (Real.exp (-u / 2)) u := by
  have hlin : HasDerivAt (fun v : ℝ => -v / 2) (-1 / 2) u := by
    simpa only [Pi.neg_apply, id_eq] using (hasDerivAt_id u).neg.div_const 2
  convert ((hasDerivAt_const u ((Real.sqrt (n : ℝ))⁻¹)).sub
    hlin.exp).const_mul 2 using 1 <;> first | rfl | ring

theorem atom_right_derivative_at_entry (n : ℕ) (hn : 0 < n) :
    HasDerivWithinAt (atom n) (Real.sqrt (n : ℝ))⁻¹
      (Set.Ici (Real.log (n : ℝ))) (Real.log (n : ℝ)) := by
  have hpos : 0 < (n : ℝ) := by exact_mod_cast hn
  have h := (atom_smooth_branch_derivative n (Real.log (n : ℝ))).hasDerivWithinAt
    (s := Set.Ici (Real.log (n : ℝ)))
  rw [ASBNP04.FiniteProduct.exp_negative_half_log hpos] at h
  apply h.congr_of_mem
  · intro u hu
    simp only [atom, if_pos (show Real.log (n : ℝ) ≤ u from hu)]
  · exact Set.mem_Ici.mpr le_rfl

theorem atom_left_derivative_at_entry (n : ℕ) (hn : 0 < n) :
    HasDerivWithinAt (atom n) 0
      (Set.Iic (Real.log (n : ℝ))) (Real.log (n : ℝ)) := by
  apply (hasDerivWithinAt_const (Real.log (n : ℝ))
    (Set.Iic (Real.log (n : ℝ))) (0 : ℝ)).congr_of_mem
  · intro u hu
    by_cases he : u = Real.log (n : ℝ)
    · rw [he, atom_entry_zero hn]
    · have hlt : u < Real.log (n : ℝ) := lt_of_le_of_ne hu he
      simp [atom, not_le.mpr hlt]
  · exact Set.mem_Iic.mpr le_rfl

/-- The left and right within-derivative values, expressed with actual derivWithin. -/
theorem atom_derivative_jump (n : ℕ) (hn : 0 < n) :
    derivWithin (atom n) (Set.Ici (Real.log (n : ℝ))) (Real.log (n : ℝ)) -
      derivWithin (atom n) (Set.Iic (Real.log (n : ℝ))) (Real.log (n : ℝ)) =
      (Real.sqrt (n : ℝ))⁻¹ := by
  rw [(atom_right_derivative_at_entry n hn).derivWithin (uniqueDiffWithinAt_Ici _),
    (atom_left_derivative_at_entry n hn).derivWithin (uniqueDiffWithinAt_Iic _), sub_zero]

/-- A newly entering Möbius atom has the original sign in its derivative jump. -/
theorem signed_atom_derivative_jump (n : ℕ) (hn : 0 < n) :
    derivWithin (fun u => realMoebius n * atom n u)
      (Set.Ici (Real.log (n : ℝ))) (Real.log (n : ℝ)) -
      derivWithin (fun u => realMoebius n * atom n u)
      (Set.Iic (Real.log (n : ℝ))) (Real.log (n : ℝ)) =
      realMoebius n * (Real.sqrt (n : ℝ))⁻¹ := by
  rw [((atom_right_derivative_at_entry n hn).const_mul (realMoebius n)).derivWithin
      (uniqueDiffWithinAt_Ici _),
    ((atom_left_derivative_at_entry n hn).const_mul (realMoebius n)).derivWithin
      (uniqueDiffWithinAt_Iic _)]
  ring

/-- Entry continuity does not permit a two-sided derivative at the cutoff. -/
theorem atom_not_differentiable_at_entry (n : ℕ) (hn : 0 < n) :
    ¬DifferentiableAt ℝ (atom n) (Real.log (n : ℝ)) := by
  intro hd
  have hj := atom_derivative_jump n hn
  rw [hd.derivWithin (uniqueDiffWithinAt_Ici _),
    hd.derivWithin (uniqueDiffWithinAt_Iic _), sub_self] at hj
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hpos : 0 < (Real.sqrt (n : ℝ))⁻¹ := inv_pos.mpr (Real.sqrt_pos.mpr hnreal)
  linarith

end PPNCP04

#print axioms PPNCP04.atom_right_derivative_at_entry
#print axioms PPNCP04.atom_left_derivative_at_entry
#print axioms PPNCP04.atom_derivative_jump
#print axioms PPNCP04.signed_atom_derivative_jump
#print axioms PPNCP04.atom_not_differentiable_at_entry
```
