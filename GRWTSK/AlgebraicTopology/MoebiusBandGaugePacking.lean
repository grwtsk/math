/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Tactic

/-!
# Möbius-band orientation holonomy and the countable packing port

This is a precise, finite cyclic ZMod 2 model for the orientation
reversal of a Möbius band. Changing vertex gauges cannot erase its
nonzero closed-loop class. A separate, explicitly conditional countable
isolation lemma records the separability step used in the Frolkina–
Melikhov disjoint-embedding theorem.

**Not proved here:** the existence of a triangulated Möbius-band model
with this cocycle; the full compact embedding space, its second-
countable basis, or the topological theorem that pairwise disjoint
embedded Möbius bands are isolated. In Melikhov's proof, the latter
uses equivariant deleted products and a Stiefel–Whitney obstruction.

This file does not modify the signed number-theoretic Möbius source,
Kakeya losses, or the RH-facing endpoint estimate.

References:
* Frolkina, "Pairwise disjoint Moebius bands in space",
  arXiv:2212.02983, Proposition 3.2 and Corollary 3.6.
* Melikhov, "A note on O. Frolkina's paper",
  arXiv:1810.04089v2, Theorem 1 and Lemma 3.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking

/-- Parity of the transition maps around a finite, oriented loop.
In the topological Möbius-band model, holonomy 1 is the restriction
of the first Stiefel–Whitney class to an orientation-reversing loop.
We do not equate this finite model with manifold cohomology here. -/
def parityHolonomy (w : ℕ → ZMod 2) (n : ℕ) : ZMod 2 :=
  ∑ i ∈ Finset.range n, w i

/-- A change of local trivialization by a vertex parity gauge.
The gauge contribution to edge i is the coboundary g i - g (i+1). -/
def transportEdge (w g : ℕ → ZMod 2) (i : ℕ) : ZMod 2 :=
  w i + g i - g (i + 1)

/-- Exact telescope: a gauge changes path holonomy only by boundary
terms; all intermediate vertex contributions cancel. -/
theorem transport_holonomy_boundary (w g : ℕ → ZMod 2) (n : ℕ) :
    parityHolonomy (transportEdge w g) n =
      parityHolonomy w n + g 0 - g n := by
  change (∑ i ∈ Finset.range n, transportEdge w g i) =
    (∑ i ∈ Finset.range n, w i) + g 0 - g n
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      dsimp [transportEdge]
      ring

/-- Holonomy is unchanged by a gauge whose initial and final frames
agree. This is the closed-loop gauge invariance. -/
theorem closed_holonomy_invariant (w g : ℕ → ZMod 2) (n : ℕ)
    (hclosed : g n = g 0) :
    parityHolonomy (transportEdge w g) n = parityHolonomy w n := by
  rw [transport_holonomy_boundary, hclosed]
  ring

/-- A parity-one (orientation-reversing) loop cannot be made globally
orientation-coherent by any closed change of local frames. -/
theorem parity_one_cannot_be_gauged_away (w g : ℕ → ZMod 2) (n : ℕ)
    (hodd : parityHolonomy w n = 1)
    (hclosed : g n = g 0) :
    ¬ ∀ i ∈ Finset.range n, transportEdge w g i = 0 := by
  intro hzero
  have hsum : parityHolonomy (transportEdge w g) n = 0 := by
    unfold parityHolonomy
    exact Finset.sum_eq_zero (fun i hi => hzero i hi)
  have hinvariant := closed_holonomy_invariant w g n hclosed
  rw [hsum, hodd] at hinvariant
  norm_num at hinvariant

/-- The canonical one-edge loop represents the half-twist: its
orientation-transition parity is nonzero. -/
theorem canonical_half_twist_holonomy :
    parityHolonomy (fun _ : ℕ => (1 : ZMod 2)) 1 = 1 := by
  simp [parityHolonomy]

/-- Even without fixing the actual local gauge, the canonical half-
twist cannot be made globally coherent around its single closed edge. -/
theorem canonical_half_twist_no_global_frame (g : ℕ → ZMod 2)
    (hclosed : g 1 = g 0) :
    ¬ ∀ i ∈ Finset.range 1,
      transportEdge (fun _ : ℕ => (1 : ZMod 2)) g i = 0 :=
  parity_one_cannot_be_gauged_away _ g 1 canonical_half_twist_holonomy hclosed

/-- The purely countability-theoretic piece of the Frolkina/Melikhov
argument: a countable family of tests isolating every family member
gives an injection of family labels into Nat.

The hypothesis h is NOT automatically supplied by pairwise
disjointness. For nonorientable embedded surfaces, establishing such
isolation requires the actual wild-embedding obstruction theorem. -/
theorem countable_of_countable_isolating_tests
    {ι X : Type*} (f : ι → X) (basic : ℕ → Set X)
    (h : ∀ i : ι, ∃ k : ℕ,
      f i ∈ basic k ∧ ∀ j : ι, f j ∈ basic k → j = i) :
    Countable ι := by
  classical
  let code : ι → ℕ := fun i => Classical.choose (h i)
  have hmem (i : ι) : f i ∈ basic (code i) :=
    (Classical.choose_spec (h i)).1
  have hisolated (i j : ι) (hj : f j ∈ basic (code i)) : j = i :=
    (Classical.choose_spec (h i)).2 j hj
  have hinj : Function.Injective code := by
    intro i j hij
    have hj : f j ∈ basic (code i) := by simpa only [hij] using hmem j
    exact (hisolated i j hj).symm
  exact Countable.of_injective code hinj

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking
