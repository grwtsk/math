/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowHighFloor

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
zero-shift benchmark, later stage coverage and completed-source return
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

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowFirstStage
