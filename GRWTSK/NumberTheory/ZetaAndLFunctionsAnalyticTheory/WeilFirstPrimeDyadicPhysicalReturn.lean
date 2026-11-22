/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeDyadicTower
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowPhysicalSource

/-!
# Signed finite dyadic readout error in the original zero sums

The primitive and conductor-one physical suppliers give the same original
zero indices and multiplicities as the first-window return. The difference
with an estimated window is the real readout error embedded in ℂ.

SOURCE_PROOF_CANDIDATE.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open OddRootProjection SourcePrimeCorrelation

private theorem tsum_sub_windowValue_eq_and_norm_le {ι : Type*} {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (f : WindowTest A) (z : ι → ℂ)
    (hsource : HasSum z (physicalValue χ A f.1)) (x δ : ℝ)
    (hx : |x - signedWindowValue χ A f.1| ≤ δ) :
    ((∑' i, z i) - windowValue χ A f.1 x =
      ((x - signedWindowValue χ A f.1 : ℝ) : ℂ)) ∧
    ‖(∑' i, z i) - windowValue χ A f.1 x‖ ≤ δ := by
  have heq : (∑' i, z i) - windowValue χ A f.1 x =
      ((x - signedWindowValue χ A f.1 : ℝ) : ℂ) := by
    rw [hsource.tsum_eq, physicalValue_eq_windowValue]
    unfold windowValue
    push_cast
    ring
  refine ⟨heq, ?_⟩
  rw [heq, Complex.norm_real, Real.norm_eq_abs]
  exact hx

/-- Apply the finite-window estimate directly to the primitive physical HasSum. -/
theorem primitive_tsum_sub_dyadicWindow_eq_and_norm_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    {A : ℝ} (f : WindowTest A) (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5)
    (b0 bneg : ℂ) (δ0 δneg threeEstimate ε3 : ℝ)
    (h0 : χ (2 : ℕ) ≠ 0 →
      ‖b0 - dyadicBoundary (χ (2 : ℕ)) (dyadicForwardTower (χ (2 : ℕ)) f) 0‖ ≤ δ0)
    (hneg : χ (2 : ℕ) ≠ 0 →
      ‖bneg - dyadicBoundary (χ (2 : ℕ)) (dyadicForwardTower (χ (2 : ℕ)) f) (-1)‖ ≤ δneg)
    (h3 : |threeEstimate -
      primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ))))| ≤ ε3) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f.1 r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let x := dyadicWindowEstimate (χ (2 : ℕ)) (energy f.1) b0 bneg threeEstimate
    let e := (∑' ρ : CriticalStripZero χ, (zeroMultiplicity χ ρ : ℂ) * W ρ.1) -
      windowValue χ A f.1 x
    e = ((x - signedWindowValue χ A f.1 : ℝ) : ℂ) ∧
      ‖e‖ ≤ dyadicWindowRadius (χ (2 : ℕ)) δ0 δneg ε3 := by
  intro W x e
  have hA : 0 ≤ A := by linarith [Real.log_pos (by norm_num : (1 : ℝ) < 4)]
  have hf : Admissible f.1 := ⟨f.2.1, f.2.2.1⟩
  exact tsum_sub_windowValue_eq_and_norm_le χ f _
    (primitive_hasSum_physical_arithmetic χ hprim f.1 A hA hf f.2.2.2) x _
    (abs_dyadicWindowEstimate_sub_le χ f lo hi b0 bneg δ0 δneg threeEstimate ε3 h0 hneg h3)

/-- Apply the estimate to the literal conductor-one supplier, including both poles. -/
theorem zeta_tsum_sub_dyadicWindow_eq_and_norm_le
    {A : ℝ} (f : WindowTest A) (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5)
    (b0 bneg : ℂ) (δ0 δneg threeEstimate ε3 : ℝ)
    (h0 : ‖b0 - dyadicBoundary 1 (dyadicForwardTower 1 f) 0‖ ≤ δ0)
    (hneg : ‖bneg - dyadicBoundary 1 (dyadicForwardTower 1 f) (-1)‖ ≤ δneg)
    (h3 : |threeEstimate - primeReadout {3} (primeAtom (1 : DirichletCharacter ℂ 1)
        (fun n => correlation f.1 (Real.log (n : ℝ))))| ≤ ε3) :
    let χ : DirichletCharacter ℂ 1 := 1
    let W := fun s : ℂ => ∫ r : ℝ, correlation f.1 r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let x := dyadicSignedEstimate 1 (energy f.1) b0 bneg + threeEstimate
    let e := (∑' ρ : CriticalStripZero χ, (zeroMultiplicity χ ρ : ℂ) * W ρ.1) -
      windowValue χ A f.1 x
    e = ((x - signedWindowValue χ A f.1 : ℝ) : ℂ) ∧
      ‖e‖ ≤ Real.log 2 * (3 / 2 * δ0 + δneg / Real.sqrt 2) + ε3 := by
  intro χ W x e
  have hA : 0 ≤ A := by linarith [Real.log_pos (by norm_num : (1 : ℝ) < 4)]
  have hf : Admissible f.1 := ⟨f.2.1, f.2.2.1⟩
  have hp : gammaParity (1 : DirichletCharacter ℂ 1) = 0 := by
    simp [gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  have hsource : HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) * W ρ.1)
      (physicalValue χ A f.1) := by
    simpa [χ, W, physicalValue, poleTerm, hp, CharacterWindow.twistedPrime,
      MulChar.one_apply (isUnit_of_subsingleton _), add_assoc] using
        zeta_hasSum_physical_arithmetic f.1 A hA hf f.2.2.2
  have hone : χ (2 : ℕ) = 1 := MulChar.one_apply (isUnit_of_subsingleton _)
  have h0' : χ (2 : ℕ) ≠ 0 →
      ‖b0 - dyadicBoundary (χ (2 : ℕ)) (dyadicForwardTower (χ (2 : ℕ)) f) 0‖ ≤ δ0 := by
    rw [hone]
    exact fun _ => h0
  have hneg' : χ (2 : ℕ) ≠ 0 →
      ‖bneg - dyadicBoundary (χ (2 : ℕ)) (dyadicForwardTower (χ (2 : ℕ)) f) (-1)‖ ≤ δneg := by
    rw [hone]
    exact fun _ => hneg
  have h3' : |threeEstimate -
      primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ))))| ≤ ε3 := by
    simpa only [χ, inv_one] using h3
  apply tsum_sub_windowValue_eq_and_norm_le χ f _ hsource x
  have hbound :=
    abs_dyadicWindowEstimate_sub_le χ f lo hi b0 bneg δ0 δneg threeEstimate ε3 h0' hneg' h3'
  unfold dyadicWindowEstimate dyadicWindowRadius at hbound
  rw [hone] at hbound
  simpa only [ite_eq_right (one_ne_zero : (1 : ℂ) ≠ 0), x] using hbound

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
