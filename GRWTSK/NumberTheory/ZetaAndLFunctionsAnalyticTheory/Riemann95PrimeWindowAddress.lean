/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificates

/-!
# Exact address partition for Riemann95

The prime label identifies a unique window and slot. Decoding that address
recovers the ordinal used by the stage checker and gives a numeric test
for membership in a fixed control window.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

/-- The ordinal index of a pair is invertible by Euclidean division. -/
def ordinalEquiv : (ℕ × Fin 95) ≃ ℕ where
  toFun a := stageOrdinal a.1 a.2
  invFun n := (n / 95, ⟨n % 95, Nat.mod_lt _ (by decide)⟩)
  left_inv := by
    rintro ⟨w, j⟩
    have hj := j.isLt
    apply Prod.ext
    · change (95 * w + j.val) / 95 = w
      omega
    · apply Fin.ext
      change (95 * w + j.val) % 95 = j.val
      omega
  right_inv n := Nat.div_add_mod n 95

theorem primeLabel_lt_iff_ordinal_lt (a b : ℕ × Fin 95) :
    primeLabel a.1 a.2 < primeLabel b.1 b.2 ↔ ordinalEquiv a < ordinalEquiv b := by
  change Nat.nth Nat.Prime (ordinalEquiv a) < Nat.nth Nat.Prime (ordinalEquiv b) ↔ _
  exact (Nat.nth_strictMono Nat.infinite_setOfPred_prime).lt_iff_lt

/-- Every ordinary prime is assigned to exactly one window and slot. -/
noncomputable def primeAddressEquiv : (ℕ × Fin 95) ≃ {p : ℕ // Nat.Prime p} :=
  Equiv.ofBijective (fun a => ⟨primeLabel a.1 a.2, primeLabel_prime a.1 a.2⟩) (by
    constructor
    · intro a b h
      apply ordinalEquiv.injective
      apply le_antisymm
      · by_contra! hlt
        have hp := (primeLabel_lt_iff_ordinal_lt b a).mpr hlt
        exact (Nat.ne_of_lt hp) (congrArg Subtype.val h.symm)
      · by_contra! hlt
        have hp := (primeLabel_lt_iff_ordinal_lt a b).mpr hlt
        exact (Nat.ne_of_lt hp) (congrArg Subtype.val h)
    · intro p
      obtain ⟨w, j, hp⟩ := (primeLabelAddress_iff p.val).mpr p.property
      exact ⟨(w, j), Subtype.ext hp⟩)

@[simp] theorem primeAddressEquiv_val (w : ℕ) (j : Fin 95) :
    (primeAddressEquiv (w, j)).val = primeLabel w j := rfl

theorem primeLabel_rank (w : ℕ) (j : Fin 95) :
    Nat.count Nat.Prime (primeLabel w j) = stageOrdinal w j :=
  Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime _

/-- The inverse can be computed from the number of smaller primes. -/
theorem primeAddressEquiv_symm_eq_rank (p : {p : ℕ // Nat.Prime p}) :
    primeAddressEquiv.symm p = ordinalEquiv.symm (Nat.count Nat.Prime p.val) := by
  obtain ⟨⟨w, j⟩, rfl⟩ := primeAddressEquiv.surjective p
  rw [Equiv.symm_apply_apply, primeAddressEquiv_val, primeLabel_rank]
  exact (ordinalEquiv.symm_apply_apply (w, j)).symm

/-- The machine's numeric rank test recognizes exactly the labels in its
chosen window. -/
theorem primeLabel_window_iff_rank (w : ℕ) (p : ℕ) :
    (∃ j : Fin 95, primeLabel w j = p) ↔
      Nat.Prime p ∧ 95 * w ≤ Nat.count Nat.Prime p ∧ Nat.count Nat.Prime p < 95 * w + 95 := by
  constructor
  · rintro ⟨j, rfl⟩
    rw [primeLabel_rank]
    have hj := j.isLt
    exact ⟨primeLabel_prime w j, by unfold stageOrdinal; omega, by unfold stageOrdinal; omega⟩
  · rintro ⟨hp, hlo, hhi⟩
    let j : Fin 95 := ⟨Nat.count Nat.Prime p - 95 * w, by omega⟩
    refine ⟨j, ?_⟩
    have hr : stageOrdinal w j = Nat.count Nat.Prime p := by
      dsimp [stageOrdinal, j]
      omega
    change Nat.nth Nat.Prime (stageOrdinal w j) = p
    rw [hr, Nat.nth_count hp]

/-- Slot and window are both recovered from the prime address without using
the value of the prime as an arithmetic stage argument. -/
theorem address_recover_stageArgument (w : ℕ) (j : Fin 95) :
    stageArgument (ordinalEquiv (primeAddressEquiv.symm (primeAddressEquiv (w, j)))) =
      95 * w + j.val + 2 := by
  simp [ordinalEquiv, stageOrdinal, stageArgument]

/-- In particular a valid address of one window is invalid in any other. -/
theorem primeLabel_eq_iff (w v : ℕ) (i j : Fin 95) :
    primeLabel w i = primeLabel v j ↔ w = v ∧ i = j := by
  constructor
  · intro h
    have hp : primeAddressEquiv (w, i) = primeAddressEquiv (v, j) := Subtype.ext h
    exact Prod.mk.inj (primeAddressEquiv.injective hp)
  · rintro ⟨rfl, rfl⟩
    rfl

/-- The last address in one window immediately precedes the first ordinal
in the next window, including across the first 95-control window. -/
theorem adjacent_window_boundary (w : ℕ) :
    ordinalEquiv (w, 94) + 1 = ordinalEquiv (w + 1, 0) ∧
      primeLabel w 94 < primeLabel (w + 1) 0 := by
  have h : ordinalEquiv (w, 94) + 1 = ordinalEquiv (w + 1, 0) := by
    change (95 * w + 94) + 1 = 95 * (w + 1)
    omega
  refine ⟨h, (primeLabel_lt_iff_ordinal_lt (w, 94) (w + 1, 0)).mpr ?_⟩
  omega

end GRWTSK.NumberTheory.Riemann95StageCertificates
