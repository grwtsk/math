/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #657. Parent: draft PR #652 at
`6e1c20699b80749c2f806bfc19a59553d799a8b2`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryUnitIntervalWeakMertens

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One dyadic global sum of exact unit-interval Weak-Mertens contributions. -/
def dyadicGlobalUnitWeakMertensEnergy (j : ℕ) : ℝ :=
  ∑ N ∈ Finset.range (2 ^ (j + 1)),
    weakMertensUnitKernel N

/-- Every unit kernel is nonnegative. -/
theorem weakMertensUnitKernel_nonneg
    (N : ℕ) :
    0 ≤ weakMertensUnitKernel N := by
  exact le_trans
    (by
      unfold weightedMertensPrefixSquare
      positivity)
    (weightedMertensPrefixSquare_le_unitKernel N)

/-- Reverse one initial range exactly. -/
private theorem sum_range_reverse_kernel
    (D : ℕ) :
    (∑ u ∈ Finset.range (D + 1),
      weakMertensUnitKernel (D - u)) =
      ∑ N ∈ Finset.range (D + 1),
        weakMertensUnitKernel N := by
  classical
  apply Finset.sum_bij (fun u _hu => D - u)
  · intro u hu
    simp only [Finset.mem_range] at hu ⊢
    omega
  · intro u₁ hu₁ u₂ hu₂ h
    simp only [Finset.mem_range] at hu₁ hu₂
    omega
  · intro N hN
    simp only [Finset.mem_range] at hN
    refine ⟨D - N, ?_, ?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro u hu
    rfl

/-- The first moving prefix family is exactly the upper dyadic half. -/
theorem boundaryUpperUnitFamily_eq_Ico
    (j : ℕ) :
    (∑ u ∈ Finset.range (2 ^ j),
      weakMertensUnitKernel (2 ^ (j + 1) - u - 1)) =
      ∑ N ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        weakMertensUnitKernel N := by
  classical
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hYX : Y = 2 * X := by
    dsimp [X, Y]
    rw [Nat.pow_succ]
    ring
  apply Finset.sum_bij (fun u _hu => Y - u - 1)
  · intro u hu
    simp only [Finset.mem_range] at hu
    simp only [Finset.mem_Ico]
    rw [hYX]
    omega
  · intro u₁ hu₁ u₂ hu₂ h
    simp only [Finset.mem_range] at hu₁ hu₂
    omega
  · intro N hN
    simp only [Finset.mem_Ico] at hN
    refine ⟨Y - N - 1, ?_, ?_⟩
    · simp only [Finset.mem_range]
      rw [hYX] at hN ⊢
      omega
    · omega
  · intro u hu
    rfl

/-- The second moving prefix family is exactly the lower dyadic half. -/
theorem boundaryLowerUnitFamily_eq_range
    (j : ℕ) :
    (∑ u ∈ Finset.range (2 ^ j),
      weakMertensUnitKernel (2 ^ j - u - 1)) =
      ∑ N ∈ Finset.range (2 ^ j),
        weakMertensUnitKernel N := by
  classical
  let X : ℕ := 2 ^ j
  apply Finset.sum_bij (fun u _hu => X - u - 1)
  · intro u hu
    simp only [Finset.mem_range] at hu ⊢
    omega
  · intro u₁ hu₁ u₂ hu₂ h
    simp only [Finset.mem_range] at hu₁ hu₂
    omega
  · intro N hN
    simp only [Finset.mem_range] at hN
    refine ⟨X - N - 1, ?_, ?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro u hu
    rfl

/-- The first two localized unit families partition the complete dyadic global
unit energy exactly. -/
theorem boundaryFirstTwoUnitFamilies_eq_global
    (j : ℕ) :
    (∑ u ∈ Finset.range (2 ^ j),
      (weakMertensUnitKernel (2 ^ (j + 1) - u - 1) +
        weakMertensUnitKernel (2 ^ j - u - 1))) =
      dyadicGlobalUnitWeakMertensEnergy j := by
  rw [Finset.sum_add_distrib,
    boundaryUpperUnitFamily_eq_Ico,
    boundaryLowerUnitFamily_eq_range]
  unfold dyadicGlobalUnitWeakMertensEnergy
  have hXY : 2 ^ j ≤ 2 ^ (j + 1) := by
    rw [Nat.pow_succ]
    omega
  exact (Finset.sum_range_add_sum_Ico
    weakMertensUnitKernel hXY).symm

