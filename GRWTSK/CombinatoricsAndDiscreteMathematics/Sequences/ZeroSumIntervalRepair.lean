import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.DisjointTranspositions
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.PartialSumOrdering
import Mathlib.Order.Interval.Finset.Fin

/-!
# Deterministic local repair of zero-sum intervals

The definitions translate Section 5 of Pham--Sauermann,
*On Graham's rearrangement conjecture*, arXiv:2602.15797v1 (17 February 2026),
to zero-based finite positions. Thus the paper's `2 ≤ a < b ≤ n` is
`1 ≤ a.val ∧ a < b` below. No probabilistic or Fourier assertion is assumed
by the local interval algebra.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.PartialSumOrdering

noncomputable section

open scoped BigOperators

variable {G : Type*} [AddCommGroup G] {n : ℕ}

def positionIntervalSum (σ : Fin n → G) (a b : Fin n) : G :=
  ∑ i ∈ Finset.Icc a b, σ i

def BadRightEndpoints (σ : Fin n → G) : Finset (Fin n) := by
  classical
  exact Finset.univ.filter fun b => ∃ a : Fin n,
    1 ≤ a.val ∧ a < b ∧ positionIntervalSum σ a b = 0

@[simp] theorem mem_badRightEndpoints (σ : Fin n → G) (b : Fin n) :
    b ∈ BadRightEndpoints σ ↔ ∃ a : Fin n,
      1 ≤ a.val ∧ a < b ∧ positionIntervalSum σ a b = 0 := by
  classical
  simp [BadRightEndpoints]

/-- The paper's blocked predicate, including both endpoint alternatives. -/
def Blocked (σ : Fin n → G) (b : Fin n) (π : Equiv.Perm (Fin n)) (y : Fin n) : Prop :=
  ∃ a t : Fin n, 1 ≤ a.val ∧ a < t ∧
    positionIntervalSum (σ ∘ π ∘ Equiv.swap b y) a t = 0 ∧
    ((b < a ∧ a ≤ y) ∨ (b ≤ t ∧ t < y))

def repairWindow (b : Fin n) (D : ℕ) : Finset (Fin n) :=
  Finset.univ.filter fun y => b < y ∧ y.val ≤ b.val + 5 * D

def blockedCandidates (σ : Fin n → G) (b : Fin n)
    (π : Equiv.Perm (Fin n)) (D : ℕ) : Finset (Fin n) := by
  classical
  exact (repairWindow b D).filter (Blocked σ b π)

def badNeighborhood (σ : Fin n → G) (z : Fin n) (D : ℕ) : Finset (Fin n) :=
  (BadRightEndpoints σ).filter fun b => Nat.dist b.val z.val ≤ 10 * D

/-- An actual disjoint bounded-transposition representation, rather than a
generic displacement condition. -/
def AdmissiblePermutation (D : ℕ) (π : Equiv.Perm (Fin n)) : Prop :=
  ∃ trace : SwapTrace n, SupportsDisjoint trace ∧ TraceBounded D trace ∧
    replayPermutation trace = π

/-- The three separate good events of Section 5. Positivity of `D` is explicit.
`tailSafety` uses the source's strict `b < n - 30D`, with one-based `b`. -/
structure GoodRepairGeometry (σ : Fin n → G) (D : ℕ) : Prop where
  positive : 0 < D
  tailSafety : ∀ b ∈ BadRightEndpoints σ, b.val + 1 + 30 * D < n
  localDensity : ∀ z : Fin n, (badNeighborhood σ z D).card ≤ D
  repairCompatibility : ∀ b ∈ BadRightEndpoints σ, ∀ π : Equiv.Perm (Fin n),
    AdmissiblePermutation D π → (∀ i : Fin n, i < b → π i = i) →
    (blockedCandidates σ b π D).card < 2 * D

theorem positionIntervalSum_swap (σ : Fin n → G) (a t b y : Fin n)
    (h : (b ∈ Finset.Icc a t) ↔ (y ∈ Finset.Icc a t)) :
    positionIntervalSum (σ ∘ Equiv.swap b y) a t = positionIntervalSum σ a t := by
  apply Finset.sum_equiv (Equiv.swap b y)
  · intro i
    by_cases hb : i = b
    · subst i
      simpa using h
    by_cases hy : i = y
    · subst i
      simpa using h.symm
    · rw [Equiv.swap_apply_of_ne_of_ne hb hy]
  · intro i _
    rfl

