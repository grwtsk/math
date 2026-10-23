/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Residual counted-edge trail proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Residual-universe counted directed trails

The ambient U is a finite set of individual counted edge instances.
A residual trail uses only U, so no existing circuit edge is reused.
All claims are finite and arithmetic-independent.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- A fresh counted trail whose used edge instances are all in U. -/
structure ResidualFreshTrail
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (U : Finset (CountedBinaryEdge m c))
    (a b : Fin m → Bool) where
  trail : FreshCountedTrail m c a b
  supported : trail.used ⊆ U

/-- Maximality among residual edges, not all counted edges. -/
def ResidualFreshTrail.Maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b) : Prop :=
  ∀ e ∈ U, countedEdgeSource m c e = b → e ∈ R.trail.used

/-- Extend by a fresh edge instance from U. Endpoint compatibility,
distinctness, and residual support are preserved by construction. -/
def ResidualFreshTrail.append
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (e : CountedBinaryEdge m c)
    (heU : e ∈ U)
    (fresh : e ∉ R.trail.used)
    (incident : countedEdgeSource m c e = b) :
    ResidualFreshTrail m c U a (countedEdgeTarget m c e) where
  trail := R.trail.append e fresh incident
  supported := by
    rw [FreshCountedTrail.append_used]
    exact Finset.insert_subset heU R.supported

/-- The unused residual edge count drops by exactly one. -/
theorem ResidualFreshTrail.append_unused_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (e : CountedBinaryEdge m c)
    (heU : e ∈ U)
    (fresh : e ∉ R.trail.used)
    (incident : countedEdgeSource m c e = b) :
    (U \ (R.append e heU fresh incident).trail.used).card + 1 =
      (U \ R.trail.used).card := by
  classical
  change (U \ (R.trail.append e fresh incident).used).card + 1 =
    (U \ R.trail.used).card
  rw [FreshCountedTrail.append_used, Finset.sdiff_insert]
  exact Finset.card_erase_of_mem
    (Finset.mem_sdiff.mpr ⟨heU, fresh⟩)

/-- Failure of residual terminal maximality produces an actual
fresh outgoing edge instance belonging to U. -/
theorem ResidualFreshTrail.exists_extension_of_not_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (h : ¬ R.Maximal) :
    ∃ e : CountedBinaryEdge m c,
      ∃ heU : e ∈ U,
      ∃ fresh : e ∉ R.trail.used,
        countedEdgeSource m c e = b := by
  classical
  unfold ResidualFreshTrail.Maximal at h
  push_neg at h
  obtain ⟨e, heU, hs, fresh⟩ := h
  exact ⟨e, heU, fresh, hs⟩


/-- A residual trail that cannot be extended is maximal; otherwise
it has a strictly smaller residual-unused cardinality successor. -/
theorem ResidualFreshTrail.maximal_or_strict_successor
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b) :
    R.Maximal ∨
      ∃ (e : CountedBinaryEdge m c)
        (heU : e ∈ U)
        (fresh : e ∉ R.trail.used)
        (incident : countedEdgeSource m c e = b),
        (U \ (R.append e heU fresh incident).trail.used).card <
          (U \ R.trail.used).card := by
  classical
  by_cases h : R.Maximal
  · exact Or.inl h
  · right
    obtain ⟨e, heU, fresh, incident⟩ :=
      R.exists_extension_of_not_maximal h
    refine ⟨e, heU, fresh, incident, ?_⟩
    have hcard := R.append_unused_card e heU fresh incident
    omega



/-- Every residual-restricted fresh trail has a terminal-maximal
extension, obtained by finite descent on the exact unused-edge
count inside U. All original used instances remain present. -/
theorem ResidualFreshTrail.exists_maximal_extension
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b) :
    ∃ (z : Fin m → Bool) (Q : ResidualFreshTrail m c U a z),
      Q.Maximal ∧ R.trail.used ⊆ Q.trail.used := by
  classical
  suffices hmain :
      ∀ (n : ℕ) (b : Fin m → Bool)
        (R : ResidualFreshTrail m c U a b),
        (U \ R.trail.used).card = n →
        ∃ (z : Fin m → Bool) (Q : ResidualFreshTrail m c U a z),
          Q.Maximal ∧ R.trail.used ⊆ Q.trail.used by
    exact hmain _ b R rfl
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro b R hn
      rcases R.maximal_or_strict_successor with hmax | hstep
      · exact ⟨b, R, hmax, Finset.Subset.rfl⟩
      · obtain ⟨e, heU, fresh, incident, hlt⟩ := hstep
        let S := R.append e heU fresh incident
        have hs : (U \ S.trail.used).card < n := by
          dsimp [S]
          omega
        obtain ⟨z, Q, hmax, hSQ⟩ := ih _ hs _ S rfl
        refine ⟨z, Q, hmax, ?_⟩
        have hRS : R.trail.used ⊆ S.trail.used := by
          dsimp [S]
          rw [FreshCountedTrail.append_used]
          exact Finset.subset_insert _ _
        exact hRS.trans hSQ



