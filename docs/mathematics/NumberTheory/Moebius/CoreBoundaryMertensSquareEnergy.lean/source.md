# Complete source: GRWTSK.NumberTheory.Moebius.CoreBoundaryMertensSquareEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8dc01529865475e7505bfa12a98fa129e2b44a` · SHA-256 `f433be4bbd3a7a6ece0f8772743cfdda8984e228daff5204d036b95af6d68ff1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #634. Parent: draft PR #610 at
`37556b7f787c8d735c0cc363827a28ebbfaf66bb`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryQuadraticEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- On every scale where the logarithmic threshold lies below the left dyadic
scale, the exceptional boundary depths are one literal interval. -/
theorem boundaryCoreDepths_eq_Ico
    {j : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j) :
    boundaryCoreDepths j =
      Finset.Ico (logarithmicShallowDepthCount j) (2 ^ j - 1) := by
  ext t
  simp only [boundaryCoreDepths, coreLongDeepDepths,
    Finset.mem_filter, Finset.mem_Ico]
  constructor
  · intro ht
    rcases ht with ⟨⟨⟨hDt, htY⟩, hHt⟩, hcount⟩
    have hleft : t + 1 < 2 ^ j := by
      by_contra hnot
      have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hnot
      rw [harmonicShiftCount_eq_rightDistance hright] at hcount
      rw [Nat.pow_succ] at hcount
      omega
    exact ⟨hDt, by omega⟩
  · intro ht
    rcases ht with ⟨hDt, htX⟩
    have hleft : t + 1 < 2 ^ j := by omega
    have hcount : harmonicShiftCount j t = 2 ^ j :=
      harmonicShiftCount_eq_leftScale hleft
    have htY : t < 2 ^ (j + 1) := by
      rw [Nat.pow_succ]
      omega
    exact ⟨⟨⟨hDt, htY⟩, by simpa [hcount] using hHX⟩, hcount⟩

/-- Difference of ordinary real Mertens prefixes is exactly the corresponding
finite Möbius interval. -/
theorem mertensPrefixReal_sub_eq_Ico
    {a b : ℕ}
    (hab : a ≤ b) :
    mertensPrefixReal b - mertensPrefixReal a =
      ∑ m ∈ Finset.Ico a b, moebiusReal (m + 1) := by
  unfold mertensPrefixReal
  have h :=
    Finset.sum_range_add_sum_Ico
      (fun m : ℕ => moebiusReal (m + 1)) hab
  linarith

private theorem sum_Ico_sub_shift
    (F : ℕ → ℝ)
    {a b u : ℕ}
    (hua : u ≤ a) :
    (∑ t ∈ Finset.Ico a b, F (t - u)) =
      ∑ s ∈ Finset.Ico (a - u) (b - u), F s := by
  classical
  apply Finset.sum_bij (fun t _ => t - u)
  · intro t ht
    simp only [Finset.mem_Ico] at ht ⊢
    omega
  · intro t₁ ht₁ t₂ ht₂ h
    simp only [Finset.mem_Ico] at ht₁ ht₂
    omega
  · intro s hs
    simp only [Finset.mem_Ico] at hs
    refine ⟨s + u, ?_, ?_⟩
    · simp only [Finset.mem_Ico]
      omega
    · omega
  · intro t ht
    rfl

/-- The signed boundary tail is itself an exact difference of ordinary Mertens
prefixes.  Natural subtraction supplies the zero lower prefix when `u>D`. -/
theorem boundaryTailMertens_eq_prefix_sub
    {j u : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j)
    (huX : u < 2 ^ j) :
    boundaryTailMertens j u =
      mertensPrefixReal (2 ^ j - u - 1) -
        mertensPrefixReal (logarithmicShallowDepthCount j - u) := by
  rw [boundaryTailMertens, boundaryCoreDepths_eq_Ico hHX]
  let D : ℕ := logarithmicShallowDepthCount j
  let X : ℕ := 2 ^ j
  by_cases huD : u ≤ D
  · have hDX : D ≤ X - 1 := by
      have hDH :
          D ≤ logarithmicShiftThreshold j :=
        logarithmicShallowDepthCount_le_threshold j
      omega
    have hall :
        ∀ t ∈ Finset.Ico D (X - 1), u ≤ t := by
      intro t ht
      simp only [Finset.mem_Ico] at ht
      omega
    simp only [hall, if_true]
    have hshift :=
      sum_Ico_sub_shift (fun s => moebiusReal (s + 1))
        (a := D) (b := X - 1) huD
    have hrewrite :
        (∑ t ∈ Finset.Ico D (X - 1),
          moebiusReal (t - u + 1)) =
        ∑ s ∈ Finset.Ico (D - u) (X - u - 1),
          moebiusReal (s + 1) := by
      simpa using hshift
    rw [hrewrite]
    symm
    exact mertensPrefixReal_sub_eq_Ico (by omega)
  · have hDu : D < u := Nat.lt_of_not_ge huD
    have hfilter :
        (∑ t ∈ Finset.Ico D (X - 1),
          if u ≤ t then moebiusReal (t - u + 1) else 0) =
        ∑ t ∈ Finset.Ico u (X - 1),
          moebiusReal (t - u + 1) := by
      rw [← Finset.sum_filter]
      apply Finset.sum_congr
      · ext t
        simp only [Finset.mem_filter, Finset.mem_Ico]
        constructor
        · intro ht
          exact ⟨ht.2, ht.1.2⟩
        · intro ht
          exact ⟨⟨by omega, ht.2⟩, ht.1⟩
      · intro t ht
        simp only [Finset.mem_filter] at ht
        simp [ht.2]
    rw [hfilter]
    have hshift :=
      sum_Ico_sub_shift (fun s => moebiusReal (s + 1))
        (a := u) (b := X - 1) (Nat.le_refl u)
    have hrewrite :
        (∑ t ∈ Finset.Ico u (X - 1),
          moebiusReal (t - u + 1)) =
        ∑ s ∈ Finset.Ico 0 (X - u - 1),
          moebiusReal (s + 1) := by
      simpa using hshift
    rw [hrewrite]
    have hDsub : D - u = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_lt hDu)
    rw [hDsub, mertensPrefixReal]
    simp
    symm
    exact mertensPrefixReal_sub_eq_Ico (Nat.zero_le _)

