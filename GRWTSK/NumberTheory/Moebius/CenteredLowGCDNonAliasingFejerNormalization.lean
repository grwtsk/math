/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerDefinitions
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

theorem symmetricTriangularKernel_eq_normalized_goldbachFiniteKernel
    {N : ℕ} (hN : 0 < N) (t : ℝ) :
    symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) =
      ((1 : ℂ) / (N : ℝ)) *
        goldbachFiniteSingularKernel (N - 1) t := by
  rw [goldbachFiniteSingularKernel_eq_triangularFrequencySum]
  unfold symmetricTriangularKernel
  have hsub :
      Finset.Icc (-((N - 1 : ℕ) : ℤ)) ((N - 1 : ℕ) : ℤ) ⊆
        Finset.Icc (-(N : ℤ)) (N : ℤ) := by
    intro k hk
    have hkI := Finset.mem_Icc.mp hk
    exact Finset.mem_Icc.mpr (by omega)
  have hsupport :
      (∑ k ∈
          Finset.Icc (-((N - 1 : ℕ) : ℤ)) ((N - 1 : ℕ) : ℤ),
          (goldbachTriangularFrequencyWeight (N - 1) k : ℂ) *
            unitCharacter k t) =
        ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
          (goldbachTriangularFrequencyWeight (N - 1) k : ℂ) *
            unitCharacter k t := by
    apply Finset.sum_subset hsub
    intro k hkOuter hkNotInner
    have hkO := Finset.mem_Icc.mp hkOuter
    have hkNI :
        ¬(-((N - 1 : ℕ) : ℤ) ≤ k ∧
          k ≤ ((N - 1 : ℕ) : ℤ)) := by
      simpa only [Finset.mem_Icc] using hkNotInner
    have hkEndpoint : k = -(N : ℤ) ∨ k = (N : ℤ) := by
      omega
    have hnot : ¬N ≤ N - 1 := by omega
    rcases hkEndpoint with rfl | rfl <;>
      simp [goldbachTriangularFrequencyWeight_formula, hnot]
  rw [hsupport, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  rw [goldbachTriangularFrequencyWeight_formula]
  by_cases hkN : k.natAbs < N
  · have hkLe : k.natAbs ≤ N - 1 := by omega
    rw [if_pos hkLe]
    have hcoeff :
        N - 1 + 1 - k.natAbs = N - k.natAbs := by
      omega
    rw [hcoeff]
    unfold symmetricTriangularWeight
    rw [if_pos hkN]
    simp only [unitCharacter]
    push_cast
    ring
  · have hkNotLe : ¬k.natAbs ≤ N - 1 := by omega
    rw [if_neg hkNotLe]
    simp [symmetricTriangularWeight, hkN]

end GRWTSK.RiemannHypothesis
