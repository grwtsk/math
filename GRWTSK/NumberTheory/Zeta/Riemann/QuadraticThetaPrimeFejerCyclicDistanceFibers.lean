/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFactorFourPropagation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Every residue modulo 4X has cyclic distance at most 2X. -/
theorem cyclicFejerDistance_le_twoX
    {X : ℕ}
    (hX : 0 < X)
    (r : ZMod (fejerOctavePeriod X)) :
    cyclicFejerDistance X r ≤ 2 * X := by
  unfold cyclicFejerDistance fejerOctavePeriod
  by_cases hv : r.val ≤ 2 * X
  · exact (Nat.min_le_left _ _).trans hv
  · have hvlt : r.val < 4 * X := r.val_lt
    have hright : 4 * X - r.val ≤ 2 * X := by
      omega
    exact (Nat.min_le_right _ _).trans hright

/-- Residues at a fixed cyclic distance d lie among the two canonical points
d and 4X-d. -/
theorem cyclicFejerDistance_eq_imp_boundary_pair
    {X d : ℕ}
    (hX : 0 < X)
    (r : ZMod (fejerOctavePeriod X))
    (hd : cyclicFejerDistance X r = d) :
    r = (d : ZMod (fejerOctavePeriod X)) ∨
      r = (fejerOctavePeriod X - d :
        ZMod (fejerOctavePeriod X)) := by
  have hL : 0 < fejerOctavePeriod X := by
    unfold fejerOctavePeriod
    omega
  haveI : NeZero (fejerOctavePeriod X) := ⟨Nat.ne_of_gt hL⟩
  unfold cyclicFejerDistance at hd
  by_cases hleft :
      r.val ≤ fejerOctavePeriod X - r.val
  · have hval : r.val = d := by
      rw [Nat.min_eq_left hleft] at hd
      exact hd
    left
    rw [← ZMod.natCast_zmod_val r, hval]
  · have hright :
        fejerOctavePeriod X - r.val ≤ r.val := Nat.le_of_not_ge hleft
    have hdist :
        fejerOctavePeriod X - r.val = d := by
      rw [Nat.min_eq_right hright] at hd
      exact hd
    have hval :
        r.val = fejerOctavePeriod X - d := by
      have hvle : r.val ≤ fejerOctavePeriod X := r.val_lt.le
      omega
    right
    rw [← ZMod.natCast_zmod_val r, hval]

/-- Finite fiber of residues at cyclic distance d. -/
def cyclicFejerDistanceFiber
    (X d : ℕ) :
    Finset (ZMod (fejerOctavePeriod X)) :=
  Finset.univ.filter fun r => cyclicFejerDistance X r = d

/-- Each positive or zero distance fiber contains at most two residues. -/
theorem cyclicFejerDistanceFiber_subset_pair
    {X d : ℕ}
    (hX : 0 < X) :
    cyclicFejerDistanceFiber X d ⊆
      {(d : ZMod (fejerOctavePeriod X)),
       (fejerOctavePeriod X - d :
        ZMod (fejerOctavePeriod X))} := by
  intro r hr
  rw [cyclicFejerDistanceFiber, Finset.mem_filter] at hr
  rcases hr with ⟨hruniv, hdist⟩
  simp only [Finset.mem_insert, Finset.mem_singleton]
  exact cyclicFejerDistance_eq_imp_boundary_pair hX r hdist

/-- Therefore every cyclic-distance fiber has cardinality at most two. -/
theorem cyclicFejerDistanceFiber_card_le_two
    {X d : ℕ}
    (hX : 0 < X) :
    (cyclicFejerDistanceFiber X d).card ≤ 2 := by
  apply le_trans
    (Finset.card_le_card
      (cyclicFejerDistanceFiber_subset_pair hX))
  simp

/-- The final finite pairing problem now has no multiplicity ambiguity:
all cyclic distances lie in [0,2X], and each distance occurs at most twice. -/
structure CyclicDistanceFiberData where
  distanceBound :
    ∀ r : ZMod (fejerOctavePeriod X),
      cyclicFejerDistance X r ≤ 2 * X
  fiberCard :
    ∀ d : ℕ,
      (cyclicFejerDistanceFiber X d).card ≤ 2

/-- Source-proved fiber data in every positive octave. -/
def cyclicDistanceFiberData
    {X : ℕ}
    (hX : 0 < X) :
    CyclicDistanceFiberData (X := X) where
  distanceBound := cyclicFejerDistance_le_twoX hX
  fiberCard := cyclicFejerDistanceFiber_card_le_two hX

end GRWTSK.RiemannHypothesis
