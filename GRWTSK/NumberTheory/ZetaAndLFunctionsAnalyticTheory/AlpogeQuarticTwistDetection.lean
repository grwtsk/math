/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Algebra.Ring.Subring.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Detecting the quartic twist with a cleared Honda coefficient

The integral residue test and calibration are valid for arbitrary residue
maps with principal kernel. The source-specific Laurent residue and the
elliptic existence of an aligned twist are derived in the accompanying note.
-/
namespace GRWTSK.NumberTheory.AlpogeQuarticTwistDetection

/-- The central binomial factor in the Laurent residue is prime to the inert prime. -/
theorem residue_binomial_coprime (p k : ℕ) (hp : p.Prime) (hk : 4 * k = p + 1) :
    p.Coprime ((2 * k).choose k) := by
  have hp2 := hp.two_le
  exact hp.coprime_choose_of_lt (by omega) (by omega)

/-- A cleared coefficient is integral exactly when its numerator reduces to zero. -/
theorem quotient_integral_iff {K κ : Type*} [Field K] [Field κ]
    (R : Subring K) (π b : R) (hπ : (π : K) ≠ 0) (red : R →+* κ)
    (ker : ∀ x : R, red x = 0 ↔ π ∣ x) :
    (b : K) / π ∈ R ↔ red b = 0 := by
  rw [ker]
  constructor
  · intro h
    refine ⟨⟨_, h⟩, ?_⟩
    apply Subtype.ext
    change (b : K) = π * ((b : K) / π)
    field_simp
  · rintro ⟨t, rfl⟩
    rw [Subring.coe_mul, mul_div_cancel_left₀ _ hπ]
    exact t.property

/-- One aligned unit determines the residue of the second coefficient and
therefore separates every residue class at once. -/
theorem calibrated_collision {κ : Type*} [Field κ] (a b t c : κ) (k d : ℕ)
    (ha : a ≠ 0) (ht : t ≠ 0) (hc : c ≠ 0) (halign : t ^ d = -1)
    (hcal : t ^ k * (a + b * t ^ d) = 0) :
    c ^ k * (a + b * c ^ d) = 0 ↔ c ^ d = -1 := by
  have hb := (mul_eq_zero.mp hcal).resolve_left (pow_ne_zero _ ht)
  rw [halign, mul_neg_one, ← sub_eq_add_neg, sub_eq_zero] at hb
  subst b
  rw [show a + a * c ^ d = a * (c ^ d + 1) by ring]
  simp [hc, ha, add_eq_zero_iff_eq_neg]

end GRWTSK.NumberTheory.AlpogeQuarticTwistDetection