/-- Exact one-step invariant: an unblocked swap creates no new bad right
endpoint and removes the selected endpoint. -/
theorem unblocked_swap_bad_subset (σ : Fin n → G) (b y : Fin n) (hby : b < y)
    (hu : ¬ Blocked σ b 1 y) :
    BadRightEndpoints (σ ∘ Equiv.swap b y) ⊆ (BadRightEndpoints σ).erase b := by
  intro t ht
  obtain ⟨a, ha, hat, hz⟩ := (mem_badRightEndpoints _ _).mp ht
  have hcut : ¬ ((b < a ∧ a ≤ y) ∨ (b ≤ t ∧ t < y)) := by
    intro hc
    exact hu ⟨a, t, ha, hat, by simpa using hz, hc⟩
  have he : (b ∈ Finset.Icc a t) ↔ (y ∈ Finset.Icc a t) := by
    simp only [Finset.mem_Icc]
    constructor <;> intro hm <;> constructor <;> omega
  have htne : t ≠ b := by
    intro htb
    apply hcut
    right
    simpa [htb] using hby
  apply Finset.mem_erase.mpr
  refine ⟨htne, (mem_badRightEndpoints _ _).mpr ⟨a, ha, hat, ?_⟩⟩
  rw [← positionIntervalSum_swap σ a t b y he]
  exact hz

theorem unblocked_swap_preserves_repair_invariant (σ : Fin n → G)
    (R : Finset (Fin n)) (b y : Fin n) (hby : b < y)
    (hu : ¬ Blocked σ b 1 y) (hR : BadRightEndpoints σ ⊆ R) :
    BadRightEndpoints (σ ∘ Equiv.swap b y) ⊆ R.erase b :=
  (unblocked_swap_bad_subset σ b y hby hu).trans (Finset.erase_subset_erase b hR)

theorem repairWindow_card (b : Fin n) (D : ℕ) (h : b.val + 5 * D < n) :
    (repairWindow b D).card = 5 * D := by
  have he : repairWindow b D = Finset.Ioc b ⟨b.val + 5 * D, h⟩ := by
    ext y
    simp [repairWindow, Fin.le_iff_val_le_val]
  rw [he, Fin.card_Ioc]
  simp

/-- The finite capacity argument uses actual intersections with the repair
window and an explicit union-cardinality bound before selecting a point. -/
theorem repairWindow_available (b : Fin n) (D : ℕ) (_hp : 0 < D)
    (ht : b.val + 5 * D < n) (blocked original used : Finset (Fin n))
    (hb : (blocked ∩ repairWindow b D).card < 2 * D)
    (ho : (original ∩ repairWindow b D).card ≤ D)
    (hu : (used ∩ repairWindow b D).card ≤ D) :
    ∃ y ∈ repairWindow b D, y ∉ blocked ∧ y ∉ original ∧ y ∉ used := by
  classical
  let W := repairWindow b D
  let E := (blocked ∩ W) ∪ (original ∩ W) ∪ (used ∩ W)
  have hE : E.card ≤ (blocked ∩ W).card + (original ∩ W).card + (used ∩ W).card :=
    (Finset.card_union_le _ _).trans
      (Nat.add_le_add_right (Finset.card_union_le _ _) _)
  have hW : W.card = 5 * D := repairWindow_card b D ht
  have hlt : E.card < W.card := by dsimp [W] at *; omega
  obtain ⟨y, hy, hye⟩ := Finset.exists_mem_notMem_of_card_lt_card hlt
  refine ⟨y, hy, ?_, ?_, ?_⟩ <;> intro hm <;> apply hye
  · exact Finset.mem_union_left _ (Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hm, hy⟩))
  · exact Finset.mem_union_left _ (Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨hm, hy⟩))
  · exact Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨hm, hy⟩)

theorem repair_capacity_arithmetic (D : ℕ) (h : 0 < D) :
    5 * D - 2 * D - D - D = D ∧ 0 < 5 * D - 2 * D - D - D := by omega

theorem zero_capacity_has_no_partner :
    ¬ ∃ y ∈ repairWindow (0 : Fin 1) 0, True := by decide

def usedRepairPositions (trace : SwapTrace n) : Finset (Fin n) :=
  trace.toFinset.image PositionSwap.right

theorem trace_left_injective (trace : SwapTrace n) (hd : SupportsDisjoint trace) :
    ∀ s ∈ trace, ∀ t ∈ trace, s.left = t.left → s = t := by
  have hpair := (List.nodup_flatMap.mp hd).2
  have hn : (trace.map PositionSwap.left).Nodup := by
    change (trace.map PositionSwap.left).Pairwise (· ≠ ·)
    rw [List.pairwise_map]
    apply hpair.imp
    intro s t h he
    exact h (a := s.left) (by simp [PositionSwap.support])
      (by simp [PositionSwap.support, he])
  exact List.inj_on_of_nodup_map hn

