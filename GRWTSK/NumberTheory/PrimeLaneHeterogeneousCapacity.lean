/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeLaneDelayCapacity

/-!
# Lane-dependent phase capacity

Each observed lane has its own frame length and delay width. Spare ticks
on distinct lanes cannot be pooled, since a delayed observation of a
control uses its original lane.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.PrimeLaneDelayCapacity

structure HeterogeneousLayout (states lanes : ℕ) (phases width : Fin lanes → ℕ) where
  lane : Fin states → Fin lanes
  start : Fin states → ℕ
  fits : ∀ q, start q + width (lane q) ≤ phases (lane q)
  separates : ∀ q r, lane q = lane r → ∀ t : ℕ,
    start q ≤ t → t < start q + width (lane q) →
    start r ≤ t → t < start r + width (lane r) → q = r

private theorem same_bin_overlap {a b d : ℕ} (positive : 0 < d) (same : a / d = b / d) :
    max a b < a + d ∧ max a b < b + d := by
  have ha := (Nat.div_lt_iff_lt_mul positive).1 (Nat.lt_succ_self (a / d))
  have hb := (Nat.div_lt_iff_lt_mul positive).1 (Nat.lt_succ_self (b / d))
  have la := Nat.div_mul_le_self a d
  have lb := Nat.div_mul_le_self b d
  rw [← same] at hb lb
  rw [Nat.succ_mul] at ha hb
  exact ⟨max_lt_iff.mpr ⟨by omega, by omega⟩, max_lt_iff.mpr ⟨by omega, by omega⟩⟩

theorem heterogeneous_layout_iff (states lanes : ℕ) (phases width : Fin lanes → ℕ)
    (positive : ∀ i, 0 < width i) :
    Nonempty (HeterogeneousLayout states lanes phases width) ↔
      states ≤ ∑ i, phases i / width i := by
  let Slot := Σ i : Fin lanes, Fin (phases i / width i)
  have card : Fintype.card Slot = ∑ i, phases i / width i := by
    simp [Slot, Fintype.card_sigma]
  constructor
  · rintro ⟨layout⟩
    let code (q : Fin states) : Slot :=
      ⟨layout.lane q, ⟨layout.start q / width (layout.lane q), by
        apply Nat.lt_of_succ_le
        apply (Nat.le_div_iff_mul_le (positive (layout.lane q))).2
        rw [Nat.succ_mul]
        exact (Nat.add_le_add_right (Nat.div_mul_le_self _ _) _).trans (layout.fits q)⟩⟩
    have inj : Function.Injective code := by
      intro q r h
      have hl : layout.lane q = layout.lane r := congrArg (fun a : Slot => a.1) h
      have hv := congrArg (fun a : Slot => a.2.val) h
      change layout.start q / width (layout.lane q) = layout.start r / width (layout.lane r) at hv
      rw [← hl] at hv
      obtain ⟨hq, hr⟩ := same_bin_overlap (positive (layout.lane q)) hv
      exact layout.separates q r hl _ (le_max_left _ _) hq (le_max_right _ _) (hl ▸ hr)
    simpa only [Fintype.card_fin, card] using Fintype.card_le_of_injective code inj
  · intro capacity
    have hcard : Fintype.card (Fin states) ≤ Fintype.card Slot := by simpa [card] using capacity
    obtain ⟨code⟩ := Function.Embedding.nonempty_of_card_le hcard
    refine ⟨⟨fun q => (code q).1, fun q => (code q).2.val * width (code q).1, ?_, ?_⟩⟩
    · intro q
      rw [← Nat.succ_mul]
      exact (Nat.le_div_iff_mul_le (positive _)).1 (code q).2.isLt
    · intro q r sameLane t ql qu rl ru
      have block (i : Fin lanes) (index : ℕ)
          (lo : index * width i ≤ t) (hi : t < index * width i + width i) :
          t / width i = index := by
        refine le_antisymm (Nat.le_of_lt_succ ?_) ((Nat.le_div_iff_mul_le (positive i)).2 lo)
        apply (Nat.div_lt_iff_lt_mul (positive i)).2
        simpa only [Nat.succ_mul] using hi
      have hq := block _ _ ql qu
      have hr := block _ _ rl ru
      have clock := congrArg (fun i : Fin lanes => t / width i) sameLane
      exact code.injective (Sigma.ext sameLane
        ((Fin.heq_ext_iff (congrArg (fun i => phases i / width i) sameLane)).2
          (hq.symm.trans (clock.trans hr))))

/-- With distinct numeric prime labels, the lane and delayed tick recover
the control. Unassigned observations can be rejected. -/
theorem exists_heterogeneous_prime_decoder {states lanes : ℕ} {phases width : Fin lanes → ℕ}
    (layout : HeterogeneousLayout states lanes phases width) (offset : ℕ) :
    ∃ decode : ℕ → ℕ → Option (Fin states), ∀ q t,
      layout.start q ≤ t → t < layout.start q + width (layout.lane q) →
      decode (Nat.nth Nat.Prime (offset + (layout.lane q).val)) t = some q := by
  classical
  let label (q : Fin states) := Nat.nth Nat.Prime (offset + (layout.lane q).val)
  let valid (p t : ℕ) (q : Fin states) :=
    label q = p ∧ layout.start q ≤ t ∧ t < layout.start q + width (layout.lane q)
  let decode (p t : ℕ) : Option (Fin states) :=
    if h : ∃ q, valid p t q then some (Classical.choose h) else none
  refine ⟨decode, fun q t lower upper => ?_⟩
  have existsCode : ∃ r, valid (label q) t r := ⟨q, rfl, lower, upper⟩
  have witness := Classical.choose_spec existsCode
  have sameLane : layout.lane (Classical.choose existsCode) = layout.lane q := by
    apply Fin.ext
    exact Nat.add_left_cancel ((Nat.nth_strictMono Nat.infinite_setOfPred_prime).injective witness.1)
  have eq := layout.separates _ _ sameLane t witness.2.1 witness.2.2 lower upper
  change decode (label q) t = some q
  unfold decode
  rw [dite_eq_left existsCode, eq]

/-- Moving one tick between two 38-tick lanes loses one reserved pair,
even though the total frame budget remains 190. -/
theorem unequal_frames_95_control :
    let unequal : Fin 5 → ℕ := fun i => if i.val = 0 then 37 else if i.val = 4 then 39 else 38
    (∑ i, unequal i) = 190 ∧
      Nonempty (HeterogeneousLayout 95 5 (fun _ => 38) (fun _ => 2)) ∧
      ¬ Nonempty (HeterogeneousLayout 95 5 unequal (fun _ => 2)) := by
  intro unequal
  rw [heterogeneous_layout_iff _ _ _ _ (by decide),
    heterogeneous_layout_iff _ _ _ _ (by decide)]
  decide

end GRWTSK.NumberTheory.PrimeLaneDelayCapacity
