# Complete source: GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7891da79dc3d1a40e1093a907e493e4a6024cb1b` · SHA-256 `a6c8eed431e6eb1bd9d7c91bfb97ce82462d0aaf97977ca26b233080994af52f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Finite exhaustive rearrangement is proved here. The asymptotic statement recorded
at the end remains an unproved mathematical proposition, not an imported theorem.
Source: Pham–Sauermann, arXiv:2602.15797v1, Theorem 1.2. -/
import GRWTSK.Combinatorics.Sequences.PartialSumOrdering
import GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair
import GRWTSK.Analysis.Fourier.ZModSubsetSum
import Mathlib.Data.List.Permutation
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false

namespace GRWTSK.PrimeCyclicRearrangement

open PartialSumOrdering

variable {G : Type*} [AddCommGroup G] [DecidableEq G]

/-- A finite, deterministic, total reference search. Discovery never bypasses the
kernel-checked `ValidPartialSumOrder` predicate. The list may contain duplicates;
the permutation contract preserves those multiplicities exactly. -/
def exhaustiveSearch (xs : List G) : Option (List G) :=
  xs.permutations.find? (fun ys => decide (ValidPartialSumOrder ys))

theorem exhaustiveSearch_sound {xs ys : List G}
    (h : exhaustiveSearch xs = some ys) : ys.Perm xs ∧ ValidPartialSumOrder ys := by
  constructor
  · exact List.mem_permutations.mp (List.mem_of_find?_eq_some h)
  · have hv := List.find?_some h
    exact of_decide_eq_true hv

/-- A successful result exists exactly when a valid rearrangement exists. This is
finite decidability, with no unproved existence assertion for arbitrary packets. -/
theorem exhaustiveSearch_success_iff (xs : List G) :
    (exhaustiveSearch xs).isSome = true ↔ ∃ ys, ys.Perm xs ∧ ValidPartialSumOrder ys := by
  simp only [exhaustiveSearch, List.find?_isSome, List.mem_permutations,
    decide_eq_true_eq]

theorem exhaustiveSearch_none_iff (xs : List G) :
    exhaustiveSearch xs = none ↔ ¬ ∃ ys, ys.Perm xs ∧ ValidPartialSumOrder ys := by
  simp only [exhaustiveSearch, List.find?_eq_none, List.mem_permutations,
    decide_eq_true_eq]
  simp only [not_exists, not_and]

/-- If supplied with an independently proved witness, exhaustive search returns a
valid witness. The input existence premise is explicit and is not discharged by search. -/
theorem exhaustiveSearch_complete {xs : List G}
    (h : ∃ ys, ys.Perm xs ∧ ValidPartialSumOrder ys) :
    ∃ ys, exhaustiveSearch xs = some ys ∧ ys.Perm xs ∧ ValidPartialSumOrder ys := by
  obtain ⟨ys, hy⟩ := Option.isSome_iff_exists.mp ((exhaustiveSearch_success_iff xs).mpr h)
  exact ⟨ys, hy, exhaustiveSearch_sound hy⟩

omit [AddCommGroup G] [DecidableEq G] in
/-- A deterministic finite bound on the number of generated candidates, including
repetitions caused by repeated labels. No randomized termination inference is used. -/
theorem candidate_count (xs : List G) : xs.permutations.length = xs.length.factorial :=
  List.length_permutations xs

/-- Success in the five-element cyclic group needs no probabilistic premise. -/
theorem zmod5_small_search_succeeds :
    (exhaustiveSearch ([1, 2, 3, 4] : List (ZMod 5))).isSome = true := by
  apply (exhaustiveSearch_success_iff _).mpr
  exact ⟨[1, 2, 4, 3], by decide, by decide⟩

/-- With two zero labels every ordering repeats a post-step sum. This input violates
the nonzero-label contract; generic search does not create existence out of a checker. -/
theorem zero_packet_search_rejected :
    exhaustiveSearch ([0, 0] : List (ZMod 5)) = none := by
  apply (exhaustiveSearch_none_iff _).mpr
  rintro ⟨ys, hp, hv⟩
  have he : ys = [0, 0] := (List.perm_replicate (n := 2) (a := (0 : ZMod 5))).mp hp
  subst ys
  exact (by decide : ¬ ValidPartialSumOrder ([0, 0] : List (ZMod 5))) hv

