/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI. Upstream source identities retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No public-root import until exact-commit compiler, fresh kernel and
transitive axiom/unsafe audit receipts.
-/
import GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction
import GRWTSK.Algebra.LinearAlgebra.PeriodicCocycleData
import GRWTSK.Algebra.LinearAlgebra.Sturmian
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.Tactic

/-!
# Source-faithful dual cocycle of the positive Farey full shift

The ACTUAL Farey word and right-frame representation is
  M([t₀,...,tₙ₋₁]) = M(t₀) * ... * M(tₙ₋₁).
The independently maintained cocycle product uses newest LEFT:
  P_n(ω) = A(T^[n-1]ω) * ... * A(ω).

Choosing the group coefficient A(ω) = M(ω 0)ᵀ in SL₂(F₃)
produces exactly P_n(ω) = M(prefix_n(ω))ᵀ. The transpose is
a legitimate dual representation, not a silent reversal of the
source chronological frame action.

The one-sided full shift has the ACTUAL period-two word LRLR...
whose SL₂(F₃) dual monodromy is (LR)ᵀ ≠ I. The existing
PeriodicCocycleData obstruction therefore excludes any global pure
coboundary or any gauge trivializing that periodic product.

Separately, a source-defined schedule can be generated from the
actual Sturmian rotation coding already in GRWTSK.LinearAlgebra.Sturmian.
This algebraic use of bit does NOT prove that this one-sided full
shift is a hyperbolic invertible base, that a coded orbit is
nonperiodic in Lean, or that its invariant orbit closure has the
period-two LR point. Thus no application of Kalinin's *sufficient*
Livšic theorem, Dry Ten Martini, Sarnak, or RH is claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.FareyShiftCocycle

open Matrix
open GRWTSK.NumberTheory.Farey.GroupSuperwalk
open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
open GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction
open GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.Algebra.LinearAlgebra.PeriodicCocycleData

/-- The SAME two-letter alphabet as the actual positive Farey cell walk. -/
abbrev Schedule := ℕ → Turn

/-- One-sided left shift; it is not asserted to be a homeomorphism
or to have the closing property of Kalinin's hypothesis. -/
def shift (ω : Schedule) : Schedule := fun k => ω (k + 1)

