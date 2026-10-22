/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Integerized Chebyshev psi source rule

The parent response `X * (psi(v)-v)` contains the deterministic sawtooth
`X * (floor(v)-v)`.  This module moves that term into the signed residual and
reduces the remaining nonlinear supplier to integer targets.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
INTEGERIZED_PSI_SIGNED_RULE_DEFINED /
FLOOR_CORRECTION_RESIDUALIZED /
PARENT_SAWTOOTH_FLOOR_OBSTRUCTION_DEFINED /
INTEGER_TARGET_CAPACITY_EQUIVALENCE_DEFINED /
INTEGER_PSI_CAPACITY_TO_RECURRENCE_DEFINED /
INTEGER_PSI_QUADRATIC_CAPACITY_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Integer source point below a real target. -/
def pinnedPrimeWeightPsiGridIndex (v : ℝ) : ℕ :=
  ⌊v⌋₊

/-- Chebyshev psi is constant on each unit cell. -/
theorem psi_eq_psi_gridIndex (v : ℝ) :
    ψ v = ψ (pinnedPrimeWeightPsiGridIndex v : ℝ) := by
  simpa [pinnedPrimeWeightPsiGridIndex] using
    (Chebyshev.psi_eq_psi_coe_floor v)

theorem pinnedPrimeWeightPsiGridIndex_cast_le
    {v : ℝ} (hv : 0 ≤ v) :
    (pinnedPrimeWeightPsiGridIndex v : ℝ) ≤ v := by
  simpa [pinnedPrimeWeightPsiGridIndex] using Nat.floor_le hv

theorem pinnedPrimeWeightPsiGridIndex_lt_add_one (v : ℝ) :
    v < (pinnedPrimeWeightPsiGridIndex v : ℝ) + 1 := by
  simpa [pinnedPrimeWeightPsiGridIndex] using Nat.lt_floor_add_one v

theorem pinnedPrimeWeightPsiFloorCorrection_nonpositive
    {v : ℝ} (hv : 0 ≤ v) :
    (pinnedPrimeWeightPsiGridIndex v : ℝ) - v ≤ 0 :=
  sub_nonpos.mpr (pinnedPrimeWeightPsiGridIndex_cast_le hv)

theorem pinnedPrimeWeightPsiFloorCorrection_abs_lt_one
    {v : ℝ} (hv : 0 ≤ v) :
    |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| < 1 := by
  rw [abs_of_nonpos (pinnedPrimeWeightPsiFloorCorrection_nonpositive hv)]
  linarith [pinnedPrimeWeightPsiGridIndex_lt_add_one v]

theorem pinnedPrimeWeightPsiFloorCorrection_abs_le_one
    {v : ℝ} (hv : 0 ≤ v) :
    |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| ≤ 1 :=
  le_of_lt (pinnedPrimeWeightPsiFloorCorrection_abs_lt_one hv)

@[simp] theorem pinnedPrimeWeightPsiGridIndex_natCast (m : ℕ) :
    pinnedPrimeWeightPsiGridIndex (m : ℝ) = m := by
  simp [pinnedPrimeWeightPsiGridIndex]

@[simp] theorem pinnedPrimeWeightPsiGridIndex_nat_add_half (m : ℕ) :
    pinnedPrimeWeightPsiGridIndex ((m : ℝ) + 1 / 2) = m := by
  unfold pinnedPrimeWeightPsiGridIndex
  rw [Nat.floor_eq_iff (by positivity)]
  constructor <;> norm_num

/-- Stage-scaled psi error at the integer grid point below `v`. -/
def pinnedPrimeWeightIntegerPsiResponse (j : ℕ) (v : ℝ) : ℝ :=
  (dyadicScale j : ℝ) *
    psiError (pinnedPrimeWeightPsiGridIndex v : ℝ)

/-- Higher-prime-power correction plus the complete floor sawtooth. -/
def pinnedPrimeWeightIntegerPsiSignedResidual (_j : ℕ) (v : ℝ) : ℝ :=
  θ v - ψ v + ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v)

theorem thetaError_eq_integerPsiResponse_div_add_signedResidual
    (j : ℕ) (v : ℝ) :
    thetaError v =
      pinnedPrimeWeightIntegerPsiResponse j v / (dyadicScale j : ℝ) +
        pinnedPrimeWeightIntegerPsiSignedResidual j v := by
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (dyadicScale_pos j)
  unfold pinnedPrimeWeightIntegerPsiResponse
    pinnedPrimeWeightIntegerPsiSignedResidual thetaError psiError
  rw [psi_eq_psi_gridIndex v]
  field_simp [hX]
  ring

/-- Immutable source rule with the floor sawtooth in the residual. -/
def pinnedPrimeWeightIntegerPsiSourceRule :
    PinnedPrimeWeightSignedSourceRule where
  sourceIdentity :=
    "Mathlib Chebyshev psi floor identity plus exact theta/psi split"
  normalization :=
    "response=X*(psi(floor(v))-floor(v)); residual=theta(v)-psi(v)+floor(v)-v"
  invalidationKey :=
    "mathlib db584cd6d46c92f209a44c0f1c829460d327499d; issue #842; parent PR #832 head b216617f655b33636bfc73a927c36e4f03642578"
  response := pinnedPrimeWeightIntegerPsiResponse
  signedResidual := pinnedPrimeWeightIntegerPsiSignedResidual
  exactIdentity := by
    intro j v _
    exact thetaError_eq_integerPsiResponse_div_add_signedResidual j v

@[simp] theorem pinnedPrimeWeightIntegerPsiSourceRule_response
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightIntegerPsiSourceRule.response j v =
      (dyadicScale j : ℝ) *
        psiError (pinnedPrimeWeightPsiGridIndex v : ℝ) := rfl

@[simp] theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v =
      θ v - ψ v + ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v) := rfl

theorem pinnedPrimeWeightIntegerPsiSourceRule_response_abs
    (j : ℕ) (v : ℝ) :
    |pinnedPrimeWeightIntegerPsiSourceRule.response j v| =
      (dyadicScale j : ℝ) *
        |psiError (pinnedPrimeWeightPsiGridIndex v : ℝ)| := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_response, abs_mul,
    abs_of_nonneg (Nat.cast_nonneg _)]

theorem pinnedPrimeWeightNextOctave_nonnegative
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    0 ≤ v := by
  exact (by positivity : (0 : ℝ) ≤ (dyadicScale (j + 1) : ℝ)).trans hv.1

theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_nonpositive
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v ≤ 0 := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual]
  have hθ : θ v - ψ v ≤ 0 :=
    sub_nonpos.mpr (Chebyshev.theta_le_psi v)
  have hf : (pinnedPrimeWeightPsiGridIndex v : ℝ) - v ≤ 0 :=
    pinnedPrimeWeightPsiFloorCorrection_nonpositive
      (pinnedPrimeWeightNextOctave_nonnegative hv)
  linarith

theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| =
      (ψ v - θ v) + (v - (pinnedPrimeWeightPsiGridIndex v : ℝ)) := by
  rw [abs_of_nonpos
    (pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_nonpositive hv)]
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual]
  ring

theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs_le_parent_add_one
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| ≤
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs hv,
    pinnedPrimeWeightPsiSourceRule_signedResidual_abs]
  have h := pinnedPrimeWeightPsiFloorCorrection_abs_le_one
    (pinnedPrimeWeightNextOctave_nonnegative hv)
  rw [abs_of_nonpos (pinnedPrimeWeightPsiFloorCorrection_nonpositive
    (pinnedPrimeWeightNextOctave_nonnegative hv))] at h
  linarith

/-- Parent response = integerized response + deterministic sawtooth. -/
theorem pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightPsiSourceRule.response j v =
      pinnedPrimeWeightIntegerPsiSourceRule.response j v +
        (dyadicScale j : ℝ) *
          ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v) := by
  rw [pinnedPrimeWeightPsiSourceRule_response,
    pinnedPrimeWeightIntegerPsiSourceRule_response]
  unfold psiError
  rw [psi_eq_psi_gridIndex v]
  ring

@[simp] theorem pinnedPrimeWeightPsiResponses_eq_at_nat (j m : ℕ) :
    pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) =
      pinnedPrimeWeightIntegerPsiSourceRule.response j (m : ℝ) := by
  rw [pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection]
  simp

theorem pinnedPrimeWeightPsiResponse_at_halfInteger (j m : ℕ) :
    pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
      pinnedPrimeWeightIntegerPsiSourceRule.response j ((m : ℝ) + 1 / 2) -
        (dyadicScale j : ℝ) / 2 := by
  rw [pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection,
    pinnedPrimeWeightPsiGridIndex_nat_add_half]
  ring

theorem pinnedPrimeWeightIntegerResponse_at_halfInteger_eq_parent_at_nat
    (j m : ℕ) :
    pinnedPrimeWeightIntegerPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
      pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_response,
    pinnedPrimeWeightPsiSourceRule_response,
    pinnedPrimeWeightPsiGridIndex_nat_add_half]

/-- Adjacent integer/half-integer parent bounds force an artificial scale floor. -/
theorem pinnedPrimeWeightParentPsiPairBounds_force_sawtoothFloor
    {j m : ℕ} {C A : ℝ}
    (hinteger :
      |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ)| ≤ C * A^2)
    (hhalf :
      |pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| ≤
        C * A^2) :
    (dyadicScale j : ℝ) ≤ 4 * C * A^2 := by
  have hrel :
      pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
        pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) -
          (dyadicScale j : ℝ) / 2 := by
    rw [pinnedPrimeWeightPsiResponse_at_halfInteger,
      pinnedPrimeWeightIntegerResponse_at_halfInteger_eq_parent_at_nat]
  have hhalfScale : 0 ≤ (dyadicScale j : ℝ) / 2 := by positivity
  have hgap : (dyadicScale j : ℝ) / 2 ≤ 2 * C * A^2 := by
    calc
      (dyadicScale j : ℝ) / 2 =
          |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) -
            pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| := by
        rw [hrel]
        rw [show pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) -
              (pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) -
                (dyadicScale j : ℝ) / 2) =
              (dyadicScale j : ℝ) / 2 by ring]
        exact (abs_of_nonneg hhalfScale).symm
      _ ≤ |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ)| +
            |pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| :=
        abs_sub _ _
      _ ≤ C * A^2 + C * A^2 := add_le_add hinteger hhalf
      _ = 2 * C * A^2 := by ring
  linarith

/-- The floor of a real next-octave target stays in the integer next octave. -/
theorem pinnedPrimeWeightPsiGridIndex_mem_nextOctaveNat
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    dyadicScale (j + 1) ≤ pinnedPrimeWeightPsiGridIndex v ∧
      pinnedPrimeWeightPsiGridIndex v ≤ 2 * dyadicScale (j + 1) := by
  have hv0 := pinnedPrimeWeightNextOctave_nonnegative hv
  constructor
  · change dyadicScale (j + 1) ≤ ⌊v⌋₊
    exact (Nat.le_floor_iff hv0).2 hv.1
  · have hcast :
        (pinnedPrimeWeightPsiGridIndex v : ℝ) ≤
          ((2 * dyadicScale (j + 1) : ℕ) : ℝ) :=
      (pinnedPrimeWeightPsiGridIndex_cast_le hv0).trans hv.2
    exact_mod_cast hcast

theorem natCast_mem_pinnedPrimeWeightNextOctave
    {j m : ℕ}
    (hlower : dyadicScale (j + 1) ≤ m)
    (hupper : m ≤ 2 * dyadicScale (j + 1)) :
    (m : ℝ) ∈ pinnedPrimeWeightNextOctave j := by
  exact ⟨by exact_mod_cast hlower, by exact_mod_cast hupper⟩

/-- Exact remaining nonlinear theorem, stated at integer targets only. -/
def PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget
    (C : ℝ) : Prop :=
  0 ≤ C ∧
  ∃ j₀ : ℕ, ∀ j ≥ j₀, ∀ m : ℕ,
    dyadicScale (j + 1) ≤ m →
    m ≤ 2 * dyadicScale (j + 1) →
    (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤
      C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2

def PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity : Prop :=
  ∃ C : ℝ, PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C

/-- Same condition, quantified over real targets through the integerized rule. -/
def PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget
    (C : ℝ) : Prop :=
  0 ≤ C ∧
  ∃ j₀ : ℕ, ∀ j ≥ j₀, ∀ v ∈ pinnedPrimeWeightNextOctave j,
    |pinnedPrimeWeightIntegerPsiSourceRule.response j v| ≤
      C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2

theorem pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity (C : ℝ) :
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C ↔
      PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget C := by
  constructor
  · rintro ⟨hC, j₀, hint⟩
    refine ⟨hC, j₀, ?_⟩
    intro j hj v hv
    obtain ⟨hl, hu⟩ := pinnedPrimeWeightPsiGridIndex_mem_nextOctaveNat hv
    rw [pinnedPrimeWeightIntegerPsiSourceRule_response_abs]
    exact hint j hj (pinnedPrimeWeightPsiGridIndex v) hl hu
  · rintro ⟨hC, j₀, hreal⟩
    refine ⟨hC, j₀, ?_⟩
    intro j hj m hl hu
    have hv := natCast_mem_pinnedPrimeWeightNextOctave (j := j) hl hu
    simpa using hreal j hj (m : ℝ) hv

/-- Parent all-real capacity implies the integer-target condition by restriction. -/
theorem pinnedPrimeWeightPsiCapacity_to_integerPsiCapacity
    {C : ℝ}
    (hcapacity : PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget C) :
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C := by
  refine ⟨hcapacity.1, ?_⟩
  obtain ⟨j₀, hresponse⟩ := hcapacity.2
  refine ⟨j₀, ?_⟩
  intro j hj m hl hu
  have hv := natCast_mem_pinnedPrimeWeightNextOctave (j := j) hl hu
  have h := hresponse j hj (m : ℝ) hv
  rw [pinnedPrimeWeightPsiSourceRule_response_abs] at h
  exact h

/-- The floor correction remains within the descended residual scale. -/
theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_stageEnvelope
    {ρ η : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ) (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| + 1 ≤
          pinnedPrimeWeightStageErrorEnvelope j R ρ η := by
  obtain ⟨R₀, hR₀, hparent⟩ :=
    pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
      (ρ := ρ) (η := η) hρ hη
  let R : ℝ := R₀ + 1
  refine ⟨R, by dsimp [R]; linarith, ?_⟩
  intro j v hv
  let X : ℕ := dyadicScale j
  let e : ℝ := quadraticThreshold ρ + η / 2
  have hX : 0 < X := by dsimp [X]; exact dyadicScale_pos j
  have he0 : 0 ≤ e := by
    dsimp [e]
    linarith [half_le_quadraticThreshold hρ]
  have hpowOne : 1 ≤ Real.rpow (X : ℝ) e := by
    exact Real.one_le_rpow
      (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX)) he0
  have hnew :=
    pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs_le_parent_add_one hv
  have hp :
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
        R₀ * Real.rpow (X : ℝ) e := by
    simpa [pinnedPrimeWeightStageErrorEnvelope, X, e] using hparent j v hv
  have htotal :
      |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| + 1 ≤
        R * Real.rpow (X : ℝ) e := by
    calc
      _ ≤ (|pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1) + 1 := by
        linarith
      _ ≤ R₀ * Real.rpow (X : ℝ) e + Real.rpow (X : ℝ) e :=
        add_le_add hp hpowOne
      _ = R * Real.rpow (X : ℝ) e := by dsimp [R]; ring
  simpa [pinnedPrimeWeightStageErrorEnvelope, X, e] using htotal

/-- Integer capacity supplies the fixed signed-source criterion. -/
theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
      pinnedPrimeWeightIntegerPsiSourceRule C ρ := by
  have hrule :=
    (pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity C).1 hcapacity
  refine ⟨hrule.1, ?_⟩
  intro η hη
  obtain ⟨R, hR, hres⟩ :=
    pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_stageEnvelope hρ hη
  obtain ⟨j₀, hresponse⟩ := hrule.2
  refine ⟨R, hR, j₀, ?_⟩
  intro j hj
  exact ⟨hresponse j hj, hres j⟩

theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_recurrence
    (pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
      hρ hcapacity)

theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_descent
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_descent hρ
    (pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
      hρ hcapacity)

theorem pinnedPrimeWeightIntegerPsiCapacity_to_twoRecurrences
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity) :
    QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8) ∧
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4) := by
  obtain ⟨C, hC⟩ := hcapacity
  exact ⟨
    pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
      (C := C) (ρ := (7 : ℝ) / 8) (by norm_num) hC,
    pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
      (C := C) (ρ := (3 : ℝ) / 4) (by norm_num) hC⟩

theorem pinnedPrimeWeightIntegerPsiCapacity_to_descentProgram
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity) :
    QuadraticThetaDescentSevenEighthsToHalf := by
  obtain ⟨C, hC⟩ := hcapacity
  intro ρ hρ _
  exact pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_descent hρ hC

end GRWTSK.RiemannHypothesis
