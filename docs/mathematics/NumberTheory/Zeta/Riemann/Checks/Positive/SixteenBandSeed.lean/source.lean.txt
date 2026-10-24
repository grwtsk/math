/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandSeed

set_option autoImplicit false

/-! Positive and hostile-scope fixtures. These scripts have NOT been run by Lean. -/
namespace GRWTSK.RiemannHypothesis.Checks.SixteenBandSeed
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.SixteenBandJet
open CriticalStripHeightDescent.ZeroIsolation
noncomputable section

example : (7 : ℝ)-1/8 = 55/8 := by norm_num
example : (1/4 : ℝ)^2+(1/2)^2 ≤ (5/8)^2 := by norm_num
example : (5 : ℝ)^2+16^2 ≤ 17^2 := by norm_num
example : (6 : ℝ)^2+16^2 ≤ 18^2 := by norm_num
example (i : Fin 8) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-SixteenBandJet.center)-sample i‖ ≤ sampleRadius :=
  sample_enclosed i
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖poleNormalizedZeta s-polynomial s‖ ≤ (1/8 : ℝ) := source_enclosed hx hx1 ht ht1
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    (55/8 : ℝ) ≤ -(poleNormalizedZeta s).re := source_negative_real hx hx1 ht ht1
example : ShellRH 15 := shellRH_fifteen
example : WindowRH 16 := windowRH_sixteen
-- The live zero-permitting successor is actually instantiated.
example : WindowRH 16 := FifteenWitness.window_sixteen_of_shell shellRH_fifteen
example : RHOn (mirrorBox 14 16 (1/2)) := twoBand_rhOn
example : twoBandCover.count = 1 := rfl
example : (⟨1/2,15⟩ : ℂ) ∈ upperBand ∧ (⟨1/2,15⟩ : ℂ) ∈ fifteenBox := by
  norm_num [upperBand,fifteenBox,mirrorBox]
-- The earlier zero-permitting region has NOT been replaced by this clear band.
example : (⟨1/2,29/2⟩ : ℂ) ∈ fifteenBox := by norm_num [fifteenBox,mirrorBox]
example : (⟨1/2,29/2⟩ : ℂ) ∉ upperBand := by norm_num [upperBand]
example : -(polynomial (⟨1/2,14⟩ : ℂ)).re < (7 : ℝ) :=
  Certificate.projection_failure_below_band
-- Exceeding the source radius, or altering an arithmetic center, requires new proofs.
example : (31/2 : ℝ)-(27/2) > 5/8 := by norm_num
example : (17 : ℝ) > 16 := by norm_num
example : (7 : ℝ)-7 = 0 := by norm_num
-- A zero-permitting injective function is not necessarily zero-free.
example : (fun z : ℂ => z-(⟨1/2,29/2⟩ : ℂ)) ⟨1/2,29/2⟩ = 0 := by simp
example (s : ℂ) : SixteenBandJet.deformation 0 s = -1 := deformation_zero s
example (s : ℂ) : SixteenBandJet.deformation 1 s = poleNormalizedZeta s := deformation_one s
example {s : ℂ} {t : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (1 : ℝ) ≤ ‖SixteenBandJet.deformation t s‖ := deformation_norm_lower hx hx1 ht ht1 hl hu
-- The next band and all higher shells remain explicit premises.
example (h : ShellRH 16) : WindowRH 17 := window_seventeen_of_shell h
example (h : ∀ N : ℕ, 16 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_sixteen h
end
end GRWTSK.RiemannHypothesis.Checks.SixteenBandSeed
