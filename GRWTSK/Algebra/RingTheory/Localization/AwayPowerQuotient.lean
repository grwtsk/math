/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib ideal quotients and localization universal properties (Apache-2.0).
Formalization assistance: OpenAI.

Localization does not change a finite ideal-power quotient when the element
being inverted is already a unit there. A finite geometric inverse supplies
that premise for a unit plus an ideal-nilpotent displacement. No smoothness,
field structure, nontriviality, or completion/localization interchange is used.
Unelaborated source proof scripts; no kernel acceptance is claimed.
-/
import Mathlib.RingTheory.Localization.Away.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.RingTheory.Localization.AwayPowerQuotient

variable {A : Type*} [CommRing A]

/-- A division-free finite geometric inverse; q is a supplied inverse of r. -/
def inverseApprox (q z : A) : ℕ → A
  | 0 => 0
  | n + 1 => q + (-q * z) * inverseApprox q z n

/-- The exact residual is retained before imposing a nilpotence bound. -/
theorem inverseApprox_product (r q z : A) (hrq : r * q = 1) (n : ℕ) :
    (r + z) * inverseApprox q z n = 1 - (-q * z) ^ n := by
  induction n with
  | zero => simp [inverseApprox]
  | succ n ih =>
    rw [inverseApprox]
    calc
      _ = r * q + z * q + (-q * z) * ((r + z) * inverseApprox q z n) := by ring
      _ = 1 + z * q + (-q * z) * (1 - (-q * z) ^ n) := by rw [hrq, ih]
      _ = 1 - (-q * z) ^ (n + 1) := by ring

/-- This is a genuine inverse even with zero divisors or a zero quotient. -/
theorem inverseApprox_product_of_nilpotent (r q z : A) (hrq : r * q = 1)
    (n : ℕ) (hz : z ^ n = 0) : (r + z) * inverseApprox q z n = 1 := by
  rw [inverseApprox_product r q z hrq n, mul_pow, hz, mul_zero, sub_zero]

/-- The image of s is a unit modulo I^n if s differs from a proved unit by I.
Exponent zero is allowed; its quotient is the zero ring, not a first jet. -/
theorem unit_mod_power (s r q : A) (I : Ideal A) (hrq : r * q = 1)
    (hmem : s - r ∈ I) (n : ℕ) : IsUnit (Ideal.Quotient.mk (I ^ n) s) := by
  let p := Ideal.Quotient.mk (I ^ n)
  have hnil : (p (s - r)) ^ n = 0 := by
    rw [← map_pow]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.pow_mem_pow hmem n)
  have hu : p s * inverseApprox (p q) (p (s - r)) n = 1 := by
    have h := inverseApprox_product_of_nilpotent (p r) (p q) (p (s - r))
      (by rw [← map_mul, hrq, map_one]) n hnil
    have heq : p r + p (s - r) = p s := by rw [map_sub]; ring
    rw [heq] at h
    exact h
  exact ⟨⟨p s, inverseApprox (p q) (p (s - r)) n, hu,
    by simpa only [mul_comm] using hu⟩, rfl⟩

abbrev Away (s : A) := Localization.Away s

def localize (s : A) : A →+* Away s := algebraMap A (Away s)

variable (s : A) (I : Ideal A) (J : Ideal (Away s))

/-- Forward map is induced by localization before using any inverse. -/
def toLocal (hJ : I.map (localize s) = J) (n : ℕ) : A ⧸ I ^ n →+* Away s ⧸ J ^ n :=
  Ideal.Quotient.lift _ ((Ideal.Quotient.mk (J ^ n)).comp (localize s)) (by
    intro a ha
    apply Ideal.Quotient.eq_zero_iff_mem.mpr
    have hm := Ideal.mem_map_of_mem (localize s) ha
    rwa [Ideal.map_pow, hJ] at hm)

@[simp] theorem toLocal_mk (hJ : I.map (localize s) = J) (n : ℕ) (a : A) :
    toLocal s I J hJ n (Ideal.Quotient.mk (I ^ n) a) =
      Ideal.Quotient.mk (J ^ n) (localize s a) := rfl

/-- Extend the quotient map across the ACTUAL localization using its unit witness. -/
def retract (n : ℕ) (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) :
    Away s →+* A ⧸ I ^ n :=
  IsLocalization.Away.lift s (g := Ideal.Quotient.mk (I ^ n)) hu

