/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream attribution and Apache-2.0 license. -/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-!
# Source-defined overlap of two finite waveforms

Atoms include their coefficients and actions. The shared core uses the first
source on the literal intersection. Its remainder is the first-only support;
the second remainder contains BOTH its second-only support and the atom
mismatch on the intersection. No orthogonality or equality of weights follows
from shared labels. Linear observations need not recover the entire input.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap

variable {ι E F : Type*} [DecidableEq ι] [AddCommGroup E]

def sharedCore (S T : Finset ι) (g : ι → E) : E := ∑ i ∈ S ∩ T, g i

def geometryRemainder (S T : Finset ι) (g : ι → E) : E := ∑ i ∈ S \ T, g i

def arithmeticRemainder (S T : Finset ι) (g a : ι → E) : E :=
  (∑ i ∈ T \ S, a i) + ∑ i ∈ S ∩ T, (a i - g i)

/-- The finite partition is proved, including empty intersections and supports. -/
theorem sum_inter_add_sdiff (S T : Finset ι) (f : ι → E) :
    (∑ i ∈ S ∩ T, f i) + (∑ i ∈ S \ T, f i) = ∑ i ∈ S, f i := by
  have hI : S ∩ T = S.filter (fun i => i ∈ T) := by ext i; simp
  have hD : S \ T = S.filter (fun i => i ∉ T) := by ext i; simp
  rw [hI, hD, Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  by_cases hi : i ∈ T <;> simp [hi]

theorem geometry_reconstruct (S T : Finset ι) (g : ι → E) :
    (∑ i ∈ S, g i) = sharedCore S T g + geometryRemainder S T g :=
  (sum_inter_add_sdiff S T g).symm

theorem arithmetic_reconstruct (S T : Finset ι) (g a : ι → E) :
    (∑ i ∈ T, a i) = sharedCore S T g + arithmeticRemainder S T g a := by
  have hp := sum_inter_add_sdiff T S a
  rw [Finset.inter_comm T S] at hp
  unfold sharedCore arithmeticRemainder
  rw [Finset.sum_sub_distrib]
  rw [← hp]
  abel

/-- Shared coefficients/actions are compared rather than assumed equal. -/
theorem difference_eq_remainders (S T : Finset ι) (g a : ι → E) :
    (∑ i ∈ T, a i) - (∑ i ∈ S, g i) =
      arithmeticRemainder S T g a - geometryRemainder S T g := by
  rw [arithmetic_reconstruct S T g a, geometry_reconstruct S T g]
  abel

/-- Same support leaves exactly the coefficient/action mismatch, not zero. -/
theorem arithmeticRemainder_same_support (S : Finset ι) (g a : ι → E) :
    arithmeticRemainder S S g a = ∑ i ∈ S, (a i - g i) := by
  simp [arithmeticRemainder]

/-- A supplied additive observation transports the exact signed difference. -/
theorem readout_difference [AddCommGroup F] (L : E →+ F)
    (S T : Finset ι) (g a : ι → E) :
    L (∑ i ∈ T, a i) - L (∑ i ∈ S, g i) =
      L (arithmeticRemainder S T g a) - L (geometryRemainder S T g) := by
  rw [← map_sub, difference_eq_remainders, map_sub]

/-- Evolution transports the source-extracted core and each remainder separately. -/
theorem map_decomposition [AddCommGroup F] (L : E →+ F)
    (S T : Finset ι) (g a : ι → E) :
    sharedCore S T (fun i => L (g i)) = L (sharedCore S T g) ∧
    geometryRemainder S T (fun i => L (g i)) = L (geometryRemainder S T g) ∧
    arithmeticRemainder S T (fun i => L (g i)) (fun i => L (a i)) =
      L (arithmeticRemainder S T g a) := by
  simp [sharedCore, geometryRemainder, arithmeticRemainder, map_sum, map_add, map_sub]

section Hermitian
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- All mixed terms of the actual Hermitian norm readout are retained. -/
theorem norm_sq_difference (C RG RA : H) :
    ‖C + RA‖ ^ 2 - ‖C + RG‖ ^ 2 =
      2 * (inner ℂ C (RA - RG)).re + ‖RA‖ ^ 2 - ‖RG‖ ^ 2 := by
  rw [norm_add_sq (𝕜 := ℂ), norm_add_sq (𝕜 := ℂ), inner_sub_right]
  simp only [Complex.sub_re]
  ring

def energyDefect (S T : Finset ι) (g a : ι → H) : ℝ :=
  2 * (inner ℂ (sharedCore S T g)
    (arithmeticRemainder S T g a - geometryRemainder S T g)).re +
    ‖arithmeticRemainder S T g a‖ ^ 2 - ‖geometryRemainder S T g‖ ^ 2

/-- No freely assigned error: this defect is calculated from the two finite sources. -/
theorem energy_difference_eq (S T : Finset ι) (g a : ι → H) :
    ‖∑ i ∈ T, a i‖ ^ 2 - ‖∑ i ∈ S, g i‖ ^ 2 = energyDefect S T g a := by
  rw [arithmetic_reconstruct S T g a, geometry_reconstruct S T g]
  exact norm_sq_difference _ _ _

/-- One-sided joint control suffices; no norm bound on each remainder is imposed. -/
theorem arithmetic_energy_le_geometry (S T : Finset ι) (g a : ι → H)
    {D : ℝ} (hD : energyDefect S T g a ≤ D) :
    ‖∑ i ∈ T, a i‖ ^ 2 ≤ ‖∑ i ∈ S, g i‖ ^ 2 + D := by
  have h := energy_difference_eq S T g a
  linarith

end Hermitian
end GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap
