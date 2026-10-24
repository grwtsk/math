import FormalResearch.PositiveAtlas.FeshbachInertia

/-!
Numerical inertia fixtures with actual nonzero cross coupling.

The rank-one packet tests the singular Schur center and retained null index.
The indefinite packet tests both signed indices. Counts are proved through
Mathlib's weighted-sum-of-squares signature theorems; no eigenvalue oracle or
numerical approximation is used. AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

private def scalar (a : ℝ) : Matrix Unit Unit ℝ := fun _ _ => a

private def weights (a : ℝ) : Unit ⊕ Unit → ℝ :=
  Sum.elim (fun _ => a - 1) (fun _ => 1)

private def reducedWeightedEquiv (a : ℝ) :
    (reducedForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).IsometryEquiv
      (QuadraticMap.weightedSumSquares ℝ (weights a)) where
  toLinearEquiv := (LinearEquiv.sumPiEquivProdPi ℝ Unit Unit (fun _ => ℝ)).symm
  map_app' z := by
    rw [reducedForm_apply]
    change QuadraticMap.weightedSumSquares ℝ (weights a) (Sum.elim z.1 z.2) = _
    simp [QuadraticMap.weightedSumSquares_apply, weights, Feshbach.schur, scalar,
      dotProduct, Matrix.mulVec]
    ring

private theorem inertia_counts (a : ℝ) :
    (sigPos (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).radical) =
      ({i | 0 < weights a i}.ncard, {i | weights a i < 0}.ncard,
        {i | weights a i = 0}.ncard) := by
  have h : (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).Equivalent
      (QuadraticMap.weightedSumSquares ℝ (weights a)) :=
    ⟨(formEquiv (scalar a) (1 : Matrix Unit Unit ℝ) 1 Matrix.isHermitian_one).trans
      (reducedWeightedEquiv a)⟩
  rw [QuadraticForm.sigPos_of_equiv_weightedSumSquares h,
    QuadraticForm.sigNeg_of_equiv_weightedSumSquares h,
    QuadraticForm.finrank_radical_of_equiv_weightedSumSquares h]

/-- The completion-of-squares shear has the required plus sign. -/
theorem nonzero_shear :
    shear (1 : Matrix Unit Unit ℝ) 1 (fun _ => 2, fun _ => 3) =
      (fun _ => 2, fun _ => 5) := by
  ext <;> norm_num [shear_apply]

/-- The rank-one packet has an exactly zero Schur center. -/
theorem singular_center :
    Feshbach.schur (scalar 1) (1 : Matrix Unit Unit ℝ)ᴴ 1 1 = 0 := by
  ext i j
  simp [Feshbach.schur, scalar]

/-- The genuinely coupled rank-one packet has one positive, zero negative and
one null direction; singularity is preserved by the congruence. -/
theorem singular_inertia :
    (sigPos (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 0, 1) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 1 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 1 i < 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 1 i = 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

/-- The genuinely coupled indefinite packet retains one positive and one
negative direction, with no null direction. -/
theorem indefinite_inertia :
    (sigPos (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 1, 0) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 0 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 0 i < 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 0 i = 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

end

end FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

#print FormalResearch.PositiveAtlas.FeshbachInertia.fullForm_apply
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.fullForm_apply
#print FormalResearch.PositiveAtlas.FeshbachInertia.reducedForm_apply
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.reducedForm_apply
#print FormalResearch.PositiveAtlas.FeshbachInertia.shear_apply
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.shear_apply
#print FormalResearch.PositiveAtlas.FeshbachInertia.formEquiv
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.formEquiv
#print FormalResearch.PositiveAtlas.FeshbachInertia.sigPos_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.sigPos_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.sigNeg_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.sigNeg_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.radical_finrank_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.radical_finrank_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.inertia_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.inertia_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
