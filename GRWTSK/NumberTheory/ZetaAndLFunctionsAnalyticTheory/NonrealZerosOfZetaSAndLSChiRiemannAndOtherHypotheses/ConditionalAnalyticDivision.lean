/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalZeroFree
import GRWTSK.FunctionsOfAComplexVariable.ReciprocalStability
import Mathlib.Analysis.Calculus.Deriv.Inv

set_option autoImplicit false

noncomputable section

/-!
# Analytic division under explicit RH and Dirichlet-GRH hypotheses

A zero-free analytic denominator is a unit locally: the reciprocal and any
holomorphic numerator divided by it remain holomorphic. The derivative formula
is returned with its full squared denominator. At each point there is exactly
one solution of L(s) u = y. On a fixed compact subset, the actual continuous
norm has a positive lower bound, which can be used by residual certificates.

The zeta domain omits s = 1 even though Lean assigns a totalized value there.
For nonprincipal Dirichlet characters, s = 1 is retained: both analyticity and
nonvanishing there come from upstream results, not a fake removable pole.
No analytic extension through a zero or the principal pole is claimed.

Primary argument: the previous module supplies nonvanishing with exact scope;
Mathlib supplies analytic continuation and the derivative-of-inverse rule.
The separate compact argument supplies only an existential, region-dependent
margin. Numerical rates, certified enclosures, and uniform conductor estimates
are not supplied by that existence statement. Consumers: sampled reconstruction
and finite Euler-factor transport. Upstream objects and pins are recorded in
ConditionalZeroFree. Elementary consequences; novelty not claimed.
AI-assisted formalization. Independent review, compilation, fresh kernel check,
transitive axiom audit: NOT_RUN. Target: leanprover/lean4:v4.34.1;
dependency versions unchanged.
-/

namespace GRWTSK.NumberTheory.Conditional

/-- The zero-free right half-plane, with the actual zeta pole removed. -/
def zetaDomain : Set ℂ := {s | (1 / 2 : ℝ) < s.re ∧ s ≠ 1}

/-- The same real-part bound, omitting only an actual possible principal pole. -/
def dirichletDomain {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) : Set ℂ :=
  {s | (1 / 2 : ℝ) < s.re ∧ Regular χ s}

theorem zetaDomain_isOpen : IsOpen zetaDomain := by
  change IsOpen ({s : ℂ | (1 / 2 : ℝ) < s.re} ∩ ({1} : Set ℂ)ᶜ)
  exact (isOpen_lt continuous_const Complex.continuous_re).inter isOpen_compl_singleton

theorem dirichletDomain_isOpen {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) :
    IsOpen (dirichletDomain χ) := by
  by_cases hχ : χ = 1
  · subst χ
    simpa [dirichletDomain, Regular, zetaDomain] using zetaDomain_isOpen
  · have heq : dirichletDomain χ = {s : ℂ | (1 / 2 : ℝ) < s.re} := by
      ext s
      simp [dirichletDomain, Regular, hχ]
    rw [heq]
    exact isOpen_lt continuous_const Complex.continuous_re

/-- A pointwise analytic inverse, requiring the exact RH hypothesis. -/
theorem differentiableAt_zeta_inverse (hRH : _root_.RiemannHypothesis)
    {s : ℂ} (hs : s ∈ zetaDomain) :
    DifferentiableAt ℂ (fun z => (riemannZeta z)⁻¹) s :=
  (differentiableAt_riemannZeta hs.2).inv
    (zeta_zero_free_of_rh hRH s hs.1 hs.2)

theorem differentiableOn_zeta_inverse (hRH : _root_.RiemannHypothesis) :
    DifferentiableOn ℂ (fun z => (riemannZeta z)⁻¹) zetaDomain := by
  intro s hs
  exact (differentiableAt_zeta_inverse hRH hs).differentiableWithinAt

