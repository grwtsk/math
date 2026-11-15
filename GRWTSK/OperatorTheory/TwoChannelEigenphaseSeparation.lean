/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib.Analysis.SpecialFunctions.Complex.Circle
import Mathlib.NumberTheory.Real.Irrational
import Mathlib.Tactic

/-!
# Exact eigenphase separation by two noncommensurate channels

The unit-circle phase of a real spectral parameter λ is exp(i ε λ).
One nonzero offset aliases λ modulo 2π/ε. Two offsets with irrational
ratio are jointly injective on exact real parameters when the phase
observations are coherent and refer to the same self-adjoint generator.
No unknown operator, eigenspace, multiplicity, phase lift, sampling error,
or original arithmetic zeta/Dirichlet-zero correspondence is recovered.

Consumer: math #1812, HS #10/#12, harness #76.
SOURCE_CANDIDATE. Lean, kernel and transitive-dependency checks NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.OperatorTheory.PrismaticEigenphase

/-- Circle-valued eigenphase, not an intensity-only measurement. -/
def phase (ε λ : ℝ) : Circle := Circle.exp (ε * λ)

/-- Equality of complex eigenphases is exactly an integer-period alias. -/
theorem phase_eq_iff_integer_period (ε λ μ : ℝ) :
    phase ε λ = phase ε μ ↔
      ∃ k : ℤ, ε * (λ - μ) = (k : ℝ) * (2 * Real.pi) := by
  simp only [phase, Circle.exp_eq_exp]
  constructor
  · rintro ⟨k, hk⟩
    refine ⟨k, ?_⟩
    calc
      ε * (λ - μ) = ε * λ - ε * μ := by ring
      _ = (k : ℝ) * (2 * Real.pi) := by rw [hk]; ring
  · rintro ⟨k, hk⟩
    refine ⟨k, ?_⟩
    calc
      ε * λ = ε * μ + ε * (λ - μ) := by ring
      _ = ε * μ + (k : ℝ) * (2 * Real.pi) := by rw [hk]

/-- Every nonzero single sampling offset has a distinct exact phase alias. -/
theorem one_channel_alias (ε λ : ℝ) (hε : ε ≠ 0) :
    phase ε λ = phase ε (λ + (2 * Real.pi) / ε) := by
  apply (phase_eq_iff_integer_period ε λ (λ + (2 * Real.pi) / ε)).2
  refine ⟨-1, ?_⟩
  have hmul : ε * ((2 * Real.pi) / ε) = 2 * Real.pi :=
    mul_div_cancel₀ _ hε
  calc
    ε * (λ - (λ + (2 * Real.pi) / ε)) =
        -(ε * ((2 * Real.pi) / ε)) := by ring
    _ = ((-1 : ℤ) : ℝ) * (2 * Real.pi) := by rw [hmul]; norm_num

/-- One real eigenphase channel cannot be injective for nonzero offset. -/
theorem one_channel_not_injective (ε : ℝ) (hε : ε ≠ 0) :
    ¬ Function.Injective (phase ε) := by
  intro hinj
  have hstep : (2 * Real.pi) / ε ≠ 0 :=
    div_ne_zero (mul_ne_zero (by norm_num) Real.pi_ne_zero) hε
  have heq := hinj (one_channel_alias ε 0 hε)
  have hz : (2 * Real.pi) / ε = 0 := by simpa using heq.symm
  exact hstep hz

/-- Two phase channels with one common eigenparameter and generator. -/
def twoChannel (ε₁ ε₂ λ : ℝ) : Circle × Circle :=
  (phase ε₁ λ, phase ε₂ λ)

/-- Two noncommensurate exact complex-phase observations distinguish every
real eigenparameter under a common generator and phase reference.

This theorem does not certify finite-precision stability or the original
zeta/Dirichlet arithmetic source return. -/
theorem two_channel_injective_of_irrational
    (ε₁ ε₂ : ℝ) (hε₂ : ε₂ ≠ 0)
    (hirr : Irrational (ε₁ / ε₂)) :
    Function.Injective (twoChannel ε₁ ε₂) := by
  intro λ μ hpair
  have h₁ : phase ε₁ λ = phase ε₁ μ := by
    simpa only [twoChannel] using congrArg Prod.fst hpair
  have h₂ : phase ε₂ λ = phase ε₂ μ := by
    simpa only [twoChannel] using congrArg Prod.snd hpair
  obtain ⟨k₁, hk₁⟩ := (phase_eq_iff_integer_period ε₁ λ μ).mp h₁
  obtain ⟨k₂, hk₂⟩ := (phase_eq_iff_integer_period ε₂ λ μ).mp h₂
  by_contra hne
  have hdelta : λ - μ ≠ 0 := sub_ne_zero.mpr hne
  have hk₂ne : (k₂ : ℝ) ≠ 0 := by
    intro hz
    have heq : ε₂ * (λ - μ) = 0 := by simpa [hz] using hk₂
    exact (mul_ne_zero hε₂ hdelta) heq
  have hperiod : (2 * Real.pi : ℝ) ≠ 0 :=
    mul_ne_zero (by norm_num) Real.pi_ne_zero
  have hcross_period :
      (ε₁ * (k₂ : ℝ)) * (2 * Real.pi) =
        (ε₂ * (k₁ : ℝ)) * (2 * Real.pi) := by
    calc
      (ε₁ * (k₂ : ℝ)) * (2 * Real.pi) =
          ε₁ * (ε₂ * (λ - μ)) := by rw [hk₂]; ring
      _ = ε₂ * (ε₁ * (λ - μ)) := by ring
      _ = (ε₂ * (k₁ : ℝ)) * (2 * Real.pi) := by rw [hk₁]; ring
  have hcross : ε₁ * (k₂ : ℝ) = ε₂ * (k₁ : ℝ) :=
    mul_right_cancel₀ hperiod hcross_period
  have hratio : ε₁ / ε₂ = (k₁ : ℝ) / (k₂ : ℝ) := by
    apply (div_eq_div_iff hε₂ hk₂ne).2
    simpa only [mul_comm] using hcross
  exact (hirr.ne_rational k₁ k₂) hratio

end GRWTSK.OperatorTheory.PrismaticEigenphase
