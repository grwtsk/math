/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOddSquarefreeDoublingPacket
import Mathlib

/-!
# The complete squarefree-oriented doubled edge partition

The sum over every selected ordered edge is reindexed by its unique odd
source. A forward edge (k,2k) and its reverse (2k,k) never coincide.
Both orientations and every nonspecial squarefree dense edge are retained.

The target is the existing ExactSquarefreePairPartition proposition.
The source is a candidate pending pinned Lean elaboration, and no formal
verification is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket
open GRWTSK.NumberTheory.MoebiusOddSquarefreeDoublingPacket
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusSquarefreeOrientedEdgePartition

private def edgeTerm (T : ℝ) (e : ℕ × ℕ) : ℝ :=
  moebiusReal e.1 * moebiusReal e.2 * pickupResponseGram T e.1 e.2

private def forwardEdge (k : ℕ) : ℕ × ℕ := (k, 2 * k)
private def reverseEdge (k : ℕ) : ℕ × ℕ := (2 * k, k)

private def denseEdges (A : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ) :=
  ((squarefreeEndpointIndex T).product (squarefreeEndpointIndex T)).filter
    (fun e => denseGapPair A e.1 e.2)

private def forwardEdges (A : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ) :=
  (oddSquarefreeDoublingIndices A T).image forwardEdge

private def reverseEdges (A : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ) :=
  (oddSquarefreeDoublingIndices A T).image reverseEdge

/-- Both members of an odd-squarefree doubling edge are squarefree,
in the original endpoint set, and its gap is its odd member. -/
private theorem selected_edge_valid
    (A : Finset ℕ) (T : ℝ) (k : ℕ)
    (hk : k ∈ oddSquarefreeDoublingIndices A T) :
    forwardEdge k ∈ denseEdges A T ∧
      reverseEdge k ∈ denseEdges A T := by
  classical
  have h := (Finset.mem_filter.mp hk)
  have hkS : Squarefree k := h.2.1
  have hkOdd : ¬ 2 ∣ k := h.2.2.1
  have hk2 : 2 * k ∈ endpointIndex T := h.2.2.2.1
  have hgap : k ∉ A := h.2.2.2.2
  have hkpos : 0 < k := (Finset.mem_Icc.mp h.1).1
  have h2Sq : Squarefree (2 * k) := by
    exact (Nat.squarefree_mul_iff (by omega : (2 : ℕ) ≠ 0)
      (by omega : k ≠ 0)).2
      ⟨Nat.squarefree_two, hkS,
        (Nat.prime_two.coprime_iff_not_dvd).2 hkOdd⟩
  have hmem1 : k ∈ squarefreeEndpointIndex T := by
    simp [squarefreeEndpointIndex, h.1, hkS]
  have hmem2 : 2 * k ∈ squarefreeEndpointIndex T := by
    simp [squarefreeEndpointIndex, hk2, h2Sq]
  have hd : Nat.dist k (2 * k) = k := by
    rw [Nat.dist_eq_sub_of_le (by omega : k ≤ 2 * k)]
    omega
  constructor
  · simp [forwardEdge, denseEdges, denseGapPair, hmem1, hmem2, hd,
      hgap, hkpos]
  · simp [reverseEdge, denseEdges, denseGapPair, hmem1, hmem2,
      Nat.dist_comm, hd, hgap, hkpos]

/-- The oriented images are disjoint: if (k,2k)=(2l,l) with odd
k and l, then k is even, contradiction. -/
private theorem forward_reverse_disjoint
    (A : Finset ℕ) (T : ℝ) :
    Disjoint (forwardEdges A T) (reverseEdges A T) := by
  classical
  apply Finset.disjoint_left.mpr
  intro e he hr
  obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp he
  obtain ⟨l, hl, heq⟩ := Finset.mem_image.mp hr
  have hkOdd : ¬ 2 ∣ k := (Finset.mem_filter.mp hk).2.2.1
  have heven : 2 ∣ k := by
    have hfst : k = 2 * l := congrArg Prod.fst heq
    exact hfst.symm ▸ dvd_mul_right 2 l
  exact hkOdd heven

/-- A selected pair is exactly one of the two oriented image sets.
There is no third orientation or duplicate odd index. -/
private theorem selected_pair_iff_oriented
    (A : Finset ℕ) (T : ℝ) (e : ℕ × ℕ) :
    selectedDoublingPair A T e.1 e.2 ↔
      e ∈ forwardEdges A T ∨ e ∈ reverseEdges A T := by
  constructor
  · rintro ⟨k, hk, h⟩
    rcases h with h | h
    · left
      apply Finset.mem_image.mpr
      exact ⟨k, hk, by cases e; simp_all [forwardEdge]⟩
    · right
      apply Finset.mem_image.mpr
      exact ⟨k, hk, by cases e; simp_all [reverseEdge]⟩
  · rintro (hf | hr)
    · obtain ⟨k, hk, he⟩ := Finset.mem_image.mp hf
      exact ⟨k, hk, by cases e; simp_all [forwardEdge]⟩
    · obtain ⟨k, hk, he⟩ := Finset.mem_image.mp hr
      exact ⟨k, hk, by cases e; simp_all [reverseEdge]⟩

