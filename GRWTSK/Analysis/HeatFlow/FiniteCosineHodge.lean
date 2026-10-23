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


/-- A source-independent integrated tail certificate. It does not assert
that the source function satisfies the integral bound: that is a separately
named hypothesis to be discharged for the literal theta kernel. -/
structure ExponentialTailIntegralCertificate
    (tailIntegral C c U : ℝ) where
  amplitude_nonneg : 0 ≤ C
  decay_positive : 0 < c
  tail_nonneg : 0 ≤ tailIntegral
  integral_le_budget :
    tailIntegral ≤ exponentialTailBudget C c U

/-- A certified integrated tail can be consumed without replacing its
analytic premise by a pointwise or algebraic bound. -/
theorem certified_integrated_tail_bound
    {tailIntegral C c U : ℝ}
    (cert : ExponentialTailIntegralCertificate tailIntegral C c U) :
    tailIntegral ≤ C * Real.exp (-(c * U)) / c :=
  cert.integral_le_budget

/-- A certified tail remains bounded by the larger budget when its
amplitude is increased or its cutoff is moved backwards. -/
theorem certified_integrated_tail_refinement
    {tailIntegral C D c U V : ℝ}
    (cert : ExponentialTailIntegralCertificate tailIntegral C c V)
    (hCD : C ≤ D) (hUV : U ≤ V) :
    tailIntegral ≤ exponentialTailBudget D c U :=
  cert.integral_le_budget.trans
    (exponentialTailBudget_refine C D c U V
      cert.amplitude_nonneg hCD cert.decay_positive hUV)


/-- The Gaussian mode heat factor has a uniform scalar bound on
nonnegative Hodge times. This is a real-domain finite statement, not
a claim about the entire xi kernel or complex zero transport. -/
theorem modeHeat_abs_le_one (s frequency : ℝ) (hs : 0 ≤ s) :
    |modeHeat s frequency| ≤ 1 := by
  rw [abs_of_pos (modeHeat_pos s frequency)]
  exact modeHeat_le_one s frequency hs

/-- A supplied coefficient enclosure transports through one damped
finite mode without amplification when Hodge time is nonnegative. -/
theorem coefficient_error_contracts
    (a b s frequency : ℝ) (hs : 0 ≤ s) :
    |coefficient a s frequency - coefficient b s frequency| ≤ |a - b| := by
  have hheat := modeHeat_abs_le_one s frequency hs
  have heq : coefficient a s frequency - coefficient b s frequency =
      (a - b) * modeHeat s frequency := by
    unfold coefficient
    ring
  rw [heq, abs_mul]
  calc
    |a - b| * |modeHeat s frequency| ≤ |a - b| * 1 := by
      exact mul_le_mul_of_nonneg_left hheat (abs_nonneg _)
    _ = |a - b| := by ring


