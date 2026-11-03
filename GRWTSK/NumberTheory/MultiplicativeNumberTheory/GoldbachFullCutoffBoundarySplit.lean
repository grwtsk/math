/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWeighted

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete source cutoff split, retaining both boundary orientations.
The clipped source still uses the actual full prime atom. No quantitative
boundary distribution or Goldbach conclusion is inferred. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFullCutoffBoundarySplit
open GoldbachWeighted

def clippedMass (X N : ℕ) : ℝ := ∑ uv ∈ goldbachBox N,
  if uv.1 ≤ X ∧ uv.2 ≤ X then goldbachLogTerm N uv else 0

def firstBoundaryMass (X N : ℕ) : ℝ := ∑ uv ∈ goldbachBox N,
  if X < uv.1 then goldbachLogTerm N uv else 0

def secondBoundaryMass (X N : ℕ) : ℝ := ∑ uv ∈ goldbachBox N,
  if X < uv.2 then goldbachLogTerm N uv else 0

theorem boundary_orientation_equal (X N : ℕ) : firstBoundaryMass X N=secondBoundaryMass X N := by
  unfold firstBoundaryMass secondBoundaryMass
  simp only [goldbachBox, Finset.sum_product]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  simp [goldbachLogTerm, add_comm, mul_comm]

theorem full_source_cutoff_boundary (X N : ℕ) (hN : N ≤ 2*X) :
    goldbachLogMass N=clippedMass X N+2*firstBoundaryMass X N := by
  have he : goldbachLogMass N=clippedMass X N+firstBoundaryMass X N+secondBoundaryMass X N := by
    unfold goldbachLogMass clippedMass firstBoundaryMass secondBoundaryMass
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro uv _
    by_cases hp : uv.1 ≤ X <;> by_cases hq : uv.2 ≤ X
    · have ha : ¬ X < uv.1 := by omega
      have hb : ¬ X < uv.2 := by omega
      simp [hp,hq,ha,hb]
    · have ha : ¬ X < uv.1 := by omega
      have hb : X < uv.2 := by omega
      simp [hp,hq,ha,hb]
    · have ha : X < uv.1 := by omega
      have hb : ¬ X < uv.2 := by omega
      simp [hp,hq,ha,hb]
    · have ha : X < uv.1 := by omega
      have hb : X < uv.2 := by omega
      have hs : uv.1+uv.2 ≠ N := by omega
      simp [hp,hq,ha,hb,goldbachLogTerm,hs]
  rw [← boundary_orientation_equal X N] at he
  linarith

theorem full_source_cutoff_second_moment (X N : ℕ) (hN : N ≤ 2*X) :
    goldbachLogMass N^2=clippedMass X N^2+
      4*clippedMass X N*firstBoundaryMass X N+4*firstBoundaryMass X N^2 := by
  rw [full_source_cutoff_boundary X N hN]
  ring

end GRWTSK.NumberTheory.Primes.GoldbachFullCutoffBoundarySplit