/-- In particular, a total sound search need not succeed on every input. -/
theorem sound_total_search_does_not_imply_unconditional_existence :
    ¬ (∀ xs : List (ZMod 5), ∃ ys, ys.Perm xs ∧ ValidPartialSumOrder ys) := by
  intro h
  exact (exhaustiveSearch_none_iff _).mp zero_packet_search_rejected (h _)

section ProbabilityReduction

omit [DecidableEq G]
noncomputable section

open ZModSubsetSum

variable {n : ℕ}

/-- Section 5 failure event B1 on the ACTUAL finite permutation space: an
original bad endpoint lies in the reserved tail. -/
def tailFailure (σ : Fin n → G) (D : ℕ) : Finset (Equiv.Perm (Fin n)) := by
  classical
  exact (permutationSpace n).filter fun π =>
    ¬ ∀ b ∈ BadRightEndpoints (σ ∘ π), b.val + 1 + 30 * D < n

/-- Section 5 failure event B2: some radius-`10D` neighborhood exceeds the
allowed density of original bad endpoints. -/
def densityFailure (σ : Fin n → G) (D : ℕ) : Finset (Equiv.Perm (Fin n)) := by
  classical
  exact (permutationSpace n).filter fun π =>
    ¬ ∀ z : Fin n, (badNeighborhood (σ ∘ π) z D).card ≤ D

/-- Section 5 failure event B3: an admissible partial repair fixing the earlier
positions has at least `2D` blocked candidates. This uses the exact interval
endpoint predicate `Blocked`, through `blockedCandidates`. -/
def compatibilityFailure (σ : Fin n → G) (D : ℕ) : Finset (Equiv.Perm (Fin n)) := by
  classical
  exact (permutationSpace n).filter fun ρ =>
    ¬ ∀ b ∈ BadRightEndpoints (σ ∘ ρ), ∀ π : Equiv.Perm (Fin n),
      AdmissiblePermutation D π → (∀ i : Fin n, i < b → π i = i) →
      (blockedCandidates (σ ∘ ρ) b π D).card < 2 * D

/-- Explicit finite good event; positivity of `D` is a separate deterministic
parameter hypothesis. No independence of the three events is asserted. -/
def goodPermutationEvent (σ : Fin n → G) (D : ℕ) : Finset (Equiv.Perm (Fin n)) :=
  permutationSpace n \ (tailFailure σ D ∪ densityFailure σ D ∪ compatibilityFailure σ D)

theorem not_mem_failure_union_iff_good (σ : Fin n → G) (D : ℕ) (hD : 0 < D)
    (ρ : Equiv.Perm (Fin n)) :
    ρ ∉ tailFailure σ D ∪ densityFailure σ D ∪ compatibilityFailure σ D ↔
      GoodRepairGeometry (σ ∘ ρ) D := by
  classical
  constructor
  · intro h
    have ht : ρ ∉ tailFailure σ D := fun hm =>
      h (Finset.mem_union_left _ (Finset.mem_union_left _ hm))
    have hd : ρ ∉ densityFailure σ D := fun hm =>
      h (Finset.mem_union_left _ (Finset.mem_union_right _ hm))
    have hc : ρ ∉ compatibilityFailure σ D := fun hm =>
      h (Finset.mem_union_right _ hm)
    refine ⟨hD, ?_, ?_, ?_⟩
    · simpa [tailFailure, permutationSpace] using ht
    · simpa [densityFailure, permutationSpace] using hd
    · simpa [compatibilityFailure, permutationSpace] using hc
  · intro hg hm
    rcases Finset.mem_union.mp hm with hm | hm
    · rcases Finset.mem_union.mp hm with hm | hm
      · have hf := (Finset.mem_filter.mp hm).2
        exact hf hg.tailSafety
      · have hf := (Finset.mem_filter.mp hm).2
        exact hf hg.localDensity
    · have hf := (Finset.mem_filter.mp hm).2
      exact hf hg.repairCompatibility

theorem mem_goodPermutationEvent_iff (σ : Fin n → G) (D : ℕ) (hD : 0 < D)
    (ρ : Equiv.Perm (Fin n)) :
    ρ ∈ goodPermutationEvent σ D ↔ GoodRepairGeometry (σ ∘ ρ) D := by
  classical
  simpa only [goodPermutationEvent, Finset.mem_sdiff, permutationSpace,
    Finset.mem_univ, true_and] using not_mem_failure_union_iff_good σ D hD ρ

