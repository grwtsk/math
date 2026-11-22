/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveInverseOrbitStages

/-! # Inverse-character transport of the complete absolute height tail -/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped ComplexConjugate
open GRWTSK.NumberTheory.WeilNegativeWitness (CriticalStripZero zeroMultiplicity)

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation

/-- The conjugation map on the original zeros has a two-sided inverse. -/
def inverseConjugateZeroEquiv {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hn : χ ≠ 1) : CriticalStripZero χ ≃ CriticalStripZero χ⁻¹ := by
  refine Equiv.ofBijective (inverseConjugateZero χ hn) ⟨?_, ?_⟩
  · intro ρ σ heq
    apply Subtype.ext
    have h := congrArg (fun z : CriticalStripZero χ⁻¹ => conj z.1) heq
    simpa only [inverseConjugateZero, Complex.conj_conj] using h
  · intro σ
    have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
    have hz : χ.LFunction (conj σ.1) = 0 := by
      simpa only [inverseConjugateZero, inv_inv] using (inverseConjugateZero χ⁻¹ hnInv σ).2.1
    let ρ : CriticalStripZero χ := ⟨conj σ.1, hz,
      by simpa only [Complex.conj_re] using σ.2.2.1,
      by simpa only [Complex.conj_re] using σ.2.2.2⟩
    exact ⟨ρ, Subtype.ext (Complex.conj_conj σ.1)⟩

private theorem correlation_contour_weight_conj (f : ℝ → ℂ) (s : ℂ) :
    (∫ r : ℝ, correlation (fun t => conj (f t)) r *
      Complex.exp ((conj s - 1 / 2) * (r : ℂ))) =
        conj (∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) := by
  have hcorr (r : ℝ) : correlation (fun t => conj (f t)) r = conj (correlation f r) := by
    simp only [correlation, ← integral_conj, map_mul, Complex.conj_conj]
  rw [← integral_conj]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun r => by
    dsimp only
    rw [hcorr, map_mul, ← Complex.exp_conj]
    have hhalf : conj (1 / 2 : ℂ) = 1 / 2 := by
      have hcast : ((1 / 2 : ℝ) : ℂ) = 1 / 2 := by norm_num
      rw [← hcast, Complex.conj_ofReal]
    simp only [map_mul, map_sub, hhalf, Complex.conj_ofReal]

/-- Conjugating the function and inverting the character preserve the sum
of norms of the omitted source terms, with equality at the cutoff included. -/
theorem primitive_height_tail_hasSum_inverse_conj_iff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hn : χ ≠ 1) (f : ℝ → ℂ) (H R : ℝ) :
    HasSum (fun σ : CriticalStripZero χ⁻¹ => ‖if H ≤ |σ.1.im| then
      (zeroMultiplicity χ⁻¹ σ : ℂ) * ∫ r : ℝ, correlation (fun t => conj (f t)) r *
        Complex.exp ((σ.1 - 1 / 2) * (r : ℂ)) else 0‖) R ↔
    HasSum (fun ρ : CriticalStripZero χ => ‖if H ≤ |ρ.1.im| then
      (zeroMultiplicity χ ρ : ℂ) * ∫ r : ℝ, correlation f r *
        Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)) else 0‖) R := by
  let e := inverseConjugateZeroEquiv χ hn
  let u : CriticalStripZero χ⁻¹ → ℝ := fun σ => ‖if H ≤ |σ.1.im| then
    (zeroMultiplicity χ⁻¹ σ : ℂ) * ∫ r : ℝ, correlation (fun t => conj (f t)) r *
      Complex.exp ((σ.1 - 1 / 2) * (r : ℂ)) else 0‖
  let v : CriticalStripZero χ → ℝ := fun ρ => ‖if H ≤ |ρ.1.im| then
    (zeroMultiplicity χ ρ : ℂ) * ∫ r : ℝ, correlation f r *
      Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)) else 0‖
  have heq : u ∘ e = v := by
    funext ρ
    change u (inverseConjugateZero χ hn ρ) = v ρ
    have hheight : |(inverseConjugateZero χ hn ρ).1.im| = |ρ.1.im| := by
      simp only [inverseConjugateZero, Complex.conj_im, abs_neg]
    dsimp only [u, v]
    rw [hheight]
    by_cases hρ : H ≤ |ρ.1.im|
    · rw [ite_eq_left hρ, ite_eq_left hρ, zeroMultiplicity_inverseConjugateZero]
      change ‖(zeroMultiplicity χ ρ : ℂ) * (∫ r : ℝ,
        correlation (fun t => conj (f t)) r * Complex.exp ((conj ρ.1 - 1 / 2) * (r : ℂ)))‖ = _
      rw [correlation_contour_weight_conj]
      simp only [norm_mul, Complex.norm_conj]
    · simp [hρ]
  change HasSum u R ↔ HasSum v R
  simpa only [heq] using (e.hasSum_iff (f := u) (a := R)).symm

/-- The same real test has the same complete tail norm for either character. -/
theorem primitive_height_tail_hasSum_inverse_liftReal_iff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hn : χ ≠ 1) (f : ℝ → ℝ) (H R : ℝ) :
    HasSum (fun σ : CriticalStripZero χ⁻¹ => ‖if H ≤ |σ.1.im| then
      (zeroMultiplicity χ⁻¹ σ : ℂ) * ∫ r : ℝ, correlation (liftReal f) r *
        Complex.exp ((σ.1 - 1 / 2) * (r : ℂ)) else 0‖) R ↔
    HasSum (fun ρ : CriticalStripZero χ => ‖if H ≤ |ρ.1.im| then
      (zeroMultiplicity χ ρ : ℂ) * ∫ r : ℝ, correlation (liftReal f) r *
        Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)) else 0‖) R := by
  have hreal : (fun t => conj (liftReal f t)) = liftReal f := by
    funext t
    exact Complex.conj_ofReal _
  simpa only [hreal] using
    primitive_height_tail_hasSum_inverse_conj_iff χ hn (liftReal f) H R

/-- Conjugation also preserves the horizontal-width premise on the true
omitted zeros of the inverse character. -/
theorem primitive_height_tail_width_inverse_iff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hn : χ ≠ 1) (H B : ℝ) :
    (∀ σ : CriticalStripZero χ⁻¹, H ≤ |σ.1.im| → |σ.1.re - 1 / 2| ≤ B) ↔
    (∀ ρ : CriticalStripZero χ, H ≤ |ρ.1.im| → |ρ.1.re - 1 / 2| ≤ B) := by
  have htransport (ρ : CriticalStripZero χ) :
      (H ≤ |(inverseConjugateZero χ hn ρ).1.im| →
          |(inverseConjugateZero χ hn ρ).1.re - 1 / 2| ≤ B) ↔
        (H ≤ |ρ.1.im| → |ρ.1.re - 1 / 2| ≤ B) := by
    simp only [inverseConjugateZero, Complex.conj_im, abs_neg, Complex.conj_re]
  constructor
  · exact fun h ρ => (htransport ρ).mp (h (inverseConjugateZero χ hn ρ))
  · intro h σ
    obtain ⟨ρ, rfl⟩ := (inverseConjugateZeroEquiv χ hn).surjective σ
    exact (htransport ρ).mpr (h ρ)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
