/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.FiniteFieldGaussCertificates
import GRWTSK.FunctionsOfAComplexVariable.ApproximationResidualTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResidualCriteria

/-!
# Source-exact transfer of constructed Weil-model certificates

The model certificate is supplied by the explicit geometric polynomial family,
not by the desired zeta conclusion. Transfer to a different function f spends
an additional budget |f-P|*|U|. In particular, |f-P|<=eta and
eta*(n+2)^d<=1/4 yield |f*U-1|<=1/2 on the same region.

This is the precise bridge that a proposed finite-field approximation to
classical zeta or Dirichlet L-functions must prove. The construction below never
asserts that the bridge exists universally. It retains actual source functions,
all region boundaries, regularity, and coverage of the required open strip.
Finite-field purity alone supplies none of those source-comparison estimates.

The Gauss-sum specialization has no unproved spectral-purity input: it consumes
Mathlib's finite-field character identities. The classical source error remains
a distinct estimate. A constant-model counterexample demonstrates that small
absolute model error without controlling inverse size is insufficient.

Primary argument: f*U-1=(P*U-1)+(f-P)*U, then the existing boundary certificate,
maximum-modulus and exact RH/Dirichlet-critical-line return theorems.
ApproximationResidualTransfer supplies the source-error identity and bounds. This is not
an unconditional classical RH or GRH proof and not a cohomological realization.
No novelty claim. AI-assisted formalization. Compilation, fresh kernel checking,
transitive axiom audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.Analysis.GeometricProduct

open GRWTSK.Analysis.Division

/-- Reuse the existing complete source-return inequality with the constructed supplier. -/
theorem source_residual_bound (as : List ℂ) (n : ℕ) (z f : ℂ) {η : ℝ}
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n)
    (comparison : ‖f - factorProduct as z‖ ≤ η) :
    ‖residual f (familyApproximation as n z) 1‖ ≤
      1 / 4 + η * ((n : ℝ) + 2) ^ as.length :=
  Approximation.residual_source_bound (family_residual as n z contractive) comparison
    (approximate_size as n (truncation n as.length) z contractive)

/-- Reuse the existing boundary constructor; the retained budget is at most one half. -/
def transferredCertificate (f parameter : ℂ → ℂ) (as : List ℂ) (n : ℕ)
    (U : Set ℂ) (η : ℝ)
    (hf : DiffContOnCl ℂ f U) (hp : DiffContOnCl ℂ parameter U)
    (contractive : ∀ z ∈ frontier U, ∀ a ∈ as, ‖a * parameter z‖ ≤ ratio n)
    (comparison : ∀ z ∈ frontier U, ‖f z - factorProduct as (parameter z)‖ ≤ η)
    (budget : η * ((n : ℝ) + 2) ^ as.length ≤ 1 / 4) :
    Boundary.Certificate f U :=
  Approximation.boundaryOfModel f (fun z => factorProduct as (parameter z))
    (fun z => familyApproximation as n (parameter z)) U hf
    ((differentiable_approximate as (truncation n as.length)).comp_diffContOnCl hp)
    (fun z hz => family_residual as n (parameter z) (contractive z hz))
    comparison
    (fun z hz => approximate_size as n (truncation n as.length) (parameter z)
      (contractive z hz))
    (by linarith)

/-- Even exact model inverses need the target-model return estimate. -/
theorem small_absolute_error_is_insufficient {ε : ℝ} (hε : 0 < ε) :
    let model : ℂ := ε
    let approximation : ℂ := (ε : ℂ)⁻¹
    ‖residual model approximation 1‖ = 0 ∧
      ‖(0 : ℂ) - model‖ = ε ∧
      ‖residual 0 approximation 1‖ = 1 := by
  have hn : (ε : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hε)
  simp [residual, hn, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hε]

end GRWTSK.Analysis.GeometricProduct

namespace GRWTSK.NumberTheory.Conditional

open GRWTSK.Analysis.GeometricProduct
open GRWTSK.Analysis.Division
open GRWTSK.NumberTheory.WeilCertificates
open GRWTSK.NumberTheory.FiniteFieldCertificates

universe u v

/-- An all-region source comparison consumes the explicit finite polynomial supplier. -/
theorem rh_of_weil_model_envelopes {I : Type u}
    (regions : I → Set ℂ) (coefficients : I → List ℂ)
    (parameter : I → ℂ → ℂ) (level : I → ℕ) (error : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ rightCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (parameter i) (regions i))
    (coverage : ∀ s ∈ rightCriticalStrip, ∃ i, s ∈ regions i)
    (contractive : ∀ i, ∀ s ∈ frontier (regions i), ∀ a ∈ coefficients i,
      ‖a * parameter i s‖ ≤ ratio (level i))
    (comparison : ∀ i, ∀ s ∈ frontier (regions i),
      ‖riemannZeta s - factorProduct (coefficients i) (parameter i s)‖ ≤ error i)
    (budget : ∀ i, error i * ((level i : ℝ) + 2) ^ (coefficients i).length ≤ 1 / 4) :
    _root_.RiemannHypothesis := by
  apply rh_iff_nonzero_rightStrip.mpr
  intro s hs
  obtain ⟨i, hi⟩ := coverage s hs
  have hf : DiffContOnCl ℂ riemannZeta (regions i) :=
    (differentiableOn_zeta_rightStrip.mono (contained i)).diffContOnCl
  exact (transferredCertificate riemannZeta (parameter i) (coefficients i) (level i)
    (regions i) (error i) hf (regular i) (contractive i) (comparison i) (budget i)).nonzero
      (bounded i) (subset_closure hi)

/-- For one Dirichlet character both off-line components remain in the source domain. -/
theorem critical_line_of_weil_model_envelopes {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) {I : Type u}
    (regions : I → Set ℂ) (coefficients : I → List ℂ)
    (parameter : I → ℂ → ℂ) (level : I → ℕ) (error : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ offCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (parameter i) (regions i))
    (coverage : ∀ s ∈ offCriticalStrip, ∃ i, s ∈ regions i)
    (contractive : ∀ i, ∀ s ∈ frontier (regions i), ∀ a ∈ coefficients i,
      ‖a * parameter i s‖ ≤ ratio (level i))
    (comparison : ∀ i, ∀ s ∈ frontier (regions i),
      ‖χ.LFunction s - factorProduct (coefficients i) (parameter i s)‖ ≤ error i)
    (budget : ∀ i, error i * ((level i : ℝ) + 2) ^ (coefficients i).length ≤ 1 / 4) :
    DirichletCriticalLine χ := by
  apply (critical_line_iff_nonzero_offStrip χ).mpr
  intro s hs
  obtain ⟨i, hi⟩ := coverage s hs
  have hf : DiffContOnCl ℂ χ.LFunction (regions i) :=
    ((differentiableOn_dirichlet_offStrip χ).mono (contained i)).diffContOnCl
  exact (transferredCertificate χ.LFunction (parameter i) (coefficients i) (level i)
    (regions i) (error i) hf (regular i) (contractive i) (comparison i) (budget i)).nonzero
      (bounded i) (subset_closure hi)

/-- An actual finite-field specialization: purity and contraction are derived, not assumed. -/
theorem rh_of_gauss_model_envelopes {F : Type v} [Field F] [Fintype F] {I : Type u}
    (characters : I → List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ i, ∀ χ ∈ characters i, χ ≠ 1) (primitive : ψ.IsPrimitive)
    (regions : I → Set ℂ) (parameter : I → ℂ → ℂ) (level : I → ℕ) (error : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ rightCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (parameter i) (regions i))
    (coverage : ∀ s ∈ rightCriticalStrip, ∃ i, s ∈ regions i)
    (contractive : ∀ i, ∀ s ∈ frontier (regions i),
      parameter i s ∈ innerCore (Real.sqrt (Fintype.card F)) (level i))
    (comparison : ∀ i, ∀ s ∈ frontier (regions i),
      ‖riemannZeta s - factorProduct (gaussSpectrum (characters i) ψ) (parameter i s)‖ ≤ error i)
    (budget : ∀ i, error i * ((level i : ℝ) + 2) ^ (characters i).length ≤ 1 / 4) :
    _root_.RiemannHypothesis := by
  apply rh_of_weil_model_envelopes regions (fun i => gaussSpectrum (characters i) ψ)
    parameter level error bounded contained regular coverage _ comparison
  · intro i s hs
    exact contraction_on_core _ gauss_radius_pos
      (fun a ha => (gauss_spectrum_pure (characters i) ψ (nontrivial i) primitive a ha).le)
      (level i) (contractive i s hs)
  · intro i
    simpa only [gaussSpectrum, List.length_map] using budget i

end GRWTSK.NumberTheory.Conditional
