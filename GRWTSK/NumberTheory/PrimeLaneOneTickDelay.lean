/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeLaneMultiplexing
import Mathlib.Tactic

/-!
# Prime-lane capacity with one tick of delay

The frame and lane are observed exactly. Each state schedules a nominal
tick, and the observed tick is either nominal or one later in the same
frame. Exact decoding of both possibilities requires one pair of ticks
per state on each lane. Tape payload is external to this control codec.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.PrimeLaneMultiplexing

/-- A frame of `phases` ticks starts at tick zero. Both possible reads
of every assigned control must fit in the frame. -/
def OneTickEncoding (states lanes phases : ℕ) : Prop :=
  ∃ encode : Fin states → Slot lanes phases,
    ∃ decode : Fin lanes → ℕ → Option (Fin states),
      ∀ q, (encode q).2.val + 1 < phases ∧
        decode (encode q).1 (encode q).2.val = some q ∧
        decode (encode q).1 ((encode q).2.val + 1) = some q

theorem oneTickEncoding_iff (states lanes phases : ℕ) :
    OneTickEncoding states lanes phases ↔ states ≤ lanes * (phases / 2) := by
  constructor
  · rintro ⟨encode, decode, h⟩
    let pack (q : Fin states) : Slot lanes (phases / 2) :=
      ((encode q).1, ⟨(encode q).2.val / 2, by have := (h q).1; omega⟩)
    have hinj : Function.Injective pack := by
      intro a b he
      have hl : (encode a).1 = (encode b).1 :=
        congrArg (fun s : Slot lanes (phases / 2) => s.1) he
      have hp : (encode a).2.val / 2 = (encode b).2.val / 2 :=
        congrArg (fun s : Slot lanes (phases / 2) => s.2.val) he
      have ha := (h a).2
      have hb := (h b).2
      rw [hl] at ha
      rcases (show (encode a).2.val = (encode b).2.val ∨
          (encode a).2.val + 1 = (encode b).2.val ∨
          (encode a).2.val = (encode b).2.val + 1 by omega) with heq | heq | heq
      · rw [heq] at ha
        exact Option.some.inj (ha.1.symm.trans hb.1)
      · rw [heq] at ha
        exact Option.some.inj (ha.2.symm.trans hb.1)
      · rw [heq] at ha
        exact Option.some.inj (ha.1.symm.trans hb.2)
    simpa using Fintype.card_le_of_injective pack hinj
  · intro capacity
    let packed := encodeSlot capacity
    let encode (q : Fin states) : Slot lanes phases :=
      ((packed q).1, ⟨2 * (packed q).2.val, by have := (packed q).2.isLt; omega⟩)
    let decode (lane : Fin lanes) (tick : ℕ) : Option (Fin states) :=
      if h : tick / 2 < phases / 2 then decodeSlot states (lane, ⟨tick / 2, h⟩)
      else none
    refine ⟨encode, decode, fun q => ?_⟩
    have hslot := (packed q).2.isLt
    have heven : (2 * (packed q).2.val) / 2 = (packed q).2.val := by omega
    have hodd : (2 * (packed q).2.val + 1) / 2 = (packed q).2.val := by omega
    have hd : decodeSlot states ((packed q).1, (packed q).2) = some q :=
      decodeSlot_encodeSlot capacity q
    dsimp only [encode]
    refine ⟨by omega, ?_, ?_⟩
    · simpa [decode, heven, hslot] using hd
    · simpa [decode, hodd, hslot] using hd

/-- Five lanes require 38 frame ticks to tolerate a one-tick delay. -/
theorem five_lane_oneTick_iff (phases : ℕ) :
    OneTickEncoding 95 5 phases ↔ 38 ≤ phases := by
  rw [oneTickEncoding_iff]
  omega

/-- Keeping the 19-tick frame requires at least 11 lanes. -/
theorem nineteen_tick_oneTick_iff (lanes : ℕ) :
    OneTickEncoding 95 lanes 19 ↔ 11 ≤ lanes := by
  rw [oneTickEncoding_iff]
  omega

/-- The original 5 × 19 layout is exact when timing is exact and loses
capacity under the one-tick observation model. -/
theorem five_lane_nineteen_delay_control :
    Nonempty (Fin 95 ≃ Slot 5 19) ∧ ¬ OneTickEncoding 95 5 19 :=
  ⟨⟨fiveByNineteen⟩, fun h => (by decide : ¬ 38 ≤ 19) ((five_lane_oneTick_iff 19).mp h)⟩

end GRWTSK.NumberTheory.PrimeLaneMultiplexing