/-- The third localized prefix family costs at most one additional global
dyadic unit energy.  Repeated zero prefixes contribute zero. -/
theorem boundaryThirdUnitFamily_le_global
    (j : ℕ) :
    (∑ u ∈ Finset.range (2 ^ j),
      weakMertensUnitKernel
        (logarithmicShallowDepthCount j - u)) ≤
      dyadicGlobalUnitWeakMertensEnergy j := by
  let D : ℕ := logarithmicShallowDepthCount j
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hDY : D + 1 ≤ Y := by
    simpa [D, Y] using
      logarithmicShallowDepthCount_add_one_le_endpoint j
  have hprefix :
      (∑ N ∈ Finset.range (D + 1),
        weakMertensUnitKernel N) ≤
        dyadicGlobalUnitWeakMertensEnergy j := by
    unfold dyadicGlobalUnitWeakMertensEnergy
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro N hN
      simp only [Finset.mem_range] at hN ⊢
      omega
    · intro N _hN _hnot
      exact weakMertensUnitKernel_nonneg N
  by_cases hXD : X ≤ D + 1
  · have hsubset :
        Finset.range X ⊆ Finset.range (D + 1) := by
      intro u hu
      simp only [Finset.mem_range] at hu ⊢
      omega
    calc
      (∑ u ∈ Finset.range X,
        weakMertensUnitKernel (D - u)) ≤
        ∑ u ∈ Finset.range (D + 1),
          weakMertensUnitKernel (D - u) := by
            apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
            intro u _hu _hnot
            exact weakMertensUnitKernel_nonneg (D - u)
      _ = ∑ N ∈ Finset.range (D + 1),
          weakMertensUnitKernel N :=
        sum_range_reverse_kernel D
      _ ≤ dyadicGlobalUnitWeakMertensEnergy j := hprefix
  · have hDX : D + 1 < X := Nat.lt_of_not_ge hXD
    have hzero :
        ∀ u ∈ Finset.Ico (D + 1) X,
          weakMertensUnitKernel (D - u) = 0 := by
      intro u hu
      simp only [Finset.mem_Ico] at hu
      have hsub : D - u = 0 := by omega
      rw [hsub]
      simp [weakMertensUnitKernel]
    have hsplit :
        (∑ u ∈ Finset.range X,
          weakMertensUnitKernel (D - u)) =
        ∑ u ∈ Finset.range (D + 1),
          weakMertensUnitKernel (D - u) := by
      rw [Finset.sum_range_add_sum_Ico
        (fun u => weakMertensUnitKernel (D - u))
        (Nat.le_of_lt hDX)]
      have hz :
          (∑ u ∈ Finset.Ico (D + 1) X,
            weakMertensUnitKernel (D - u)) = 0 := by
        apply Finset.sum_eq_zero
        intro u hu
        exact hzero u hu
      rw [hz, add_zero]
    rw [hsplit, sum_range_reverse_kernel D]
    exact hprefix

/-- The exact three-family localized unit energy has multiplicity at most two
inside one dyadic global unit-energy sum. -/
theorem boundaryLocalizedUnitWeakMertensEnergy_le_two_global
    (j : ℕ) :
    boundaryLocalizedUnitWeakMertensEnergy j ≤
      2 * dyadicGlobalUnitWeakMertensEnergy j := by
  unfold boundaryLocalizedUnitWeakMertensEnergy
  rw [← Finset.sum_add_distrib]
  have h12 := boundaryFirstTwoUnitFamilies_eq_global j
  have h3 := boundaryThirdUnitFamily_le_global j
  rw [h12]
  linarith

/-- One dyadic global unit-interval Weak-Mertens source with logarithmic growth. -/
def DyadicGlobalUnitWeakMertensSource : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      dyadicGlobalUnitWeakMertensEnergy j ≤
        C * (j + 2 : ℝ)

/-- The global dyadic unit source supplies the localized unit source with only
the exact multiplicity-two loss. -/
theorem boundaryUnitIntervalWeakMertensSource_of_global
    (hGlobal : DyadicGlobalUnitWeakMertensSource) :
    BoundaryUnitIntervalWeakMertensSource := by
  obtain ⟨C, hC, hGlobal⟩ := hGlobal
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  calc
    boundaryLocalizedUnitWeakMertensEnergy j ≤
      2 * dyadicGlobalUnitWeakMertensEnergy j :=
        boundaryLocalizedUnitWeakMertensEnergy_le_two_global j
    _ ≤ 2 * (C * (j + 2 : ℝ)) := by
      exact mul_le_mul_of_nonneg_left (hGlobal j) (by norm_num)
    _ = (2 * C) * (j + 2 : ℝ) := by ring

/-- The global dyadic unit source therefore supplies the exceptional signed
boundary packet. -/
theorem subpolynomialCoreBoundarySignedPacket_of_globalUnitWeakMertens
    (hGlobal : DyadicGlobalUnitWeakMertensSource) :
    SubpolynomialCoreBoundarySignedPacket :=
  subpolynomialCoreBoundarySignedPacket_of_unitWeakMertens
    (boundaryUnitIntervalWeakMertensSource_of_global hGlobal)

/-- The only remaining classical bridge is now the conventional step-function
integral identity and its logarithmic growth theorem. -/
structure ClassicalWeakMertensToDyadicGlobalUnitAdapter
    (classicalWeakMertens : Prop) : Type where
  stepFunctionIntegralIdentity : Prop
  dyadicIntegralGrowth : Prop
  toGlobal :
    classicalWeakMertens →
      stepFunctionIntegralIdentity →
      dyadicIntegralGrowth →
      DyadicGlobalUnitWeakMertensSource

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryFirstTwoUnitFamilies_eq_global
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryThirdUnitFamily_le_global
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryLocalizedUnitWeakMertensEnergy_le_two_global
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_globalUnitWeakMertens