/-- Every previously used partner in the new window is charged injectively
to its original bad endpoint in the radius-`10D` neighborhood. -/
theorem usedRepairPositions_window_card (σ : Fin n → G) (D : ℕ)
    (hg : GoodRepairGeometry σ D) (trace : SwapTrace n)
    (hd : SupportsDisjoint trace) (hb : TraceBounded D trace)
    (hl : ∀ s ∈ trace, s.left ∈ BadRightEndpoints σ) (b : Fin n) :
    (usedRepairPositions trace ∩ repairWindow b D).card ≤ D := by
  classical
  let P := trace.toFinset.filter fun s => s.right ∈ repairWindow b D
  have he : usedRepairPositions trace ∩ repairWindow b D = P.image PositionSwap.right := by
    ext y
    simp only [usedRepairPositions, Finset.mem_inter, Finset.mem_image,
      Finset.mem_filter, List.mem_toFinset, P]
    aesop
  have hp : P.card ≤ (badNeighborhood σ b D).card := by
    apply Finset.card_le_card_of_injOn PositionSwap.left
    · intro s hs
      obtain ⟨hs, hw⟩ := Finset.mem_filter.mp hs
      have hst : s ∈ trace := List.mem_toFinset.mp hs
      have hsbd := hb s hst
      have hwin : b < s.right ∧ s.right.val ≤ b.val + 5 * D := by
        simpa [repairWindow] using hw
      refine Finset.mem_filter.mpr ⟨hl s hst, ?_⟩
      simp only [Nat.dist]
      have horder : s.left.val < s.right.val := hsbd.1
      have hlength : s.right.val - s.left.val ≤ 5 * D := hsbd.2
      have hright : b.val < s.right.val := hwin.1
      omega
    · intro s hs t ht heq
      exact trace_left_injective trace hd s
        (List.mem_toFinset.mp (Finset.mem_filter.mp hs).1) t
        (List.mem_toFinset.mp (Finset.mem_filter.mp ht).1) heq
  rw [he]
  exact (Finset.card_image_le).trans (hp.trans (hg.localDensity b))

theorem originalBad_window_card (σ : Fin n → G) (D : ℕ)
    (hg : GoodRepairGeometry σ D) (b : Fin n) :
    (BadRightEndpoints σ ∩ repairWindow b D).card ≤ D := by
  apply (Finset.card_le_card ?_).trans (hg.localDensity b)
  intro y hy
  obtain ⟨hyb, hyw⟩ := Finset.mem_inter.mp hy
  have hw : b < y ∧ y.val ≤ b.val + 5 * D := by simpa [repairWindow] using hyw
  refine Finset.mem_filter.mpr ⟨hyb, ?_⟩
  rw [Nat.dist_eq_sub_of_le_right (by exact Nat.le_of_lt hw.1)]
  omega

theorem trace_fixes_before (trace : SwapTrace n) (D : ℕ)
    (hb : TraceBounded D trace) (b : Fin n)
    (hleft : ∀ s ∈ trace, b < s.left) :
    ∀ i : Fin n, i ≤ b → replayPermutation trace i = i := by
  intro i hib
  apply replayPermutation_fixes
  intro hi
  obtain ⟨s, hs, hi⟩ := List.mem_flatMap.mp hi
  have hsl := hleft s hs
  have hsr := (hb s hs).1
  simp only [PositionSwap.support, List.mem_cons, List.not_mem_nil, or_false] at hi
  rcases hi with rfl | rfl
  · exact (not_le_of_gt hsl) hib
  · have : b.val < s.right.val := by exact lt_trans hsl hsr
    exact (not_le_of_gt this) hib

theorem supportsDisjoint_append_swap (trace : SwapTrace n) (hd : SupportsDisjoint trace)
    (s : PositionSwap n) (hne : s.left ≠ s.right)
    (hl : s.left ∉ traceSupport trace) (hr : s.right ∉ traceSupport trace) :
    SupportsDisjoint (trace ++ [s]) := by
  unfold SupportsDisjoint traceSupport at *
  rw [List.flatMap_append]
  simp only [List.flatMap_cons, List.flatMap_nil, List.append_nil]
  apply List.nodup_append'.mpr
  refine ⟨hd, by simpa [PositionSwap.support], ?_⟩
  intro i hi his
  simp only [PositionSwap.support, List.mem_cons, List.not_mem_nil, or_false] at his
  rcases his with rfl | rfl
  · exact hl hi
  · exact hr hi

