/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Source recurrence sufficient for quadratic threshold descent

This replaces the opaque nonlinear gate by a concrete dyadic recurrence.

For each eta>0, suppose there are K,R>=0 and a late stage j0 such that every
valid envelope A for octave j propagates to the next octave by

  nextError
    <= K*A^2/X_j
       + R*X_j^(Q(rho)+eta/2).

If the current theta source already has threshold rho, apply its bound with
eta/2. Then A has exponent rho+eta/4, so the quadratic term has exponent

  Q(rho)+eta/2.

Thus the recurrence proves the exact descent

  AllDyadicThetaAtThreshold(rho)
    -> AllDyadicThetaAtThreshold(Q(rho))

whenever rho>=3/4, so the target exponent is nonnegative when passing from
X_j to X_(j+1)=2X_j.

The recurrence itself remains the arithmetic/quartic supplier to construct.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
QUADRATIC_DYADIC_RECURRENCE_SUFFICES / RECURRENCE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

def QuadraticThetaSourceRecurrenceAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ A : ℝ, 0 ≤ A →
        (∀ u ∈ Set.Icc ((dyadicScale j : ℕ) : ℝ)
              ((2 * dyadicScale j : ℕ) : ℝ),
          |thetaError u| + 1 ≤ A) →
        ∀ v ∈ Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
              ((2 * dyadicScale (j + 1) : ℕ) : ℝ),
          |thetaError v| + 1 ≤
            K * A^2 / (dyadicScale j : ℝ) +
              R * Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + η / 2)

theorem dyadicScale_succ_eq_two_mul (j : ℕ) :
    dyadicScale (j + 1) = 2 * dyadicScale j := by
  unfold dyadicScale
  rw [show j + 1 + 1 = (j + 1) + 1 by omega,
    pow_succ]
  ring

theorem quadraticThetaSourceRecurrence_to_descent
    {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hrec : QuadraticThetaSourceRecurrenceAt ρ) :
    QuadraticThetaDescentAt ρ := by
  intro hθ η hη
  have hη2 : 0 < η / 2 := by linarith
  obtain ⟨C, hC, jθ, hθbound⟩ := hθ (η / 2) hη2
  obtain ⟨K, hK, R, hR, jr, hstep⟩ := hrec η hη
  let D : ℝ := K * C^2 + R
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  let j₀ : ℕ := max jθ jr + 1
  refine ⟨D, hD, j₀, ?_⟩
  intro n hn v hv
  have hnpos : 0 < n := by
    dsimp [j₀] at hn
    omega
  let j : ℕ := n - 1
  have hjSucc : j + 1 = n := by
    dsimp [j]
    omega
  have hjθ : jθ ≤ j := by
    dsimp [j₀, j] at hn
    omega
  have hjr : jr ≤ j := by
    dsimp [j₀, j] at hn
    omega
  let X : ℕ := dyadicScale j
  let A : ℝ :=
    C * Real.rpow (X : ℝ) (ρ + η / 4)
  have hX : 0 < X := by
    dsimp [X, dyadicScale]
    positivity
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hA0 : 0 ≤ A := by
    dsimp [A]
    positivity
  have hAenv :
      ∀ u ∈ Set.Icc ((X : ℕ) : ℝ) ((2 * X : ℕ) : ℝ),
        |thetaError u| + 1 ≤ A := by
    intro u hu
    have hb := hθbound j hjθ u (by
      simpa [X] using hu)
    dsimp [A, X] at *
    have hexp :
        ρ + (η / 2) / 2 = ρ + η / 4 := by ring
    simpa [hexp] using hb
  have hnext :
      |thetaError v| + 1 ≤
        K * A^2 / (X : ℝ) +
          R * Real.rpow (X : ℝ)
            (quadraticThreshold ρ + η / 2) := by
    have hs :=
      hstep j hjr A hA0 hAenv v
        (by simpa [X, hjSucc] using hv)
    simpa [X] using hs
  have hquad :
      |thetaError v| + 1 ≤
        D * Real.rpow (X : ℝ)
          (quadraticThreshold ρ + η / 2) := by
    have hA :
        A ≤ C * Real.rpow (X : ℝ) (ρ + η / 4) :=
      le_rfl
    have hδ : 2 * (η / 4) = η / 2 := by ring
    have h :=
      quadratic_error_step
        hXr hA0 hC hK hR hA (by simpa only [hδ] using hnext)
    simpa only [hδ, D] using h
  have htargetExp :
      0 ≤ quadraticThreshold ρ + η / 2 := by
    have hhalf := half_le_quadraticThreshold hρ
    linarith
  have hscale :
      (X : ℝ) ≤ (dyadicScale n : ℝ) := by
    rw [← hjSucc, dyadicScale_succ_eq_two_mul]
    dsimp [X]
    push_cast
    have hp : (0 : ℝ) ≤ dyadicScale j := Nat.cast_nonneg _
    linarith
  have hpow :
      Real.rpow (X : ℝ)
          (quadraticThreshold ρ + η / 2) ≤
        Real.rpow (dyadicScale n : ℝ)
          (quadraticThreshold ρ + η / 2) :=
    Real.rpow_le_rpow
      (by exact_mod_cast hX.le)
      hscale htargetExp
  exact hquad.trans
    (mul_le_mul_of_nonneg_left hpow hD)

theorem twoStepQuadraticRecurrence_to_rh
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8))
    (h78 :
      QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8))
    (h34 :
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4)) :
    _root_.RiemannHypothesis := by
  have hdesc78 :
      QuadraticThetaDescentAt ((7 : ℝ) / 8) :=
    quadraticThetaSourceRecurrence_to_descent
      (by norm_num) h78
  have htheta34 :
      AllDyadicThetaAtThreshold ((3 : ℝ) / 4) := by
    simpa using hdesc78 hθ
  have hdesc34 :
      QuadraticThetaDescentAt ((3 : ℝ) / 4) :=
    quadraticThetaSourceRecurrence_to_descent
      (by norm_num) h34
  have hthetaHalf :
      AllDyadicThetaAtThreshold ((1 : ℝ) / 2) := by
    simpa using hdesc34 htheta34
  have hfree :
      RiemannZetaZeroFreeRightHalfPlane ((1 : ℝ) / 2) :=
    thetaAtThreshold_to_sameZeroFree
      (by norm_num) (by norm_num) hthetaHalf
  exact
    riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.mp
      hfree

end GRWTSK.RiemannHypothesis
