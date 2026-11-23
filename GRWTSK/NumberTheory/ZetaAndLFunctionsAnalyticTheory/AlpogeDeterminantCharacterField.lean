/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
import Mathlib.Algebra.Group.Subgroup.Ker
import Mathlib.RingTheory.DedekindDomain.Factorization

/-! # Relative ideal classes and the field of an unramified CM character

The element and ideal groups below can be the units of a CM field and its
nonzero fractional ideals. The real ideal in the class relation is allowed
to be nonprincipal. The norm maps represent the product over the CM type.
-/

namespace GRWTSK.NumberTheory.AlpogeDeterminantCharacterField

/-- The same numerator gives both the power of the specified character value
and a power ideal, even when the class relation has a real-ideal factor. -/
theorem relative_power_witness {A I V : Type*} [CommGroup A] [CommGroup I] [CommGroup V]
    (principal : A →* I) (embed : A →* V) (character : I →* V)
    (conjA normA : A →* A) (conjI normI : I →* I)
    (hconj : ∀ a, conjI (principal a) = principal (conjA a))
    (hnorm : ∀ a, normI (principal a) = principal (normA a))
    (hprincipal : ∀ a, character (principal a) = embed (normA (conjA a / a)))
    (I₀ realIdeal : I) (α : A) (h : ℕ)
    (hrel : I₀ ^ h = principal α * realIdeal)
    (hreal : conjI realIdeal = realIdeal) (htriv : character realIdeal = 1) :
    ∃ β : A, character I₀ ^ h = embed β ∧
      principal β = normI (conjI I₀ / I₀) ^ h := by
  refine ⟨normA (conjA α / α), ?_, ?_⟩
  · rw [← map_pow, hrel, map_mul, htriv, mul_one, hprincipal]
  · rw [← hnorm, map_div, ← hconj, ← map_pow, div_pow, ← map_pow, hrel,
      map_mul, hreal, mul_div_mul_right_eq_div]

/-- Once values on the kernel are in the unit subgroup of the base field,
it suffices to test arbitrary lifts of a generating set in the quotient. -/
theorem values_mem_iff_generators {I C V : Type*} [CommGroup I] [CommGroup C] [CommGroup V]
    (q : I →* C) (character : I →* V) (S : Subgroup V) (generators : Set I)
    (hgenerate : Subgroup.closure (q '' generators) = ⊤)
    (hkernel : ∀ x ∈ q.ker, character x ∈ S) :
    (∀ x, character x ∈ S) ↔ ∀ x ∈ generators, character x ∈ S := by
  constructor
  · exact fun h x _ => h x
  intro h x
  let T := S.comap character
  have hfull : (⊤ : Subgroup C) ≤ T.map q := by
    rw [← hgenerate, Subgroup.closure_le]
    rintro _ ⟨a, ha, rfl⟩
    exact ⟨a, h a ha, rfl⟩
  obtain ⟨a, ha, he⟩ := hfull (show q x ∈ (⊤ : Subgroup C) from trivial)
  have hd : x / a ∈ q.ker := by
    change q (x / a) = 1
    simp only [map_div, he, div_self']
  have hm := S.mul_mem (hkernel _ hd) (show character a ∈ S from ha)
  simpa using hm

open Polynomial IntermediateField
open scoped Polynomial IntermediateField

/-- The degree price of one generator is at most its relative class order.
The coefficient field may already contain any previously adjoined generators. -/
theorem degree_single_power_le {K E : Type*} [Field K] [Field E] [Algebra K E]
    (z : E) (a : K) {d : ℕ} (hd : d ≠ 0) (hz : z ^ d = algebraMap K E a) :
    Module.finrank K K⟮z⟯ ≤ d := by
  let p : K[X] := X ^ d - C a
  have hm : p.Monic := monic_X_pow_sub_C a hd
  have he : aeval z p = 0 := by simp [p, hz]
  have hi : IsIntegral K z := ⟨p, hm, he⟩
  rw [IntermediateField.adjoin.finrank hi]
  calc
    (minpoly K z).natDegree ≤ p.natDegree :=
      Polynomial.natDegree_le_of_dvd (minpoly.dvd K z he) hm.ne_zero
    _ = d := natDegree_X_pow_sub_C

open scoped nonZeroDivisors
open IsDedekindDomain

/-- Equality of positive powers of nonzero fractional ideals over a Dedekind
domain determines the ideals, including at primes dividing the power. -/
theorem fractional_ideal_of_power {R K : Type*} [CommRing R] [IsDedekindDomain R]
    [Field K] [Algebra R K] [IsFractionRing R K] (I J : FractionalIdeal R⁰ K)
    (hI : I ≠ 0) (hJ : J ≠ 0) {n : ℕ} (hn : n ≠ 0) (he : I ^ n = J ^ n) : I = J := by
  have hc (v : HeightOneSpectrum R) : FractionalIdeal.count K v I =
      FractionalIdeal.count K v J := by
    have h := congrArg (FractionalIdeal.count K v) he
    rw [FractionalIdeal.count_pow, FractionalIdeal.count_pow] at h
    exact mul_left_cancel₀ (Nat.cast_ne_zero.mpr hn) h
  rw [← FractionalIdeal.finprod_heightOneSpectrum_factorization' K hI,
    ← FractionalIdeal.finprod_heightOneSpectrum_factorization' K hJ]
  exact finprod_congr fun v => congrArg _ (hc v)

end GRWTSK.NumberTheory.AlpogeDeterminantCharacterField