/-- The source union-bound conclusion from three EXPLICIT, still conditional
finite-event bounds. The three analytic/combinatorial estimates are premises;
none is proved by declaring an interface containing them. -/
theorem conditional_good_geometry_probability (σ : Fin n → G) (D : ℕ)
    (h₁ : probability (permutationSpace n) (tailFailure σ D) ≤ 1 / 100)
    (h₂ : probability (permutationSpace n) (densityFailure σ D) ≤ 3 / 100)
    (h₃ : probability (permutationSpace n) (compatibilityFailure σ D) ≤ 1 / 25) :
    (23 / 25 : ℚ) ≤ probability (permutationSpace n) (goodPermutationEvent σ D) :=
  three_failure_good_mass _ _ _ _ (permutationSpace_nonempty n) h₁ h₂ h₃

theorem conditional_good_geometry_exists (σ : Fin n → G) (D : ℕ) (hD : 0 < D)
    (h₁ : probability (permutationSpace n) (tailFailure σ D) ≤ 1 / 100)
    (h₂ : probability (permutationSpace n) (densityFailure σ D) ≤ 3 / 100)
    (h₃ : probability (permutationSpace n) (compatibilityFailure σ D) ≤ 1 / 25) :
    ∃ ρ : Equiv.Perm (Fin n), GoodRepairGeometry (σ ∘ ρ) D := by
  have hm := conditional_good_geometry_probability σ D h₁ h₂ h₃
  have hp : 0 < probability (permutationSpace n) (goodPermutationEvent σ D) := by
    exact lt_of_lt_of_le (by norm_num : (0 : ℚ) < 23 / 25) hm
  obtain ⟨ρ, _, hρ⟩ := exists_of_probability_pos _ _ hp
  exact ⟨ρ, (mem_goodPermutationEvent_iff σ D hD ρ).mp hρ⟩

/-- Closed deterministic/probabilistic reduction: three actual failure-event
bounds produce a good permutation, then bounded disjoint repair produces a
valid rearrangement of the ORIGINAL packet. This remains conditional until the
source Lemmas 5.1--5.3 estimates in its premises are independently proved. -/
theorem conditional_rearrangement_from_failure_bounds (σ : Fin n → G) (D : ℕ)
    (hD : 0 < D) (hn : ∀ i, σ i ≠ 0)
    (h₁ : probability (permutationSpace n) (tailFailure σ D) ≤ 1 / 100)
    (h₂ : probability (permutationSpace n) (densityFailure σ D) ≤ 3 / 100)
    (h₃ : probability (permutationSpace n) (compatibilityFailure σ D) ≤ 1 / 25) :
    ∃ xs : List G, xs.Perm (List.ofFn σ) ∧ ValidPartialSumOrder xs := by
  obtain ⟨ρ, hg⟩ := conditional_good_geometry_exists σ D hD h₁ h₂ h₃
  obtain ⟨trace, _, _, hp, hv⟩ := goodRepairGeometry_valid_permutation
    (σ ∘ ρ) D (fun i => hn (ρ i)) hg
  exact ⟨_, hp.trans (ρ.ofFn_comp_perm σ), hv⟩

end
end ProbabilityReduction

/-- Exact source-range target from Theorem 1.2 of arXiv:2602.15797v1.
This definition only records the unproved target. It is not a theorem or an
anti-concentration interface, and supplies no witness or probability bound.
The empty initial prefix is excluded by `ValidPartialSumOrder`.
No assertion of the full Graham conjecture is made. -/
def PhamSauermannSourceRange : Prop :=
  ∀ α : ℝ, 0 < α → α < 1 → ∃ C : ℝ, 0 < C ∧
    ∀ (p : ℕ), p.Prime → ∀ S : Finset (ZMod p), 0 ∉ S →
      C ≤ (S.card : ℝ) → (S.card : ℝ) ≤ (p : ℝ) ^ (1 - α) →
      ∃ xs : List (ZMod p), xs.Perm S.toList ∧ ValidPartialSumOrder xs

end GRWTSK.PrimeCyclicRearrangement
```