/-- No numerator regularity is silently inferred. -/
theorem differentiableOn_zeta_quotient (hRH : _root_.RiemannHypothesis)
    {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f zetaDomain) :
    DifferentiableOn ℂ (fun z => f z / riemannZeta z) zetaDomain := by
  apply hf.div
  · intro s hs
    exact (differentiableAt_riemannZeta hs.2).differentiableWithinAt
  · intro s hs
    exact zeta_zero_free_of_rh hRH s hs.1 hs.2

/-- A derivative statement, not merely continuity of the inverse. -/
theorem hasDerivAt_zeta_inverse (hRH : _root_.RiemannHypothesis)
    {s : ℂ} (hs : s ∈ zetaDomain) :
    HasDerivAt (fun z => (riemannZeta z)⁻¹)
      (-deriv riemannZeta s / riemannZeta s ^ 2) s :=
  (differentiableAt_riemannZeta hs.2).hasDerivAt.inv
    (zeta_zero_free_of_rh hRH s hs.1 hs.2)

/-- Division solves an actual scalar equation uniquely, with the same denominator. -/
theorem unique_zeta_solution (hRH : _root_.RiemannHypothesis)
    {s : ℂ} (hs : s ∈ zetaDomain) (y : ℂ) :
    ∃! u : ℂ, riemannZeta s * u = y := by
  have hn := zeta_zero_free_of_rh hRH s hs.1 hs.2
  refine ⟨y / riemannZeta s, ?_, ?_⟩
  · field_simp [hn] <;> ring
  · intro u hu
    apply (eq_div_iff hn).mpr
    simpa only [mul_comm] using hu

/-- A positive margin on a fixed compact set; its value is not computed here. -/
theorem zeta_compact_margin (hRH : _root_.RiemannHypothesis)
    {K : Set ℂ} (hK : IsCompact K) (hKD : K ⊆ zetaDomain) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ z ∈ K, δ ≤ ‖riemannZeta z‖ := by
  apply GRWTSK.Analysis.Division.compact_positive_margin hK
  · intro z hz
    exact (differentiableAt_riemannZeta (hKD hz).2).continuousAt.continuousWithinAt
  · intro z hz
    exact zeta_zero_free_of_rh hRH z (hKD hz).1 (hKD hz).2

/-- The residual certificate is external input even after RH supplies nonvanishing. -/
theorem zeta_compact_residual_control (hRH : _root_.RiemannHypothesis)
    {K : Set ℂ} (hK : IsCompact K) (hKD : K ⊆ zetaDomain) :
    ∃ δ : ℝ, 0 < δ ∧
      ∀ (u y : ℂ → ℂ) (ε : ℝ),
        (∀ z ∈ K, ‖riemannZeta z * u z - y z‖ ≤ ε) →
        ∀ z ∈ K, ‖u z - y z / riemannZeta z‖ ≤ ε / δ := by
  obtain ⟨δ, hδ, hbound⟩ := zeta_compact_margin hRH hK hKD
  refine ⟨δ, hδ, ?_⟩
  intro u y ε hr z hz
  exact GRWTSK.Analysis.Division.error_le_of_residual hδ (hbound z hz) (hr z hz)

variable {N : ℕ} [NeZero N] {χ : DirichletCharacter ℂ N}

theorem differentiableAt_dirichlet_inverse (h : DirichletCriticalLine χ)
    {s : ℂ} (hs : s ∈ dirichletDomain χ) :
    DifferentiableAt ℂ (fun z => (χ.LFunction z)⁻¹) s :=
  (DirichletCharacter.differentiableAt_LFunction χ s hs.2).inv
    (dirichlet_nonzero_of_critical_line h hs.1 hs.2)

theorem differentiableOn_dirichlet_inverse (h : DirichletCriticalLine χ) :
    DifferentiableOn ℂ (fun z => (χ.LFunction z)⁻¹) (dirichletDomain χ) := by
  intro s hs
  exact (differentiableAt_dirichlet_inverse h hs).differentiableWithinAt

theorem differentiableOn_dirichlet_quotient (h : DirichletCriticalLine χ)
    {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f (dirichletDomain χ)) :
    DifferentiableOn ℂ (fun z => f z / χ.LFunction z) (dirichletDomain χ) := by
  apply hf.div
  · intro s hs
    exact (DirichletCharacter.differentiableAt_LFunction χ s hs.2).differentiableWithinAt
  · intro s hs
    exact dirichlet_nonzero_of_critical_line h hs.1 hs.2

theorem hasDerivAt_dirichlet_inverse (h : DirichletCriticalLine χ)
    {s : ℂ} (hs : s ∈ dirichletDomain χ) :
    HasDerivAt (fun z => (χ.LFunction z)⁻¹)
      (-deriv χ.LFunction s / χ.LFunction s ^ 2) s :=
  (DirichletCharacter.differentiableAt_LFunction χ s hs.2).hasDerivAt.inv
    (dirichlet_nonzero_of_critical_line h hs.1 hs.2)

theorem unique_dirichlet_solution (h : DirichletCriticalLine χ)
    {s : ℂ} (hs : s ∈ dirichletDomain χ) (y : ℂ) :
    ∃! u : ℂ, χ.LFunction s * u = y := by
  have hn := dirichlet_nonzero_of_critical_line h hs.1 hs.2
  refine ⟨y / χ.LFunction s, ?_, ?_⟩
  · field_simp [hn] <;> ring
  · intro u hu
    apply (eq_div_iff hn).mpr
    simpa only [mul_comm] using hu

theorem dirichlet_compact_margin (h : DirichletCriticalLine χ)
    {K : Set ℂ} (hK : IsCompact K) (hKD : K ⊆ dirichletDomain χ) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ z ∈ K, δ ≤ ‖χ.LFunction z‖ := by
  apply GRWTSK.Analysis.Division.compact_positive_margin hK
  · intro z hz
    exact (DirichletCharacter.differentiableAt_LFunction χ z (hKD hz).2).continuousAt.continuousWithinAt
  · intro z hz
    exact dirichlet_nonzero_of_critical_line h (hKD hz).1 (hKD hz).2

theorem dirichlet_compact_residual_control (h : DirichletCriticalLine χ)
    {K : Set ℂ} (hK : IsCompact K) (hKD : K ⊆ dirichletDomain χ) :
    ∃ δ : ℝ, 0 < δ ∧
      ∀ (u y : ℂ → ℂ) (ε : ℝ),
        (∀ z ∈ K, ‖χ.LFunction z * u z - y z‖ ≤ ε) →
        ∀ z ∈ K, ‖u z - y z / χ.LFunction z‖ ≤ ε / δ := by
  obtain ⟨δ, hδ, hbound⟩ := dirichlet_compact_margin h hK hKD
  refine ⟨δ, hδ, ?_⟩
  intro u y ε hr z hz
  exact GRWTSK.Analysis.Division.error_le_of_residual hδ (hbound z hz) (hr z hz)

/-- A nonprincipal character has no excluded pole at one, even without GRH. -/
theorem nonprincipal_inverse_at_one (hχ : χ ≠ 1) :
    DifferentiableAt ℂ (fun z => (χ.LFunction z)⁻¹) 1 :=
  (DirichletCharacter.differentiableAt_LFunction χ 1 (Or.inr hχ)).inv
    (DirichletCharacter.LFunction_apply_one_ne_zero hχ)

/-- The full GRH hypothesis can be restricted to the exact character consumed. -/
theorem dirichlet_inverse_of_grh (h : DirichletGRH) :
    DifferentiableOn ℂ (fun z => (χ.LFunction z)⁻¹) (dirichletDomain χ) :=
  differentiableOn_dirichlet_inverse (h N χ)

end GRWTSK.NumberTheory.Conditional
