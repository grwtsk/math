/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib declarations retain their upstream attribution/licenses. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Tactic

/-!
# Actual observation bounds determine a graph sandwich

This supplies the payload-to-edge comparison deliberately absent from OrderedControl.
The middle relation compares actual observations; the lower and upper relations use
returned observations and their source-bound radii. Independent certificates combine
by union below and intersection above only when they refer to the SAME middle relation.
The unresolved relation is not an assertion that an analytic zero exists.

SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich

open RelationSandwich

variable {E V : Type*} [NormedAddCommGroup E]

/-- Both endpoint uncertainties are paid before declaring a graph comparison. -/
theorem pair_error_bound (x y a b : E) (ex ey : ℝ)
    (hx : ‖x - a‖ ≤ ex) (hy : ‖y - b‖ ≤ ey) :
    ‖x - y‖ ≤ ‖a - b‖ + ex + ey := by
  have h : x - y = (x - a) + (a - b) + (b - y) := by abel
  rw [h]
  calc
    ‖(x - a) + (a - b) + (b - y)‖ ≤
        ‖(x - a) + (a - b)‖ + ‖b - y‖ := norm_add_le _ _
    _ ≤ (‖x - a‖ + ‖a - b‖) + ‖b - y‖ :=
      add_le_add_right (norm_add_le _ _) _
    _ ≤ ‖a - b‖ + ex + ey := by
      have hy' : ‖b - y‖ ≤ ey := by rw [norm_sub_rev]; exact hy
      linarith

/-- Source identity/sector/support guards are retained, not inferred from nearby values. -/
def fromErrorBounds (guard : EdgeRelation V)
    (actual observed : V → E) (error : V → ℝ) (tolerance : V → V → ℝ)
    (bound : ∀ v, ‖observed v - actual v‖ ≤ error v) : Sandwich V where
  lower := fun u v => guard u v ∧
    ‖observed u - observed v‖ + error u + error v ≤ tolerance u v
  middle := fun u v => guard u v ∧ ‖actual u - actual v‖ ≤ tolerance u v
  upper := fun u v => guard u v ∧
    ‖observed u - observed v‖ ≤ tolerance u v + error u + error v
  lower_le_middle := by
    intro u v h
    refine ⟨h.1, ?_⟩
    have hu : ‖actual u - observed u‖ ≤ error u := by
      rw [norm_sub_rev]; exact bound u
    have hv : ‖actual v - observed v‖ ≤ error v := by
      rw [norm_sub_rev]; exact bound v
    exact (pair_error_bound _ _ _ _ _ _ hu hv).trans h.2
  middle_le_upper := by
    intro u v h
    refine ⟨h.1, ?_⟩
    have hpair := pair_error_bound _ _ _ _ _ _ (bound u) (bound v)
    linarith [h.2]

/-- Accumulate independent evidence without discarding an earlier certified constraint. -/
def meetEvidence (first second : Sandwich V)
    (sameSource : first.middle = second.middle) : Sandwich V where
  lower := fun u v => first.lower u v ∨ second.lower u v
  middle := first.middle
  upper := fun u v => first.upper u v ∧ second.upper u v
  lower_le_middle := by
    intro u v h
    rcases h with h | h
    · exact first.lower_le_middle h
    · rw [sameSource]
      exact second.lower_le_middle h
  middle_le_upper := by
    intro u v h
    refine ⟨first.middle_le_upper h, ?_⟩
    apply second.middle_le_upper
    rwa [← sameSource]

/-- The remaining graph ambiguity, not a claim that either alternative is realized. -/
def unresolved (S : Sandwich V) (u v : V) : Prop :=
  S.upper u v ∧ ¬ S.lower u v

theorem unresolved_meet_subset (first second : Sandwich V)
    (sameSource : first.middle = second.middle) :
    Subrelation (unresolved (meetEvidence first second sameSource))
      (unresolved first) := by
  intro u v h
  exact ⟨h.1.1, fun hl => h.2 (Or.inl hl)⟩

theorem actual_edge_never_pruned (first second : Sandwich V)
    (sameSource : first.middle = second.middle) {u v : V}
    (h : first.middle u v) :
    (meetEvidence first second sameSource).upper u v :=
  (meetEvidence first second sameSource).middle_le_upper h

/-- All actual zeros survive the source-bound candidate mask. -/
theorem zero_mem_candidate {α : Type*} (actual observed : α → E)
    (error : α → ℝ) (bound : ∀ z, ‖observed z - actual z‖ ≤ error z)
    {z : α} (hz : actual z = 0) : ‖observed z‖ ≤ error z := by
  simpa only [hz, sub_zero] using bound z

/-- A strict returned margin excludes zero; proximity alone supplies no existence claim. -/
theorem nonzero_of_returned_margin {α : Type*} (actual observed : α → E)
    (error : α → ℝ) (bound : ∀ z, ‖observed z - actual z‖ ≤ error z)
    {z : α} (margin : error z < ‖observed z‖) : actual z ≠ 0 := by
  intro hz
  exact (not_lt_of_ge (zero_mem_candidate actual observed error bound hz)) margin

/-- A complete cell, not just sampled points, is excluded after paying variation. -/
theorem cell_nonzero_of_variation {A : Type*} [NormedAddCommGroup A]
    (f : A → E) (cell : Set A) (center : A) (sample : E)
    (radius variation sampleError : ℝ) (hvariation : 0 ≤ variation)
    (hcell : ∀ z ∈ cell, ‖z - center‖ ≤ radius)
    (hsource : ∀ z ∈ cell, ‖f z - f center‖ ≤ variation * ‖z - center‖)
    (hsample : ‖sample - f center‖ ≤ sampleError)
    (margin : sampleError + variation * radius < ‖sample‖) :
    ∀ z ∈ cell, f z ≠ 0 := by
  intro z hz hzero
  have hdiff : sample - f z = (sample - f center) + (f center - f z) := by abel
  have hnorm : ‖sample - f z‖ ≤ sampleError + variation * radius := by
    rw [hdiff]
    calc
      ‖(sample - f center) + (f center - f z)‖ ≤
          ‖sample - f center‖ + ‖f center - f z‖ := norm_add_le _ _
      _ = ‖sample - f center‖ + ‖f z - f center‖ := by rw [norm_sub_rev (f center) (f z)]
      _ ≤ sampleError + variation * ‖z - center‖ := add_le_add hsample (hsource z hz)
      _ ≤ sampleError + variation * radius :=
        add_le_add_left (mul_le_mul_of_nonneg_left (hcell z hz) hvariation) _
  rw [hzero, sub_zero] at hnorm
  exact (not_lt_of_ge hnorm) margin

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich
