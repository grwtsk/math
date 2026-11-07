/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoResidualIntegerBounds
import R2RectAllRows
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoObservedGrid

/-!
# Numerical bounds for the actual radius-two residual reconstruction

This isolated consumer uses the checked integer Gram, all projected
entry radii, and the source-returned complete remote matrix. It is built
with their frozen numerical witness modules. The dyadic coordinate
identities preserve all physical and pole slots. Absolute Gram row sums
cost at most `2/5`; the squared finite error costs at most `1/30000`;
the complete projected remote term costs at most `1/4`. Completing the
finite observation estimate with Young parameter `1/32` costs at most
`1659/2500`, hence at most `2/3`, times the squared retained-vector norm.

The remote comparison retains its signed leading mixed term, the pole,
all trace modes through 8192, and the infinite remainder. The final
literal infinite-sum return still explicitly requires every observed
entry enclosure on modes 65 through 2048. It requires no high floor.
The `1/5` high floor, a paid lower sign and cofinal coverage are separate
obligations. The proof uses standard row-sum domination and the existing
whole residual theorem; no independent analytical proof or novelty is
claimed. The frozen integer checks are computational witnesses, not new
analytic hypotheses about the zeta source.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
noncomputable section
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoResidualFiniteBounds
open Matrix
open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoCandidateEntries RadiusTwoObservedResidual
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver
open OddInclusionWindow OddRemoteAllowanceMatrix

abbrev X : Matrix Trial Head ℝ := RadiusTwoObservedGrid.reconstruction R2Rect.x
abbrev G : Matrix (Fin 65) (Fin 65) ℤ := R2ObservedGram.target
abbrev index := RadiusTwoObservedGrid.coordinateEquiv 64

theorem gramModel : reconstructionGram (decodeGrid R2Rect.observedCentres * X) =
    RadiusTwoObservedGrid.gramGrid G :=
  RadiusTwoObservedGrid.gram_of_products _ _ R2Rect.centre G R2Rect.centreMatrix
    (by simpa only [R2ObservedGram.left, R2ObservedGram.right] using R2GramChunks.product)

theorem priceModel : observationPrice (decodeGrid R2Rect.observedRadii) X =
    (717340738848873355330903138685249130240628 : ℝ)/2^154 := by
  rw [RadiusTwoObservedGrid.observationPrice_eq]
  change ((∑ i : Fin 1984, ∑ j : Fin 65,
    ((R2Rect.observedRadii * R2Rect.absX) i j)^2 : ℤ) : ℝ)/2^154 = _
  rw [← R2Rect.radiusMatrix, R2Rect.radiusSquares]
  norm_num

theorem price_le : observationPrice (decodeGrid R2Rect.observedRadii) X ≤ 1/30000 := by
  rw [priceModel, div_le_iff₀ (by positivity : (0:ℝ)<2^154)]
  have h : (30000:ℝ)*717340738848873355330903138685249130240628 ≤ 2^154 := by
    exact_mod_cast RadiusTwoResidualIntegerBounds.priceBudget
  nlinarith

