/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.LucasPrimality
import Mathlib.GroupTheory.Index
import Mathlib.Data.Sym.NatCard
import Mathlib.Algebra.Order.BigOperators.Group.Multiset

/-!
# Saturating a bounded subgroup index in deterministic factoring

Cogentic, *Unconditional Deterministic Subexponential Integer Factoring and
Quadratic Nonresidue Construction* (2026), Lemma 11.1, final divisibility
step. Its numerical supplier must bound the index of the subgroup generated
by the actual residues. Here group order, divisibility, and the saturation
integer are derived using Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The companion provenance identifies the remaining analytic and machine costs.
-/
namespace GRWTSK.IntegerFactorization.SubgroupSaturation

/-- Every positive index up to the cap divides the same computable integer. -/
theorem index_dvd_lcm {i k : ℕ} (hi : 0 < i) (hk : i ≤ k) : i ∣ Nat.lcmUpto k :=
  Finset.dvd_lcm (f := id) (Finset.mem_Icc.mpr ⟨hi, hk⟩)

/-- Computing by LCM gives exactly the manuscript's product of maximal prime powers. -/
theorem multiplier_eq_primePowers (k : ℕ) :
    Nat.lcmUpto k = ∏ q ∈ Nat.primesLE k, q ^ Nat.log q k :=
  Nat.lcmUpto_eq_prod_pow_log k

/-- A linear bound for the natural logarithm of the exact saturation multiplier. -/
theorem log_multiplier_le (k : ℕ) :
    Real.log (Nat.lcmUpto k) ≤ (Real.log 4 + 4) * k := by
  rw [← Chebyshev.psi_eq_log_lcmUpto]
  exact Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg _)

/-- All words in the supplied generators are annihilated. -/
theorem closure_pow_eq_one {G : Type*} [CommGroup G] {s : Set G} {m : ℕ}
    (hs : ∀ g ∈ s, g ^ m = 1) {g : G} (hg : g ∈ Subgroup.closure s) :
    g ^ m = 1 := by
  have hsub : Subgroup.closure s ≤ (powMonoidHom (α := G) m).ker :=
    (Subgroup.closure_le _).mpr hs
  exact hsub hg

/-- Lagrange's theorem and the exponent of the actual cyclic subgroup remove
the order and divisibility premises from the arithmetic version. -/
theorem card_dvd_saturated {G : Type*} [CommGroup G] [Finite G] [IsCyclic G]
    (s : Set G) {m k : ℕ} (hs : ∀ g ∈ s, g ^ m = 1)
    (hi : (Subgroup.closure s).index ≤ k) :
    Nat.card G ∣ m * Nat.lcmUpto k := by
  let H := Subgroup.closure s
  have hcard : Nat.card H ∣ m := by
    rw [← IsCyclic.exponent_eq_card]
    apply Monoid.exponent_dvd_iff_forall_pow_eq_one.mpr
    intro g
    apply Subtype.ext
    exact closure_pow_eq_one hs g.property
  have hidx : H.index ∣ Nat.lcmUpto k :=
    index_dvd_lcm (Nat.pos_of_ne_zero Subgroup.index_ne_zero_of_finite) hi
  rw [← H.card_mul_index]
  exact Nat.mul_dvd_mul hcard hidx

/-- Specialization to the actual unit group modulo a prime as required by the
order-splitting branch. The set and index refer to the same subgroup. -/
theorem prime_sub_one_dvd {p m k : ℕ} [hp : Fact p.Prime] (s : Set (ZMod p)ˣ)
    (hs : ∀ g ∈ s, g ^ m = 1) (hi : (Subgroup.closure s).index ≤ k) :
    p - 1 ∣ m * Nat.lcmUpto k := by
  have hc : Nat.card (ZMod p)ˣ = p - 1 := by
    rw [Nat.card_eq_fintype_card]
    exact (Nat.prime_iff_card_units p).mp hp.out
  simpa only [hc] using card_dvd_saturated s hs hi

/-- Specialize the residue inputs directly from the congruences modulo the *original*
composite, retaining coprimality and the divisor map of moduli. -/
theorem prime_sub_one_dvd_of_congruences {n p m k : ℕ} [Fact p.Prime] (hpn : p ∣ n)
    (bases : Finset ℕ) (hc : ∀ a ∈ bases, a.Coprime p)
    (hm : ∀ a ∈ bases, a ^ m ≡ 1 [MOD n])
    (hi : (Subgroup.closure (Set.range fun a : bases =>
      ZMod.unitOfCoprime a.val (hc a.val a.property))).index ≤ k) :
    p - 1 ∣ m * Nat.lcmUpto k := by
  apply prime_sub_one_dvd _ _ hi
  rintro _ ⟨a, rfl⟩
  apply Units.ext
  simpa only [Units.val_pow_eq_pow_val, ZMod.coe_unitOfCoprime, Units.val_one,
    Nat.cast_pow, Nat.cast_one] using
    (ZMod.natCast_eq_natCast_iff (a.val ^ m) 1 p).mpr ((hm _ a.property).of_dvd hpn)

