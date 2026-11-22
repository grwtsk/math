/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95FirstRejectedStage

/-!
# Composing exact finite rejection blocks

An empty block has summary top. Other blocks report the smallest absolute
stage ordinal. Summary merge is minimum, independent of arrival order.
-/

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

def rejectedBlock (lo hi : ℕ) : Finset ℕ :=
  (Finset.Ico (95 * lo) (95 * hi)).filter fun stage => Counterexample (stageArgument stage)

theorem mem_rejectedBlock {lo hi m : ℕ} :
    m ∈ rejectedBlock lo hi ↔
      95 * lo ≤ m ∧ m < 95 * hi ∧ Counterexample (stageArgument m) := by
  simp only [rejectedBlock, Finset.mem_filter, Finset.mem_Ico, and_assoc]

theorem rejectedBlock_split {lo mid hi : ℕ} (hlo : lo ≤ mid) (hhi : mid ≤ hi) :
    rejectedBlock lo hi = rejectedBlock lo mid ∪ rejectedBlock mid hi := by
  ext m
  simp only [Finset.mem_union, mem_rejectedBlock]
  constructor
  · rintro ⟨hl, hh, hb⟩
    by_cases hm : m < 95 * mid
    · exact Or.inl ⟨hl, hm, hb⟩
    · exact Or.inr ⟨by omega, hh, hb⟩
  · rintro (⟨hl, hm, hb⟩ | ⟨hm, hh, hb⟩)
    · exact ⟨hl, by omega, hb⟩
    · exact ⟨by omega, hh, hb⟩

def blockFirstRejected (lo hi : ℕ) : WithTop ℕ :=
  (rejectedBlock lo hi).min

theorem blockFirstRejected_split {lo mid hi : ℕ} (hlo : lo ≤ mid) (hhi : mid ≤ hi) :
    blockFirstRejected lo hi = min (blockFirstRejected lo mid) (blockFirstRejected mid hi) := by
  unfold blockFirstRejected
  rw [rejectedBlock_split hlo hhi, Finset.min_union]

theorem blockFirstRejected_eq_top_iff (lo hi : ℕ) :
    blockFirstRejected lo hi = ⊤ ↔
      ∀ m, 95 * lo ≤ m → m < 95 * hi → ¬ Counterexample (stageArgument m) := by
  rw [blockFirstRejected, Finset.min_eq_top, Finset.eq_empty_iff_forall_notMem]
  simp only [mem_rejectedBlock]
  exact ⟨fun h m hl hh hb => h m ⟨hl, hh, hb⟩,
    fun h m hm => h m hm.1 hm.2.1 hm.2.2⟩

def rejectionKey : Option ℕ → WithTop ℕ
  | none => ⊤
  | some m => m

theorem blockFirstRejected_zero_eq_prefix (hi : ℕ) :
    blockFirstRejected 0 hi = rejectionKey (firstRejectedStage hi) := by
  have hb : rejectedBlock 0 hi = rejectedStages hi := by
    ext m
    simp [mem_rejectedBlock, mem_rejectedStages]
  rw [blockFirstRejected, hb]
  unfold firstRejectedStage
  split
  · rename_i witnesses
    exact (Finset.coe_min' witnesses).symm
  · rename_i empty
    rw [Finset.not_nonempty_iff_eq_empty.mp empty, Finset.min_empty]
    rfl

/-- If the stage at the shared boundary is bad, the second block owns it.
The upstream arithmetic argument for this stage is 97. -/
theorem split_boundary_95_control (bad : Counterexample (stageArgument 95)) :
    95 ∉ rejectedBlock 0 1 ∧ 95 ∈ rejectedBlock 1 2 ∧ stageArgument 95 = 97 := by
  exact ⟨fun h => (Nat.lt_irrefl 95) (mem_rejectedBlock.mp h).2.1,
    mem_rejectedBlock.mpr ⟨by decide, by decide, bad⟩, rfl⟩

end GRWTSK.NumberTheory.Riemann95StageCertificates
