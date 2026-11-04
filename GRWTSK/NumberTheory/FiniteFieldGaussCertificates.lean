/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilReciprocalCertificates
import Mathlib.NumberTheory.GaussSum

/-!
# Actual finite-field inputs for universal spectral certificate families

This file does not assume purity of the supplied coefficients. For a finite
field F, a nontrivial multiplicative character chi and a primitive additive
character psi, Mathlib proves g(chi,psi)*g(chi^-1,psi^-1)=#F and identifies the
second factor with the complex conjugate. Taking norms gives |g|=sqrt(#F).
These exact finite sums supply the spectral input of the constructed families.

Every finite list of such characters gives certificates at EVERY level, every
extension-power parameter, and every Newton-refinement parameter. The polynomial
product built from their Gauss sums is the actual target. No assertion identifies
an arbitrary such product with a curve zeta numerator or an integer Dirichlet
L-function; those require separate exact comparison theorems.

Primary source reused: Mathlib/NumberTheory/GaussSum.lean, Michael Stoll (2022),
Apache-2.0, `star_gaussSum_eq` and `gaussSum_mul_gaussSum_eq_card`, at
 d13f23b723b8a846827a245b89c10fc7d3f11612. No upstream source is relicensed.
The trivial additive-character example shows why primitivity is material for
the exact square-root radius. Novelty and independent review not assessed.
AI-assisted formalization; compilation, fresh kernel checking and transitive
axiom audit: NOT_RUN. No finite-field enumeration was substituted for a proof.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.FiniteFieldCertificates

open GRWTSK.Analysis.GeometricProduct
open GRWTSK.Analysis.Division
open GRWTSK.Analysis.Division.Cover
open GRWTSK.NumberTheory.WeilCertificates

universe u
variable {F : Type u} [Field F] [Fintype F]

/-- Exact square-root cancellation, obtained from the existing Gauss-product theorem. -/
theorem gauss_norm (χ : MulChar F ℂ) (ψ : AddChar F ℂ)
    (hχ : χ ≠ 1) (hψ : ψ.IsPrimitive) :
    ‖gaussSum χ ψ‖ = Real.sqrt (Fintype.card F) := by
  have product : gaussSum χ ψ * star (gaussSum χ ψ) = (Fintype.card F : ℂ) := by
    rw [star_gaussSum_eq]
    exact gaussSum_mul_gaussSum_eq_card hχ hψ
  have squared : ‖gaussSum χ ψ‖ * ‖gaussSum χ ψ‖ = (Fintype.card F : ℝ) := by
    simpa [norm_mul] using congrArg norm product
  have hsqrt := Real.sq_sqrt (show (0 : ℝ) ≤ Fintype.card F from Nat.cast_nonneg _)
  have hnorm := norm_nonneg (gaussSum χ ψ)
  have hnonneg := Real.sqrt_nonneg (Fintype.card F : ℝ)
  nlinarith

def gaussSpectrum (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ) : List ℂ :=
  characters.map (fun χ => gaussSum χ ψ)

theorem gauss_radius_pos : 0 < Real.sqrt (Fintype.card F : ℝ) := by
  apply Real.sqrt_pos.mpr
  exact_mod_cast (Fintype.card_pos : 0 < Fintype.card F)

/-- Purity is discharged by finite-field character orthogonality, not a structure field. -/
theorem gauss_spectrum_pure (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive) :
    ∀ a ∈ gaussSpectrum characters ψ, ‖a‖ = Real.sqrt (Fintype.card F) := by
  intro a ha
  obtain ⟨χ, hχ, rfl⟩ := List.mem_map.mp ha
  exact gauss_norm χ ψ (nontrivial χ hχ) primitive

/-- Constructed finite covers, uniformly over all finite fields and character lists. -/
theorem gauss_universal_core_certificates
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive) (n : ℕ) :
    FiniteCover (factorProduct (gaussSpectrum characters ψ))
      (innerDomain (Real.sqrt (Fintype.card F)))
      (innerCore (Real.sqrt (Fintype.card F)) n) :=
  universal_inner_core_cover _ gauss_radius_pos
    (fun a ha => (gauss_spectrum_pure characters ψ nontrivial primitive a ha).le) n

/-- The exact polynomial coefficients furnish the promised quantitative residual. -/
theorem gauss_universal_residual
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive)
    (n : ℕ) {z : ℂ} (hz : z ∈ innerCore (Real.sqrt (Fintype.card F)) n) :
    ‖residual (factorProduct (gaussSpectrum characters ψ) z)
      (familyApproximation (gaussSpectrum characters ψ) n z) 1‖ ≤ 1 / 4 :=
  family_residual _ n z
    (contraction_on_core _ gauss_radius_pos
      (fun a ha => (gauss_spectrum_pure characters ψ nontrivial primitive a ha).le) n hz)

/-- Every positive extension exponent, plus the algebraic exponent-zero boundary. -/
theorem gauss_extension_certificates
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive) (k n : ℕ) :
    FiniteCover (factorProduct ((gaussSpectrum characters ψ).map (fun a => a ^ k)))
      (innerDomain (Real.sqrt (Fintype.card F) ^ k))
      (innerCore (Real.sqrt (Fintype.card F) ^ k) n) :=
  extension_core_certificates _ gauss_radius_pos
    (gauss_spectrum_pure characters ψ nontrivial primitive) k n

/-- The full root circle follows for the actual finite Gauss-sum product. -/
theorem gauss_product_zero_radius
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive)
    {z : ℂ} (zero : factorProduct (gaussSpectrum characters ψ) z = 0) :
    ‖z‖ = 1 / Real.sqrt (Fintype.card F) :=
  pure_zero_radius _ gauss_radius_pos
    (gauss_spectrum_pure characters ψ nontrivial primitive) zero

/-- Both components outside the zero circle have certified nonvanishing. -/
theorem gauss_product_nonzero_off_circle
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive)
    {z : ℂ} (off : ‖z‖ ≠ 1 / Real.sqrt (Fintype.card F)) :
    factorProduct (gaussSpectrum characters ψ) z ≠ 0 :=
  nonzero_off_circle _ gauss_radius_pos
    (gauss_spectrum_pure characters ψ nontrivial primitive) off

/-- A genuinely omitted hypothesis has a concrete contrary source theorem. -/
theorem trivial_additive_character_not_pure (χ : MulChar F ℂ) (hχ : χ ≠ 1) :
    ‖gaussSum χ (1 : AddChar F ℂ)‖ ≠ Real.sqrt (Fintype.card F) := by
  rw [gaussSum_one_right hχ, norm_zero]
  exact ne_of_lt gauss_radius_pos

/-- No distinctness premise is needed: the same finite sum can occur repeatedly. -/
theorem repeated_gauss_certificates (χ : MulChar F ℂ) (ψ : AddChar F ℂ)
    (hχ : χ ≠ 1) (hψ : ψ.IsPrimitive) (multiplicity n : ℕ) :
    FiniteCover (factorProduct (gaussSpectrum (List.replicate multiplicity χ) ψ))
      (innerDomain (Real.sqrt (Fintype.card F)))
      (innerCore (Real.sqrt (Fintype.card F)) n) := by
  apply gauss_universal_core_certificates _ ψ _ hψ n
  intro φ hφ
  have same : φ = χ := (List.mem_replicate.mp hφ).2
  simpa only [same] using hχ

end GRWTSK.NumberTheory.FiniteFieldCertificates