/-- No two distinct odd indices produce the same oriented edge. -/
private theorem forward_injective : Function.Injective forwardEdge := by
  intro a b h
  exact congrArg Prod.fst h

private theorem reverse_injective : Function.Injective reverseEdge := by
  intro a b h
  exact congrArg Prod.snd h

/-- A finite sum over a selected image is exactly the sum over its
unique odd source index, for either orientation. -/
private theorem sum_forward_edges (A : Finset ℕ) (T : ℝ) :
    ∑ e ∈ forwardEdges A T, edgeTerm T e =
      ∑ k ∈ oddSquarefreeDoublingIndices A T,
        edgeTerm T (forwardEdge k) := by
  exact Finset.sum_image (s := oddSquarefreeDoublingIndices A T)
    (f := forwardEdge) (g := edgeTerm T) (fun a _ b _ h => forward_injective h)

private theorem sum_reverse_edges (A : Finset ℕ) (T : ℝ) :
    ∑ e ∈ reverseEdges A T, edgeTerm T e =
      ∑ k ∈ oddSquarefreeDoublingIndices A T,
        edgeTerm T (reverseEdge k) := by
  exact Finset.sum_image (s := oddSquarefreeDoublingIndices A T)
    (f := reverseEdge) (g := edgeTerm T) (fun a _ b _ h => reverse_injective h)

/-- The finite pair-partition candidate for every A,T. The disjoint
two-orientation reindexing is explicit, not an axiom or an extra premise. -/
theorem exactSquarefreePairPartition :
    ExactSquarefreePairPartition := by
  intro A T
  classical
  let E := denseEdges A T
  let F := forwardEdges A T
  let R := reverseEdges A T
  have hf : F ⊆ E := by
    intro e he
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp he
    exact (selected_edge_valid A T k hk).1
  have hr : R ⊆ E := by
    intro e he
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp he
    exact (selected_edge_valid A T k hk).2
  have hdis : Disjoint F R := forward_reverse_disjoint A T
  have hunion : F ∪ R ⊆ E := Finset.union_subset hf hr
  have hpartition :
      ∑ e ∈ E, edgeTerm T e =
        (∑ e ∈ F ∪ R, edgeTerm T e) +
        (∑ e ∈ E.filter (fun e =>
          ¬selectedDoublingPair A T e.1 e.2), edgeTerm T e) := by
    rw [← Finset.sum_filter_add_sum_filter_not
      (s := E) (p := fun e =>
        selectedDoublingPair A T e.1 e.2) (f := edgeTerm T)]
    congr 1
    apply Finset.ext
    intro e
    simp only [Finset.mem_filter, Finset.mem_union]
    have hs := selected_pair_iff_oriented A T e
    constructor
    · intro h
      exact hs.mp h.2
    · intro h
      rcases h with hf' | hr'
      · exact ⟨hf hf', hs.mpr (Or.inl hf')⟩
      · exact ⟨hr hr', hs.mpr (Or.inr hr')⟩
  have hselected :
      (∑ e ∈ F ∪ R, edgeTerm T e) =
      oddSquarefreeDoublingPacket A T := by
    rw [Finset.sum_union hdis, sum_forward_edges A T, sum_reverse_edges A T]
    unfold oddSquarefreeDoublingPacket
    rw [← Finset.sum_add_distrib]
    rfl
  have hfull :
      denseSquarefreeCross A T = ∑ e ∈ E, edgeTerm T e := by
    unfold denseSquarefreeCross denseEdges
    rw [Finset.sum_filter]
    simp only [Finset.sum_product]
  have hremaining :
      remainingSquarefreePairSum A T =
        ∑ e ∈ E.filter (fun e =>
          ¬selectedDoublingPair A T e.1 e.2), edgeTerm T e := by
    unfold remainingSquarefreePairSum denseEdges
    rw [Finset.sum_filter]
    simp only [Finset.sum_product]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hd : denseGapPair A m n <;>
      by_cases hs : selectedDoublingPair A T m n <;>
        simp [hd, hs]
  rw [hfull, hpartition, hselected, ← hremaining]

end GRWTSK.NumberTheory.MoebiusSquarefreeOrientedEdgePartition