private theorem gramSym (i j : Fin 65) : G i j = G j i := by
  change R2ObservedGram.target i j = R2ObservedGram.target j i
  rw [R2GramChunks.product]
  simp only [R2ObservedGram.left, R2ObservedGram.right, Matrix.mul_apply, Matrix.transpose_apply]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem gram_le (v : Head → ℝ) :
    quadratic (RadiusTwoObservedGrid.gramGrid G) v ≤ (2/5:ℝ)*∑ j, v j^2 := by
  let A := RadiusTwoObservedGrid.gramGrid G
  let R : Matrix Head Head ℝ := fun i j => |A i j|
  have hSym (i j : Head) : R i j = R j i := by
    dsimp only [R,A,RadiusTwoObservedGrid.gramGrid]
    rw [gramSym]
  have hRow (i : Head) : ∑ j, R i j ≤ (2/5:ℝ) := by
    have he : (∑ j : Head, R i j) =
        (∑ j : Fin 65, |(G (index i) j : ℝ)|)/2^154 := by
      change (∑ j : Head, |(G (index i) (index j) : ℝ)/2^154|) = _
      simp only [abs_div,abs_of_pos (by positivity : (0:ℝ)<2^154)]
      calc
        _ = ∑ j : Fin 65, |(G (index i) j : ℝ)|/2^154 :=
          index.sum_comp (fun j : Fin 65 => |(G (index i) j : ℝ)|/2^154)
        _ = _ := (Finset.sum_div _ _ _).symm
    rw [he,div_le_iff₀ (by positivity : (0:ℝ)<2^154)]
    have h : 5*(∑ j : Fin 65, |(G (index i) j : ℝ)|) ≤ 2*(2:ℝ)^154 := by
      exact_mod_cast RadiusTwoResidualIntegerBounds.gramRows (index i)
    nlinarith
  have h := abs_quadratic_sub_le_of_rowRadius A 0 R (2/5) v
    (fun i j => by simp only [Matrix.zero_apply,sub_zero]; exact le_rfl) hSym hRow
  have hz : quadratic (0 : Matrix Head Head ℝ) v = 0 := by simp [quadratic]
  rw [hz,sub_zero] at h
  exact (le_abs_self _).trans h

theorem remoteX : X =
    ((R2RemoteProjected.reconstruction.map
      (GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL.dyadic 32)).map (Rat.castHom ℝ)) := by
  ext i j
  change (R2Rect.x (RadiusTwoObservedGrid.coordinateEquiv 512 i) (index j) : ℝ)/2^32 = _
  simp only [Matrix.map_apply,Rat.coe_castHom,
    GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL.dyadic,Rat.cast_div,
    Rat.cast_intCast,Rat.cast_pow]
  rcases i with i | ⟨⟩ <;> rcases j with j | ⟨⟩ <;> rfl

private def remoteRadius (i j : Head) : ℝ :=
  ((max |(R2RemoteEntries.rawEntry (index i) (index j)).1|
    |(R2RemoteEntries.rawEntry (index i) (index j)).2| : ℤ) : ℝ)/2^64

