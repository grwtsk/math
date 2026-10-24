# Complete source: GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01a3bb2079fcdfa7035c6cd1bf270c1ac3b3a33d` · SHA-256 `73e8b792c52c371e7def92efc296440acae15377e525905290d69fddbb82ab00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual cubic characters on good maximal quotients of the third cyclotomic integer ring.
Adapted from OpenAI math, project author OpenAI, Apache-2.0,
commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/GaussSum/FiniteFourier.lean, restricted roots and
unit character construction (377-402,429-477), actual character and laws (553-654),
SHA256 0e8e4184de91161a75802e3a26abfd19a322dffa6441968bf9caeb25800b5d7c.
Mathlib NumberTheory/MulChar/Basic.lean: Michael Stoll (2022), Apache-2.0.
Mathlib RingTheory/RootsOfUnity/Basic.lean: Johan Commelin (2020), Apache-2.0.
Mathlib FieldTheory/Finite/Basic.lean: Chris Hughes, Joey van Langen and Casper Putz;
copyright (c) 2018 Chris Hughes, Apache-2.0. All imported individual credits remain.
Mathlib NumberTheory/NumberField/Ideal/Basic.lean: Xavier Roblot (2025), Apache-2.0.
Human mathematical direction: grwtsk contributors; adaptation/formalization: OpenAI Codex.
Jacobi sums, normalized primary generators, coefficient weights, completed sums and RH remain open.
-/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
import Mathlib.NumberTheory.MulChar.Basic
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.NumberTheory.NumberField.Ideal.Basic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

noncomputable section
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction

private instance quotientFintype (P : Ideal O) [P.IsMaximal] : Fintype (O ⧸ P) :=
  Fintype.ofFinite _

private instance quotientField (P : Ideal O) [P.IsMaximal] : Field (O ⧸ P) :=
  Ideal.Quotient.field P

/-- Surjectivity is proved on actual cube roots, not assumed for the whole quotient map. -/
theorem restrictedRoots_surjective (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    Function.Surjective (restrictRootsOfUnity (Ideal.Quotient.mk P) 3) := by
  intro η
  have hη : ((η : (O ⧸ P)ˣ) : O ⧸ P) ^ 3 = 1 :=
    (mem_rootsOfUnity' 3 (η : (O ⧸ P)ˣ)).mp η.property
  obtain ⟨j, _, hj⟩ := (omega_reduced_primitive P hgood).eq_pow_of_pow_eq_one hη
  let z : rootsOfUnity 3 O := rootsOfUnity.mkOfPowEq omega omega_primitive.pow_eq_one
  refine ⟨z ^ j, ?_⟩
  apply rootsOfUnity.coe_injective
  change Ideal.Quotient.mk P (omega ^ j) = ((η : (O ⧸ P)ˣ) : O ⧸ P)
  rw [map_pow]
  exact hj

/-- The actual restricted reduction is bijective; no whole-ring equivalence is used. -/
def restrictedRootsEquiv (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    rootsOfUnity 3 O ≃* rootsOfUnity 3 (O ⧸ P) := by
  classical
  letI : Fintype (rootsOfUnity 3 O) := Fintype.ofFinite _
  letI : Fintype (rootsOfUnity 3 (O ⧸ P)) := Fintype.ofFinite _
  apply MulEquiv.ofBijective (restrictRootsOfUnity (Ideal.Quotient.mk P) 3)
  apply (Fintype.bijective_iff_surjective_and_card _).2
  constructor
  · exact restrictedRoots_surjective P hgood
  · rw [← Nat.card_eq_fintype_card, ← Nat.card_eq_fintype_card,
      omega_primitive.card_rootsOfUnity, (omega_reduced_primitive P hgood).card_rootsOfUnity]

theorem card_sub_one_div_three (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    3 ∣ Nat.card (O ⧸ P) - 1 := by
  let hζ := omega_reduced_primitive P hgood
  let u : (O ⧸ P)ˣ := (hζ.isUnit (by decide)).unit
  have hu : IsPrimitiveRoot u 3 := hζ.isUnit_unit (by decide)
  have h := orderOf_dvd_natCard u
  rw [← hu.eq_orderOf] at h
  simpa only [Nat.card_units] using h

def cubicExponent (P : Ideal O) : ℕ := (Nat.card (O ⧸ P) - 1) / 3

theorem cubicExponent_pos (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    0 < cubicExponent P := by
  have hq := Nat.div_mul_cancel (card_sub_one_div_three P hgood)
  have hcard : 1 < Nat.card (O ⧸ P) := by
    simpa only [Nat.card_eq_fintype_card] using (Fintype.one_lt_card (α := O ⧸ P))
  unfold cubicExponent
  omega

private def eulerToRoots (P : Ideal O) [P.IsMaximal] (m : ℕ)
    (hq : Fintype.card (O ⧸ P) - 1 = m * 3) :
    (O ⧸ P)ˣ →* rootsOfUnity 3 (O ⧸ P) where
  toFun u := rootsOfUnity.mkOfPowEq ((u : O ⧸ P) ^ m) (by
    rw [← pow_mul, ← hq]
    exact FiniteField.pow_card_sub_one_eq_one (u : O ⧸ P) u.ne_zero)
  map_one' := by
    apply rootsOfUnity.coe_injective
    simp
  map_mul' u v := by
    apply rootsOfUnity.coe_injective
    simp [mul_pow]

private def residueChar (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P)
    (m : ℕ) (hq : Fintype.card (O ⧸ P) - 1 = m * 3) : MulChar (O ⧸ P) O :=
  MulChar.ofUnitHom <|
    (Subgroup.subtype _).comp <|
      (restrictedRootsEquiv P hgood).symm.toMonoidHom.comp (eulerToRoots P m hq)

private theorem residueChar_reduce_unit (P : Ideal O) [P.IsMaximal]
    (hgood : lambda ∉ P) (m : ℕ) (hq : Fintype.card (O ⧸ P) - 1 = m * 3)
    (u : (O ⧸ P)ˣ) :
    Ideal.Quotient.mk P (residueChar P hgood m hq (u : O ⧸ P)) = (u : O ⧸ P) ^ m := by
  let e := restrictedRootsEquiv P hgood
  simp only [residueChar, MulChar.ofUnitHom_coe, MonoidHom.comp_apply]
  change Ideal.Quotient.mk P
    (((e.symm (eulerToRoots P m hq u) : rootsOfUnity 3 O) : Oˣ) : O) = (u : O ⧸ P) ^ m
  have he := e.apply_symm_apply (eulerToRoots P m hq u)
  have he' := congrArg (fun v : rootsOfUnity 3 (O ⧸ P) => ((v : (O ⧸ P)ˣ) : O ⧸ P)) he
  change Ideal.Quotient.mk P
    (((e.symm (eulerToRoots P m hq u) : rootsOfUnity 3 O) : Oˣ) : O) =
      (((eulerToRoots P m hq u : rootsOfUnity 3 (O ⧸ P)) : (O ⧸ P)ˣ) : O ⧸ P) at he'
  exact he'

private theorem residueChar_pow_three (P : Ideal O) [P.IsMaximal]
    (hgood : lambda ∉ P) (m : ℕ) (hq : Fintype.card (O ⧸ P) - 1 = m * 3) :
    residueChar P hgood m hq ^ 3 = 1 := by
  apply MulChar.ext
  intro u
  rw [(residueChar P hgood m hq).pow_apply_coe, MulChar.one_apply_coe]
  simp only [residueChar, MulChar.ofUnitHom_coe, MonoidHom.comp_apply]
  let v : rootsOfUnity 3 O := (restrictedRootsEquiv P hgood).symm (eulerToRoots P m hq u)
  change (((v : Oˣ) : O) ^ 3) = 1
  exact (mem_rootsOfUnity' 3 (v : Oˣ)).mp v.property

/-- Actual inverse root lift of the Euler unit exponent, extended by zero on nonunits. -/
def cubicChar (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) : MulChar (O ⧸ P) O := by
  let m := (Fintype.card (O ⧸ P) - 1) / 3
  have hq : Fintype.card (O ⧸ P) - 1 = m * 3 :=
    (Nat.div_mul_cancel (by simpa only [Nat.card_eq_fintype_card] using
      card_sub_one_div_three P hgood)).symm
  exact residueChar P hgood m hq

/-- The zero case uses the actual strictly positive quotient exponent. -/
theorem cubicChar_reduce (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P)
    (x : O ⧸ P) :
    Ideal.Quotient.mk P (cubicChar P hgood x) = x ^ cubicExponent P := by
  let m := (Fintype.card (O ⧸ P) - 1) / 3
  have hq : Fintype.card (O ⧸ P) - 1 = m * 3 :=
    (Nat.div_mul_cancel (by simpa only [Nat.card_eq_fintype_card] using
      card_sub_one_div_three P hgood)).symm
  have hm : 0 < m := by
    simpa only [cubicExponent, Nat.card_eq_fintype_card] using cubicExponent_pos P hgood
  simp only [cubicExponent, Nat.card_eq_fintype_card]
  change Ideal.Quotient.mk P (residueChar P hgood m hq x) = x ^ m
  by_cases hx : x = 0
  · subst x
    rw [(residueChar P hgood m hq).map_zero, map_zero, zero_pow hm.ne']
  · let u : (O ⧸ P)ˣ := (isUnit_iff_ne_zero.mpr hx).unit
    have hu : (u : O ⧸ P) = x := (isUnit_iff_ne_zero.mpr hx).unit_spec
    rw [← hu]
    exact residueChar_reduce_unit P hgood m hq u

/-- Equality to the trivial character, which is zero at zero. -/
theorem cubicChar_pow_three (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood ^ 3 = 1 := by
  let m := (Fintype.card (O ⧸ P) - 1) / 3
  have hq : Fintype.card (O ⧸ P) - 1 = m * 3 :=
    (Nat.div_mul_cancel (by simpa only [Nat.card_eq_fintype_card] using
      card_sub_one_div_three P hgood)).symm
  exact residueChar_pow_three P hgood m hq

theorem cubicChar_ne_one (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood ≠ 1 := by
  let m := (Fintype.card (O ⧸ P) - 1) / 3
  have hq : Fintype.card (O ⧸ P) - 1 = m * 3 :=
    (Nat.div_mul_cancel (by simpa only [Nat.card_eq_fintype_card] using
      card_sub_one_div_three P hgood)).symm
  have hm : 0 < m := by
    simpa only [cubicExponent, Nat.card_eq_fintype_card] using cubicExponent_pos P hgood
  intro hχ
  have hall : ∀ u : (O ⧸ P)ˣ, u ^ m = 1 := by
    intro u
    apply Units.ext
    have hr := cubicChar_reduce P hgood (u : O ⧸ P)
    rw [hχ, MulChar.one_apply_coe, map_one] at hr
    simpa only [Units.val_pow_eq_pow_val, Units.val_one, cubicExponent,
      Nat.card_eq_fintype_card] using hr.symm
  have hdvd := (FiniteField.forall_pow_eq_one_iff (O ⧸ P) m).mp hall
  rw [hq] at hdvd
  have hle := Nat.le_of_dvd hm hdvd
  omega

theorem cubicChar_order (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    orderOf (cubicChar P hgood) = 3 := by
  have hdvd : orderOf (cubicChar P hgood) ∣ 3 :=
    orderOf_dvd_of_pow_eq_one (cubicChar_pow_three P hgood)
  rcases (Nat.dvd_prime Nat.prime_three).mp hdvd with h1 | h3
  · exact False.elim ((cubicChar_ne_one P hgood) (orderOf_eq_one_iff.mp h1))
  · exact h3

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters
```
