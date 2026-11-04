/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.GeometricProductPolynomials
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FiniteFieldVerticalCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilModelResidualTransfer

/-!
# Scoped integration checks for the universal finite Weil certificate families

This is an opt-in source target, not a root-import promotion. The examples
exercise empty spectra, repeated coefficients, a concrete quadratic numerator,
the exact truncation schedule, all-field Gauss inputs, extension powers,
all-height quantification, and the sharp circle obstruction. The axiom queries
are instructions to Lean when this file is checked, not recorded audit results.

Compilation, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. Target Lean v4.34.1 with the unchanged root manifest.
No full classical RH/GRH certificate family is claimed: the source comparison
estimates in WeilModelResidualTransfer remain unsupplied.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilCertificates.Checks

open GRWTSK.Analysis.GeometricProduct
open GRWTSK.Analysis.Division
open GRWTSK.Analysis.Division.Cover
open GRWTSK.NumberTheory.FiniteFieldCertificates

example : truncation 0 2 = 8 := rfl

example (n : ℕ) (z : ℂ) : familyApproximation [] n z = 1 := rfl

example (n : ℕ) : FiniteCover (factorProduct [1, 1]) (innerDomain 1) (innerCore 1 n) := by
  apply universal_inner_core_cover _ (by norm_num) _ n
  intro a ha
  simp only [List.mem_cons, List.mem_singleton] at ha
  rcases ha with rfl | rfl <;> simp

example (z : ℂ) : factorProduct [2, -2] z = 1 - 4 * z ^ 2 := by
  simp only [factorProduct]
  ring

example (n : ℕ) {z : ℂ} (hz : z ∈ innerCore 2 n) :
    ‖residual (1 - 4 * z ^ 2) (familyApproximation [2, -2] n z) 1‖ ≤ 1 / 4 := by
  have spectral : ∀ a ∈ ([2, -2] : List ℂ), ‖a‖ ≤ (2 : ℝ) := by
    intro a ha
    simp only [List.mem_cons, List.mem_singleton] at ha
    rcases ha with rfl | rfl <;> norm_num
  have h := family_residual [2, -2] n z
    (contraction_on_core _ (by norm_num) spectral n hz)
  have hp : factorProduct [2, -2] z = 1 - 4 * z ^ 2 := by
    simp only [factorProduct]
    ring
  simpa only [hp] using h

example (m : ℕ) : ‖residual (factorProduct [1] 1) (approximate [1] m 1) 1‖ = 1 :=
  boundary_zero_barrier m

example {F : Type*} [Field F] [Fintype F]
    (χ : MulChar F ℂ) (ψ : AddChar F ℂ) (hχ : χ ≠ 1) (hψ : ψ.IsPrimitive)
    (d n : ℕ) :
    FiniteCover (factorProduct (gaussSpectrum (List.replicate d χ) ψ))
      (innerDomain (Real.sqrt (Fintype.card F)))
      (innerCore (Real.sqrt (Fintype.card F)) n) :=
  repeated_gauss_certificates χ ψ hχ hψ d n

example {F : Type*} [Field F] [Fintype F]
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive) (k n : ℕ) :
    FiniteCover (factorProduct ((gaussSpectrum characters ψ).map (fun a => a ^ k)))
      (innerDomain (Real.sqrt (Fintype.card F) ^ k))
      (innerCore (Real.sqrt (Fintype.card F) ^ k) n) :=
  gauss_extension_certificates characters ψ nontrivial primitive k n

example (n : ℕ) {z : ℂ} (hz : z ≠ 0) (level : (2 * ‖z‖)⁻¹ ≤ ratio n) :
    ‖residual (factorProduct [2, -2] z) (outerApproximation [2, -2] n z) 1‖ ≤ 1 / 4 := by
  apply universal_outer_residual _ (by norm_num : (0 : ℝ) < 2) _ n hz level
  intro a ha
  simp only [List.mem_cons, List.mem_singleton] at ha
  rcases ha with rfl | rfl <;> norm_num

example (as : List ℂ) {q σ : ℝ} (hq : 1 < q) (hσ : (1 / 2 : ℝ) < σ)
    (pure : ∀ a ∈ as, ‖a‖ = Real.sqrt q) :
    ∃ n : ℕ, ∀ s : ℂ, σ ≤ s.re →
      ‖residual (factorProduct as (fieldParameter q s))
        (familyApproximation as n (fieldParameter q s)) 1‖ ≤ 1 / 4 :=
  all_height_residual_family as hq hσ (fun a ha => (pure a ha).le)

#print axioms GRWTSK.Analysis.GeometricProduct.family_residual
#print axioms GRWTSK.Analysis.GeometricProduct.scheduled_polynomial_certificate
#print axioms GRWTSK.NumberTheory.WeilCertificates.universal_inner_core_cover
#print axioms GRWTSK.NumberTheory.WeilCertificates.universal_outer_residual
#print axioms GRWTSK.NumberTheory.FiniteFieldCertificates.gauss_universal_core_certificates
#print axioms GRWTSK.NumberTheory.WeilCertificates.gauss_all_height_family
#print axioms GRWTSK.NumberTheory.WeilCertificates.gauss_factor_critical_line
#print axioms GRWTSK.NumberTheory.Conditional.rh_of_gauss_model_envelopes

end GRWTSK.NumberTheory.WeilCertificates.Checks