theorem remote_le (v : Head → ℝ) :
    quadratic (completeRemoteMatrix 512 2048 8192 2 (1/8)) (X.mulVec v) ≤
      (1/4:ℝ)*∑ j, v j^2 := by
  let A := congruence X (completeRemoteMatrix 512 2048 8192 2 (1/8))
  have hEntry (i j : Head) : |A i j-(0:Matrix Head Head ℝ) i j| ≤ remoteRadius i j := by
    have h := R2RemoteComplete.literalRemote i j
    rw [← remoteX] at h
    have hIndex (k : Head) : R2RemoteProjected.headIndex k = index k := by
      rcases k with k | ⟨⟩ <;> rfl
    simp only [GRWTSK.Algebra.LinearAlgebra.RationalRealBounds.Encloses,
      R2RemoteEntries.storedEntry,
      GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts.endpoints,
      hIndex,GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL.dyadic,
      Rat.cast_div,Rat.cast_intCast,Rat.cast_pow,Rat.cast_ofNat] at h
    let l := (R2RemoteEntries.rawEntry (index i) (index j)).1
    let u := (R2RemoteEntries.rawEntry (index i) (index j)).2
    have hl : -(max |l| |u| : ℤ) ≤ l :=
      (neg_le_neg (le_max_left _ _)).trans (neg_abs_le l)
    have hu : u ≤ (max |l| |u| : ℤ) := (le_abs_self u).trans (le_max_right _ _)
    have hlr : -((max |l| |u| : ℤ):ℝ) ≤ (l:ℝ) := by exact_mod_cast hl
    have hur : (u:ℝ) ≤ ((max |l| |u| : ℤ):ℝ) := by exact_mod_cast hu
    simp only [Matrix.zero_apply,sub_zero]
    apply abs_le.mpr
    constructor
    · have he : -remoteRadius i j ≤ (l:ℝ)/2^64 := by
        simpa only [neg_div,remoteRadius,l,u] using
          (div_le_div_of_nonneg_right hlr (by positivity : (0:ℝ) ≤ 2^64))
      exact he.trans h.1
    · exact h.2.trans (div_le_div_of_nonneg_right hur (by positivity : (0:ℝ) ≤ 2^64))
  have hSym (i j : Head) : remoteRadius i j = remoteRadius j i := by
    unfold remoteRadius
    rw [RadiusTwoResidualIntegerBounds.remoteSym (index i) (index j)]
  have hRow (i : Head) : ∑ j, remoteRadius i j ≤ (1/4:ℝ) := by
    have he : (∑ j : Head, remoteRadius i j) =
        ((∑ j : Fin 65, max |(R2RemoteEntries.rawEntry (index i) j).1|
          |(R2RemoteEntries.rawEntry (index i) j).2| : ℤ):ℝ)/2^64 := by
      unfold remoteRadius
      calc
        _ = ∑ j : Fin 65, ((max |(R2RemoteEntries.rawEntry (index i) j).1|
          |(R2RemoteEntries.rawEntry (index i) j).2| : ℤ):ℝ)/2^64 :=
          index.sum_comp (fun j : Fin 65 => ((max |(R2RemoteEntries.rawEntry (index i) j).1|
            |(R2RemoteEntries.rawEntry (index i) j).2| : ℤ):ℝ)/2^64)
        _ = _ := by simp only [Int.cast_sum,Finset.sum_div]
    rw [he,div_le_iff₀ (by positivity : (0:ℝ)<2^64)]
    have hr : (((∑ j : Fin 65, max |(R2RemoteEntries.rawEntry (index i) j).1|
      |(R2RemoteEntries.rawEntry (index i) j).2| : ℤ):ℝ)) ≤ 4388950584943997659 := by
      exact_mod_cast R2RemoteEntries.storedRowBudget (index i)
    have hb : (4:ℝ)*4388950584943997659 ≤ 2^64 := by
      exact_mod_cast RadiusTwoResidualIntegerBounds.remoteBudget
    nlinarith
  have h := abs_quadratic_sub_le_of_rowRadius A 0 remoteRadius (1/4) v hEntry hSym hRow
  have hz : quadratic (0:Matrix Head Head ℝ) v = 0 := by simp [quadratic]
  rw [hz,sub_zero] at h
  rw [← quadratic_congruence]
  exact (le_abs_self _).trans h

open OddInclusionWindow OddResidualSourceComparison

theorem normBound_of_entries
    (entries : ∀ i j, |OddTrialResidualMatrix.literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
      decodeGrid R2Rect.observedCentres i j| ≤ decodeGrid R2Rect.observedRadii i j)
    (v : Head → ℝ) :
    let x := inclusionTrial (X.mulVec v ∘ Sum.inl)
    let a := X.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ≤
        (2/3:ℝ)*∑ j : Head, v j^2 := by
  dsimp only
  obtain ⟨hs,hb⟩ := wholeResidual_bound_of_entries _ _ entries X v (1/32) (by norm_num)
  refine ⟨hs,hb.trans ?_⟩
  have hG := gram_le v
  rw [← gramModel] at hG
  have hN : 0 ≤ ∑ j : Head, v j^2 := Finset.sum_nonneg (fun j _ => sq_nonneg (v j))
  have hP := mul_le_mul_of_nonneg_right price_le hN
  have hR := remote_le v
  rw [show (1 + 1/32:ℝ) = 33/32 by norm_num,
    show (1 + (1/32:ℝ)⁻¹) = 33 by norm_num]
  nlinarith [hN]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoResidualFiniteBounds
