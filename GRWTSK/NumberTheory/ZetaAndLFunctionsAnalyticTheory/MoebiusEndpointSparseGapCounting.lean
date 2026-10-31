/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamEnergyCounting
import Mathlib

/-!
# Exact combinatorial source for sparse additive gap degrees

The original endpoint gaps are measured by Nat.dist; the finite gap set
need not be an interval or be concentrated near zero. For each source
index m and each selected distance a there are at most two possible
neighbours, m+a and m-a. No signed arithmetic cancellation follows from
this fact alone. This is the formerly named GapSetNeighbourCount
condition of the endpoint Putnam energy-counting source.

All scripts are source proof candidates, with compilation and fresh kernel
checking deferred by the user. No RH conclusion is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting

namespace GRWTSK.NumberTheory.MoebiusEndpointSparseGapCounting

/-- Every natural-number pair at a given distance appears on one of the
two sides of m. No n=m term needs removal for this elementary inclusion. -/
theorem nat_distance_two_sides (m n : ℕ) :
    n = m + Nat.dist m n ∨ n = m - Nat.dist m n := by
  rcases le_total m n with h | h
  · left
    simp [Nat.dist, h]
    omega
  · right
    simp [Nat.dist, Nat.not_le.mpr (by omega : ¬ m ≤ n)]
    omega

/-- All selected-distance neighbours lie in the union of the two
images of the original gap set. -/
theorem gap_neighbours_subset_two_images
    (A S : Finset ℕ) (m : ℕ) :
    S.filter (fun n => m ≠ n ∧ Nat.dist m n ∈ A) ⊆
      (A.image (fun a => m + a)) ∪ (A.image (fun a => m - a)) := by
  classical
  intro n hn
  have hgap : Nat.dist m n ∈ A := (Finset.mem_filter.mp hn).2.2
  rcases nat_distance_two_sides m n with h | h
  · apply Finset.mem_union_left
    exact Finset.mem_image.mpr ⟨Nat.dist m n, hgap, h.symm⟩
  · apply Finset.mem_union_right
    exact Finset.mem_image.mpr ⟨Nat.dist m n, hgap, h.symm⟩

/-- For any finite source index set S and any finite set of positive or
zero distances A, every source index has at most 2*#A neighbours.
The proof does not depend on source signs, smoothness, or the gap sizes. -/
theorem gapSetNeighbourCount :
    GapSetNeighbourCount := by
  intro A S m
  classical
  have hs := gap_neighbours_subset_two_images A S m
  calc
    (S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A).card ≤
        ((A.image (fun a => m + a)) ∪
          (A.image (fun a => m - a))).card :=
      Finset.card_le_card hs
    _ ≤ (A.image (fun a => m + a)).card +
        (A.image (fun a => m - a)).card :=
      Finset.card_union_le _ _
    _ ≤ A.card + A.card :=
      add_le_add (Finset.card_image_le) (Finset.card_image_le)
    _ = 2 * A.card := by omega

end GRWTSK.NumberTheory.MoebiusEndpointSparseGapCounting