/-- Descending finite repair. The induction invariant is exactly that every
current bad right endpoint lies among the remaining original endpoints.
The extra trace conditions track the disjoint supports and the capacity
charges; they do not assume successful repair. -/
theorem bounded_repair_trace_aux (σ : Fin n → G) (D : ℕ)
    (hg : GoodRepairGeometry σ D) (R : Finset (Fin n)) :
    ∀ trace : SwapTrace n,
      SupportsDisjoint trace → TraceBounded D trace →
      (∀ s ∈ trace, s.left ∈ BadRightEndpoints σ ∧ s.right ∉ BadRightEndpoints σ) →
      (∀ r ∈ R, ∀ s ∈ trace, r < s.left) →
      BadRightEndpoints (σ ∘ replayPermutation trace) ⊆ R →
      R ⊆ BadRightEndpoints σ →
      ∃ finalTrace : SwapTrace n, SupportsDisjoint finalTrace ∧ TraceBounded D finalTrace ∧
        BadRightEndpoints (σ ∘ replayPermutation finalTrace) = ∅ := by
  classical
  induction R using Finset.strongInductionOn with
  | _ R ih =>
    intro trace hd hb hl horder hbad hR
    by_cases hempty : R = ∅
    · refine ⟨trace, hd, hb, ?_⟩
      exact Finset.eq_empty_iff_forall_notMem.mpr fun i hi => by simpa [hempty] using hbad hi
    · have hnon : R.Nonempty := Finset.nonempty_iff_ne_empty.mpr hempty
      let b := R.max' hnon
      have hbR : b ∈ R := Finset.max'_mem R hnon
      have hbB : b ∈ BadRightEndpoints σ := hR hbR
      have hfix := trace_fixes_before trace D hb b (horder b hbR)
      let π := replayPermutation trace
      have hadm : AdmissiblePermutation D π := ⟨trace, hd, hb, rfl⟩
      have hbc := hg.repairCompatibility b hbB π hadm (fun i hi => hfix i (le_of_lt hi))
      have htail : b.val + 5 * D < n := by have ht := hg.tailSafety b hbB; omega
      have hbcw : (blockedCandidates σ b π D ∩ repairWindow b D).card < 2 * D := by
        have he : blockedCandidates σ b π D ∩ repairWindow b D = blockedCandidates σ b π D :=
          Finset.inter_eq_left.mpr (Finset.filter_subset _ _)
        rw [he]
        exact hbc
      obtain ⟨y, hyw, hynb, hynB, hynU⟩ := repairWindow_available b D hg.positive htail
        (blockedCandidates σ b π D) (BadRightEndpoints σ) (usedRepairPositions trace)
        hbcw (originalBad_window_card σ D hg b)
        (usedRepairPositions_window_card σ D hg trace hd hb (fun s hs => (hl s hs).1) b)
      have hwin : b < y ∧ y.val ≤ b.val + 5 * D := by simpa [repairWindow] using hyw
      have hynblocked : ¬ Blocked σ b π y := fun h => hynb (Finset.mem_filter.mpr ⟨hyw, h⟩)
      let s : PositionSwap n := ⟨b, y⟩
      have hsbound : s.Bounded D := ⟨hwin.1, by dsimp [s]; omega⟩
      have hbleft : b ∉ traceSupport trace := by
        intro hi
        obtain ⟨t, ht, hi⟩ := List.mem_flatMap.mp hi
        have hbt := horder b hbR t ht
        have htr := (hb t ht).1
        simp only [PositionSwap.support, List.mem_cons, List.not_mem_nil, or_false] at hi
        rcases hi with hi | hi
        · exact (ne_of_lt hbt) hi
        · have : b.val < t.right.val := lt_trans hbt htr
          exact (ne_of_lt this) (congrArg Fin.val hi)
      have hyright : y ∉ traceSupport trace := by
        intro hi
        obtain ⟨t, ht, hi⟩ := List.mem_flatMap.mp hi
        simp only [PositionSwap.support, List.mem_cons, List.not_mem_nil, or_false] at hi
        rcases hi with rfl | hi
        · exact hynB (hl t ht).1
        · exact hynU (Finset.mem_image.mpr ⟨t, List.mem_toFinset.mpr ht, hi.symm⟩)
      have hds : SupportsDisjoint (trace ++ [s]) :=
        supportsDisjoint_append_swap trace hd s (ne_of_lt hwin.1) hbleft hyright
      have hbs : TraceBounded D (trace ++ [s]) := by
        intro t ht
        rcases List.mem_append.mp ht with ht | ht
        · exact hb t ht
        · simpa only [List.mem_singleton.mp ht] using hsbound
      have hls : ∀ t ∈ trace ++ [s], t.left ∈ BadRightEndpoints σ ∧
          t.right ∉ BadRightEndpoints σ := by
        intro t ht
        rcases List.mem_append.mp ht with ht | ht
        · exact hl t ht
        · have ht' : t = s := List.mem_singleton.mp ht
          simpa [ht', s] using And.intro hbB hynB
      have hos : ∀ r ∈ R.erase b, ∀ t ∈ trace ++ [s], r < t.left := by
        intro r hr t ht
        obtain ⟨hrne, hrR⟩ := Finset.mem_erase.mp hr
        rcases List.mem_append.mp ht with ht | ht
        · exact horder r hrR t ht
        · have ht' : t = s := List.mem_singleton.mp ht
          have hrle : r ≤ b := Finset.le_max' R r hrR
          simpa [ht', s] using lt_of_le_of_ne hrle hrne
      have huc : ¬ Blocked (σ ∘ π) b 1 y := by
        simpa [Blocked, Function.comp_assoc] using hynblocked
      have hnews := unblocked_swap_preserves_repair_invariant (σ ∘ π) R b y hwin.1 huc hbad
      have hbad' : BadRightEndpoints (σ ∘ replayPermutation (trace ++ [s])) ⊆ R.erase b := by
        simpa [replayPermutation_append, s, PositionSwap.permutation,
          Equiv.Perm.coe_mul, Function.comp_assoc, π] using hnews
      exact ih (R.erase b) (Finset.erase_ssubset hbR) (trace ++ [s]) hds hbs hls hos hbad'
        ((Finset.erase_subset b R).trans hR)

theorem goodRepairGeometry_exists_trace (σ : Fin n → G) (D : ℕ)
    (hg : GoodRepairGeometry σ D) :
    ∃ trace : SwapTrace n, SupportsDisjoint trace ∧ TraceBounded D trace ∧
      BadRightEndpoints (σ ∘ replayPermutation trace) = ∅ := by
  apply bounded_repair_trace_aux σ D hg (BadRightEndpoints σ) []
  · simp [SupportsDisjoint, traceSupport]
  · simp [TraceBounded]
  · simp
  · simp
  · simp
  · exact Finset.Subset.refl _

/-- Fully deterministic source-independent repair theorem. Nonzero labels
are needed only to rule out single-position zero intervals when translating
the paper's length-at-least-two defects to post-step partial sums. -/
theorem goodRepairGeometry_valid_permutation (σ : Fin n → G) (D : ℕ)
    (hn : ∀ i, σ i ≠ 0) (hg : GoodRepairGeometry σ D) :
    ∃ trace : SwapTrace n, SupportsDisjoint trace ∧ TraceBounded D trace ∧
      (List.ofFn (σ ∘ replayPermutation trace)).Perm (List.ofFn σ) ∧
      ValidPartialSumOrder (List.ofFn (σ ∘ replayPermutation trace)) := by
  obtain ⟨trace, hd, hb, hbad⟩ := goodRepairGeometry_exists_trace σ D hg
  refine ⟨trace, hd, hb, (replayPermutation trace).ofFn_comp_perm σ, ?_⟩
  apply (valid_ofFn_iff_no_zero_sum_Icc _ (fun i => hn _)).mpr
  intro a b ha hab hz
  have hm : b ∈ BadRightEndpoints (σ ∘ replayPermutation trace) :=
    (mem_badRightEndpoints _ _).mpr ⟨a, ha, hab, hz⟩
  simp [hbad] at hm

/-- A bounded local swap alone does not ensure successful repair: the
zero-based swap `(0,1)` creates the zero-sum interval `[2,3]` (one based). -/
theorem local_swap_can_create_collision :
    ValidPartialSumOrder ([1, 2, 6] : List (ZMod 7)) ∧
      ¬ ValidPartialSumOrder ([2, 1, 6] : List (ZMod 7)) := by decide

theorem intersecting_trace_rejected :
    ¬ SupportsDisjoint ([⟨0, 1⟩, ⟨1, 2⟩] : SwapTrace 3) := by decide

end

end GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.PartialSumOrdering