/-- Explicit linear bit length (before the final multiplication by the old exponent). -/
theorem multiplier_bits_le (k : ℕ) :
    (Nat.log2 (Nat.lcmUpto k) : ℝ) + 1 ≤ (Real.log 4 + 4) * k / Real.log 2 + 1 := by
  apply add_le_add_left
  exact (Real.log2_le_logb _).trans
    (div_le_div_of_nonneg_right (log_multiplier_le k) (Real.log_nonneg (by norm_num)))

private theorem primeProducts_injective (P : Finset ℕ) (hP : ∀ q ∈ P, q.Prime) :
    Function.Injective (fun t : Multiset P => (t.map Subtype.val).prod) := by
  intro a b hab
  apply Multiset.map_injective Subtype.val_injective
  let A := a.map Subtype.val
  let B := b.map Subtype.val
  have hp (s : Multiset P) : ∀ x ∈ (s.map Subtype.val).toList, Prime x := by
    intro x hx
    obtain ⟨y, _, rfl⟩ := Multiset.mem_map.mp (Multiset.mem_toList.mp hx)
    exact Nat.prime_iff.mp (hP _ y.property)
  have hh : A.toList.prod = B.toList.prod := by simpa [A, B] using hab
  have hperm := perm_of_prod_eq_prod hh (hp a) (hp b)
  simpa [A, B] using Multiset.coe_eq_coe.mpr hperm

/-- The actual generated subgroup contains at least one residue for each multiset
of `t` distinct-or-repeated primes in `P`. The cap prevents reduction mod `p`
from identifying distinct integer products. -/
theorem multichoose_le_subgroup_card {p B t : ℕ} [Fact p.Prime] (P : Finset ℕ)
    (hP : ∀ q ∈ P, q.Prime) (hB : ∀ q ∈ P, q ≤ B) (hsmall : B ^ t < p)
    (hc : ∀ q ∈ P, q.Coprime p) :
    Nat.multichoose P.card t ≤
      Nat.card (Subgroup.closure (Set.range fun q : P => ZMod.unitOfCoprime q.val (hc _ q.property))) := by
  let unit (q : P) := ZMod.unitOfCoprime q.val (hc _ q.property)
  let H := Subgroup.closure (Set.range unit)
  let gen (q : P) : H := ⟨unit q, Subgroup.subset_closure ⟨q, rfl⟩⟩
  let f (s : Sym P t) : H := (s.val.map gen).prod
  have hreduce (s : Multiset P) :
      (((s.map gen).prod : H).val.val : ZMod p) = ((s.map Subtype.val).prod : ℕ) := by
    induction s using Multiset.induction_on with
    | empty => simp
    | cons x xs ih =>
      simp only [Multiset.map_cons, Multiset.prod_cons, Subgroup.coe_mul, Units.val_mul, Nat.cast_mul]
      rw [ih]
      rfl
  have hlt (s : Sym P t) : (s.val.map Subtype.val).prod < p := by
    apply lt_of_le_of_lt _ hsmall
    have hbound (x) (hx : x ∈ s.val.map Subtype.val) : x ≤ B := by
      obtain ⟨y, _, rfl⟩ := Multiset.mem_map.mp hx
      exact hB _ y.property
    simpa [s.property] using Multiset.prod_le_pow_card (s.val.map Subtype.val) B hbound
  have hinj : Function.Injective f := by
    intro a b hab
    have hmod := congrArg (fun z : H => (z.val.val : ZMod p)) hab
    change (((a.val.map gen).prod : H).val.val : ZMod p) = (((b.val.map gen).prod : H).val.val : ZMod p) at hmod
    rw [hreduce, hreduce] at hmod
    have heq := congrArg ZMod.val hmod
    rw [ZMod.val_natCast_of_lt (hlt a), ZMod.val_natCast_of_lt (hlt b)] at heq
    exact Subtype.ext (primeProducts_injective P hP heq)
  simpa only [Sym.natCard_sym_eq_multichoose, Nat.card_eq_finsetCard] using
    Nat.card_le_card_of_injective f hinj

/-- Integer-only version of the paper's final index test. One lower bound on
the number of distinct short prime products discharges the subgroup-index premise. -/
theorem prime_sub_one_dvd_of_packing {n p m B t k : ℕ} [hp : Fact p.Prime]
    (hpn : p ∣ n) (P : Finset ℕ) (hP : ∀ q ∈ P, q.Prime) (hB : ∀ q ∈ P, q ≤ B)
    (hsmall : B ^ t < p) (hc : ∀ q ∈ P, q.Coprime p)
    (hm : ∀ q ∈ P, q ^ m ≡ 1 [MOD n])
    (hcount : p - 1 < Nat.multichoose P.card t * (k + 1)) :
    p - 1 ∣ m * Nat.lcmUpto k := by
  apply prime_sub_one_dvd_of_congruences hpn P hc hm
  let H := Subgroup.closure (Set.range fun q : P => ZMod.unitOfCoprime q.val (hc _ q.property))
  change H.index ≤ k
  have hcard : Nat.card H * H.index = p - 1 := by
    rw [H.card_mul_index, Nat.card_eq_fintype_card]
    exact (Nat.prime_iff_card_units p).mp hp.out
  by_contra! h
  have hlarge := Nat.mul_le_mul (multichoose_le_subgroup_card P hP hB hsmall hc)
    (show k + 1 ≤ H.index from h)
  exact hcount.not_ge (hlarge.trans_eq hcard)

end GRWTSK.IntegerFactorization.SubgroupSaturation
