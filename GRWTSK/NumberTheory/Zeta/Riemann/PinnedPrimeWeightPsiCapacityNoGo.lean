/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Research direction: R.A. Jacob Martone. Source-level formalization assistance: OpenAI ChatGPT.
Upstream Mathlib retains its original authorship and license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightIntegerizedPsiSourceRule
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# A no-go audit for the fixed quadratic integer-psi capacity

The parent branch conjectures one scale-independent C such that

  X_j * |psi(m)-m| <= C * A_Xj^2

at every sufficiently late dyadic scale and every integer target
2 X_j <= m <= 4 X_j.  This packet documents the fundamental obstruction:
the prime number theorem gives a sublinear theta-error envelope; if the
conjectured response is coupled to the standard O(sqrt x) psi-theta
correction, the resulting quadratic recursion bootstraps the theta
envelope to O(sqrt X).  The proposed response then forces psi(m)-m
to be uniformly O(1), contradicting its unbounded prime jumps.

This file proves the pure dyadic bootstrap and the contradiction from
explicit, noncoercible analytic and prime-jump premises.  It also
derives the genuine pinned-amplitude response bound from the actual
parent capacity and the repository's coefficient budget.

A verified Lean constructor for the classical PNT minimal envelope,
its recurrence comparison, and the unbounded prime-jump premise is
NOT supplied here.  The mathematical no-go is unconditional in the
classical literature, but this Lean packet is a conditional formal audit.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SUBLINEAR_QUADRATIC_BOOTSTRAP_SOURCE_DEFINED /
PRIME_JUMP_NOGO_CONDITIONAL_DEFINED /
PINNED_RESPONSE_ENVELOPE_BRIDGE_DEFINED /
PNT_ENVELOPE_INSTANTIATION_OPEN /
PRIME_JUMP_INSTANTIATION_OPEN /
FIXED_INTEGER_PSI_CAPACITY_REJECTED_AS_ANALYTIC_SUPPLIER /
NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- A scalar dyadic envelope is sublinear in the literal source scale.
This is the form supplied by the classical PNT for the least theta envelope,
not by Chebyshev's upper bound alone. -/
def SublinearDyadicEnvelope (E : ℕ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ j₀ : ℕ, ∀ j ≥ j₀,
      E j ≤ ε * (dyadicScale j : ℝ)

/-- A normalized, square-root-forced quadratic recurrence.  The constants
and the late-stage threshold remain explicit. -/
def SquareRootForcedQuadraticRecurrence
    (E : ℕ → ℝ) (K H : ℝ) : Prop :=
  ∃ j₀ : ℕ, ∀ j ≥ j₀,
    E (j + 1) ≤
      K * (E j)^2 / (dyadicScale j : ℝ) +
        H * Real.sqrt (dyadicScale j : ℝ)

/-- The elementary bootstrap: once E_j/X_j tends to zero, the nonlinear
term can be absorbed into half the previous envelope.  The residual
sqrt(X_j) scale is then stable under dyadic iteration. -/
theorem sublinear_quadraticRecurrence_eventually_sqrt
    (E : ℕ → ℝ) {K H : ℝ}
    (hK : 0 ≤ K) (hH : 0 ≤ H)
    (hE : ∀ j, 0 ≤ E j)
    (hsmall : SublinearDyadicEnvelope E)
    (hrec : SquareRootForcedQuadraticRecurrence E K H) :
    ∃ M : ℝ, 0 ≤ M ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        E j ≤ M * Real.sqrt (dyadicScale j : ℝ) := by
  let δ : ℝ := 1 / (2 * (K + 1))
  have hKone : 0 < K + 1 := by linarith
  have hδ : 0 < δ := by
    dsimp [δ]
    exact div_pos (by norm_num : (0 : ℝ) < 1)
      (mul_pos (by norm_num) hKone)
  obtain ⟨jsmall, hsmallStages⟩ := hsmall δ hδ
  obtain ⟨jrec, hrecStages⟩ := hrec
  let j₀ : ℕ := max jsmall jrec
  let M : ℝ := E j₀ + 2 * H
  have hM : 0 ≤ M := by
    dsimp [M]
    nlinarith [hE j₀, hH]
  have hMtwoH : 2 * H ≤ M := by
    dsimp [M]
    linarith [hE j₀]
  refine ⟨M, hM, j₀, ?_⟩
  intro j hj
  induction j, hj using Nat.le_induction with
  | base =>
      have hXone : (1 : ℝ) ≤ (dyadicScale j₀ : ℝ) := by
        exact_mod_cast
          (Nat.one_le_iff_ne_zero.mpr
            (Nat.ne_of_gt (dyadicScale_pos j₀)))
      have hsqrt : 1 ≤ Real.sqrt (dyadicScale j₀ : ℝ) := by
        simpa using Real.sqrt_le_sqrt hXone
      have hE0 := hE j₀
      have hEM : E j₀ ≤ M := by
        dsimp [M]
        linarith
      exact hEM.trans (by
        nlinarith [mul_nonneg hM (sub_nonneg.mpr hsqrt)])
  | succ j hj ih =>
      let X : ℝ := (dyadicScale j : ℝ)
      have hX : 0 < X := by
        dsimp [X]
        exact_mod_cast dyadicScale_pos j
      have hsmallj : E j ≤ δ * X := by
        exact hsmallStages j (by
          dsimp [j₀] at hj
          omega)
      have hδid : 2 * (K + 1) * δ = 1 := by
        dsimp [δ]
        field_simp [hKone.ne']
        ring
      have htwice : 2 * (K + 1) * E j ≤ X := by
        calc
          2 * (K + 1) * E j
              ≤ 2 * (K + 1) * (δ * X) :=
            mul_le_mul_of_nonneg_left hsmallj (by positivity)
          _ = X := by
            rw [← mul_assoc, hδid, one_mul]
      have hKsmall : 2 * K * E j ≤ X := by
        nlinarith [htwice, hE j]
      have hmul :
          (2 * K * E j) * E j ≤ X * E j :=
        mul_le_mul_of_nonneg_right hKsmall (hE j)
      have hquad :
          K * (E j)^2 / X ≤ E j / 2 := by
        apply (div_le_iff₀ hX).2
        nlinarith [hmul]
      have hstep :
          E (j + 1) ≤
            K * (E j)^2 / X + H * Real.sqrt X := by
        simpa [X] using hrecStages j (by
          dsimp [j₀] at hj
          omega)
      have hrootMono :
          Real.sqrt X ≤ Real.sqrt (dyadicScale (j + 1) : ℝ) := by
        apply Real.sqrt_le_sqrt
        dsimp [X]
        rw [dyadicScale_succ_eq_two_mul]
        push_cast
        have hp : 0 ≤ (dyadicScale j : ℝ) := by positivity
        linarith
      calc
        E (j + 1)
            ≤ K * (E j)^2 / X +
                H * Real.sqrt X := hstep
        _ ≤ E j / 2 + H * Real.sqrt X :=
          add_le_add_right hquad _
        _ ≤ (M / 2 + H) * Real.sqrt X := by
          have hroot0 : 0 ≤ Real.sqrt X := Real.sqrt_nonneg X
          dsimp [X] at ih ⊢
          nlinarith
        _ ≤ M * Real.sqrt X :=
          mul_le_mul_of_nonneg_right (by linarith [hMtwoH])
            (Real.sqrt_nonneg X)
        _ ≤ M * Real.sqrt (dyadicScale (j + 1) : ℝ) :=
          mul_le_mul_of_nonneg_left hrootMono hM

/-- A prime-jump certificate requires arbitrarily large adjacent integer
targets inside the SAME next octave whose psi errors have an arbitrarily
large difference.  Bertrand plus psi(p)-psi(p-1)=log(p) supplies this in
classical arithmetic; the Lean constructor is a separate replay obligation. -/
def UnboundedAdjacentPsiJump : Prop :=
  ∀ (D : ℝ) (j₀ : ℕ),
    ∃ j : ℕ, j₀ ≤ j ∧
      ∃ m : ℕ,
        2 * dyadicScale j ≤ m ∧
        m + 1 ≤ 4 * dyadicScale j ∧
        2 * D <
          |psiError ((m + 1 : ℕ) : ℝ) - psiError (m : ℝ)|

/-- A fixed current-envelope squared response estimate, explicitly
uniform over ALL integers of the next octave. -/
def EnvelopeQuadraticIntegerPsiResponse
    (E : ℕ → ℝ) (K : ℝ) : Prop :=
  ∃ j₀ : ℕ, ∀ j ≥ j₀, ∀ m : ℕ,
    2 * dyadicScale j ≤ m →
    m ≤ 4 * dyadicScale j →
      (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤
        K * (E j)^2

/-- A sublinear, square-root-forced recurrence and an unbounded adjacent
prime jump cannot coexist with the uniform squared-envelope response. -/
theorem no_uniform_integerPsiResponse_of_sublinear_recurrence_and_jumps
    (E : ℕ → ℝ) {K H : ℝ}
    (hK : 0 ≤ K) (hH : 0 ≤ H)
    (hE : ∀ j, 0 ≤ E j)
    (hsmall : SublinearDyadicEnvelope E)
    (hrec : SquareRootForcedQuadraticRecurrence E K H)
    (hresponse : EnvelopeQuadraticIntegerPsiResponse E K)
    (hjumps : UnboundedAdjacentPsiJump) : False := by
  obtain ⟨M, hM, jM, hMbound⟩ :=
    sublinear_quadraticRecurrence_eventually_sqrt
      E hK hH hE hsmall hrec
  obtain ⟨jR, hR⟩ := hresponse
  let D : ℝ := K * M^2
  obtain ⟨j, hj, m, hmlow, hmup, hjump⟩ :=
    hjumps D (max jM jR)
  have hjM : jM ≤ j := le_trans (le_max_left _ _) hj
  have hjR : jR ≤ j := le_trans (le_max_right _ _) hj
  let X : ℝ := (dyadicScale j : ℝ)
  have hX : 0 < X := by
    dsimp [X]
    exact_mod_cast dyadicScale_pos j
  have hEbound : E j ≤ M * Real.sqrt X := by
    simpa [X] using hMbound j hjM
  have hEsq : (E j)^2 ≤ M^2 * X := by
    have hsq :=
      (sq_le_sq₀ (hE j)
        (mul_nonneg hM (Real.sqrt_nonneg X))).2 hEbound
    simpa [mul_pow, Real.sq_sqrt hX.le, mul_assoc] using hsq
  have hrespBound (n : ℕ)
      (hnlow : 2 * dyadicScale j ≤ n)
      (hnup : n ≤ 4 * dyadicScale j) :
      |psiError (n : ℝ)| ≤ D := by
    have hcap := hR j hjR n hnlow hnup
    have hupper :
        X * |psiError (n : ℝ)| ≤ D * X := by
      calc
        X * |psiError (n : ℝ)| ≤ K * (E j)^2 := by
          simpa [X] using hcap
        _ ≤ K * (M^2 * X) :=
          mul_le_mul_of_nonneg_left hEsq hK
        _ = D * X := by
          dsimp [D]
          ring
    exact (mul_le_mul_left hX).mp (by simpa [mul_comm] using hupper)
  have hm1low : 2 * dyadicScale j ≤ m + 1 := by omega
  have hm1 := hrespBound (m + 1) hm1low hmup
  have hm := hrespBound m hmlow (by omega)
  have htri :
      |psiError ((m + 1 : ℕ) : ℝ) - psiError (m : ℝ)| ≤
        |psiError ((m + 1 : ℕ) : ℝ)| + |psiError (m : ℝ)| :=
    abs_sub _ _
  have hcontradiction :
      |psiError ((m + 1 : ℕ) : ℝ) - psiError (m : ℝ)| ≤
        2 * D := by
    linarith
  exact (not_lt_of_ge hcontradiction) hjump

/-- The ACTUAL integerized source capacity, plus an ordinary current-octave
theta envelope, supplies the fixed squared-envelope response inequality.
The arithmetic provenance is the literal prime window and pinned L1 bound. -/
theorem integerPsiCapacity_to_envelopeQuadraticResponse
    {C : ℝ}
    (hcapacity :
      PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C)
    (E : ℕ → ℝ)
    (hE : ∀ j, 0 ≤ E j)
    (hcontrol :
      ∀ j : ℕ, ∀ u ∈
        Set.Icc (dyadicScale j : ℝ)
          (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ E j) :
    EnvelopeQuadraticIntegerPsiResponse E
      (C * primeCoefficientL1Budget^2) := by
  obtain ⟨hC, j₀, hstage⟩ := hcapacity
  refine ⟨j₀, ?_⟩
  intro j hj m hlow hup
  let X : ℕ := dyadicScale j
  have hX : 0 < X := dyadicScale_pos j
  have hsq :
      (pinnedPrimeWeightedAmplitude X)^2 ≤
        (primeCoefficientL1Budget * E j)^2 :=
    pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope
      hX (hE j) (by simpa [X] using hcontrol j)
  have hnextLower : dyadicScale (j + 1) ≤ m := by
    rw [dyadicScale_succ_eq_two_mul]
    simpa [X] using hlow
  have hnextUpper : m ≤ 2 * dyadicScale (j + 1) := by
    rw [dyadicScale_succ_eq_two_mul]
    simpa [X] using hup
  have h := hstage j hj m hnextLower hnextUpper
  calc
    (dyadicScale j : ℝ) * |psiError (m : ℝ)|
        ≤ C * (pinnedPrimeWeightedAmplitude X)^2 := by
          simpa [X] using h
    _ ≤ C * (primeCoefficientL1Budget * E j)^2 :=
      mul_le_mul_of_nonneg_left hsq hC
    _ = (C * primeCoefficientL1Budget^2) * (E j)^2 := by
      ring

end GRWTSK.RiemannHypothesis
