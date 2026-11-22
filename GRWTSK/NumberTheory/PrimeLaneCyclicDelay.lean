/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Capacity of cyclic phase reads on prime lanes

The receiver observes a reliable lane and a phase modulo the frame length.
The admissible delays are consecutive, starting at zero. Wraparound does
not increase capacity, even when no frame number is observed.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.PrimeLaneCyclicDelay

structure Layout (states lanes phases width : ℕ) where
  lane : Fin states → Fin lanes
  start : Fin states → Fin phases
  separates : ∀ q r, lane q = lane r → ∀ a b : Fin width,
    ((start q).val + a.val) % phases = ((start r).val + b.val) % phases → q = r

theorem capacity {states lanes phases width : ℕ} (positive : 0 < phases)
    (delay : 0 < width) (short : width ≤ phases)
    (layout : Layout states lanes phases width) : states ≤ lanes * (phases / width) := by
  classical
  let Fiber (l : Fin lanes) := {q : Fin states // layout.lane q = l}
  have bound (l : Fin lanes) : Fintype.card (Fiber l) ≤ phases / width := by
    let read (x : Fiber l × Fin width) : Fin phases :=
      ⟨((layout.start x.1.val).val + x.2.val) % phases, Nat.mod_lt _ positive⟩
    have inj : Function.Injective read := by
      rintro ⟨q,a⟩ ⟨r,b⟩ eq
      have observed := congrArg Fin.val eq
      have same : q.val = r.val := layout.separates _ _ (q.property.trans r.property.symm) a b observed
      have sameQ : q = r := Subtype.ext same
      subst r
      have modEq : (layout.start q.val).val + a.val ≡
          (layout.start q.val).val + b.val [MOD phases] := observed
      have offsets := Nat.ModEq.add_left_cancel' _ modEq
      have equal : a = b := Fin.ext (by
        simpa only [Nat.ModEq, Nat.mod_eq_of_lt (a.isLt.trans_le short),
          Nat.mod_eq_of_lt (b.isLt.trans_le short)] using offsets)
      subst b
      rfl
    have h := Fintype.card_le_of_injective read inj
    apply (Nat.le_div_iff_mul_le delay).2
    simpa only [Fintype.card_prod, Fintype.card_fin] using h
  let partition : Fin states ≃ (Σ l : Fin lanes, Fiber l) := {
    toFun q := ⟨layout.lane q, ⟨q, rfl⟩⟩
    invFun x := x.2.val
    left_inv _ := rfl
    right_inv := by rintro ⟨l,q,h⟩; subst l; rfl }
  rw [← Fintype.card_fin states, Fintype.card_congr partition, Fintype.card_sigma]
  exact (Finset.sum_le_sum (fun l _ => bound l)).trans_eq (by simp)

/-- Aligned intervals attain the bound, including frames with a remainder. -/
def packed {states lanes phases width : ℕ} (delay : 0 < width)
    (room : states ≤ lanes * (phases / width)) : Layout states lanes phases width := by
  let code (q : Fin states) : Fin lanes × Fin (phases / width) :=
    finProdFinEquiv.symm (Fin.castLE room q)
  have endpoint (q : Fin states) : ((code q).2.val + 1) * width ≤ phases :=
    (Nat.le_div_iff_mul_le delay).mp (code q).2.isLt
  have inside (q : Fin states) (a : Fin width) :
      (code q).2.val * width + a.val < phases := by
    have bound := endpoint q
    rw [Nat.add_mul, one_mul] at bound
    have ha := a.isLt
    omega
  refine ⟨fun q => (code q).1,
    fun q => ⟨(code q).2.val * width, by
      simpa using inside q (⟨0, delay⟩ : Fin width)⟩, ?_⟩
  intro q r lane a b read
  change ((code q).2.val * width + a.val) % phases =
    ((code r).2.val * width + b.val) % phases at read
  rw [Nat.mod_eq_of_lt (inside q a), Nat.mod_eq_of_lt (inside r b)] at read
  have block (j : ℕ) (offset : Fin width) : (j * width + offset.val) / width = j := by
    apply Nat.le_antisymm
    · apply Nat.le_of_lt_succ
      apply (Nat.div_lt_iff_lt_mul delay).mpr
      rw [Nat.succ_mul]
      exact Nat.add_lt_add_left offset.isLt _
    · exact (Nat.le_div_iff_mul_le delay).mpr (Nat.le_add_right _ _)
  have columns := congrArg (fun k => k / width) read
  rw [block, block] at columns
  have same : code q = code r := Prod.ext lane (Fin.ext columns)
  have raw := finProdFinEquiv.symm.injective same
  apply Fin.ext
  exact congrArg (fun i : Fin (lanes * (phases / width)) => i.val) raw

theorem layout_iff (states lanes phases width : ℕ)
    (positive : 0 < phases) (delay : 0 < width) (short : width ≤ phases) :
    Nonempty (Layout states lanes phases width) ↔ states ≤ lanes * (phases / width) :=
  ⟨fun ⟨layout⟩ => capacity positive delay short layout, fun room => ⟨packed delay room⟩⟩

theorem five_lane_one_phase_infeasible : ¬ Nonempty (Layout 95 5 19 2) := by
  rintro ⟨layout⟩
  have limit := capacity (by decide) (by decide) (by decide) layout
  omega

end GRWTSK.NumberTheory.PrimeLaneCyclicDelay