/-- The exact shift iterate, including its clock origin. -/
theorem shift_iterate_apply (ω : Schedule) (n k : ℕ) :
    (shift^[n] ω) k = ω (n + k) := by
  induction n generalizing k with
  | zero => simp
  | succ n ih =>
      rw [Function.iterate_succ_apply']
      change (shift^[n] ω) (k + 1) = ω ((n + 1) + k)
      rw [ih]
      congr 1
      omega

/-- Chronological positive Farey prefix, in its actual source order. -/
def chronologicalPrefix (ω : Schedule) : ℕ → List Turn
  | 0 => []
  | n + 1 => chronologicalPrefix ω n ++ [ω n]

/-- The actual sourced mod-three word product, not a made-up action. -/
theorem chronologicalPrefix_matrix_succ (ω : Schedule) (n : ℕ) :
    modThreeWord (chronologicalPrefix ω (n + 1)) =
      modThreeWord (chronologicalPrefix ω n) *
        (turnShear (ω n) : Mat3) := by
  simp [chronologicalPrefix, modThreeWord_append, modThreeWord]

/-- The same chronological schedule reaches the actual Farey cell and
right-multiplies its integer endpoint frame by the source wordUnit. -/
theorem chronological_farey_frame (I : GRWTSK.NumberTheory.Farey.Cell)
    (ω : Schedule) (n : ℕ) :
    frame (walk I (chronologicalPrefix ω n)) =
      frame I * (wordUnit (chronologicalPrefix ω n) : MatZ) :=
  frame_walk I (chronologicalPrefix ω n)

/-- The determinant-one certificate of each true Farey elementary
shear in the finite residue representation. -/
theorem det_turnShear (t : Turn) :
    (turnShear t : Mat3).det = 1 := by
  cases t <;>
    norm_num [turnShear, leftShear, rightShear, Matrix.det_fin_two]

/-- The coefficient group is the real Mathlib SL₂ over F₃,
rather than an arbitrary matrix monoid presented as a group. -/
abbrev SL3 := Matrix.SpecialLinearGroup (Fin 2) (ZMod 3)

/-- The transpose shear is a genuine SL₂(F₃) group element.
Transposing realizes the dual chronological representation. -/
def dualTurn (t : Turn) : SL3 :=
  ⟨(turnShear t : Mat3).transpose, by
    rw [Matrix.det_transpose]
    exact det_turnShear t⟩

theorem dualTurn_coe (t : Turn) :
    ((dualTurn t : SL3) : Mat3) =
      (turnShear t : Mat3).transpose := rfl

/-- The actual shift cocycle: current source turn, transposed. -/
def dualStep (ω : Schedule) : SL3 := dualTurn (ω 0)

/-- The source word/cocycle product intertwiner holds for EVERY
finite prefix of EVERY infinite schedule, with matrix order explicit. -/
theorem dualCocycle_sourceMatrix (ω : Schedule) (n : ℕ) :
    ((cocycleProduct shift dualStep n ω : SL3) : Mat3) =
      (modThreeWord (chronologicalPrefix ω n)).transpose := by
  induction n with
  | zero =>
      simp [cocycleProduct_zero, chronologicalPrefix, modThreeWord]
  | succ n ih =>
      calc
        ((cocycleProduct shift dualStep (n + 1) ω : SL3) : Mat3) =
            (turnShear ((shift^[n] ω) 0) : Mat3).transpose *
              ((cocycleProduct shift dualStep n ω : SL3) : Mat3) := by
                rw [cocycleProduct_succ, Matrix.SpecialLinearGroup.coe_mul]
                rfl
        _ = (turnShear (ω n) : Mat3).transpose *
              (modThreeWord (chronologicalPrefix ω n)).transpose := by
                rw [ih, shift_iterate_apply]
                simp
        _ = (modThreeWord (chronologicalPrefix ω n) *
              (turnShear (ω n) : Mat3)).transpose := by
                rw [Matrix.transpose_mul]
        _ = (modThreeWord (chronologicalPrefix ω (n + 1))).transpose := by
                rw [chronologicalPrefix_matrix_succ]

/-- An exact period-two full-shift source schedule. This witness belongs
to the full shift, NOT automatically to an irrational Sturmian subshift. -/
def repeatLR : Schedule :=
  fun n => if n % 2 = 0 then .left else .right

theorem repeatLR_shift_period_two :
    shift^[2] repeatLR = repeatLR := by
  funext k
  rw [shift_iterate_apply]
  change (if (2 + k) % 2 = 0 then Turn.left else Turn.right) =
    (if k % 2 = 0 then Turn.left else Turn.right)
  have hmod : (2 + k) % 2 = k % 2 := by omega
  rw [hmod]

/-- The exact source LR word appears as the first two schedule turns. -/
theorem repeatLR_prefix_two :
    chronologicalPrefix repeatLR 2 = [.left, .right] := by
  decide

/-- Actual group-valued monodromy reduces to the sourced Farey LR
matrix, with transpose inherited from the dual cocycle. -/
theorem repeatLR_periodic_matrix :
    ((cocycleProduct shift dualStep 2 repeatLR : SL3) : Mat3) =
      modThreeReturn.transpose := by
  rw [dualCocycle_sourceMatrix, repeatLR_prefix_two]
  change (modThreeWord returnWord).transpose = modThreeReturn.transpose
  rw [modThreeWord_return]

/-- The source LR return is NOT the identity, hence its period-two
dual SL₂ monodromy is not the identity group element. -/
theorem repeatLR_monodromy_ne_one :
    cocycleProduct shift dualStep 2 repeatLR ≠ (1 : SL3) := by
  intro h
  have hm : ((cocycleProduct shift dualStep 2 repeatLR : SL3) : Mat3) =
      (1 : Mat3) := congrArg (fun g : SL3 => (g : Mat3)) h
  rw [repeatLR_periodic_matrix] at hm
  have h01 := congrArg (fun M : Mat3 => M 0 1) hm
  norm_num [modThreeReturn, leftShear, rightShear,
    Matrix.mul_apply, Fin.sum_univ_two] at h01

/-- An unconditional obstruction on the FULL one-sided shift.
It does not assert any periodic point in the distinct Sturmian
orbit closure or rule out a transfer on that smaller subsystem. -/
theorem fullShift_no_pure_coboundary :
    ¬ IsPureCoboundary shift dualStep :=
  nontrivial_periodic_product_not_coboundary
    shift dualStep 2 repeatLR
    repeatLR_shift_period_two repeatLR_monodromy_ne_one

/-- A closed-period product cannot be normalized away by ANY
globally defined gauge on the full shift, even without a norm bound. -/
theorem fullShift_no_gauge_trivializes_LR :
    ¬ ∃ B : Schedule → SL3,
      cocycleProduct shift (cocycleGaugeTransfer shift dualStep B)
        2 repeatLR = 1 :=
  no_gauge_trivializes_nontrivial_period
    shift dualStep 2 repeatLR
    repeatLR_shift_period_two repeatLR_monodromy_ne_one

/-- General exact source-word criterion: a nonidentity finite
chronological Farey matrix word on a literal periodic schedule
obstructs any globally defined pure transfer over the full shift. -/
theorem nontrivial_word_dual_product
    (ω : Schedule) (n : ℕ)
    (hWord : modThreeWord (chronologicalPrefix ω n) ≠ (1 : Mat3)) :
    cocycleProduct shift dualStep n ω ≠ (1 : SL3) := by
  intro h
  have hm : ((cocycleProduct shift dualStep n ω : SL3) : Mat3) =
      (1 : Mat3) := congrArg (fun g : SL3 => (g : Mat3)) h
  rw [dualCocycle_sourceMatrix] at hm
  have ht := congrArg Matrix.transpose hm
  have hOne : modThreeWord (chronologicalPrefix ω n) = 1 := by
    simpa using ht
  exact hWord hOne

theorem periodic_source_word_not_coboundary
    (ω : Schedule) (n : ℕ)
    (hp : shift^[n] ω = ω)
    (hWord : modThreeWord (chronologicalPrefix ω n) ≠ (1 : Mat3)) :
    ¬ IsPureCoboundary shift dualStep :=
  nontrivial_periodic_product_not_coboundary
    shift dualStep n ω hp
    (nontrivial_word_dual_product ω n hWord)

/-- The same true source word is gauge-nontrivial at that periodic
point for EVERY group-valued gauge. -/
theorem periodic_source_word_resists_gauge
    (ω : Schedule) (n : ℕ)
    (hp : shift^[n] ω = ω)
    (hWord : modThreeWord (chronologicalPrefix ω n) ≠ (1 : Mat3))
    (B : Schedule → SL3) :
    cocycleProduct shift (cocycleGaugeTransfer shift dualStep B) n ω ≠ 1 :=
  periodic_nontrivial_persists_under_gauge
    shift dualStep B n ω hp
    (nontrivial_word_dual_product ω n hWord)

/-- The actual repository Sturmian rotation coding is made into
a positive Farey-turn schedule by a declared left=1/right=0 map.
No global spectral equivalence or irrational-frequency theorem
is silently attached to this discrete coding choice. -/
def sturmianTurns (α ξ : ℝ) : Schedule :=
  fun n =>
    if GRWTSK.Algebra.LinearAlgebra.Sturmian.bit α ξ (n : ℤ) = 1 then
      .left
    else .right

theorem sturmianTurns_left_iff (α ξ : ℝ) (n : ℕ) :
    sturmianTurns α ξ n = .left ↔
      GRWTSK.Algebra.LinearAlgebra.Sturmian.bit α ξ (n : ℤ) = 1 := by
  simp [sturmianTurns]

/-- The source-to-dual matrix bridge specializes literally to
any α, ξ of the already sourced Sturmian model. Its analytic
application still needs irrationality, spectral and limit premises. -/
theorem sturmian_source_dual_product
    (α ξ : ℝ) (n : ℕ) :
    ((cocycleProduct shift dualStep n (sturmianTurns α ξ) : SL3) : Mat3) =
      (modThreeWord (chronologicalPrefix (sturmianTurns α ξ) n)).transpose :=
  dualCocycle_sourceMatrix (sturmianTurns α ξ) n

end GRWTSK.NumberTheory.Farey.FareyShiftCocycle
