import FormalResearch.RiemannHypothesis.Conversation.WeightedVariance

/-!
# Uniform row envelopes allow coefficient-aligned profiles

Batch 21's finite countermodel is exact at every point of an arbitrary real
profile. Each row has the same magnitude as the common profile, but the signed
aggregate equals the absolute coefficient mass times that profile. This
does not assert that the actual common arithmetic Fourier profile can be
independently selected row by row.

Human direction: grwtsk contributors. Local finite interface and Lean proof:
OpenAI Codex. No source-specific dispersion bound is refuted.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ProfileAlignment

open scoped BigOperators
noncomputable section

/-- The aligned unit in this module, with the following exact parameterization.

def alignedUnit (c : ℝ) : ℝ := if 0 ≤ c then 1 else -1
-/
def alignedUnit (c : ℝ) : ℝ := if 0 ≤ c then 1 else -1
/-- The aligned profile in this module, with the following exact parameterization.

def alignedProfile {ι α : Type*} (c : ι → ℝ) (profile : α → ℝ) (i : ι) : α → ℝ := fun x =>
alignedUnit (c i) * profile x
-/
def alignedProfile {ι α : Type*} (c : ι → ℝ) (profile : α → ℝ) (i : ι) : α → ℝ :=
  fun x => alignedUnit (c i) * profile x

theorem alignedUnit_abs (c : ℝ) : |alignedUnit c| = 1 := by
  unfold alignedUnit
  split <;> norm_num

theorem coefficient_alignedUnit (c : ℝ) : c * alignedUnit c = |c| := by
  unfold alignedUnit
  split
  · next h => rw [abs_of_nonneg h]; ring
  · next h => rw [abs_of_neg (lt_of_not_ge h)]; ring

theorem row_envelope_unchanged {ι α : Type*} (c : ι → ℝ) (profile : α → ℝ)
    (i : ι) (x : α) : |alignedProfile c profile i x| = |profile x| := by
  rw [alignedProfile, abs_mul, alignedUnit_abs, one_mul]

/-- The equality holds for every profile value, not a sampled sign choice. -/
theorem aggregate_equals_absolute_mass {ι α : Type*} (s : Finset ι) (c : ι → ℝ)
    (profile : α → ℝ) (x : α) :
    (∑ i ∈ s, c i * alignedProfile c profile i x) = (∑ i ∈ s, |c i|) * profile x := by
  unfold alignedProfile
  simp_rw [← mul_assoc, coefficient_alignedUnit]
  rw [Finset.sum_mul]

theorem aggregate_envelope {ι α : Type*} (s : Finset ι) (c : ι → ℝ)
    (profile : α → ℝ) (x : α) :
    |∑ i ∈ s, c i * alignedProfile c profile i x| = (∑ i ∈ s, |c i|) * |profile x| := by
  rw [aggregate_equals_absolute_mass, abs_mul, abs_of_nonneg]
  exact Finset.sum_nonneg (fun _ _ => abs_nonneg _)

end
end GRWTSK.RiemannHypothesis.Conversation.ProfileAlignment
