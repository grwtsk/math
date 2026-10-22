/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #609. Parent: draft PR #606 at
`c0171d6763c71547fc61978f6a95b0f985f6ae1f`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryMovingWindowAdapter

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Ordinary real Mertens prefix:
`mertensPrefixReal N = sum_{1 <= m <= N} μ(m)`. -/
def mertensPrefixReal (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.range N, moebiusReal (m + 1)

/-- Prefix decomposition into an initial segment and one following interval. -/
theorem mertensPrefixReal_add_interval
    (a n : ℕ) :
    mertensPrefixReal (a + n) =
      mertensPrefixReal a +
        ∑ k ∈ Finset.range n, moebiusReal (a + k + 1) := by
  unfold mertensPrefixReal
  rw [Finset.sum_range_add]
  apply congrArg (fun x : ℝ =>
    (∑ m ∈ Finset.range a, moebiusReal (m + 1)) + x)
  apply Finset.sum_congr rfl
  intro k _hk
  congr 2
  omega

/-- Every moving boundary window is exactly a difference of two ordinary
Mertens prefixes. -/
theorem boundaryMovingWindowMertens_eq_prefix_sub
    {j u : ℕ}
    (hu : u < 2 ^ j) :
    boundaryMovingWindowMertens j u =
      mertensPrefixReal (2 ^ (j + 1) - u - 1) -
        mertensPrefixReal (2 ^ j - u - 1) := by
  let X : ℕ := 2 ^ j
  let a : ℕ := X - u - 1
  have hau : a + X = 2 ^ (j + 1) - u - 1 := by
    dsimp [a, X]
    rw [Nat.pow_succ]
    omega
  have hstart :
      ∀ k : ℕ,
        a + k + 1 = X - u + k := by
    intro k
    dsimp [a, X]
    omega
  have hprefix := mertensPrefixReal_add_interval a X
  rw [hau] at hprefix
  unfold boundaryMovingWindowMertens
  have hinterval :
      (∑ k ∈ Finset.range X, moebiusReal (a + k + 1)) =
        ∑ k ∈ Finset.range X, moebiusReal (X - u + k) := by
    apply Finset.sum_congr rfl
    intro k _hk
    rw [hstart k]
  rw [hinterval] at hprefix
  dsimp [X, a] at hprefix ⊢
  linarith

/-- Square energy of the moving length-`2^j` Mertens windows. -/
def boundaryMovingWindowSquareEnergy (j : ℕ) : ℝ :=
  ∑ u ∈ Finset.range (2 ^ j),
    boundaryMovingWindowMertens j u ^ 2

/-- Square energy of the signed boundary tails. -/
def boundaryTailSquareEnergy (j : ℕ) : ℝ :=
  ∑ u ∈ Finset.range (2 ^ j),
    boundaryTailMertens j u ^ 2

/-- Finite Cauchy--Schwarz for the exact signed boundary bilinear packet. -/
theorem boundaryMovingWindowBilinearPacket_sq_le_energy
    (j : ℕ) :
    boundaryMovingWindowBilinearPacket j ^ 2 ≤
      boundaryMovingWindowSquareEnergy j *
        boundaryTailSquareEnergy j := by
  unfold boundaryMovingWindowBilinearPacket
    boundaryMovingWindowSquareEnergy
    boundaryTailSquareEnergy
  exact sum_mul_sq_le_sq_mul_sq
    (Finset.range (2 ^ j))
    (boundaryMovingWindowMertens j)
    (boundaryTailMertens j)

/-- The exceptional signed boundary packet is bounded by the product of the
two exact boundary square energies, with the Abel terminal drop retained. -/
theorem coreBoundarySignedPacket_sq_le_quadraticEnergy
    (j : ℕ) :
    coreBoundarySignedPacket j ^ 2 ≤
      (2 * boundaryTerminalDrop j) ^ 2 *
        boundaryMovingWindowSquareEnergy j *
          boundaryTailSquareEnergy j := by
  rw [coreBoundarySignedPacket_eq_movingWindowBilinear_exact]
  calc
    (2 * boundaryTerminalDrop j *
        boundaryMovingWindowBilinearPacket j) ^ 2 =
      (2 * boundaryTerminalDrop j) ^ 2 *
        boundaryMovingWindowBilinearPacket j ^ 2 := by ring
    _ ≤ (2 * boundaryTerminalDrop j) ^ 2 *
        (boundaryMovingWindowSquareEnergy j *
          boundaryTailSquareEnergy j) := by
      exact mul_le_mul_of_nonneg_left
        (boundaryMovingWindowBilinearPacket_sq_le_energy j)
        (sq_nonneg _)
    _ = _ := by ring

/-- Quadratic source proposition.  This is deliberately sufficient-only:
it controls the Cauchy majorant, not the original signed bilinear form by
equivalence. -/
def SubpolynomialBoundaryQuadraticEnergyProduct : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      (2 * boundaryTerminalDrop j) ^ 2 *
          boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- The quadratic energy supplier is sufficient for the signed boundary
supplier.  No converse is asserted. -/
theorem subpolynomialCoreBoundarySignedPacket_of_quadraticEnergy
    (hEnergy : SubpolynomialBoundaryQuadraticEnergyProduct) :
    SubpolynomialCoreBoundarySignedPacket := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hEnergy δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  have hsq :
      coreBoundarySignedPacket j ^ 2 ≤
        (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 :=
    le_trans (coreBoundarySignedPacket_sq_le_quadraticEnergy j)
      (hbound j)
  have hright :
      0 ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
    exact mul_nonneg hC (by positivity)
  have habs := sq_le_sq.mp hsq
  simpa [abs_of_nonneg hright] using habs

/-- Exact source-facing localization obligation for any proposed Weak-Mertens
or spectral supplier.  A named conjecture does not inhabit this record by
citation alone. -/
structure ToBoundaryQuadraticEnergyAdapter (source : Prop) : Type where
  localizationStatement : Prop
  tailStatement : Prop
  toQuadratic :
    source →
      localizationStatement →
      tailStatement →
      SubpolynomialBoundaryQuadraticEnergyProduct

/-- Weak-Mertens-style source placeholder with no imported proof status. -/
def WeakMertensStyleSource : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ,
      mertensPrefixReal N ^ 2 ≤
        C * (((N + 1 : ℕ) : ℝ) ^ (1 + ε))

/-- Gonek--Hejhal-style spectral source placeholder.  The spectral statement
is intentionally abstract here; an explicit formula/localization theorem is
still required before it can reach the boundary energy. -/
structure GonekHejhalBoundarySource where
  spectralStatement : Prop
  explicitFormulaLocalization : Prop
  tailTransfer : Prop

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryMovingWindowMertens_eq_prefix_sub
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryMovingWindowBilinearPacket_sq_le_energy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreBoundarySignedPacket_sq_le_quadraticEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_quadraticEnergy
