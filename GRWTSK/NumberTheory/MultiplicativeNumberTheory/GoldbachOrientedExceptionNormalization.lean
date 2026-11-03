/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachOrientedBoundaryThreeSplit

set_option autoImplicit false
noncomputable section

/-! Exact oriented exception corrected in source and baseline together.
No regular forecast accuracy or positive baseline supplier. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachOrientedExceptionNormalization
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachAllCutoffWindowBoundary
open GoldbachOrientedBoundaryThreeSplit

def orientedThreeMass (X N : ℕ) : ℝ :=
  if X<N-3 then Real.log 3*primeLogWeight (N-3) else 0

theorem orientedThreeMass_nonneg (X N : ℕ) : 0≤orientedThreeMass X N := by
  unfold orientedThreeMass
  split_ifs
  · exact mul_nonneg (Real.log_nonneg (by norm_num)) (primeLogWeight_nonneg _)
  · exact le_rfl

theorem full_source_oriented_corrected_error (X N : ℕ) (hNX : N≤2*X)
    (hN : 4<N) (he : N%2=0) (b β : ℝ)
    (hD : b+2*(β+orientedThreeMass X N) ≠ 0) :
    goldbachLogMass N/(b+2*(β+orientedThreeMass X N))-1 =
      (truncatedOddMass X N-b+2*(boundaryWithoutSecondThree X N-β))/
        (b+2*(β+orientedThreeMass X N)) := by
  rw [full_even_source_any_cutoff X N hNX hN he,
    oriented_boundary_second_three_split X N (by omega)]
  unfold orientedThreeMass
  field_simp [hD]
  <;> ring

theorem full_corrected_squared_error_le (X N : ℕ) (hNX : N≤2*X)
    (hN : 4<N) (he : N%2=0) (b β : ℝ) (hbase : 0<b+2*β) :
    (goldbachLogMass N/(b+2*(β+orientedThreeMass X N))-1)^2 ≤
      ((truncatedOddMass X N-b+2*(boundaryWithoutSecondThree X N-β))/(b+2*β))^2 := by
  have hE := orientedThreeMass_nonneg X N
  have hpos : 0<b+2*(β+orientedThreeMass X N) := by linarith
  rw [full_source_oriented_corrected_error X N hNX hN he b β (ne_of_gt hpos),div_pow,div_pow]
  apply div_le_div_of_nonneg_left (sq_nonneg _) (sq_pos_of_pos hbase)
  nlinarith

end GRWTSK.NumberTheory.Primes.GoldbachOrientedExceptionNormalization
