import GRWTSK.NumberTheory.AuxiliaryPrimeIdealDifference
import Mathlib.NumberTheory.NumberField.Ideal.Basic
import Mathlib.Data.Nat.ModEq

/-!
# The cyclotomic congruence for ordinary prime-ideal terms

Local source attribution: grwtsk contributors.

A primitive root of unity keeps its exact order after reduction at an ideal
whose norm is coprime to that order. Finite-field Fermat then forces the order
to divide the norm minus one. This supplies the actual congruence premise of
`auxiliary_of_prime_ideal_difference`; no splitting law is assumed here.
Source correspondence and verification scope are recorded in
`AuxiliaryPrimeAnalyticExistence.md`.
-/

noncomputable section

namespace GRWTSK.PrimeFieldFactoring.IdealDifference

open scoped NumberField

variable (K : Type*) [Field K] [NumberField K]

/-- Reduction preserves a supplied primitive root's order, and that order
divides the size of the actual nonzero residue field's multiplicative group. -/
theorem root_order_dvd_norm_sub_one {m : ℕ} [NeZero m]
    (P : Ideal (𝓞 K)) (hP : P.IsPrime) (hne : P ≠ ⊥)
    (hcop : P.absNorm.Coprime m) (ζ : 𝓞 K) (hζ : IsPrimitiveRoot ζ m) :
    m ∣ P.absNorm - 1 := by
  let _ : P.IsMaximal := Ring.DimensionLEOne.maximalOfPrime hne hP
  let _ := Ideal.Quotient.field P
  let _ := Fintype.ofFinite (𝓞 K ⧸ P)
  have hn : P.absNorm ≠ 1 := Ideal.absNorm_eq_one_iff.not.mpr hP.ne_top
  have hred := hζ.idealQuotient_mk hn hcop
  have hpow := FiniteField.pow_card_sub_one_eq_one (Ideal.Quotient.mk P ζ)
    (hred.ne_zero (NeZero.ne m))
  have hd := (hred.pow_eq_one_iff_dvd _).mp hpow
  change m ∣ Nat.card (𝓞 K ⧸ P) - 1
  simpa only [Nat.card_eq_fintype_card] using hd

/-- Norm congruence from a primitive root in the actual ring of integers. -/
theorem norm_congruent_one {m : ℕ} (hm : 2 ≤ m)
    (P : Ideal (𝓞 K)) (hP : P.IsPrime) (hne : P ≠ ⊥)
    (hcop : P.absNorm.Coprime m) (ζ : 𝓞 K) (hζ : IsPrimitiveRoot ζ m) :
    P.absNorm % m = 1 := by
  let _ : NeZero m := ⟨by omega⟩
  let _ : P.IsMaximal := Ring.DimensionLEOne.maximalOfPrime hne hP
  have hd := root_order_dvd_norm_sub_one K P hP hne hcop ζ hζ
  have hn0 : P.absNorm ≠ 0 := (Ideal.absNorm_ne_zero_iff P).mpr inferInstance
  have hmod : Nat.ModEq m 1 P.absNorm := Nat.modEq_of_dvd' (by omega) hd
  simpa only [Nat.ModEq, Nat.mod_eq_of_lt (show 1 < m by omega)] using hmod.symm

/-- A primitive root in the number field is integral and therefore supplies
the preceding theorem without an additional integrality hypothesis. -/
theorem norm_congruent_one_of_primitive_root {m : ℕ} (hm : 2 ≤ m)
    (P : Ideal (𝓞 K)) (hP : P.IsPrime) (hne : P ≠ ⊥)
    (hcop : P.absNorm.Coprime m) (ζ : K) (hζ : IsPrimitiveRoot ζ m) :
    P.absNorm % m = 1 := by
  let _ : NeZero m := ⟨by omega⟩
  exact norm_congruent_one K hm P hP hne hcop hζ.toInteger hζ.toInteger_isPrimitiveRoot

/-- Prime norm and the three relevant exclusions prove the coprimality
needed to preserve the primitive `12*q` root under reduction. -/
theorem ordinary_norm_coprime (p q : ℕ) (hq : q.Prime) (t : Term K)
    (ho : ordinary K p q t) : t.1.absNorm.Coprime (12*q) := by
  obtain ⟨_, hr, h2, h3, _, hq'⟩ := ho
  have hc2 := (Nat.coprime_primes hr Nat.prime_two).mpr h2
  have hc3 := (Nat.coprime_primes hr (by decide : Nat.Prime 3)).mpr h3
  have hcq := (Nat.coprime_primes hr hq).mpr hq'
  have hc12 : t.1.absNorm.Coprime 12 := by
    change t.1.absNorm.Coprime ((2*2)*3)
    exact Nat.coprime_mul_iff_right.mpr ⟨Nat.coprime_mul_iff_right.mpr ⟨hc2,hc2⟩,hc3⟩
  exact Nat.coprime_mul_iff_right.mpr ⟨hc12,hcq⟩

/-- The precise `hcyclo` premise of the ideal-difference extraction theorem
follows from genuine containment of a primitive root in `K`. -/
theorem ordinary_norm_congruent_one (p q x : ℕ) (hq : q.Prime)
    (ζ : K) (hζ : IsPrimitiveRoot ζ (12*q))
    (t : Term K) (ht : t ∈ window K x) (ho : ordinary K p q t) :
    t.1.absNorm % (12*q) = 1 := by
  have hw := (mem_window K x t).mp ht
  exact norm_congruent_one_of_primitive_root K (by have := hq.two_le; omega)
    t.1 hw.1 hw.2.1 (ordinary_norm_coprime K p q hq t ho) ζ hζ

/-- An actual cyclotomic extension supplies the primitive root itself. This
removes the congruence premise for the source's field `Q(mu_(12*q))`. -/
theorem cyclotomic_ordinary_norm_congruent_one (p q x : ℕ) (hq : q.Prime)
    [IsCyclotomicExtension {12*q} ℚ K]
    (t : Term K) (ht : t ∈ window K x) (ho : ordinary K p q t) :
    t.1.absNorm % (12*q) = 1 := by
  obtain ⟨ζ,hζ⟩ := IsCyclotomicExtension.exists_isPrimitiveRoot ℚ K
    (show 12*q ∈ ({12*q} : Set ℕ) by simp) (by have := hq.ne_zero; omega)
  exact ordinary_norm_congruent_one K p q x hq ζ hζ t ht ho

end GRWTSK.PrimeFieldFactoring.IdealDifference
