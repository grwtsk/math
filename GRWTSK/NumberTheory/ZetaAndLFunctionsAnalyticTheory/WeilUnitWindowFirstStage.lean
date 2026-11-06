/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowHighFloor
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDL

/-!
# The radius-one first dyadic stage from inclusion observations

The dyadic stage at radius one uses physical shift minus one. The
retained physical head and the inclusion trial have 256 modes. Observe
every physical row through 512 and retain the signed remote trace through
2048. The checked high floor suffices for two fifths. The prime, gamma
and pole entries and the remote allowance refer to the same literal
source as the general inclusion theorem.

The entry inequalities and the finite lower sign are explicit premises.
This is the first-stage consumer for the outward rational replay. The
unbordered Euler-heat benchmark, later stage coverage and completed-source return
are separate. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowFirstStage

open OddSchurAccounting OddRemoteAllowanceMatrix OddInclusionWindow OddLiteralCofinal
open UnitWindowHighFloor
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.LinearAlgebra.SchurObserver

/-- Return the complete checked inclusion observations to the first
literal real odd dyadic stage. -/
theorem stageLower_zero_of_inclusion
    (η δ ζ : ℝ)
    (upper upperRadius remote remoteRadius : Matrix (Fin 256 ⊕ Unit) (Fin 256 ⊕ Unit) ℝ)
    (rows rowRadius : Matrix (Fin (512-256)) (Fin 256 ⊕ Unit) ℝ)
    (hupper : ∀ i j, |shiftedBlock (borderedSourceMatrix 1 256) poleShiftMetric (-1) i j -
      upper i j| ≤ upperRadius i j)
    (hupperSymm : ∀ i j, upperRadius i j = upperRadius j i)
    (hupperSum : ∀ i, ∑ j, upperRadius i j ≤ η)
    (hrows : ∀ i j, |literalResidualMatrix 1 256 512 i j - rows i j| ≤ rowRadius i j)
    (hrowSq : ∑ i, ∑ j, (rowRadius i j)^2 ≤ δ)
    (hremote : ∀ i j, |completeRemoteMatrix 256 512 2048 1 (1/4) i j -
      remote i j| ≤ remoteRadius i j)
    (hremoteSymm : ∀ i j, remoteRadius i j = remoteRadius j i)
    (hremoteSum : ∀ i, ∑ j, remoteRadius i j ≤ ζ)
    (hpositive : ∀ v, 0 ≤ quadratic (assembleLowerMatrix upper (rows.transpose * rows)
      ((1+(1/32 : ℝ)⁻¹) • (δ • 1) + (remote + ζ • 1)) η (2/5) (1+1/32)) v) :
    StageLower 0 := by
  intro f hf hm ho hsupport he
  norm_num only [Nat.cast_zero, zero_add, pow_zero] at hsupport ⊢
  exact shiftedOddWeilEnergy_nonneg_of_inclusionLower (N := 256) (L := 512) (J := 2048)
    (by decide) (by decide) (by decide) 1 (by norm_num) (-1) (1/4) (2/5) (1/32) η δ ζ
    (by norm_num) (by norm_num) (by norm_num) (firstStage_highFloor (by decide) (by norm_num))
    upper upperRadius remote remoteRadius rows rowRadius
    hupper hupperSymm hupperSum hrows hrowSq hremote hremoteSymm hremoteSum hpositive
    hf hm ho hsupport he

/-- The paid first-stage lower matrix, with the same formula over rationals and reals. -/
def lowerMatrix {K : Type*} [Field K] (η δ ζ : K)
    (upper remote : Matrix (Fin 256 ⊕ Unit) (Fin 256 ⊕ Unit) K)
    (rows : Matrix (Fin (512-256)) (Fin 256 ⊕ Unit) K) :
    Matrix (Fin 256 ⊕ Unit) (Fin 256 ⊕ Unit) K :=
  assembleLowerMatrix upper (rows.transpose * rows)
    ((1+(1/32 : K)⁻¹) • (δ • 1) + (remote + ζ • 1)) η (2/5) (1+1/32)

