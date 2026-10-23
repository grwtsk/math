/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
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


/-- Exact scalar two-mode source error under a common readout. -/
theorem twoModeHeat_source_error
    (a b a' b' s u v z : ℝ) :
    twoModeHeat a b s u v z - twoModeHeat a' b' s u v z =
      (a - a') * modeHeat s u * Real.cos (z * u) +
      (b - b') * modeHeat s v * Real.cos (z * v) := by
  unfold twoModeHeat coefficient
  ring

/-- A finite source approximation is bounded by its two coefficient errors,
without assuming cancellation or any zeta-kernel identification. -/
theorem twoModeHeat_source_error_bound
    (a b a' b' s u v z e₁ e₂ : ℝ)
    (h₁ : |(a - a') * modeHeat s u * Real.cos (z * u)| ≤ e₁)
    (h₂ : |(b - b') * modeHeat s v * Real.cos (z * v)| ≤ e₂) :
    |twoModeHeat a b s u v z - twoModeHeat a' b' s u v z| ≤ e₁ + e₂ := by
  rw [twoModeHeat_source_error]
  exact (abs_add_le _ _).trans (add_le_add h₁ h₂)


/-- Exact source identity: unlike the earlier supplied-identity wrapper, this
theorem derives the coefficient readout directly from the definitions. -/
theorem twoModeHeat_source_identity (a b s u v z : ℝ) :
    twoModeHeat a b s u v z =
      a * modeHeat s u * Real.cos (z * u) +
      b * modeHeat s v * Real.cos (z * v) := by
  unfold twoModeHeat coefficient
  ring

/-- Two independent approximation stages accumulate their finite source errors.
No cancellation or theta-kernel identification is assumed. -/
theorem twoModeHeat_two_stage_bound
    (a b a' b' a'' b'' s u v z e₁ e₂ : ℝ)
    (h₁ : |twoModeHeat a b s u v z -
        twoModeHeat a' b' s u v z| ≤ e₁)
    (h₂ : |twoModeHeat a' b' s u v z -
        twoModeHeat a'' b'' s u v z| ≤ e₂) :
    |twoModeHeat a b s u v z -
        twoModeHeat a'' b'' s u v z| ≤ e₁ + e₂ := by
  have h := abs_add_le
    (twoModeHeat a b s u v z - twoModeHeat a' b' s u v z)
    (twoModeHeat a' b' s u v z - twoModeHeat a'' b'' s u v z)
  have heq :
      (twoModeHeat a b s u v z - twoModeHeat a' b' s u v z) +
        (twoModeHeat a' b' s u v z - twoModeHeat a'' b'' s u v z) =
      twoModeHeat a b s u v z - twoModeHeat a'' b'' s u v z := by ring
  rw [heq] at h
  exact h.trans (add_le_add h₁ h₂)


/-- A mode's forward Hodge-time derivative is minus its Laplacian eigenvalue
times the mode. This is the finite generator relation, not a theta-kernel
or infinite-dimensional intertwining statement. -/
theorem hasDerivAt_modeHeat (s frequency : ℝ) :
    HasDerivAt (fun t : ℝ => modeHeat t frequency)
      (-(modeLaplacian frequency) * modeHeat s frequency) s := by
  unfold modeHeat
  convert (Real.hasDerivAt_exp (-(s * modeLaplacian frequency))).comp s
    ((hasDerivAt_id s).mul_const (-(modeLaplacian frequency))) using 1 <;> ring

/-- The scalar heat coefficient satisfies the exact finite generator ODE. -/
theorem hasDerivAt_coefficient (a s frequency : ℝ) :
    HasDerivAt (fun t : ℝ => coefficient a t frequency)
      (-(modeLaplacian frequency) * coefficient a s frequency) s := by
  convert (hasDerivAt_modeHeat s frequency).const_mul a using 1 <;>
    simp [coefficient] <;> ring


/-- Spatial derivative of one finite cosine mode. -/
theorem hasDerivAt_cosineMode (a s u z : ℝ) :
    HasDerivAt (fun x : ℝ => coefficient a s u * Real.cos (x * u))
      (-(coefficient a s u * u * Real.sin (z * u))) z := by
  convert ((Real.hasDerivAt_cos (z * u)).comp z
    ((hasDerivAt_id z).mul_const u)).const_mul (coefficient a s u) using 1 <;>
    ring

/-- Spatial derivative of the corresponding sine mode. -/
theorem hasDerivAt_sineMode (a s u z : ℝ) :
    HasDerivAt (fun x : ℝ => coefficient a s u * u * Real.sin (x * u))
      (coefficient a s u * u ^ 2 * Real.cos (z * u)) z := by
  convert ((Real.hasDerivAt_sin (z * u)).comp z
    ((hasDerivAt_id z).mul_const u)).const_mul (coefficient a s u * u) using 1 <;>
    ring

/-- Time derivative of a single finite cosine mode. -/
theorem hasDerivAt_timeCosineMode (a s u z : ℝ) :
    HasDerivAt (fun t : ℝ => coefficient a t u * Real.cos (z * u))
      (-(modeLaplacian u) * coefficient a s u * Real.cos (z * u)) s := by
  convert (hasDerivAt_coefficient a s u).mul_const (Real.cos (z * u))
    using 1 <;> ring

/-- The two-mode readout satisfies the finite time generator equation. -/
theorem hasDerivAt_twoModeHeat_time (a b s u v z : ℝ) :
    HasDerivAt (fun t : ℝ => twoModeHeat a b t u v z)
      (-(u ^ 2) * coefficient a s u * Real.cos (z * u) -
        (v ^ 2) * coefficient b s v * Real.cos (z * v)) s := by
  convert (hasDerivAt_timeCosineMode a s u z).add
    (hasDerivAt_timeCosineMode b s v z) using 1 <;>
    simp [twoModeHeat, modeLaplacian] <;> ring


/-- The first spatial derivative of the two-mode readout is a sine sum. -/
theorem hasDerivAt_twoModeHeat_space (a b s u v z : ℝ) :
    HasDerivAt (fun x : ℝ => twoModeHeat a b s u v x)
      (-(coefficient a s u * u * Real.sin (z * u)) -
        coefficient b s v * v * Real.sin (z * v)) z := by
  convert (hasDerivAt_cosineMode a s u z).add
    (hasDerivAt_cosineMode b s v z) using 1 <;>
    simp [twoModeHeat] <;> ring

/-- Exact second spatial derivative of the finite cosine readout. -/
theorem hasDerivAt_twoModeHeat_space_derivative (a b s u v z : ℝ) :
    HasDerivAt
      (fun x : ℝ =>
        -(coefficient a s u * u * Real.sin (x * u)) -
          coefficient b s v * v * Real.sin (x * v))
      (-(u ^ 2) * coefficient a s u * Real.cos (z * u) -
        (v ^ 2) * coefficient b s v * Real.cos (z * v)) z := by
  convert ((hasDerivAt_sineMode a s u z).neg).add
    ((hasDerivAt_sineMode b s v z).neg) using 1 <;> ring

/-- The exact finite forward Hodge heat equation, expressed without a
global analytic xi source or a second-derivative library coercion. -/
theorem twoModeHeat_finite_heat_equation (a b s u v z : ℝ) :
    deriv (fun t : ℝ => twoModeHeat a b t u v z) s =
      deriv (fun x : ℝ =>
        -(coefficient a s u * u * Real.sin (x * u)) -
          coefficient b s v * v * Real.sin (x * v)) z := by
  rw [(hasDerivAt_twoModeHeat_time a b s u v z).deriv,
    (hasDerivAt_twoModeHeat_space_derivative a b s u v z).deriv]


/-- A quantitative finite error budget, with source and quadrature defects
kept separate from the omitted tail and rounding. -/
structure FiniteHeatErrorBudget where
  source : ℝ
  quadrature : ℝ
  tail : ℝ
  rounding : ℝ

/-- The sum of all four named errors. -/
def FiniteHeatErrorBudget.total (e : FiniteHeatErrorBudget) : ℝ :=
  e.source + e.quadrature + e.tail + e.rounding

/-- A finite chain of independently bounded errors yields the complete
four-term estimate. No term is silently discarded. -/
theorem finiteHeatErrorBudget_bound
    (actual sourceApprox quadratureApprox truncated rounded : ℝ)
    (e : FiniteHeatErrorBudget)
    (hs : |actual - sourceApprox| ≤ e.source)
    (hq : |sourceApprox - quadratureApprox| ≤ e.quadrature)
    (ht : |quadratureApprox - truncated| ≤ e.tail)
    (hr : |truncated - rounded| ≤ e.rounding) :
    |actual - rounded| ≤ e.total := by
  have h₁ := (abs_add_le (actual - sourceApprox)
    (sourceApprox - quadratureApprox)).trans (add_le_add hs hq)
  have h₂ := (abs_add_le (quadratureApprox - truncated)
    (truncated - rounded)).trans (add_le_add ht hr)
  have h := (abs_add_le (actual - quadratureApprox)
    (quadratureApprox - rounded))
  have heq₁ : (actual - sourceApprox) +
      (sourceApprox - quadratureApprox) = actual - quadratureApprox := by ring
  have heq₂ : (quadratureApprox - truncated) +
      (truncated - rounded) = quadratureApprox - rounded := by ring
  rw [heq₁] at h₁
  rw [heq₂] at h₂
  have heq : (actual - quadratureApprox) +
      (quadratureApprox - rounded) = actual - rounded := by ring
  rw [heq] at h
  exact h.trans (add_le_add h₁ h₂) |>.trans_eq (by
    unfold FiniteHeatErrorBudget.total
    ring)


/-- The cutoff tail bound for a real cosine kernel. Unlike a generic
four-term budget, this derives an explicit tail from a pointwise
theta-kernel majorant, with the source function retained as a parameter. -/
theorem finiteCosineTailBound
    (Φ : ℝ → ℝ) (s z U B : ℝ)
    (hU : 0 ≤ U) (hs : 0 ≤ s)
    (hmajor : ∀ u, U ≤ u → |Φ u| ≤ B)
    (hB : 0 ≤ B) :
    ∀ u, U ≤ u →
      |Real.exp (-(s * u ^ 2)) * Φ u * Real.cos (z * u)| ≤ B := by
  intro u hu
  have hheat : Real.exp (-(s * u ^ 2)) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    have : 0 ≤ u ^ 2 := sq_nonneg u
    nlinarith
  have hpos : 0 ≤ Real.exp (-(s * u ^ 2)) := (Real.exp_pos _).le
  calc
    |Real.exp (-(s * u ^ 2)) * Φ u * Real.cos (z * u)| =
        Real.exp (-(s * u ^ 2)) * |Φ u| * |Real.cos (z * u)| := by
          rw [abs_mul, abs_mul, abs_of_nonneg hpos]
    _ ≤ Real.exp (-(s * u ^ 2)) * |Φ u| := by
          apply mul_le_mul_of_nonneg_left
          · exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _)
          · exact hpos
    _ ≤ B := by
          calc
            Real.exp (-(s * u ^ 2)) * |Φ u| ≤ 1 * |Φ u| := by
              exact mul_le_mul_of_nonneg_right hheat (abs_nonneg _)
            _ ≤ B := by simpa using hmajor u hu


/-- A genuinely decaying majorant for the real finite heat integrand.
This remains conditional on a supplied exponential kernel bound and
does not assert that the actual theta kernel has yet been identified. -/
theorem finiteCosineExponentialMajorant
    (Φ : ℝ → ℝ) (s z u C c : ℝ)
    (hs : 0 ≤ s) (hC : 0 ≤ C) (hc : 0 ≤ c)
    (hkernel : |Φ u| ≤ C * Real.exp (-(c * u))) :
    |Real.exp (-(s * u ^ 2)) * Φ u * Real.cos (z * u)| ≤
      C * Real.exp (-(c * u)) := by
  have hheat : Real.exp (-(s * u ^ 2)) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    nlinarith [sq_nonneg u]
  have hpos : 0 ≤ Real.exp (-(s * u ^ 2)) :=
    (Real.exp_pos _).le
  calc
    |Real.exp (-(s * u ^ 2)) * Φ u * Real.cos (z * u)| =
        Real.exp (-(s * u ^ 2)) * |Φ u| * |Real.cos (z * u)| := by
          rw [abs_mul, abs_mul, abs_of_nonneg hpos]
    _ ≤ Real.exp (-(s * u ^ 2)) * |Φ u| := by
          apply mul_le_mul_of_nonneg_left
          · exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _)
          · exact hpos
    _ ≤ C * Real.exp (-(c * u)) := by
          calc
            Real.exp (-(s * u ^ 2)) * |Φ u| ≤ 1 * |Φ u| := by
              exact mul_le_mul_of_nonneg_right hheat (abs_nonneg _)
            _ ≤ C * Real.exp (-(c * u)) := by
              simpa using hkernel


/-- Explicit positive-rate exponential tail budget. The identity is algebraic;
a separate analytic integral comparison must show that this budget controls
the actual theta-kernel tail. -/
def exponentialTailBudget (C c U : ℝ) : ℝ :=
  C * Real.exp (-(c * U)) / c

/-- The exponential tail budget is nonnegative for positive rate and
nonnegative amplitude. -/
theorem exponentialTailBudget_nonneg
    (C c U : ℝ) (hC : 0 ≤ C) (hc : 0 < c) :
    0 ≤ exponentialTailBudget C c U := by
  unfold exponentialTailBudget
  positivity

/-- The cutoff budget is monotone: a later cutoff has no larger
exponential majorant, provided the decay rate is strictly positive. -/
theorem exponentialTailBudget_antitone
    (C c U V : ℝ) (hC : 0 ≤ C) (hc : 0 < c)
    (hUV : U ≤ V) :
    exponentialTailBudget C c V ≤ exponentialTailBudget C c U := by
  unfold exponentialTailBudget
  apply div_le_div_of_nonneg_right _ hc.le
  apply mul_le_mul_of_nonneg_left _ hC
  apply Real.exp_le_exp.mpr
  nlinarith


/-- The exponential tail budget is stable under increasing the declared
amplitude bound. This is a source-parameter comparison, not an integral
estimate or a proof of theta-kernel decay. -/
theorem exponentialTailBudget_amplitude_mono
    (C D c U : ℝ) (hCD : C ≤ D) (hc : 0 < c) :
    exponentialTailBudget C c U ≤ exponentialTailBudget D c U := by
  unfold exponentialTailBudget
  apply div_le_div_of_nonneg_right _ hc.le
  exact mul_le_mul_of_nonneg_right hCD (Real.exp_pos _).le

/-- A finite cutoff enlargement and an improved amplitude bound can be
composed without losing either hypothesis. -/
theorem exponentialTailBudget_refine
    (C D c U V : ℝ)
    (hC : 0 ≤ C) (hCD : C ≤ D) (hc : 0 < c)
    (hUV : U ≤ V) :
    exponentialTailBudget C c V ≤ exponentialTailBudget D c U := by
  exact (exponentialTailBudget_antitone C c U V hC hc hUV).trans
    (exponentialTailBudget_amplitude_mono C D c U hCD hc)

end

end GRWTSK.Analysis.HeatFlow.FiniteCosineHodge
