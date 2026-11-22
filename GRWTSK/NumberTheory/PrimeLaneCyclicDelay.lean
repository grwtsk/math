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

<<<<<<< HEAD
=======
/-- The least nonnegative delay carrying the start to the observed phase. -/
def cyclicDelay {phases : ℕ} (start observed : Fin phases) : ℕ :=
  (observed.val + phases - start.val) % phases

theorem cyclicDelay_lt_iff {phases width : ℕ} (start observed : Fin phases) :
    cyclicDelay start observed < width ↔
      ∃ a : Fin width, (start.val + a.val) % phases = observed.val := by
  let d := observed.val + phases - start.val
  have hs := start.isLt
  have ho := observed.isLt
  have added : start.val + d = observed.val + phases := by dsimp [d]; omega
  have observedEq : (start.val + d) % phases = observed.val := by
    rw [added, Nat.add_mod_right, Nat.mod_eq_of_lt ho]
  constructor
  · intro valid
    refine ⟨⟨d % phases, valid⟩, ?_⟩
    change (start.val + d % phases) % phases = observed.val
    rwa [Nat.add_mod_mod]
  · rintro ⟨a, read⟩
    have congruent : start.val + d ≡ start.val + a.val [MOD phases] :=
      observedEq.trans read.symm
    have offset := Nat.ModEq.add_left_cancel' start.val congruent
    change d % phases = a.val % phases at offset
    change d % phases < width
    rw [offset]
    exact (Nat.mod_le _ _).trans_lt a.isLt

private def matchesRead {states lanes phases width : ℕ} (layout : Layout states lanes phases width)
    (offset rank : ℕ) (observed : Fin phases) (q : Fin states) : Bool :=
  decide (rank = offset + (layout.lane q).val ∧ cyclicDelay (layout.start q) observed < width)

/-- A cyclic read uses its raw prime and phase. Search the finite controls,
testing a single least-delay residue for each control. -/
def decodeCyclicPrime {states lanes phases width : ℕ} (layout : Layout states lanes phases width)
    (offset p : ℕ) (observed : Fin phases) : Option (Fin states) :=
  if p.Prime then
    (List.finRange states).find? (matchesRead layout offset (Nat.count Nat.Prime p) observed)
  else none

theorem decodeCyclicPrime_eq_some_iff {states lanes phases width : ℕ}
    (layout : Layout states lanes phases width) (offset p : ℕ) (observed : Fin phases)
    (q : Fin states) :
    decodeCyclicPrime layout offset p observed = some q ↔
      p = Nat.nth Nat.Prime (offset + (layout.lane q).val) ∧
      ∃ a : Fin width, ((layout.start q).val + a.val) % phases = observed.val := by
  have matchSpec (r : Fin states) :
      matchesRead layout offset (Nat.count Nat.Prime p) observed r = true ↔
        Nat.count Nat.Prime p = offset + (layout.lane r).val ∧
          ∃ a : Fin width, ((layout.start r).val + a.val) % phases = observed.val := by
    simp [matchesRead, cyclicDelay_lt_iff]
  constructor
  · intro decoded
    have prime : p.Prime := by
      by_contra notPrime
      simp [decodeCyclicPrime, notPrime] at decoded
    rw [decodeCyclicPrime, ite_eq_left prime] at decoded
    obtain ⟨rank, valid⟩ := (matchSpec q).1 (List.find?_eq_some_iff_append.1 decoded).1
    exact ⟨(Nat.nth_count prime).symm.trans (congrArg (Nat.nth Nat.Prime) rank), valid⟩
  · rintro ⟨label, valid⟩
    have prime : p.Prime := label.symm ▸ Nat.nth_mem_of_infinite Nat.infinite_setOfPred_prime _
    have rank : Nat.count Nat.Prime p = offset + (layout.lane q).val := by
      rw [label, Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime]
    have found := (matchSpec q).2 ⟨rank, valid⟩
    rw [decodeCyclicPrime, ite_eq_left prime]
    generalize result : (List.finRange states).find?
      (matchesRead layout offset (Nat.count Nat.Prime p) observed) = answer
    cases answer with
    | none => exact ((List.find?_eq_none.1 result) q (List.mem_finRange q) found).elim
    | some r =>
      obtain ⟨rank', a, ha⟩ := (matchSpec r).1 (List.find?_eq_some_iff_append.1 result).1
      obtain ⟨b, hb⟩ := valid
      have sameLane : layout.lane r = layout.lane q :=
        Fin.ext (Nat.add_left_cancel (rank'.symm.trans rank))
      exact congrArg some (layout.separates r q sameLane a b (ha.trans hb.symm))

/-- Two successive bounded delays give exactly the same cyclic readings
as one delay with width the sum of the two widths minus one. -/
theorem two_delays_iff {phases width₁ width₂ : ℕ} (h₁ : 0 < width₁) (h₂ : 0 < width₂)
    (start observed : Fin phases) :
    (∃ a : Fin width₁, ∃ b : Fin width₂,
      (((start.val + a.val) % phases) + b.val) % phases = observed.val) ↔
    ∃ d : Fin (width₁ + width₂ - 1), (start.val + d.val) % phases = observed.val := by
  constructor
  · rintro ⟨a, b, read⟩
    have ha := a.isLt
    have hb := b.isLt
    refine ⟨⟨a.val + b.val, by omega⟩, ?_⟩
    simpa only [Nat.mod_add_mod, Nat.add_assoc] using read
  · rintro ⟨d, read⟩
    let a := min d.val (width₁ - 1)
    have ha : a < width₁ := (min_le_right _ _).trans_lt (by omega)
    have hd := d.isLt
    have hb : d.val - a < width₂ := by
      dsimp [a]
      omega
    have total : a + (d.val - a) = d.val :=
      Nat.add_sub_of_le (min_le_left _ _)
    refine ⟨⟨a, ha⟩, ⟨d.val - a, hb⟩, ?_⟩
    change (((start.val + a) % phases) + (d.val - a)) % phases = observed.val
    rwa [Nat.mod_add_mod, Nat.add_assoc, total]

/-- The same executable prime decoder recognizes two independently
delayed reads with the exact combined width, including wraparound. -/
theorem decodeCyclicPrime_eq_some_iff_two_delays {states lanes phases width₁ width₂ : ℕ}
    (h₁ : 0 < width₁) (h₂ : 0 < width₂)
    (layout : Layout states lanes phases (width₁ + width₂ - 1))
    (offset p : ℕ) (observed : Fin phases) (q : Fin states) :
    decodeCyclicPrime layout offset p observed = some q ↔
      p = Nat.nth Nat.Prime (offset + (layout.lane q).val) ∧
      ∃ a : Fin width₁, ∃ b : Fin width₂,
        ((((layout.start q).val + a.val) % phases) + b.val) % phases = observed.val := by
  rw [decodeCyclicPrime_eq_some_iff, two_delays_iff h₁ h₂]

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.NumberTheory.PrimeLaneCyclicDelay