private theorem lowerMatrix_map (η δ ζ : ℚ)
    (upper remote : Matrix (Fin 256 ⊕ Unit) (Fin 256 ⊕ Unit) ℚ)
    (rows : Matrix (Fin (512-256)) (Fin 256 ⊕ Unit) ℚ) :
    (lowerMatrix η δ ζ upper remote rows).map (Rat.castHom ℝ) =
      lowerMatrix (η : ℝ) (δ : ℝ) (ζ : ℝ) (upper.map (Rat.castHom ℝ))
        (remote.map (Rat.castHom ℝ)) (rows.map (Rat.castHom ℝ)) := by
  unfold lowerMatrix
  rw [assembleLowerMatrix_realizeRat, Matrix.map_mul, Matrix.transpose_map]
  congr 1 <;> try norm_num
  ext i j
  by_cases h : i = j <;> simp [h]

/-- Return a rational observation packet and a passing dyadic LDL minorant to
the literal first stage. The actual entry comparisons remain analytic inputs. -/
theorem stageLower_zero_of_dyadicLDL
    (η δ ζ : ℚ)
    (upper upperRadius remote remoteRadius : Matrix (Fin 256 ⊕ Unit) (Fin 256 ⊕ Unit) ℚ)
    (rows rowRadius : Matrix (Fin (512-256)) (Fin 256 ⊕ Unit) ℚ)
    (target factor : Matrix (Fin 256 ⊕ Unit) (Fin 256 ⊕ Unit) ℤ)
    (pivots : Fin 256 ⊕ Unit → ℤ)
    (hupper : ∀ i j, |shiftedBlock (borderedSourceMatrix 1 256) poleShiftMetric (-1) i j -
      (upper i j : ℝ)| ≤ (upperRadius i j : ℝ))
    (hupperSymm : ∀ i j, upperRadius i j = upperRadius j i)
    (hupperSum : ∀ i, ∑ j, upperRadius i j ≤ η)
    (hrows : ∀ i j, |literalResidualMatrix 1 256 512 i j - (rows i j : ℝ)| ≤ (rowRadius i j : ℝ))
    (hrowSq : ∑ i, ∑ j, (rowRadius i j)^2 ≤ δ)
    (hremote : ∀ i j, |completeRemoteMatrix 256 512 2048 1 (1/4) i j -
      (remote i j : ℝ)| ≤ (remoteRadius i j : ℝ))
    (hremoteSymm : ∀ i j, remoteRadius i j = remoteRadius j i)
    (hremoteSum : ∀ i, ∑ j, remoteRadius i j ≤ ζ)
    (hLDL : check target factor pivots = true)
    (hMinorant : checkMinorant (lowerMatrix η δ ζ upper remote rows)
      (targetValue 24 target) (1/8) = true) :
    StageLower 0 := by
  refine stageLower_zero_of_inclusion (η : ℝ) (δ : ℝ) (ζ : ℝ)
    (upper.map (Rat.castHom ℝ)) (upperRadius.map (Rat.castHom ℝ))
    (remote.map (Rat.castHom ℝ)) (remoteRadius.map (Rat.castHom ℝ))
    (rows.map (Rat.castHom ℝ)) (rowRadius.map (Rat.castHom ℝ))
    hupper (fun i j => congrArg (fun x : ℚ => (x : ℝ)) (hupperSymm i j)) ?_
    hrows ?_ hremote (fun i j => congrArg (fun x : ℚ => (x : ℝ)) (hremoteSymm i j)) ?_ ?_
  · intro i
    change ∑ j, (upperRadius i j : ℝ) ≤ (η : ℝ)
    exact_mod_cast hupperSum i
  · change ∑ i, ∑ j, (rowRadius i j : ℝ)^2 ≤ (δ : ℝ)
    exact_mod_cast hrowSq
  · intro i
    change ∑ j, (remoteRadius i j : ℝ) ≤ (ζ : ℝ)
    exact_mod_cast hremoteSum i
  · change ∀ v, 0 ≤ quadratic (lowerMatrix (η : ℝ) (δ : ℝ) (ζ : ℝ)
      (upper.map (Rat.castHom ℝ)) (remote.map (Rat.castHom ℝ)) (rows.map (Rat.castHom ℝ))) v
    rw [← lowerMatrix_map]
    obtain ⟨hEntry, hSymm, hSum⟩ := checkMinorant_sound hMinorant
    exact fun v => quadratic_nonneg_of_minorant _ _ _ _ hEntry hSymm hSum
      (check_quadratic_nonneg 24 hLDL) v

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowFirstStage
