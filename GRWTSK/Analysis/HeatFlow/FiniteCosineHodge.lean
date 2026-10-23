/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization proposal: OpenAI ChatGPT.
Mathlib's upstream authors and license remain unchanged. -/
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite Hodge heat: elementary two-mode boundary identities

This source-only research candidate supplies an exact, bounded finite scalar
interface to the de Bruijn–Newman heat mechanism. Its main proofs are algebraic
and retain all supplied data. It neither constructs the zeta theta kernel nor
identifies the finite diagonal model with the contact-complex sheaf Laplacian
or an infinite Connes spectral triple. Finite-dimensional positivity alone
does not control the zeros of an entire cosine transform.

The claimed differentiation/semigroup formulae below are candidate Lean proofs;
they have not been compiled or independently kernel-audited.
-/

namespace GRWTSK.Analysis.HeatFlow.FiniteCosineHodge

noncomputable section

/-- The finite frequency-squared multiplier is nonnegative. -/
def modeLaplacian (frequency : ℝ) : ℝ := frequency ^ 2

theorem modeLaplacian_nonneg (frequency : ℝ) :
    0 ≤ modeLaplacian frequency := by
  unfold modeLaplacian
  positivity

/-- A heat multiplier at forward Hodge time s, corresponding to de Bruijn time -s. -/
def modeHeat (s frequency : ℝ) : ℝ :=
  Real.exp (-(s * modeLaplacian frequency))

/-- Exact zero-time identity. -/
@[simp] theorem modeHeat_zero (frequency : ℝ) :
    modeHeat 0 frequency = 1 := by
  simp [modeHeat]

/-- Exact finite-mode semigroup law. -/
theorem modeHeat_add (s r frequency : ℝ) :
    modeHeat (s + r) frequency =
      modeHeat s frequency * modeHeat r frequency := by
  unfold modeHeat
  rw [← Real.exp_add]
  congr 1
  ring

/-- Mode damping is strictly positive regardless of the sign of time. -/
theorem modeHeat_pos (s frequency : ℝ) :
    0 < modeHeat s frequency := by
  unfold modeHeat
  exact Real.exp_pos _

/-- For nonnegative forward time, every scalar mode is contractive. -/
theorem modeHeat_le_one (s frequency : ℝ) (hs : 0 ≤ s) :
    modeHeat s frequency ≤ 1 := by
  unfold modeHeat
  apply Real.exp_le_one_iff.mpr
  have hf : 0 ≤ modeLaplacian frequency :=
    modeLaplacian_nonneg frequency
  nlinarith

/-- Source-independent, exact finite heat coefficient. -/
def coefficient (a s frequency : ℝ) : ℝ :=
  a * modeHeat s frequency

@[simp] theorem coefficient_zero (a frequency : ℝ) :
    coefficient a 0 frequency = a := by
  simp [coefficient]

/-- Heat evolution and coefficient scaling commute in each individual mode. -/
theorem coefficient_time_add (a s r frequency : ℝ) :
    coefficient a (s + r) frequency =
      coefficient (coefficient a s frequency) r frequency := by
  simp only [coefficient, modeHeat_add]
  ring

/-- Source-identified two-mode finite stand-in: no xi identification is asserted. -/
def twoModeHeat (a b s u v z : ℝ) : ℝ :=
  coefficient a s u * Real.cos (z * u) +
  coefficient b s v * Real.cos (z * v)

/-- Zero-time normalization is independent of positive or signed coefficients. -/
theorem twoModeHeat_zero (a b u v z : ℝ) :
    twoModeHeat a b 0 u v z =
      a * Real.cos (z * u) + b * Real.cos (z * v) := by
  simp [twoModeHeat]

/-- The finite cosine readout is even in the observation coordinate. -/
theorem twoModeHeat_even (a b s u v z : ℝ) :
    twoModeHeat a b s u v (-z) =
      twoModeHeat a b s u v z := by
  simp [twoModeHeat, Real.cos_neg, neg_mul]

/-- Two-mode quadrature is still a supplied-coefficient finite object. -/
theorem twoModeHeat_source_separation
    (a b s u v z : ℝ)
    (sourceIdentity : twoModeHeat a b s u v z =
      a * modeHeat s u * Real.cos (z * u) +
      b * modeHeat s v * Real.cos (z * v)) :
    twoModeHeat a b s u v z =
      a * modeHeat s u * Real.cos (z * u) +
      b * modeHeat s v * Real.cos (z * v) :=
  sourceIdentity

end

end GRWTSK.Analysis.HeatFlow.FiniteCosineHodge
