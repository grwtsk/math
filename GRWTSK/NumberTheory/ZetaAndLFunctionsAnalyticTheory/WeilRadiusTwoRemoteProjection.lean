/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteLeading
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRemoteAllowanceMatrix

/-!
# Projected scalar observations for the radius-two remote allowance

The congruence of an outer product is the outer product of the two
projected traces. The congruence of the literal remainder diagonal is a
weighted Gram of the physical reconstruction rows. This keeps the pole
coordinate out of the weighted Gram and preserves it in the separate
pole trace. The outward sums use the exact signed reconstruction weights.
Independent analytical review is pending.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteProjection

open Matrix
open RadiusTwoCandidateEntries RadiusTwoRemoteScalars RadiusTwoRemoteLeading
open OddRemoteAllowanceMatrix OddResidualRows OddResidualMajorant
open OddBoundarySignalBounds OddPrimeRow LowSchur
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

private theorem congruence_outer {ι κ : Type*} [Fintype ι] [Fintype κ]
    (X : Matrix ι κ ℝ) (a b : ι → ℝ) :
    congruence X (vecMulVec a b) =
      vecMulVec (X.transpose.mulVec a) (X.transpose.mulVec b) := by
  change (X.transpose * vecMulVec a b) * X = _
  rw [mul_vecMulVec, vecMulVec_mul]
  rw [← vecMul_transpose X.transpose b, transpose_transpose]

/-- The literal signed leading matrix projects through its two traces. -/
theorem congruence_signedTraceGram (X : Matrix Trial Head ℝ) (f d : Trial → ℝ)
    (c₁₁ c₁₂ c₂₂ : ℝ) :
    congruence X (signedTraceGram f d c₁₁ c₁₂ c₂₂) =
      signedTraceGram (X.transpose.mulVec f) (X.transpose.mulVec d) c₁₁ c₁₂ c₂₂ := by
  simp only [signedTraceGram, map_add, map_smul, congruence_outer]

/-- The cubic remainder diagonal projects to a weighted physical Gram. -/
theorem congruence_remainderDiagonal (X : Matrix Trial Head ℝ) (i j : Head) :
    congruence X (remainderDiagonal 512 2048 2) i j =
      ∑ k : Fin 512, (X (.inl k) i * X (.inl k) j) * remainderWeight 512 2048 2 (k.val + 1) := by
  change ((X.transpose * Matrix.diagonal
    (Sum.elim (fun k : Fin 512 => remainderWeight 512 2048 2 (k.val + 1))
      (fun _ : Unit => 0))) * X) i j = _
  rw [Matrix.mul_apply, Fintype.sum_sum_type]
  simp only [Matrix.mul_diagonal, Matrix.transpose_apply, Sum.elim_inl, Sum.elim_inr,
    mul_zero, zero_mul, Finset.sum_const_zero, add_zero]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The exact remote matrix in the retained coordinates. Its leading
coefficients include the two infinite tail prices. -/
theorem congruence_completeRemoteMatrix (X : Matrix Trial Head ℝ) :
    let f := X.transpose.mulVec (firstTraceRow 512 2)
    let d := X.transpose.mulVec (derivativeTraceRow 512)
    let p := X.transpose.mulVec (poleCoordinate 512)
    congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) =
      (9 / 8 : ℝ) • signedTraceGram f d (c11 + linearTail) c12 (c22 + derivativeTail) +
        (27 / (5 * (2048 : ℝ) ^ 5)) •
          ((∑ n ∈ Finset.Icc 1 512, remainderWeight 512 2048 2 n) •
              congruence X (remainderDiagonal 512 2048 2) +
            ((2 / (2 : ℝ)) * boundaryErrorScale 2) ^ 2 • vecMulVec d d +
            (poleScale 2 * poleNode 2) ^ 2 • vecMulVec p p) := by
  dsimp only
  simp only [completeRemoteMatrix, Nat.cast_ofNat]
  rw [← linearTail, ← derivativeTail, leadingWithTail_eq_signedTraceGram]
  simp only [map_add, map_smul, congruence_signedTraceGram, congruence_outer]
  rw [show (1 : ℝ) + 1 / 8 = 9 / 8 by norm_num,
    show 3 * (1 + (1 / 8 : ℝ)⁻¹) / (5 * (2048 : ℝ) ^ 5) =
      27 / (5 * (2048 : ℝ) ^ 5) by norm_num]

/-- Enclose a projected trace using the literal signed reconstruction. -/
def projectedTraceBounds (X : Matrix Trial Head ℚ) (source : Trial → Bounds) (i : Head) : Bounds :=
  sum Finset.univ (fun k => scale (X k i) (source k))

theorem projectedTraceBounds_sound (X : Matrix Trial Head ℚ) (source : Trial → Bounds)
    {f : Trial → ℝ} (hf : ∀ k, Encloses (source k) (f k)) (i : Head) :
    Encloses (projectedTraceBounds X source i)
      ((X.map (Rat.castHom ℝ)).transpose.mulVec f i) := by
  change Encloses (projectedTraceBounds X source i) (∑ k, (X k i : ℝ) * f k)
  exact sum_sound Finset.univ (fun k _ => scale_sound (X k i) (hf k))

/-- Enclose the projected remainder diagonal using one outward weight per physical row. -/
def projectedRemainderBounds (X : Matrix Trial Head ℚ) (weight : Fin 512 → Bounds)
    (i j : Head) : Bounds :=
  sum Finset.univ (fun k : Fin 512 => scale (X (.inl k) i * X (.inl k) j) (weight k))

theorem projectedRemainderBounds_sound (X : Matrix Trial Head ℚ) (weight : Fin 512 → Bounds)
    (hw : ∀ k, Encloses (weight k) (remainderWeight 512 2048 2 (k.val + 1))) (i j : Head) :
    Encloses (projectedRemainderBounds X weight i j)
      (congruence (X.map (Rat.castHom ℝ)) (remainderDiagonal 512 2048 2) i j) := by
  rw [congruence_remainderDiagonal]
  change Encloses (projectedRemainderBounds X weight i j)
    (∑ k : Fin 512, ((X (.inl k) i : ℝ) * (X (.inl k) j : ℝ)) *
      remainderWeight 512 2048 2 (k.val + 1))
  simpa only [projectedRemainderBounds, Rat.cast_mul] using
    sum_sound Finset.univ (fun k _ => scale_sound (X (.inl k) i * X (.inl k) j) (hw k))

/-- The scalar inputs after projecting the signed traces and the remainder diagonal. -/
structure ProjectedTables where
  first : Head → Bounds
  derivative : Head → Bounds
  pole : Head → Bounds
  leading11 : Bounds
  leading12 : Bounds
  leading22 : Bounds
  weightSum : Bounds
  remainder : Head → Head → Bounds

/-- Every projected input encloses its exact radius-two source quantity. -/
structure ProjectedTables.Sound (t : ProjectedTables) (X : Matrix Trial Head ℝ) : Prop where
  first : ∀ i, Encloses (t.first i) (X.transpose.mulVec (firstTraceRow 512 2) i)
  derivative : ∀ i, Encloses (t.derivative i) (X.transpose.mulVec (derivativeTraceRow 512) i)
  pole : ∀ i, Encloses (t.pole i) (X.transpose.mulVec (poleCoordinate 512) i)
  leading11 : Encloses t.leading11 (c11 + linearTail)
  leading12 : Encloses t.leading12 c12
  leading22 : Encloses t.leading22 (c22 + derivativeTail)
  weightSum : Encloses t.weightSum (∑ n ∈ Finset.Icc 1 512, remainderWeight 512 2048 2 n)
  remainder : ∀ i j, Encloses (t.remainder i j) (congruence X (remainderDiagonal 512 2048 2) i j)

/-- An outward entry of the complete projected remote allowance. -/
def completeRemoteEntryBounds (bits : ℕ) (t : ProjectedTables) (i j : Head) : Bounds :=
  let ff := mul (t.first i) (t.first j)
  let fd := add (mul (t.first i) (t.derivative j)) (mul (t.derivative i) (t.first j))
  let dd := mul (t.derivative i) (t.derivative j)
  let pp := mul (t.pole i) (t.pole j)
  let leading := add (add (mul t.leading11 ff) (mul t.leading12 fd)) (mul t.leading22 dd)
  let remainder := add (add (mul t.weightSum (t.remainder i j))
    (mul boundaryErrorSquareBounds dd)) (mul poleRemainderSquareBounds pp)
  round bits (add (scale (9 / 8) leading) (scale (27 / (5 * (2048 : ℚ) ^ 5)) remainder))

theorem completeRemoteEntryBounds_sound (bits : ℕ) {t : ProjectedTables} {X : Matrix Trial Head ℝ}
    (ht : t.Sound X) (i j : Head) :
    Encloses (completeRemoteEntryBounds bits t i j)
      (congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j) := by
  rw [congruence_completeRemoteMatrix]
  unfold completeRemoteEntryBounds
  apply round_sound
  have hff := mul_sound (ht.first i) (ht.first j)
  have hfd := add_sound (mul_sound (ht.first i) (ht.derivative j))
    (mul_sound (ht.derivative i) (ht.first j))
  have hdd := mul_sound (ht.derivative i) (ht.derivative j)
  have hpp := mul_sound (ht.pole i) (ht.pole j)
  have hLeading := add_sound (add_sound (mul_sound ht.leading11 hff)
    (mul_sound ht.leading12 hfd)) (mul_sound ht.leading22 hdd)
  have hRemainder := add_sound (add_sound (mul_sound ht.weightSum (ht.remainder i j))
    (mul_sound boundaryErrorSquareBounds_sound hdd)) (mul_sound poleRemainderSquareBounds_sound hpp)
  have hscale : ((27 / (5 * (2048 : ℚ) ^ 5) : ℚ) : ℝ) = 27 / (5 * (2048 : ℝ) ^ 5) := by
    norm_num
  have h := add_sound (scale_sound (9 / 8) hLeading)
    (scale_sound (27 / (5 * (2048 : ℚ) ^ 5)) hRemainder)
  rw [hscale] at h
  simpa only [signedTraceGram, Matrix.add_apply, Matrix.smul_apply, Matrix.vecMulVec_apply,
    smul_eq_mul, Rat.cast_div, Rat.cast_ofNat] using h

