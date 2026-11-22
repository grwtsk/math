/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeLaneMultiplexing
import Mathlib.Tactic

/-!
# Phase guard intervals for exact prime-lane decoding

A state must decode at every phase in its guard interval on its assigned lane.
The frame is fixed and intervals may not wrap. The existing slot encoding
supplies a construction on aligned disjoint intervals.
-/

namespace GRWTSK.NumberTheory.PrimeLaneMultiplexing

/-- A guard is a run of consecutive acceptable phases within one frame. -/
structure PhaseGuard (lanes phases width : ℕ) where
  lane : Fin lanes
  start : ℕ
  fits : start + width ≤ phases

def PhaseGuard.observe {lanes phases width : ℕ} (g : PhaseGuard lanes phases width)
    (offset : Fin width) : Slot lanes phases :=
  (g.lane, ⟨g.start + offset.val, by have := offset.isLt; have := g.fits; omega⟩)

/-- Exact decoding must tolerate any of the width phase readings for each state. -/
def GuardedEncoding (states lanes phases width : ℕ) : Prop :=
  ∃ encode : Fin states → PhaseGuard lanes phases width,
    ∃ decode : Slot lanes phases → Option (Fin states),
      ∀ s offset, decode ((encode s).observe offset) = some s

theorem guardedEncoding_capacity {states lanes phases width : ℕ}
    (h : GuardedEncoding states lanes phases width) :
    states * width ≤ lanes * phases := by
  obtain ⟨encode, decode, correct⟩ := h
  let obs : Fin states × Fin width → Slot lanes phases :=
    fun a => (encode a.1).observe a.2
  have inj : Function.Injective obs := by
    rintro ⟨s, a⟩ ⟨t, b⟩ he
    have hd := congrArg decode he
    change decode ((encode s).observe a) = decode ((encode t).observe b) at hd
    rw [correct, correct] at hd
    have ht := Option.some.inj hd
    subst t
    have hp := congrArg (fun p : Slot lanes phases => p.2.val) he
    change (encode s).start + a.val = (encode s).start + b.val at hp
    exact congrArg (fun off : Fin width => (s, off)) (Fin.ext (Nat.add_left_cancel hp))
  simpa using Fintype.card_le_of_injective obs inj

/-- In a frame consisting of whole guard intervals, the capacity bound is exact. -/
theorem guardedEncoding_aligned_iff (states lanes blocks width : ℕ) (hw : 0 < width) :
    GuardedEncoding states lanes (blocks * width) width ↔ states ≤ lanes * blocks := by
  constructor
  · intro h
    exact (Nat.mul_le_mul_right_iff hw).mp (by
      simpa only [Nat.mul_assoc] using guardedEncoding_capacity h)
  · intro cap
    let encode := encodeSlot cap
    let guard : Fin states → PhaseGuard lanes (blocks * width) width := fun s =>
      ⟨(encode s).1, (encode s).2.val * width, by
        rw [← Nat.succ_mul]
        exact Nat.mul_le_mul_right _ (encode s).2.isLt⟩
    let decode : Slot lanes (blocks * width) → Option (Fin states) := fun p =>
      decodeSlot states (p.1, (⟨p.2.val / width, (Nat.div_lt_iff_lt_mul hw).mpr p.2.isLt⟩ :
        Fin blocks))
    refine ⟨guard, decode, fun s offset => ?_⟩
    have hphase : ((encode s).2.val * width + offset.val) / width = (encode s).2.val := by
      rw [Nat.mul_comm (encode s).2.val width, Nat.mul_add_div hw,
        Nat.div_eq_of_lt offset.isLt, Nat.add_zero]
    change decodeSlot states (_ , (⟨_, _⟩ : Fin blocks)) = some s
    have hs : (⟨((guard s).observe offset).2.val / width,
        (Nat.div_lt_iff_lt_mul hw).mpr ((guard s).observe offset).2.isLt⟩ : Fin blocks) =
        (encode s).2 := Fin.ext hphase
    rw [hs]
    exact decodeSlot_encodeSlot cap s

theorem twoPhaseGuard_impossible_at_five_by_nineteen :
    ¬ GuardedEncoding 95 5 19 2 := by
  intro h
  have hh := guardedEncoding_capacity h
  omega

theorem twoPhaseGuard_possible_at_five_by_thirtyEight :
    GuardedEncoding 95 5 38 2 := by
  exact (guardedEncoding_aligned_iff 95 5 19 2 (by decide)).mpr (by decide)

theorem twoPhaseGuard_five_lanes_requires_thirtyEight {phases : ℕ}
    (h : GuardedEncoding 95 5 phases 2) : 38 ≤ phases := by
  have hh := guardedEncoding_capacity h
  omega

end GRWTSK.NumberTheory.PrimeLaneMultiplexing
