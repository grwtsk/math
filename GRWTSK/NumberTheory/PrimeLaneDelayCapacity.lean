/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Sharp capacity under bounded within-frame observation delay

With a reliable lane label and delay in `0, …, width - 1`, an encoding
must reserve a full interval of phases in the same frame for each state.
The capacity is the number of lanes times the integer number of whole
intervals per lane. This is a control-address result. The tape payload
and the implementation of a physical clock are separate inputs.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.PrimeLaneDelayCapacity

/-- Distinct states on the same lane must be distinguished for every
admissible delayed read. The complete uncertainty interval stays in-frame. -/
structure Layout (states lanes phases width : ℕ) where
  lane : Fin states → Fin lanes
  start : Fin states → ℕ
  fits : ∀ q, start q + width ≤ phases
  separates : ∀ q r, lane q = lane r → ∀ t : ℕ,
    start q ≤ t → t < start q + width →
    start r ≤ t → t < start r + width → q = r

/-- If two starts fall in the same width bin, the read at the later
start belongs to both uncertainty intervals. -/
private theorem overlap_of_same_bin {a b width : ℕ} (positive : 0 < width)
    (same : a / width = b / width) :
    ∃ t, a ≤ t ∧ t < a + width ∧ b ≤ t ∧ t < b + width := by
  have aUpper := (Nat.div_lt_iff_lt_mul positive).1 (Nat.lt_succ_self (a / width))
  have bUpper := (Nat.div_lt_iff_lt_mul positive).1 (Nat.lt_succ_self (b / width))
  have aLower := Nat.div_mul_le_self a width
  have bLower := Nat.div_mul_le_self b width
  rw [← same] at bUpper bLower
  rw [Nat.succ_mul] at aUpper bUpper
  exact ⟨max a b, le_max_left _ _, (max_lt_iff.mpr ⟨by omega, by omega⟩),
    le_max_right _ _, (max_lt_iff.mpr ⟨by omega, by omega⟩)⟩

theorem layout_capacity {states lanes phases width : ℕ} (positive : 0 < width)
    (layout : Layout states lanes phases width) : states ≤ lanes * (phases / width) := by
  let bucket (q : Fin states) : Fin (phases / width) :=
    ⟨layout.start q / width, by
      apply Nat.lt_of_succ_le
      apply (Nat.le_div_iff_mul_le positive).2
      rw [Nat.succ_mul]
      exact (Nat.add_le_add_right (Nat.div_mul_le_self _ _) _).trans (layout.fits q)⟩
  let code (q : Fin states) := (layout.lane q, bucket q)
  have injective : Function.Injective code := by
    intro q r h
    obtain ⟨sameLane, sameBucket⟩ := Prod.mk.inj h
    have hstart := congrArg Fin.val sameBucket
    obtain ⟨t, hl, hu, kl, ku⟩ := overlap_of_same_bin positive hstart
    exact layout.separates q r sameLane t hl hu kl ku
  simpa using Fintype.card_le_of_injective code injective

/-- Place the uncertainty intervals in disjoint aligned blocks. Unused
phases at the end of each lane remain unused. -/
def packedLayout {states lanes phases width : ℕ} (positive : 0 < width)
    (capacity : states ≤ lanes * (phases / width)) : Layout states lanes phases width := by
  let code (q : Fin states) : Fin lanes × Fin (phases / width) :=
    finProdFinEquiv.symm (Fin.castLE capacity q)
  refine ⟨fun q => (code q).1, fun q => (code q).2.val * width, ?_, ?_⟩
  · intro q
    rw [← Nat.succ_mul]
    exact (Nat.le_div_iff_mul_le positive).1 (code q).2.isLt
  · intro q r sameLane t ql qu rl ru
    have block (i : ℕ) (lo : i * width ≤ t) (hi : t < i * width + width) :
        t / width = i := by
      apply Nat.le_antisymm
      · apply Nat.le_of_lt_succ
        apply (Nat.div_lt_iff_lt_mul positive).2
        simpa only [Nat.succ_mul] using hi
      · exact (Nat.le_div_iff_mul_le positive).2 lo
    have sameIndex : (code q).2 = (code r).2 := Fin.ext
      ((block _ ql qu).symm.trans (block _ rl ru))
    have same : code q = code r := Prod.ext sameLane sameIndex
    have raw := finProdFinEquiv.symm.injective same
    apply Fin.ext
    exact congrArg (fun i : Fin (lanes * (phases / width)) => i.val) raw

theorem layout_iff (states lanes phases width : ℕ) (positive : 0 < width) :
    Nonempty (Layout states lanes phases width) ↔ states ≤ lanes * (phases / width) :=
  ⟨fun ⟨layout⟩ => layout_capacity positive layout, fun h => ⟨packedLayout positive h⟩⟩

/-- The lane can be displayed as an actual ordinary prime at the
specified offset. The decoder sees that raw prime and the delayed phase. -/
theorem exists_prime_decoder {states lanes phases width : ℕ}
    (layout : Layout states lanes phases width) (offset : ℕ) :
    ∃ decode : ℕ → ℕ → Option (Fin states), ∀ q t,
      layout.start q ≤ t → t < layout.start q + width →
      decode (Nat.nth Nat.Prime (offset + (layout.lane q).val)) t = some q := by
  classical
  let label (q : Fin states) := Nat.nth Nat.Prime (offset + (layout.lane q).val)
  let valid (p t : ℕ) (q : Fin states) :=
    label q = p ∧ layout.start q ≤ t ∧ t < layout.start q + width
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

/-- Either on-time or one phase late needs 38 phases on five lanes. -/
theorem five_lane_one_phase_delay_iff (phases : ℕ) :
    Nonempty (Layout 95 5 phases 2) ↔ 38 ≤ phases := by
  rw [layout_iff _ _ _ _ (by decide)]
  omega

/-- The noiseless 5×19 layout stops being feasible with one phase delay. -/
theorem five_by_nineteen_delay_control :
    Nonempty (Layout 95 5 19 1) ∧ ¬ Nonempty (Layout 95 5 19 2) := by
  rw [layout_iff _ _ _ _ (by decide), five_lane_one_phase_delay_iff]
  decide

end GRWTSK.NumberTheory.PrimeLaneDelayCapacity