/-- One localized ordinary-Mertens square statistic containing every prefix
that appears in either boundary Cauchy factor. -/
def boundaryLocalizedMertensSquareEnergy (j : ℕ) : ℝ :=
  ∑ u ∈ Finset.range (2 ^ j),
    (mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
      mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
      mertensPrefixReal (logarithmicShallowDepthCount j - u) ^ 2)

/-- Elementary two-term square loss used only after the exact signed packet has
already been exposed. -/
private theorem sub_sq_le_two_sq_add_two_sq
    (a b : ℝ) :
    (a - b) ^ 2 ≤ 2 * a ^ 2 + 2 * b ^ 2 := by
  nlinarith [sq_nonneg (a + b)]

/-- The moving-window Cauchy energy is controlled by the localized ordinary
Mertens prefix energy. -/
theorem boundaryMovingWindowSquareEnergy_le_localized
    (j : ℕ) :
    boundaryMovingWindowSquareEnergy j ≤
      2 * boundaryLocalizedMertensSquareEnergy j := by
  unfold boundaryMovingWindowSquareEnergy
    boundaryLocalizedMertensSquareEnergy
  calc
    (∑ u ∈ Finset.range (2 ^ j),
      boundaryMovingWindowMertens j u ^ 2) ≤
      ∑ u ∈ Finset.range (2 ^ j),
        (2 * mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
          2 * mertensPrefixReal (2 ^ j - u - 1) ^ 2) := by
      apply Finset.sum_le_sum
      intro u hu
      rw [boundaryMovingWindowMertens_eq_prefix_sub
        (Finset.mem_range.mp hu)]
      exact sub_sq_le_two_sq_add_two_sq _ _
    _ ≤ 2 * ∑ u ∈ Finset.range (2 ^ j),
        (mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
          mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
          mertensPrefixReal (logarithmicShallowDepthCount j - u) ^ 2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro u _hu
      nlinarith [sq_nonneg
        (mertensPrefixReal (logarithmicShallowDepthCount j - u))]
    _ = _ := by rfl

/-- The boundary-tail Cauchy energy is controlled by the same localized
ordinary Mertens prefix energy. -/
theorem boundaryTailSquareEnergy_le_localized
    {j : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j) :
    boundaryTailSquareEnergy j ≤
      2 * boundaryLocalizedMertensSquareEnergy j := by
  unfold boundaryTailSquareEnergy
    boundaryLocalizedMertensSquareEnergy
  calc
    (∑ u ∈ Finset.range (2 ^ j),
      boundaryTailMertens j u ^ 2) ≤
      ∑ u ∈ Finset.range (2 ^ j),
        (2 * mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
          2 * mertensPrefixReal
            (logarithmicShallowDepthCount j - u) ^ 2) := by
      apply Finset.sum_le_sum
      intro u hu
      rw [boundaryTailMertens_eq_prefix_sub
        hHX (Finset.mem_range.mp hu)]
      exact sub_sq_le_two_sq_add_two_sq _ _
    _ ≤ 2 * ∑ u ∈ Finset.range (2 ^ j),
        (mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
          mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
          mertensPrefixReal (logarithmicShallowDepthCount j - u) ^ 2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro u _hu
      nlinarith [sq_nonneg
        (mertensPrefixReal (2 ^ (j + 1) - u - 1))]
    _ = _ := by rfl

/-- Natural-scale localized Mertens square-energy source.  The scale
`X^2 * X^δ` is the discrete dyadic size suggested by Weak-Mertens-type
mean-square control; no classical conjecture is asserted here. -/
def SubpolynomialBoundaryLocalizedMertensSquareEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      boundaryLocalizedMertensSquareEnergy j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ 2) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Explicit localization boundary for any classical Weak Mertens input. -/
structure WeakMertensToBoundaryLocalizedEnergyAdapter
    (source : Prop) : Type where
  integralToDiscreteLocalization : Prop
  smallScaleControl : Prop
  toLocalized :
    source →
      integralToDiscreteLocalization →
      smallScaleControl →
      SubpolynomialBoundaryLocalizedMertensSquareEnergy

/-- The present increment shows that both Cauchy factors are ordinary Mertens
prefix energies.  The remaining normalization step is isolated rather than
silently identifying this with classical Weak Mertens. -/
structure BoundaryLocalizedEnergyNormalizationAdapter : Type where
  terminalDropNormalization : Prop
  toQuadratic :
    SubpolynomialBoundaryLocalizedMertensSquareEnergy →
      terminalDropNormalization →
      SubpolynomialBoundaryQuadraticEnergyProduct

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryCoreDepths_eq_Ico
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryTailMertens_eq_prefix_sub
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryMovingWindowSquareEnergy_le_localized
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryTailSquareEnergy_le_localized
```