/-- Real-axis two-mode coefficient perturbations are contractive at
nonnegative forward Hodge time. -/
theorem twoModeHeat_source_error_contracts
    (a b a' b' s u v z : ℝ) (hs : 0 ≤ s) :
    |twoModeHeat a b s u v z - twoModeHeat a' b' s u v z| ≤
      |a - a'| + |b - b'| := by
  rw [twoModeHeat_source_error]
  have h₁ :
      |(a - a') * modeHeat s u * Real.cos (z * u)| ≤ |a - a'| := by
    rw [abs_mul, abs_mul]
    have hc : |Real.cos (z * u)| ≤ 1 := Real.abs_cos_le_one _
    have hh := modeHeat_abs_le_one s u hs
    calc
      |a - a'| * |modeHeat s u| * |Real.cos (z * u)| ≤
          |a - a'| * |modeHeat s u| := by
            exact mul_le_of_le_one_right
              (mul_nonneg (abs_nonneg _) (abs_nonneg _)) hc
      _ ≤ |a - a'| := by
            nlinarith [mul_le_mul_of_nonneg_left hh (abs_nonneg (a - a'))]
  have h₂ :
      |(b - b') * modeHeat s v * Real.cos (z * v)| ≤ |b - b'| := by
    rw [abs_mul, abs_mul]
    have hc : |Real.cos (z * v)| ≤ 1 := Real.abs_cos_le_one _
    have hh := modeHeat_abs_le_one s v hs
    calc
      |b - b'| * |modeHeat s v| * |Real.cos (z * v)| ≤
          |b - b'| * |modeHeat s v| := by
            exact mul_le_of_le_one_right
              (mul_nonneg (abs_nonneg _) (abs_nonneg _)) hc
      _ ≤ |b - b'| := by
            nlinarith [mul_le_mul_of_nonneg_left hh (abs_nonneg (b - b'))]
  exact (abs_add_le _ _).trans (add_le_add h₁ h₂)


/-- The finite heat readout is Lipschitz in its two source coefficients
uniformly in nonnegative Hodge time and the real observation coordinate. -/
theorem twoModeHeat_source_lipschitz
    (a b a' b' s u v z L : ℝ)
    (hs : 0 ≤ s)
    (hsource : |a - a'| + |b - b'| ≤ L) :
    |twoModeHeat a b s u v z - twoModeHeat a' b' s u v z| ≤ L :=
  (twoModeHeat_source_error_contracts a b a' b' s u v z hs).trans hsource

/-- An independently certified source-to-coefficient error and a second
finite readout error combine without dropping either error contribution. -/
theorem twoModeHeat_source_and_readout_budget
    (a b a' b' s u v z target eSource eReadout : ℝ)
    (hs : 0 ≤ s)
    (hSource : |a - a'| + |b - b'| ≤ eSource)
    (hReadout : |twoModeHeat a' b' s u v z - target| ≤ eReadout) :
    |twoModeHeat a b s u v z - target| ≤ eSource + eReadout := by
  have h₁ := twoModeHeat_source_lipschitz
    a b a' b' s u v z eSource hs hSource
  have h₂ := abs_add_le
    (twoModeHeat a b s u v z - twoModeHeat a' b' s u v z)
    (twoModeHeat a' b' s u v z - target)
  have heq :
      (twoModeHeat a b s u v z - twoModeHeat a' b' s u v z) +
        (twoModeHeat a' b' s u v z - target) =
      twoModeHeat a b s u v z - target := by ring
  rw [heq] at h₂
  exact h₂.trans (add_le_add h₁ hReadout)


/-- A strictly positive decay rate yields an explicit cutoff at which
the exponential budget is no larger than the original amplitude.
This is an elementary normalization test, not a theta-tail integral. -/
theorem exponentialTailBudget_at_zero
    (C c : ℝ) (hc : 0 < c) :
    exponentialTailBudget C c 0 = C / c := by
  simp [exponentialTailBudget]

/-- Splitting a nonnegative tail budget into independently checked
components cannot make the total estimate smaller than either part. -/
theorem finiteHeatErrorBudget_source_le_total
    (e : FiniteHeatErrorBudget)
    (hq : 0 ≤ e.quadrature) (ht : 0 ≤ e.tail)
    (hr : 0 ≤ e.rounding) :
    e.source ≤ e.total := by
  unfold FiniteHeatErrorBudget.total
  linarith

/-- The omitted-tail contribution is not allowed to disappear from a
nonnegative complete error budget. -/
theorem finiteHeatErrorBudget_tail_le_total
    (e : FiniteHeatErrorBudget)
    (hs : 0 ≤ e.source) (hq : 0 ≤ e.quadrature)
    (hr : 0 ≤ e.rounding) :
    e.tail ≤ e.total := by
  unfold FiniteHeatErrorBudget.total
  linarith


/-- A source-independent finite analytic tail gate. Its proof does not
manufacture integrability: the literal theta-kernel supplier must prove
the pointwise decay and integral comparison separately. -/
structure ThetaTailSupplier (C c U : ℝ) where
  amplitude_nonneg : 0 ≤ C
  rate_positive : 0 < c
  cutoff_nonneg : 0 ≤ U
  thetaTail : ℝ
  tail_nonneg : 0 ≤ thetaTail
  tail_le_exponential : thetaTail ≤ exponentialTailBudget C c U

/-- Source and tail errors can be combined only when the source-specific
theta-tail estimate is actually supplied. -/
theorem thetaTailSupplier_combine
    (C c U sourceError : ℝ)
    (cert : ThetaTailSupplier C c U)
    (hsource : 0 ≤ sourceError) :
    sourceError + cert.thetaTail ≤
      sourceError + exponentialTailBudget C c U := by
  exact add_le_add_left cert.tail_le_exponential sourceError

/-- The supplied analytic tail is nonnegative, so it cannot improve
an absolute-error estimate by being silently subtracted. -/
theorem thetaTailSupplier_source_le_total
    (C c U sourceError : ℝ)
    (cert : ThetaTailSupplier C c U) :
    sourceError ≤ sourceError + cert.thetaTail := by
  linarith [cert.tail_nonneg]


/-- The elementary Gaussian theta summand has a positive exponential
factor. This is the first local ingredient of the actual theta-series
tail analysis; summability and the n-sum remain separate obligations. -/
def thetaGaussianSummand (n : ℕ) (u : ℝ) : ℝ :=
  Real.exp (-(Real.pi * (n : ℝ) ^ 2 * Real.exp (4 * u)))

theorem thetaGaussianSummand_pos (n : ℕ) (u : ℝ) :
    0 < thetaGaussianSummand n u := by
  unfold thetaGaussianSummand
  exact Real.exp_pos _

/-- Increasing the nonnegative mode index decreases the Gaussian factor
at any fixed real logarithmic height. -/
theorem thetaGaussianSummand_mode_antitone
    (m n : ℕ) (u : ℝ) (hmn : m ≤ n) :
    thetaGaussianSummand n u ≤ thetaGaussianSummand m u := by
  unfold thetaGaussianSummand
  apply Real.exp_le_exp.mpr
  have hmnR : (m : ℝ) ≤ n := by exact_mod_cast hmn
  have hm : 0 ≤ (m : ℝ) := Nat.cast_nonneg _
  have he : 0 < Real.exp (4 * u) := Real.exp_pos _
  have hp : 0 < Real.pi := Real.pi_pos
  nlinarith [sq_nonneg ((n : ℝ) - m)]


/-- The literal n-th summand of the theta kernel in the selected
Rodgers–Tao normalization. The infinite sum and its analytic decay
are not inferred from this finite definition. -/
def thetaKernelTerm (n : ℕ) (u : ℝ) : ℝ :=
  (2 * Real.pi ^ 2 * (n : ℝ) ^ 4 * Real.exp (9 * u) -
    3 * Real.pi * (n : ℝ) ^ 2 * Real.exp (5 * u)) *
    thetaGaussianSummand n u

/-- The zeroth term vanishes; the actual theta kernel sums n≥1. -/
@[simp] theorem thetaKernelTerm_zero (u : ℝ) :
    thetaKernelTerm 0 u = 0 := by
  simp [thetaKernelTerm]

/-- A source-exact algebraic expansion retains both polynomial factors
and the common Gaussian, rather than replacing the theta summand by
the Gaussian alone. -/
theorem thetaKernelTerm_expansion (n : ℕ) (u : ℝ) :
    thetaKernelTerm n u =
      2 * Real.pi ^ 2 * (n : ℝ) ^ 4 * Real.exp (9 * u) *
        thetaGaussianSummand n u -
      3 * Real.pi * (n : ℝ) ^ 2 * Real.exp (5 * u) *
        thetaGaussianSummand n u := by
  unfold thetaKernelTerm
  ring


/-- The positive and negative polynomial-weighted pieces of the literal
theta summand are separately nonnegative at every real logarithmic height. -/
def thetaKernelPositivePart (n : ℕ) (u : ℝ) : ℝ :=
  2 * Real.pi ^ 2 * (n : ℝ) ^ 4 * Real.exp (9 * u) *
    thetaGaussianSummand n u

def thetaKernelNegativePart (n : ℕ) (u : ℝ) : ℝ :=
  3 * Real.pi * (n : ℝ) ^ 2 * Real.exp (5 * u) *
    thetaGaussianSummand n u

theorem thetaKernelPositivePart_nonneg (n : ℕ) (u : ℝ) :
    0 ≤ thetaKernelPositivePart n u := by
  unfold thetaKernelPositivePart
  positivity

theorem thetaKernelNegativePart_nonneg (n : ℕ) (u : ℝ) :
    0 ≤ thetaKernelNegativePart n u := by
  unfold thetaKernelNegativePart
  positivity

/-- The exact signed theta term splits into two nonnegative pieces.
Absolute-value and summability estimates may therefore be derived from
the separate pieces without assuming that the signed term is positive. -/
theorem thetaKernelTerm_split (n : ℕ) (u : ℝ) :
    thetaKernelTerm n u =
      thetaKernelPositivePart n u - thetaKernelNegativePart n u := by
  unfold thetaKernelTerm thetaKernelPositivePart thetaKernelNegativePart
  ring

/-- Source-exact absolute bound for one polynomial-weighted theta term. -/
theorem thetaKernelTerm_abs_le_parts (n : ℕ) (u : ℝ) :
    |thetaKernelTerm n u| ≤
      thetaKernelPositivePart n u + thetaKernelNegativePart n u := by
  rw [thetaKernelTerm_split]
  have hp := thetaKernelPositivePart_nonneg n u
  have hn := thetaKernelNegativePart_nonneg n u
  exact abs_sub_le _ _ |>.trans_eq (by
    rw [abs_of_nonneg hp, abs_of_nonneg hn])


/-- A finite theta-kernel truncation at the first N positive modes.
This definition has no hidden infinite-series or convergence premise. -/
def thetaKernelPartialSum (N : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, thetaKernelTerm n u

/-- The matching nonnegative finite majorant. -/
def thetaKernelPartialMajorant (N : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    (thetaKernelPositivePart n u + thetaKernelNegativePart n u)

/-- The finite majorant is nonnegative at every real height. -/
theorem thetaKernelPartialMajorant_nonneg (N : ℕ) (u : ℝ) :
    0 ≤ thetaKernelPartialMajorant N u := by
  unfold thetaKernelPartialMajorant
  apply Finset.sum_nonneg
  intro n hn
  exact add_nonneg (thetaKernelPositivePart_nonneg n u)
    (thetaKernelNegativePart_nonneg n u)

/-- Exact finite source-specific majorization. No summability theorem is
needed for this finite statement, and no infinite tail is suppressed. -/
theorem thetaKernelPartialSum_abs_le (N : ℕ) (u : ℝ) :
    |thetaKernelPartialSum N u| ≤ thetaKernelPartialMajorant N u := by
  unfold thetaKernelPartialSum thetaKernelPartialMajorant
  calc
    |∑ n ∈ Finset.Icc 1 N, thetaKernelTerm n u| ≤
        ∑ n ∈ Finset.Icc 1 N, |thetaKernelTerm n u| := by
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 N,
        (thetaKernelPositivePart n u + thetaKernelNegativePart n u) := by
          apply Finset.sum_le_sum
          intro n hn
          exact thetaKernelTerm_abs_le_parts n u


/-- An explicit uniform majorant supplier for the finite theta partial
sums. This is a typed conditional hypothesis, not a derived Gaussian
series estimate. -/
structure ThetaUniformMajorant (B : ℝ → ℝ) where
  bound_nonneg : ∀ u, 0 ≤ B u
  finite_bound : ∀ N u, thetaKernelPartialMajorant N u ≤ B u

/-- A genuine uniform majorant, once supplied, controls every finite
theta truncation at the same real logarithmic height. -/
theorem thetaKernelPartialSum_uniform_bound
    (B : ℝ → ℝ) (cert : ThetaUniformMajorant B)
    (N : ℕ) (u : ℝ) :
    |thetaKernelPartialSum N u| ≤ B u :=
  (thetaKernelPartialSum_abs_le N u).trans (cert.finite_bound N u)

/-- The finite majorant increases as more positive-mode terms are added.
This is a monotonicity property of the finite sums, not a proof that
their infinite supremum is finite. -/
theorem thetaKernelPartialMajorant_mono
    (N M : ℕ) (u : ℝ) (hNM : N ≤ M) :
    thetaKernelPartialMajorant N u ≤ thetaKernelPartialMajorant M u := by
  unfold thetaKernelPartialMajorant
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · exact Finset.Icc_subset_Icc_right hNM
  · intro n hn hnot
    exact add_nonneg (thetaKernelPositivePart_nonneg n u)
      (thetaKernelNegativePart_nonneg n u)


/-- A Gaussian factor absorbs any fixed polynomial factor in one mode.
This is a source-level exact factorization, not a uniform n-series
estimate. -/
def thetaScaledGaussian (n : ℕ) (u : ℝ) : ℝ :=
  (n : ℝ) ^ 2 * Real.exp (4 * u)

theorem thetaGaussianSummand_scaled (n : ℕ) (u : ℝ) :
    thetaGaussianSummand n u =
      Real.exp (-(Real.pi * thetaScaledGaussian n u)) := by
  simp [thetaGaussianSummand, thetaScaledGaussian, pow_two]
  ring

/-- The scaled Gaussian variable is nonnegative at every real height. -/
theorem thetaScaledGaussian_nonneg (n : ℕ) (u : ℝ) :
    0 ≤ thetaScaledGaussian n u := by
  unfold thetaScaledGaussian
  positivity

/-- The exact positive theta summand is a polynomial in the scaled
Gaussian variable times a remaining positive exponential weight.
The equality exposes the variable needed for a future uniform bound. -/
theorem thetaKernelPositivePart_scaled (n : ℕ) (u : ℝ) :
    thetaKernelPositivePart n u =
      2 * Real.pi ^ 2 * (thetaScaledGaussian n u) ^ 2 *
        Real.exp u * Real.exp (-(Real.pi * thetaScaledGaussian n u)) := by
  rw [thetaKernelPositivePart, thetaGaussianSummand_scaled]
  unfold thetaScaledGaussian
  rw [← Real.exp_add]
  ring


/-- The negative polynomial-weighted theta term admits the same scaled
Gaussian variable as the positive term. -/
theorem thetaKernelNegativePart_scaled (n : ℕ) (u : ℝ) :
    thetaKernelNegativePart n u =
      3 * Real.pi * thetaScaledGaussian n u *
        Real.exp u * Real.exp (-(Real.pi * thetaScaledGaussian n u)) := by
  rw [thetaKernelNegativePart, thetaGaussianSummand_scaled]
  unfold thetaScaledGaussian
  rw [← Real.exp_add]
  ring

/-- Both signed theta components share the same Gaussian variable.
This exact finite identity exposes the polynomial envelope required
before any uniform summability or tail-integral theorem. -/
theorem thetaKernelTerm_scaled (n : ℕ) (u : ℝ) :
    thetaKernelTerm n u =
      Real.exp u *
        (2 * Real.pi ^ 2 * (thetaScaledGaussian n u) ^ 2 -
          3 * Real.pi * thetaScaledGaussian n u) *
        Real.exp (-(Real.pi * thetaScaledGaussian n u)) := by
  rw [thetaKernelTerm_split, thetaKernelPositivePart_scaled,
    thetaKernelNegativePart_scaled]
  ring


/-- Exact polynomial factor in the scaled Gaussian theta summand. -/
def thetaScaledPolynomial (q : ℝ) : ℝ :=
  2 * Real.pi ^ 2 * q ^ 2 - 3 * Real.pi * q

/-- The signed polynomial factor is bounded by its positive-term
envelope for nonnegative scaled Gaussian variable. -/
theorem thetaScaledPolynomial_abs_bound (q : ℝ) (hq : 0 ≤ q) :
    |thetaScaledPolynomial q| ≤
      2 * Real.pi ^ 2 * q ^ 2 + 3 * Real.pi * q := by
  unfold thetaScaledPolynomial
  have hp : 0 ≤ 2 * Real.pi ^ 2 * q ^ 2 := by positivity
  have hn : 0 ≤ 3 * Real.pi * q := by positivity
  exact (abs_sub_le _ _).trans_eq
    (by rw [abs_of_nonneg hp, abs_of_nonneg hn])

/-- The scaled polynomial times Gaussian is the exact source term
apart from the positive outer exp(u) factor. -/
theorem thetaKernelTerm_scaledPolynomial (n : ℕ) (u : ℝ) :
    thetaKernelTerm n u =
      Real.exp u * thetaScaledPolynomial (thetaScaledGaussian n u) *
        Real.exp (-(Real.pi * thetaScaledGaussian n u)) := by
  rw [thetaKernelTerm_scaled]
  rfl


/-- A quantitative Gaussian-envelope supplier for the polynomial factor.
The crucial inequality is deliberately an explicit premise until proved
from the exponential function, rather than an invented theorem. -/
structure ScaledGaussianEnvelope (K : ℝ) where
  constant_nonneg : 0 ≤ K
  bound : ∀ q : ℝ, 0 ≤ q →
    (q ^ 2 + q) * Real.exp (-(Real.pi * q)) ≤
      K * Real.exp (-(Real.pi / 2 * q))

/-- A supplied polynomial-Gaussian envelope controls the source's
unsigned scaled factor, preserving the exact pi coefficients. -/
theorem thetaScaledPolynomial_gaussian_bound
    (K q : ℝ) (cert : ScaledGaussianEnvelope K) (hq : 0 ≤ q) :
    |thetaScaledPolynomial q| * Real.exp (-(Real.pi * q)) ≤
      (2 * Real.pi ^ 2 + 3 * Real.pi) * K *
        Real.exp (-(Real.pi / 2 * q)) := by
  have hpoly := thetaScaledPolynomial_abs_bound q hq
  have hcoef : 0 ≤ 2 * Real.pi ^ 2 + 3 * Real.pi := by positivity
  have hq2 : 0 ≤ q ^ 2 := sq_nonneg q
  have hweight :
      2 * Real.pi ^ 2 * q ^ 2 + 3 * Real.pi * q ≤
        (2 * Real.pi ^ 2 + 3 * Real.pi) * (q ^ 2 + q) := by
    nlinarith [Real.pi_pos]
  calc
    |thetaScaledPolynomial q| * Real.exp (-(Real.pi * q)) ≤
      (2 * Real.pi ^ 2 * q ^ 2 + 3 * Real.pi * q) *
        Real.exp (-(Real.pi * q)) := by
          exact mul_le_mul_of_nonneg_right hpoly (Real.exp_pos _).le
    _ ≤ (2 * Real.pi ^ 2 + 3 * Real.pi) * (q ^ 2 + q) *
        Real.exp (-(Real.pi * q)) := by
          exact mul_le_mul_of_nonneg_right hweight (Real.exp_pos _).le
    _ ≤ (2 * Real.pi ^ 2 + 3 * Real.pi) * K *
        Real.exp (-(Real.pi / 2 * q)) := by
          nlinarith [mul_le_mul_of_nonneg_left (cert.bound q hq) hcoef]


/-- An elementary exponential envelope for a nonnegative variable.
This candidate uses the quadratic Taylor lower bound for exp(x/4)
and keeps a nonoptimal constant to avoid a sharp-optimization premise. -/
theorem polynomial_exponential_envelope (x : ℝ) (hx : 0 ≤ x) :
    (x ^ 2 + x) * Real.exp (-x) ≤
      20 * Real.exp (-(x / 2)) := by
  have hx4 : 0 ≤ x / 4 := by positivity
  have hExpLower := add_one_le_exp (x / 4)
  have hEone : 1 ≤ Real.exp (x / 4) := by linarith
  have hlinear : x ≤ 4 * Real.exp (x / 4) := by linarith
  have hsquare : x ^ 2 ≤ 16 * Real.exp (x / 4) ^ 2 := by
    have hdiff : 0 ≤ 4 * Real.exp (x / 4) - x := by linarith
    nlinarith [mul_nonneg hdiff (by
      linarith : 0 ≤ 4 * Real.exp (x / 4) + x)]
  have hEminus : 0 ≤ Real.exp (x / 4) - 1 := by linarith
  have hEsquare : Real.exp (x / 4) ≤ Real.exp (x / 4) ^ 2 := by
    nlinarith [mul_nonneg hEminus (Real.exp_pos (x / 4)).le]
  have hlinearSquare : x ≤ 4 * Real.exp (x / 4) ^ 2 := by
    linarith
  have hpoly : x ^ 2 + x ≤ 20 * Real.exp (x / 4) ^ 2 := by
    linarith
  have hexp : Real.exp (x / 4) ^ 2 = Real.exp (x / 2) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [hexp] at hpoly
  have hmul := mul_le_mul_of_nonneg_right hpoly (Real.exp_pos (-x)).le
  have hid : Real.exp (x / 2) * Real.exp (-x) =
      Real.exp (-(x / 2)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    (x ^ 2 + x) * Real.exp (-x) ≤
        20 * Real.exp (x / 2) * Real.exp (-x) := hmul
    _ = 20 * Real.exp (-(x / 2)) := by rw [mul_assoc, hid]

end

end GRWTSK.Analysis.HeatFlow.FiniteCosineHodge