/-- The complete projected inputs from stored full boundary and prime signal bounds. -/
def projectedTablesFrom (bits : ℕ) (X : Matrix Trial Head ℚ) (boundary prime : ℕ → Bounds) :
    ProjectedTables :=
  let mass := primeMassBounds bits
  let derivative := fun n => derivativeWeightBoundsFrom bits (prime n)
  let first : Trial → Bounds := Sum.elim (fun i =>
    scale ((-1 : ℚ) ^ (i.val + 1))
      (firstTraceEntryBoundsFrom bits (i.val + 1) (boundary (i.val + 1)) (prime (i.val + 1))))
    (fun _ => neg poleScaleBounds)
  let d : Trial → Bounds := Sum.elim (fun i => point ((-1 : ℚ) ^ (i.val + 1) * (i.val + 1 : ℕ)))
    (fun _ => point 0)
  let p : Trial → Bounds := Sum.elim (fun _ => point 0) (fun _ => point 1)
  let weight := fun n => remainderWeightBoundsFrom bits 512 2048 n (boundary n) mass
  ⟨projectedTraceBounds X first, projectedTraceBounds X d, projectedTraceBounds X p,
    add (c11Bounds bits) linearTailBounds, c12BoundsFrom bits derivative,
    add (c22BoundsFrom bits derivative) (derivativeTailBoundsFrom bits mass),
    sum (Finset.Icc 1 512) weight, projectedRemainderBounds X (fun i => weight (i.val + 1))⟩

theorem projectedTablesFrom_sound (bits : ℕ) (X : Matrix Trial Head ℚ) {boundary prime : ℕ → Bounds}
    (hb : ∀ n, 0 < n → n ≤ 512 → Encloses (boundary n) (boundarySignal 2 n))
    (hp : ∀ n, 0 < n → n ≤ 8192 → Encloses (prime n) (primeSignal 2 (n : ℝ))) :
    (projectedTablesFrom bits X boundary prime).Sound (X.map (Rat.castHom ℝ)) := by
  have hd m (hm : 2048 < m) (hm' : m ≤ 8192) :
      Encloses (derivativeWeightBoundsFrom bits (prime m)) (derivativeWeight 2 m) :=
    derivativeWeightBoundsFrom_sound bits (hp m (by omega) hm')
  have hw n (hn : 0 < n) (hn' : n ≤ 512) :
      Encloses (remainderWeightBoundsFrom bits 512 2048 n (boundary n) (primeMassBounds bits))
        (remainderWeight 512 2048 2 n) :=
    remainderWeightBoundsFrom_sound bits 512 2048 (hb n hn hn') (primeMassBounds_sound bits)
  refine ⟨?_, ?_, ?_, add_sound (c11Bounds_sound bits) linearTailBounds_sound,
    c12BoundsFrom_sound bits hd, add_sound (c22BoundsFrom_sound bits hd)
      (derivativeTailBoundsFrom_sound bits (primeMassBounds_sound bits)), ?_, ?_⟩
  · intro i
    apply projectedTraceBounds_sound
    intro j
    rcases j with j | ⟨⟩
    · have h := j.isLt
      simpa only [firstTraceRow, Sum.elim_inl, Rat.cast_pow, Rat.cast_neg, Rat.cast_one] using
        scale_sound ((-1 : ℚ) ^ (j.val + 1))
          (firstTraceEntryBoundsFrom_sound bits (hb (j.val + 1) (by omega) (by omega))
            (hp (j.val + 1) (by omega) (by omega)))
    · exact neg_sound poleScaleBounds_sound
  · intro i
    apply projectedTraceBounds_sound
    intro j
    rcases j with j | ⟨⟩
    · simpa only [derivativeTraceRow, Sum.elim_inl, Rat.cast_pow, Rat.cast_mul, Rat.cast_neg,
        Rat.cast_one, Rat.cast_natCast] using point_sound ((-1 : ℚ) ^ (j.val + 1) * (j.val + 1 : ℕ))
    · simpa only [derivativeTraceRow, Sum.elim_inr, Rat.cast_zero] using point_sound 0
  · intro i
    apply projectedTraceBounds_sound
    intro j
    rcases j with j | ⟨⟩
    · simpa only [poleCoordinate, Sum.elim_inl, Rat.cast_zero] using point_sound 0
    · simpa only [poleCoordinate, Sum.elim_inr, Rat.cast_one] using point_sound 1
  · apply sum_sound
    intro n hn
    have hn' := Finset.mem_Icc.mp hn
    exact hw n (by omega) hn'.2
  · intro i j
    apply projectedRemainderBounds_sound
    intro k
    have h := k.isLt
    exact hw (k.val + 1) (by omega) (by omega)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteProjection
