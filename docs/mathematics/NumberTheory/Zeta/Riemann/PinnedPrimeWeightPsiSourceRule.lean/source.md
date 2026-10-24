# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af64c7e1f8ffecceda8ec392a3027fdff8e943c2` · SHA-256 `82bcf0b207daef7bc314d9be8531ba519146ccc9c8b24be10ddc97d62ece5f17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightSignedSourceCoupling
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction
import GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Chebyshev psi source rule for the pinned prime-weight recurrence

The abstract signed-source layer is instantiated by the canonical arithmetic
split

  theta(v) - v = (psi(v) - v) + (theta(v) - psi(v)).At dyadic stage `j`, with `X_j = dyadicScale j`, define

  response(j,v)       = X_j * psiError(v),
  signedResidual(j,v) = theta(v) - psi(v).The response is the complete Chebyshev psi error, sourced from the full von
Mangoldt prime-power channel.  The signed residual is exactly the correction
that removes higher prime powers.  Pinned Mathlib proves that this correction
is nonpositive and has magnitude `O(sqrt(v))`.

Every declared next-octave point lies below `4 * X_j`.  Consequently, for every
`rho >= 3/4`, the complete residual, including the additive `1`, lies in the
required stage envelope

  X_j^(quadraticThreshold rho + eta/2).Thus the residual side of the signed coupling is discharged unconditionally.
The sole remaining source-specific supplier is the nonlinear response bound

  X_j * |psiError(v)|
    <= C * pinnedPrimeWeightedAmplitude(X_j)^2.

This module defines that obligation and proves its forward transport to the
existing fixed signed-coupling, recurrence, and threshold-descent interfaces.
It does not prove the nonlinear response bound or a global zeta explicit
formula.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CHEBYSHEV_PSI_SIGNED_RULE_DEFINED /
HIGHER_PRIME_POWER_RESIDUAL_DISCHARGED /
PSI_RESPONSE_CAPACITY_INTERFACE_DEFINED /
PSI_CAPACITY_TO_RECURRENCE_DEFINED /
QUADRATIC_PSI_RESPONSE_CAPACITY_OPEN /
NO_GLOBAL_EXPLICIT_FORMULA_CLAIM / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Immutable source binding for the pinned Chebyshev declarations used by the
psi source rule.  These strings retain provenance only; the exact identity and
bounds below are theorem terms. -/
structure PinnedPrimeWeightPsiSourceRecord where
  mathlibRepository : String
  mathlibRevision : String
  chebyshevPath : String
  chebyshevBlob : String
  psiDeclaration : String
  thetaDeclaration : String
  thetaLePsiDeclaration : String
  psiThetaSqrtDeclaration : String
  localPsiErrorPath : String
  localThetaErrorPath : String
  deriving Repr

/-- Exact pinned source metadata for the Chebyshev psi/theta channel. -/
def pinnedPrimeWeightPsiSource :
    PinnedPrimeWeightPsiSourceRecord where
  mathlibRepository := "leanprover-community/mathlib4"
  mathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"
  chebyshevPath := "Mathlib/NumberTheory/Chebyshev.lean"
  chebyshevBlob := "6ffaf1bc3538b5a86fae7f4c62cc1287f9d48f2a"
  psiDeclaration := "Chebyshev.psi"
  thetaDeclaration := "Chebyshev.theta"
  thetaLePsiDeclaration := "Chebyshev.theta_le_psi"
  psiThetaSqrtDeclaration :=
    "Chebyshev.psi_sub_theta_le_mul_sqrt"
  localPsiErrorPath :=
    "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean"
  localThetaErrorPath :=
    "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean"

/-- Stage-scaled full Chebyshev psi error. -/
def pinnedPrimeWeightPsiResponse
    (j : ℕ) (v : ℝ) : ℝ :=
  (dyadicScale j : ℝ) * psiError v

/-- Exact higher-prime-power correction from psi back to theta. -/
def pinnedPrimeWeightPsiSignedResidual
    (_j : ℕ) (v : ℝ) : ℝ :=
  θ v - ψ v

/-- Exact arithmetic decomposition, valid at every real target point. -/
theorem thetaError_eq_psiResponse_div_add_signedResidual
    (j : ℕ) (v : ℝ) :
    thetaError v =
      pinnedPrimeWeightPsiResponse j v /
          (dyadicScale j : ℝ) +
        pinnedPrimeWeightPsiSignedResidual j v := by
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j)
  unfold pinnedPrimeWeightPsiResponse
    pinnedPrimeWeightPsiSignedResidual thetaError psiError
  field_simp [hX]
  ring

/-- The canonical psi-based immutable signed source rule. -/
def pinnedPrimeWeightPsiSourceRule :
    PinnedPrimeWeightSignedSourceRule where
  sourceIdentity :=
    "Mathlib Chebyshev psi/theta exact split at pinned revision db584cd6d46c92f209a44c0f1c829460d327499d"
  normalization :=
    "response(j,v)=dyadicScale(j)*(psi(v)-v); signedResidual(j,v)=theta(v)-psi(v)"
  invalidationKey :=
    "Mathlib/NumberTheory/Chebyshev.lean blob 6ffaf1bc3538b5a86fae7f4c62cc1287f9d48f2a"
  response := pinnedPrimeWeightPsiResponse
  signedResidual := pinnedPrimeWeightPsiSignedResidual
  exactIdentity := by
    intro j v _hv
    exact thetaError_eq_psiResponse_div_add_signedResidual j v

@[simp]
theorem pinnedPrimeWeightPsiSourceRule_response
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightPsiSourceRule.response j v =
      (dyadicScale j : ℝ) * psiError v :=
  rfl

@[simp]
theorem pinnedPrimeWeightPsiSourceRule_signedResidual
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightPsiSourceRule.signedResidual j v =
      θ v - ψ v :=
  rfl

/-- The response magnitude is exactly the stage scale times the psi-error
magnitude.  No target fitting or totalized division is hidden here. -/
theorem pinnedPrimeWeightPsiSourceRule_response_abs
    (j : ℕ) (v : ℝ) :
    |pinnedPrimeWeightPsiSourceRule.response j v| =
      (dyadicScale j : ℝ) * |psiError v| := by
  rw [pinnedPrimeWeightPsiSourceRule_response, abs_mul,
    abs_of_nonneg (Nat.cast_nonneg _)]

/-- The signed residual is nonpositive because theta is bounded above by psi. -/
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_nonpositive
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightPsiSourceRule.signedResidual j v ≤ 0 := by
  rw [pinnedPrimeWeightPsiSourceRule_signedResidual]
  exact sub_nonpos.mpr (Chebyshev.theta_le_psi v)

/-- Its absolute value is the literal higher-prime-power mass `psi-theta`. -/
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_abs
    (j : ℕ) (v : ℝ) :
    |pinnedPrimeWeightPsiSourceRule.signedResidual j v| =
      ψ v - θ v := by
  rw [pinnedPrimeWeightPsiSourceRule_signedResidual,
    abs_of_nonpos (sub_nonpos.mpr (Chebyshev.theta_le_psi v))]
  ring

/-- Pointwise response-capacity inequality written without the rule projection. -/
theorem pinnedPrimeWeightPsiSourceRule_response_bound_iff
    (j : ℕ) (C v : ℝ) :
    |pinnedPrimeWeightPsiSourceRule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 ↔
      (dyadicScale j : ℝ) * |psiError v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 := by
  rw [pinnedPrimeWeightPsiSourceRule_response_abs]

/-- One fixed coefficient budget for the still-open nonlinear psi response.
The budget and late stage are chosen before any target point. -/
def PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget
    (C : ℝ) : Prop :=
  0 ≤ C ∧
  ∃ j₀ : ℕ,
    ∀ j ≥ j₀, ∀ v ∈ pinnedPrimeWeightNextOctave j,
      |pinnedPrimeWeightPsiSourceRule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2

/-- Existential form of the exact remaining nonlinear source obligation. -/
def PinnedPrimeWeightPsiQuadraticResponseCapacity : Prop :=
  ∃ C : ℝ,
    PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget C

/-- Every next-octave target is at most four times the current dyadic scale. -/
theorem pinnedPrimeWeightNextOctave_le_four_mul_currentScale
    {j : ℕ} {v : ℝ}
    (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    v ≤ 4 * (dyadicScale j : ℝ) := by
  have hupper := hv.2
  calc
    v ≤ (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) := hupper
    _ = 4 * (dyadicScale j : ℝ) := by
      rw [dyadicScale_succ_eq_two_mul]
      push_cast
      ring

/-- The pinned Chebyshev `psi-theta` estimate discharges the complete signed
residual at every threshold admitted by the quadratic descent program. -/
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
    {ρ η : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          pinnedPrimeWeightStageErrorEnvelope j R ρ η := by
  obtain ⟨C₀, hC₀⟩ :=
    Chebyshev.psi_sub_theta_le_mul_sqrt
  let A : ℝ := |C₀|
  let e : ℝ := quadraticThreshold ρ + η / 2
  let S : ℝ := Real.rpow 2 e
  let R : ℝ := 2 * A * S + 1
  have hA : 0 ≤ A := abs_nonneg _
  have heHalf : (1 : ℝ) / 2 ≤ quadraticThreshold ρ :=
    half_le_quadraticThreshold hρ
  have he0 : 0 ≤ e := by
    dsimp [e]
    linarith
  have hS : 0 ≤ S := by
    dsimp [S]
    exact Real.rpow_nonneg (by norm_num) _
  have hR : 0 ≤ R := by
    dsimp [R]
    positivity
  refine ⟨R, hR, ?_⟩
  intro j v hv
  let X : ℕ := dyadicScale j
  let Y : ℕ := dyadicScale (j + 1)
  have hX : 0 < X := by
    dsimp [X]
    exact GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  have hY : 0 < Y := by
    dsimp [Y]
    exact GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos (j + 1)
  have hYeq : Y = 2 * X := by
    dsimp [X, Y]
    exact dyadicScale_succ_eq_two_mul j
  have hpsiTheta :
      ψ v - θ v ≤ A * Real.sqrt v := by
    have h0 := hC₀ v
    have hCabs : C₀ ≤ A := by
      dsimp [A]
      exact le_abs_self C₀
    exact h0.trans
      (mul_le_mul_of_nonneg_right hCabs
        (Real.sqrt_nonneg v))
  have hsqrtY :
      Real.sqrt (((2 * Y : ℕ) : ℝ)) ≤
        2 * Real.rpow (Y : ℝ) e := by
    simpa [e] using
      (sqrt_twoX_le_two_thresholdAmplitude
        (ρ := quadraticThreshold ρ) (η := η)
        heHalf hη hY)
  have hsqrtV :
      Real.sqrt v ≤
        2 * Real.rpow (Y : ℝ) e := by
    exact (Real.sqrt_le_sqrt hv.2).trans hsqrtY
  have hYpow :
      Real.rpow (Y : ℝ) e =
        S * Real.rpow (X : ℝ) e := by
    calc
      Real.rpow (Y : ℝ) e =
          Real.rpow (2 * (X : ℝ)) e := by
        rw [hYeq]
        push_cast
        rfl
      _ = Real.rpow 2 e *
          Real.rpow (X : ℝ) e := by
        simp only [Real.rpow_eq_pow]
        exact Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2)
          (by exact_mod_cast hX.le)
      _ = S * Real.rpow (X : ℝ) e := by
        rfl
  have hsqrtX :
      Real.sqrt v ≤
        2 * S * Real.rpow (X : ℝ) e := by
    calc
      Real.sqrt v ≤ 2 * Real.rpow (Y : ℝ) e := hsqrtV
      _ = 2 * S * Real.rpow (X : ℝ) e := by
        rw [hYpow]
        ring
  have hresidual :
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| ≤
        2 * A * S * Real.rpow (X : ℝ) e := by
    rw [pinnedPrimeWeightPsiSourceRule_signedResidual_abs]
    calc
      ψ v - θ v ≤ A * Real.sqrt v := hpsiTheta
      _ ≤ A *
          (2 * S * Real.rpow (X : ℝ) e) :=
        mul_le_mul_of_nonneg_left hsqrtX hA
      _ = 2 * A * S * Real.rpow (X : ℝ) e := by
        ring
  have hXoneNat : 1 ≤ X :=
    Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX)
  have hXone : (1 : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast hXoneNat
  have hpowOne :
      1 ≤ Real.rpow (X : ℝ) e :=
    Real.one_le_rpow hXone he0
  have htotal :
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
        R * Real.rpow (X : ℝ) e := by
    calc
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1
          ≤ 2 * A * S * Real.rpow (X : ℝ) e +
              Real.rpow (X : ℝ) e :=
        add_le_add hresidual hpowOne
      _ = R * Real.rpow (X : ℝ) e := by
        dsimp [R]
        ring
  simpa [pinnedPrimeWeightStageErrorEnvelope, X, e] using htotal

/-- Explicit `7/8 -> 3/4` residual exponent. -/
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_sevenEighths
    {η : ℝ} (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          R * Real.rpow (dyadicScale j : ℝ)
            ((3 : ℝ) / 4 + η / 2) := by
  obtain ⟨R, hR, hbound⟩ :=
    pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
      (ρ := (7 : ℝ) / 8) (η := η) (by norm_num) hη
  refine ⟨R, hR, ?_⟩
  intro j v hv
  simpa [pinnedPrimeWeightStageErrorEnvelope] using
    hbound j v hv

/-- Explicit `3/4 -> 1/2` residual exponent. -/
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_threeQuarters
    {η : ℝ} (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          R * Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 2 + η / 2) := by
  obtain ⟨R, hR, hbound⟩ :=
    pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
      (ρ := (3 : ℝ) / 4) (η := η) (by norm_num) hη
  refine ⟨R, hR, ?_⟩
  intro j v hv
  simpa [pinnedPrimeWeightStageErrorEnvelope] using
    hbound j v hv

/-- The exact remaining psi-response capacity, together with the unconditional
higher-prime-power residual bound, supplies the fixed signed-source criterion. -/
theorem pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_fixedSignedSourceCoupling
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity :
      PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget C) :
    PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
      pinnedPrimeWeightPsiSourceRule C ρ := by
  refine ⟨hcapacity.1, ?_⟩
  intro η hη
  obtain ⟨R, hR, hresidual⟩ :=
    pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
      (ρ := ρ) (η := η) hρ hη
  obtain ⟨j₀, hresponse⟩ := hcapacity.2
  refine ⟨R, hR, j₀, ?_⟩
  intro j hj
  refine ⟨?_, ?_⟩
  · exact hresponse j hj
  · exact hresidual j

/-- Source-specific psi response capacity supplies the quadratic recurrence at
any admitted threshold. -/
theorem pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_recurrence
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity :
      PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget C) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_recurrence
    (pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_fixedSignedSourceCoupling
      hρ hcapacity)

/-- The same source-specific capacity supplies one quadratic threshold descent. -/
theorem pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_descent
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity :
      PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget C) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_descent hρ
    (pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_fixedSignedSourceCoupling
      hρ hcapacity)

/-- One uniform psi response-capacity theorem would supply both live recurrence
obligations. -/
theorem pinnedPrimeWeightPsiQuadraticResponseCapacity_to_twoRecurrences
    (hcapacity :
      PinnedPrimeWeightPsiQuadraticResponseCapacity) :
    QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8) ∧
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4) := by
  obtain ⟨C, hC⟩ := hcapacity
  constructor
  · exact
      pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_recurrence
        (C := C) (ρ := (7 : ℝ) / 8) (by norm_num) hC
  · exact
      pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_recurrence
        (C := C) (ρ := (3 : ℝ) / 4) (by norm_num) hC

/-- Equivalently, one such theorem supplies the complete two-step quadratic
descent program on the interval from `3/4` through `7/8`. -/
theorem pinnedPrimeWeightPsiQuadraticResponseCapacity_to_descentProgram
    (hcapacity :
      PinnedPrimeWeightPsiQuadraticResponseCapacity) :
    QuadraticThetaDescentSevenEighthsToHalf := by
  obtain ⟨C, hC⟩ := hcapacity
  intro ρ hρ _hρupper
  exact
    pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_descent
      (C := C) (ρ := ρ) hρ hC

end GRWTSK.RiemannHypothesis
```