/-- A terminal-maximal residual trail uses every residual outgoing
edge instance at its final vertex. Hence its unused residual
outgoing degree is exactly zero. -/
theorem ResidualFreshTrail.unused_out_zero_of_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (hmax : R.Maximal) :
    (U \ R.trail.used).filter
      (fun e => countedEdgeSource m c e = b) = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_not_mem.mpr
  intro e he
  have he' := Finset.mem_filter.mp he
  have hmem := Finset.mem_sdiff.mp he'.1
  exact hmem.2 (hmax e hmem.1 he'.2)

/-- Residual outgoing maximality as a zero-cardinality identity,
ready for the balanced-degree endpoint calculation. -/
theorem ResidualFreshTrail.unused_out_card_zero_of_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (hmax : R.Maximal) :
    countedUsedOutDegree m c (U \ R.trail.used) b = 0 := by
  unfold countedUsedOutDegree
  rw [R.unused_out_zero_of_maximal hmax]
  rfl



/-- Residual degree balance is a statement about the exact finite
edge-instance set U; it need not coincide with the entire graph. -/
def ResidualDegreeBalanced
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (U : Finset (CountedBinaryEdge m c)) : Prop :=
  ∀ v : Fin m → Bool,
    countedUsedOutDegree m c U v = countedUsedInDegree m c U v

/-- The residual outgoing degree partitions into edges used by R
and those still unused inside U. -/
theorem ResidualFreshTrail.out_degree_partition
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (v : Fin m → Bool) :
    countedUsedOutDegree m c U v =
      countedUsedOutDegree m c R.trail.used v +
        countedUsedOutDegree m c (U \ R.trail.used) v := by
  classical
  unfold countedUsedOutDegree
  have hdisj :
      Disjoint (R.trail.used.filter
        (fun e => countedEdgeSource m c e = v))
        ((U \ R.trail.used).filter
          (fun e => countedEdgeSource m c e = v)) := by
    apply Finset.disjoint_left.mpr
    intro e he1 he2
    have h1 := (Finset.mem_filter.mp he1).1
    have h2 := (Finset.mem_filter.mp he2).1
    exact (Finset.mem_sdiff.mp h2).2 h1
  have hunion :
      U.filter (fun e => countedEdgeSource m c e = v) =
        (R.trail.used.filter
          (fun e => countedEdgeSource m c e = v)) ∪
        ((U \ R.trail.used).filter
          (fun e => countedEdgeSource m c e = v)) := by
    ext e
    simp only [Finset.mem_filter, Finset.mem_union, Finset.mem_sdiff]
    constructor
    · intro ⟨heU, hv⟩
      by_cases hu : e ∈ R.trail.used
      · exact Or.inl ⟨hu, hv⟩
      · exact Or.inr ⟨⟨heU, hu⟩, hv⟩
    · intro h
      rcases h with ⟨hu, hv⟩ | ⟨⟨heU, _⟩, hv⟩
      · exact ⟨R.supported hu, hv⟩
      · exact ⟨heU, hv⟩
  rw [hunion, Finset.card_union_of_disjoint hdisj]

/-- The matching residual incoming-degree partition. -/
theorem ResidualFreshTrail.in_degree_partition
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (v : Fin m → Bool) :
    countedUsedInDegree m c U v =
      countedUsedInDegree m c R.trail.used v +
        countedUsedInDegree m c (U \ R.trail.used) v := by
  classical
  unfold countedUsedInDegree
  have hdisj :
      Disjoint (R.trail.used.filter
        (fun e => countedEdgeTarget m c e = v))
        ((U \ R.trail.used).filter
          (fun e => countedEdgeTarget m c e = v)) := by
    apply Finset.disjoint_left.mpr
    intro e he1 he2
    exact (Finset.mem_sdiff.mp (Finset.mem_filter.mp he2).1).2
      (Finset.mem_filter.mp he1).1
  have hunion :
      U.filter (fun e => countedEdgeTarget m c e = v) =
        (R.trail.used.filter
          (fun e => countedEdgeTarget m c e = v)) ∪
        ((U \ R.trail.used).filter
          (fun e => countedEdgeTarget m c e = v)) := by
    ext e
    simp only [Finset.mem_filter, Finset.mem_union, Finset.mem_sdiff]
    constructor
    · intro ⟨heU, hv⟩
      by_cases hu : e ∈ R.trail.used
      · exact Or.inl ⟨hu, hv⟩
      · exact Or.inr ⟨⟨heU, hu⟩, hv⟩
    · intro h
      rcases h with ⟨hu, hv⟩ | ⟨⟨heU, _⟩, hv⟩
      · exact ⟨R.supported hu, hv⟩
      · exact ⟨heU, hv⟩
  rw [hunion, Finset.card_union_of_disjoint hdisj]



/-- A terminal-maximal residual trail in a degree-balanced residual
multigraph returns to its starting vertex. If its endpoints differed,
the unused incoming degree at the finish would have to be negative. -/
theorem ResidualFreshTrail.closed_of_balanced_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (hbalance : ResidualDegreeBalanced m c U)
    (hmax : R.Maximal) :
    a = b := by
  by_contra hne
  have hall := hbalance b
  have hout := R.out_degree_partition b
  have hin := R.in_degree_partition b
  have hzero := R.unused_out_card_zero_of_maximal hmax
  have htrail := R.trail.used_degree_imbalance b
  have hbb : b = b := rfl
  simp [hne, hbb] at htrail
  omega


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