@[simp] theorem retract_localize (n : ℕ) (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) (a : A) :
    retract s I n hu (localize s a) = Ideal.Quotient.mk (I ^ n) a :=
  IsLocalization.Away.lift_eq s hu a

/-- The same full ideal power, not just pure generators, is killed by the retract. -/
theorem retract_kills (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) :
    J ^ n ≤ RingHom.ker (retract s I n hu) := by
  rw [← hJ, ← Ideal.map_pow]
  apply Ideal.map_le_iff_le_comap.mpr
  intro a ha
  change retract s I n hu (localize s a) = 0
  rw [retract_localize]
  exact Ideal.Quotient.eq_zero_iff_mem.mpr ha

/-- The reverse quotient map is defined independently using the localization lift. -/
def fromLocal (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) : Away s ⧸ J ^ n →+* A ⧸ I ^ n :=
  Ideal.Quotient.lift _ (retract s I n hu) (retract_kills s I J hJ n hu)

@[simp] theorem fromLocal_mk (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) (z : Away s) :
    fromLocal s I J hJ n hu (Ideal.Quotient.mk (J ^ n) z) = retract s I n hu z := rfl

/-- First inverse identity is checked on every original ring representative. -/
theorem fromLocal_toLocal (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) (u : A ⧸ I ^ n) :
    fromLocal s I J hJ n hu (toLocal s I J hJ n u) = u := by
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective u
  rw [toLocal_mk, fromLocal_mk, retract_localize]

/-- Equality on the localization follows from its universal property, not samples. -/
theorem toLocal_retract (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) :
    (toLocal s I J hJ n).comp (retract s I n hu) = Ideal.Quotient.mk (J ^ n) := by
  apply IsLocalization.ringHom_ext (Submonoid.powers s)
  apply RingHom.ext
  intro a
  change toLocal s I J hJ n (retract s I n hu (localize s a)) =
    Ideal.Quotient.mk (J ^ n) (localize s a)
  rw [retract_localize, toLocal_mk]

/-- Second inverse identity uses arbitrary localization representatives. -/
theorem toLocal_fromLocal (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) (v : Away s ⧸ J ^ n) :
    toLocal s I J hJ n (fromLocal s I J hJ n hu v) = v := by
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective v
  rw [fromLocal_mk]
  exact DFunLike.congr_fun (toLocal_retract s I J hJ n hu) z

/-- Canonical localization/quotient equivalence with its exact unit hypothesis. -/
def quotientEquiv (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) : A ⧸ I ^ n ≃+* Away s ⧸ J ^ n where
  toFun := toLocal s I J hJ n
  invFun := fromLocal s I J hJ n hu
  left_inv := fromLocal_toLocal s I J hJ n hu
  right_inv := toLocal_fromLocal s I J hJ n hu
  map_mul' := (toLocal s I J hJ n).map_mul
  map_add' := (toLocal s I J hJ n).map_add

@[simp] theorem quotientEquiv_mk (hJ : I.map (localize s) = J) (n : ℕ)
    (hu : IsUnit (Ideal.Quotient.mk (I ^ n) s)) (a : A) :
    quotientEquiv s I J hJ n hu (Ideal.Quotient.mk (I ^ n) a) =
      Ideal.Quotient.mk (J ^ n) (localize s a) := rfl

/-- The forward comparison respects independently defined ideal-power transitions. -/
theorem toLocal_transition (hJ : I.map (localize s) = J)
    (m n : ℕ) (hmn : m ≤ n) (u : A ⧸ I ^ n) :
    Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) (toLocal s I J hJ n u) =
      toLocal s I J hJ m (Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) u) := by
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

/-- Inverse compatibility does not assume that chosen inverse witnesses are identical. -/
theorem fromLocal_transition (hJ : I.map (localize s) = J)
    (m n : ℕ) (hmn : m ≤ n)
    (hm : IsUnit (Ideal.Quotient.mk (I ^ m) s))
    (hn : IsUnit (Ideal.Quotient.mk (I ^ n) s)) (v : Away s ⧸ J ^ n) :
    Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) (fromLocal s I J hJ n hn v) =
      fromLocal s I J hJ m hm (Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) v) := by
  apply (quotientEquiv s I J hJ m hm).injective
  change toLocal s I J hJ m
      (Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) (fromLocal s I J hJ n hn v)) =
    toLocal s I J hJ m
      (fromLocal s I J hJ m hm (Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) v))
  rw [← toLocal_transition, toLocal_fromLocal, toLocal_fromLocal]

end GRWTSK.Algebra.RingTheory.Localization.AwayPowerQuotient
