import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi

/-!
The literal arithmetic operator vector retains an unweighted Möbius row and an
unweighted logarithmic divisor row. Its raw Euclidean coefficient mass is not
the unit norm of the normalized physical source, nor its true Gram/quotient
norm. A closed prime-power unit-divisor atom gives a quantitative lower bound.
This does not prove signed work growth, failure of cancellation, or any claim
about the prescribed quadratic family's negative defect.
Originating research direction: grwtsk contributors. Development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualArithmeticRawEnergy
open MangoldtMobiusJacobi
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent EstimateMobiusSplit
noncomputable section

/-- Raw squared coefficient mass of the unchanged actual arithmetic vector. -/
def actualRawArithmeticSquaredMass (A : ℝ) : ℝ :=
  ∑ i : SourceAtom A ⊕ SourceAtom A, (sourceJointVector A i)^2

private def unitDivisorAtom (A : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A)) : SourceAtom A :=
  ⟨⟨n,hn⟩,⟨(1,n),Nat.mem_divisorsAntidiagonal.mpr
    ⟨by simp,ne_of_gt ((by norm_num : 0 < (2 : ℕ)).trans_le
      (Finset.mem_Icc.mp hn).1)⟩⟩⟩

/-- Both coordinates and the actual independently weighted operator row remain literal. -/
theorem actualUnitDivisor_coordinates (A : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A)) :
    ∃ q : SourceAtom A, sourceMobiusRow A q = 1 ∧
      sourceLogRow A q = Real.log n ∧ sourceAtomWeight A q = closedPrimeWeight A n := by
  refine ⟨unitDivisorAtom A n hn,?_,rfl,rfl⟩
  simp [unitDivisorAtom, sourceMobiusRow]

/-- A single true unit-divisor atom bounds both raw rows from below. -/
theorem actualRawArithmeticSquaredMass_ge_unit_log (A : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A)) :
    1 + (Real.log n)^2 ≤ actualRawArithmeticSquaredMass A := by
  let q := unitDivisorAtom A n hn
  have hm : 1 ≤ ∑ q : SourceAtom A, (sourceMobiusRow A q)^2 := by
    have h := Finset.single_le_sum (s := Finset.univ)
      (f := fun q : SourceAtom A => (sourceMobiusRow A q)^2)
      (fun q _ => sq_nonneg _) (Finset.mem_univ q)
    simpa [q,unitDivisorAtom,sourceMobiusRow] using h
  have hl : (Real.log n)^2 ≤ ∑ q : SourceAtom A, (sourceLogRow A q)^2 := by
    have h := Finset.single_le_sum (s := Finset.univ)
      (f := fun q : SourceAtom A => (sourceLogRow A q)^2)
      (fun q _ => sq_nonneg _) (Finset.mem_univ q)
    simpa [q,unitDivisorAtom,sourceLogRow] using h
  unfold actualRawArithmeticSquaredMass sourceJointVector jointVector
  rw [Fintype.sum_sum_type]
  exact add_le_add hm hl

/-- Actual prime powers retain their full log row on the closed original inventory. -/
theorem actualPrimePower_rawMass_lower (A : ℝ) (j : ℕ) (hj : 1 ≤ j)
    (hclosed : (j : ℝ) * Real.log 2 ≤ 2 * A) :
    1 + ((j : ℝ) * Real.log 2)^2 ≤ actualRawArithmeticSquaredMass A := by
  have hn : 2 ≤ 2^j := by
    have h := pow_le_pow_right₀ (by norm_num : (1 : ℕ) ≤ 2) hj
    simpa using h
  have hpos : (0 : ℝ) < ((2^j : ℕ) : ℝ) := by positivity
  have hlog : Real.log ((2^j : ℕ) : ℝ) = (j : ℝ) * Real.log 2 := by
    rw [Nat.cast_pow, Real.log_pow]
    norm_num
  have hi : 2^j ∈ primePowerInventory (2 * A) := by
    apply Finset.mem_Icc.mpr
    refine ⟨hn,(Nat.le_floor_iff (Real.exp_pos _).le).mpr ?_⟩
    exact (Real.log_le_iff_le_exp hpos).mp (hlog.le.trans hclosed)
  simpa only [hlog] using actualRawArithmeticSquaredMass_ge_unit_log A (2^j) hi

/-- These genuine increasing dilations already rule out a unit coefficient norm. -/
theorem actualRawArithmeticSquaredMass_primePowerDilation (j : ℕ) (hj : 1 ≤ j) :
    1 + ((j : ℝ) * Real.log 2)^2 ≤
      actualRawArithmeticSquaredMass ((j : ℝ) * Real.log 2) := by
  apply actualPrimePower_rawMass_lower _ j hj
  have hp : 0 ≤ (j : ℝ) * Real.log 2 := mul_nonneg (Nat.cast_nonneg _)
    (Real.log_nonneg (by norm_num))
  linarith

/-- The selected rows are genuine prime powers with their unchanged Mangoldt weight. -/
theorem actualPowerTwo_mangoldt (j : ℕ) (hj : 1 ≤ j) :
    ArithmeticFunction.vonMangoldt (2^j) = Real.log 2 := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega : j ≠ 0),
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
  norm_num

/-- No uniform raw coefficient-mass cap holds on the actual real scale family. -/
theorem actualRawArithmeticSquaredMass_not_uniformly_bounded :
    ¬ ∃ K : ℝ, ∀ A : ℝ, 1 ≤ A → actualRawArithmeticSquaredMass A ≤ K := by
  rintro ⟨K,hK⟩
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  obtain ⟨j,hj⟩ := exists_nat_gt (max 1 (|K|+1) / Real.log 2)
  have hx : max 1 (|K|+1) < (j : ℝ) * Real.log 2 :=
    (div_lt_iff₀ hl).mp hj
  have hx1 : 1 < (j : ℝ) * Real.log 2 := (le_max_left _ _).trans_lt hx
  have hj1 : 1 ≤ j := by
    by_contra h
    have : j = 0 := by omega
    subst j
    norm_num at hx1
  have hbound := actualRawArithmeticSquaredMass_primePowerDilation j hj1
  have hupper := hK ((j : ℝ) * Real.log 2) hx1.le
  have hxK : K+1 < (j : ℝ) * Real.log 2 :=
    (by linarith [le_abs_self K] : K+1 ≤ |K|+1).trans_lt
      ((le_max_right _ _).trans_lt hx)
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualArithmeticRawEnergy
