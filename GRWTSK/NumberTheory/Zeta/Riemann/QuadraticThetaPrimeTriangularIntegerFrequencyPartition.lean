/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationAssembly
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Positive integer frequencies used by the assembled kernel. -/
def triangularPositiveFrequencies (N : ℕ) : Finset ℤ :=
  (Finset.Ico 1 N).image (fun d => (d : ℤ))

/-- Negative integer frequencies used by the assembled kernel. -/
def triangularNegativeFrequencies (N : ℕ) : Finset ℤ :=
  (Finset.Ico 1 N).image (fun d => -(d : ℤ))

/-- Zero frequency as its own singleton block. -/
def triangularZeroFrequency : Finset ℤ := {0}

theorem mem_triangularPositiveFrequencies
    {N : ℕ} {k : ℤ} :
    k ∈ triangularPositiveFrequencies N ↔
      ∃ d ∈ Finset.Ico 1 N, k = (d : ℤ) := by
  simp [triangularPositiveFrequencies]

theorem mem_triangularNegativeFrequencies
    {N : ℕ} {k : ℤ} :
    k ∈ triangularNegativeFrequencies N ↔
      ∃ d ∈ Finset.Ico 1 N, k = -(d : ℤ) := by
  simp [triangularNegativeFrequencies]

theorem triangularPositiveFrequency_weight
    {N d : ℕ}
    (hN : 0 < N)
    (hd : d ∈ Finset.Ico 1 N) :
    (symmetricTriangularWeight N (d : ℤ) : ℂ) =
      ((N - d : ℕ) : ℂ) / (N : ℂ) := by
  have hdlt : d < N := (Finset.mem_Ico.mp hd).2
  rw [symmetricTriangularWeight_nat]
  simp [triangularSmoothingWeight, hdlt]
  norm_cast

theorem triangularNegativeFrequency_weight
    {N d : ℕ}
    (hN : 0 < N)
    (hd : d ∈ Finset.Ico 1 N) :
    (symmetricTriangularWeight N (-(d : ℤ)) : ℂ) =
      ((N - d : ℕ) : ℂ) / (N : ℂ) := by
  rw [symmetricTriangularWeight_neg]
  exact triangularPositiveFrequency_weight hN hd

theorem triangularZeroFrequency_weight
    {N : ℕ} (hN : 0 < N) :
    (symmetricTriangularWeight N 0 : ℂ) = 1 := by
  unfold symmetricTriangularWeight
  simp [hN]

theorem triangularPositiveFrequency_sum
    {N : ℕ} (hN : 0 < N)
    (t : ℝ) :
    (∑ k ∈ triangularPositiveFrequencies N,
        (symmetricTriangularWeight N k : ℂ) *
          fourier k (t : AddCircle (1 : ℝ))) =
      ∑ d ∈ Finset.Ico 1 N,
        ((N - d : ℕ) : ℂ) / (N : ℂ) *
          fourier (d : ℤ) (t : AddCircle (1 : ℝ)) := by
  unfold triangularPositiveFrequencies
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro d hd
    rw [triangularPositiveFrequency_weight hN hd]
  · intro a ha b hb hab
    exact_mod_cast hab

theorem triangularNegativeFrequency_sum
    {N : ℕ} (hN : 0 < N)
    (t : ℝ) :
    (∑ k ∈ triangularNegativeFrequencies N,
        (symmetricTriangularWeight N k : ℂ) *
          fourier k (t : AddCircle (1 : ℝ))) =
      ∑ d ∈ Finset.Ico 1 N,
        ((N - d : ℕ) : ℂ) / (N : ℂ) *
          fourier (-(d : ℤ)) (t : AddCircle (1 : ℝ)) := by
  unfold triangularNegativeFrequencies
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro d hd
    rw [triangularNegativeFrequency_weight hN hd]
  · intro a ha b hb hab
    have : (a : ℤ) = b := by
      linarith
    exact_mod_cast this

/-- Exact remaining interval identity for the symmetric kernel support. -/
def TriangularIntegerFrequencyPartitionClaim : Prop :=
  ∀ N : ℕ,
    Finset.Icc (-(N : ℤ)) (N : ℤ) =
      triangularNegativeFrequencies N ∪
        triangularZeroFrequency ∪
        triangularPositiveFrequencies N ∪
        {-(N : ℤ), (N : ℤ)}

/-- Endpoint frequencies have zero coefficient, so the partition identity
immediately identifies the assembled expression with the kernel. -/
theorem integerFrequencyPartition_to_assembledKernel
    (hpartition : TriangularIntegerFrequencyPartitionClaim) :
    TriangularAssembledFrequencyKernelClaim := by
  intro N hN t
  unfold triangularAssembledFrequencySum symmetricTriangularKernel
  rw [hpartition N]
  have hNegZero :
      Disjoint (triangularNegativeFrequencies N) triangularZeroFrequency := by
    rw [Finset.disjoint_left]
    intro k hk h0
    simp [triangularZeroFrequency] at h0
    subst k
    rw [mem_triangularNegativeFrequencies] at hk
    rcases hk with ⟨d, hd, hdz⟩
    have hdpos : 0 < d := (Finset.mem_Ico.mp hd).1
    omega
  have hNegZeroPos :
      Disjoint
        (triangularNegativeFrequencies N ∪ triangularZeroFrequency)
        (triangularPositiveFrequencies N) := by
    rw [Finset.disjoint_left]
    intro k hk hp
    rw [Finset.mem_union] at hk
    rcases hk with hn | hz
    · rw [mem_triangularNegativeFrequencies] at hn
      rw [mem_triangularPositiveFrequencies] at hp
      rcases hn with ⟨d, hd, rfl⟩
      rcases hp with ⟨e, he, hEq⟩
      have hdpos : 0 < d := (Finset.mem_Ico.mp hd).1
      have hepos : 0 < e := (Finset.mem_Ico.mp he).1
      omega
    · simp [triangularZeroFrequency] at hz
      subst k
      rw [mem_triangularPositiveFrequencies] at hp
      rcases hp with ⟨d, hd, hEq⟩
      have hdpos : 0 < d := (Finset.mem_Ico.mp hd).1
      omega
  -- The only remaining endpoint block contributes zero by construction.
  rw [Finset.sum_union]
  · rw [Finset.sum_union hNegZeroPos]
    rw [Finset.sum_union hNegZero]
    rw [triangularNegativeFrequency_sum hN,
      triangularPositiveFrequency_sum hN]
    simp [triangularZeroFrequency, triangularZeroFrequency_weight hN,
      symmetricTriangularKernel_endpoint_weights_zero]
    ring
  · rw [Finset.disjoint_left]
    intro k hk hend
    simp at hend
    rcases hend with rfl | rfl
    · rw [Finset.mem_union] at hk
      rcases hk with hnz | hp
      · rw [Finset.mem_union] at hnz
        rcases hnz with hn | hz
        · rw [mem_triangularNegativeFrequencies] at hn
          rcases hn with ⟨d, hd, hEq⟩
          have hdlt : d < N := (Finset.mem_Ico.mp hd).2
          omega
        · simp [triangularZeroFrequency] at hz
      · rw [mem_triangularPositiveFrequencies] at hp
        rcases hp with ⟨d, hd, hEq⟩
        have hdlt : d < N := (Finset.mem_Ico.mp hd).2
        omega
    · rw [Finset.mem_union] at hk
      rcases hk with hnz | hp
      · rw [Finset.mem_union] at hnz
        rcases hnz with hn | hz
        · rw [mem_triangularNegativeFrequencies] at hn
          rcases hn with ⟨d, hd, hEq⟩
          have hdlt : d < N := (Finset.mem_Ico.mp hd).2
          omega
        · simp [triangularZeroFrequency] at hz
      · rw [mem_triangularPositiveFrequencies] at hp
        rcases hp with ⟨d, hd, hEq⟩
        have hdlt : d < N := (Finset.mem_Ico.mp hd).2
        omega

end GRWTSK.RiemannHypothesis
