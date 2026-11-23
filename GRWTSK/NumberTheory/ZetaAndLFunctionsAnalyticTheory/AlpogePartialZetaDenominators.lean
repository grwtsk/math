import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.NumberTheory.ArithmeticFunction.Carmichael
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.RingTheory.Norm.Transitivity

/-!
# Local norm tests for denominators of partial zeta values

The rational integer test in the original denominator statement is recovered
from the exponent of the entire unit group modulo any prime power. The norm
identity permits tests from maximal unramified intermediate fields as well.
-/

namespace GRWTSK.NumberTheory.AlpogePartialZetaDenominators

/-- The least smoothing-factor valuation, with the original lower bound on the input. -/
noncomputable def minVal (p n : ℕ) : ℕ :=
  sInf {m | ∃ a : ℕ, 2 ≤ a ∧ a.Coprime p ∧ m = padicValNat p (a ^ n - 1)}

private theorem le_minVal_iff {p n h : ℕ} (hp : p.Prime) :
    h ≤ minVal p n ↔ ∀ a : ℕ, 2 ≤ a → a.Coprime p → h ≤ padicValNat p (a ^ n - 1) := by
  let S := {m | ∃ a : ℕ, 2 ≤ a ∧ a.Coprime p ∧ m = padicValNat p (a ^ n - 1)}
  have hn : S.Nonempty :=
    ⟨_, p + 1, by have := hp.two_le; omega, by simp, rfl⟩
  change h ≤ sInf S ↔ _
  constructor
  · intro hm a ha hc
    exact hm.trans (Nat.sInf_le (s := S) ⟨a, ha, hc, rfl⟩)
  · intro hall
    obtain ⟨a, ha, hc, he⟩ := Nat.sInf_mem hn
    rw [he]
    exact hall a ha hc

private theorem le_order_iff {p n h a : ℕ} (hp : p.Prime) (hn : 0 < n) (ha : 2 ≤ a) :
    h ≤ padicValNat p (a ^ n - 1) ↔ (a : ZMod (p ^ h)) ^ n = 1 := by
  have hpow := Nat.one_lt_pow hn.ne' (show 1 < a by omega)
  rw [← Nat.pow_dvd_iff_le_padicValNat hp.ne_one (by omega), ← ZMod.natCast_eq_zero_iff,
    Nat.cast_sub hpow.le, Nat.cast_pow, Nat.cast_one, sub_eq_zero]

/-- Exact finite-unit-group criterion for every positive valuation threshold. -/
theorem le_minVal_iff_carmichael_dvd {p n : ℕ} (hp : p.Prime) (hn : 0 < n) (h : ℕ) :
    h + 1 ≤ minVal p n ↔ ArithmeticFunction.carmichael (p ^ (h+1)) ∣ n := by
  let m := p ^ (h+1)
  have hm : 1 < m := Nat.one_lt_pow (Nat.succ_ne_zero _) hp.one_lt
  have : NeZero m := ⟨by omega⟩
  rw [le_minVal_iff hp, ArithmeticFunction.carmichael_eq_exponent (n := m) (by omega),
    Monoid.exponent_dvd_iff_forall_pow_eq_one]
  constructor
  · intro hall u
    let a := (u : ZMod m).val + 2 * m
    have ha : 2 ≤ a := by dsimp [a]; omega
    have hcast : (a : ZMod m) = u := by simp [a]
    have hacm : a.Coprime m := (ZMod.isUnit_iff_coprime a m).1 (hcast ▸ u.isUnit)
    have hac : a.Coprime p := (Nat.coprime_pow_right_iff (Nat.succ_pos h) a p).1 hacm
    apply Units.ext
    change (u : ZMod m) ^ n = 1
    rw [← hcast]
    exact (le_order_iff hp hn ha).mp (hall a ha hac)
  · intro hall a ha hac
    apply (le_order_iff hp hn ha).mpr
    exact congrArg Units.val (hall (ZMod.unitOfCoprime a (hac.pow_right _)))

/-- The odd-prime value distinguishes the exceptional congruence exactly. -/
theorem minVal_odd {p n : ℕ} (hp : p.Prime) (hp₂ : p ≠ 2) (hn : 0 < n) :
    minVal p n = if p - 1 ∣ n then 1 + padicValNat p n else 0 := by
  have key (h : ℕ) : h + 1 ≤ minVal p n ↔ p ^ h * (p - 1) ∣ n := by
    rw [le_minVal_iff_carmichael_dvd hp hn, ArithmeticFunction.carmichael_pow_of_prime_ne_two
      _ hp hp₂, Nat.totient_prime_pow_succ hp]
  split_ifs with hd
  · have hc : p.Coprime (p - 1) :=
      (Nat.coprime_self_sub_right hp.one_le).2 (by simp)
    have eq (h : ℕ) : h + 1 ≤ minVal p n ↔ h ≤ padicValNat p n := by
      rw [key, ← Nat.pow_dvd_iff_le_padicValNat hp.ne_one hn.ne']
      exact ⟨fun hdiv => (dvd_mul_right _ _).trans hdiv,
        fun hdiv => (hc.pow_left h).mul_dvd_of_dvd_of_dvd hdiv hd⟩
    have lo := (eq (padicValNat p n)).mpr le_rfl
    have hi := (eq (padicValNat p n + 1)).not.mpr (by omega)
    omega
  · have hz : ¬ 0 + 1 ≤ minVal p n := (key 0).not.mpr (by simpa using hd)
    omega

/-- At two, every positive even exponent has the extra unit-group factor. -/
theorem minVal_two {n : ℕ} (hn : 0 < n) (he : 2 ∣ n) :
    minVal 2 n = 2 + padicValNat 2 n := by
  have hv : 1 ≤ padicValNat 2 n :=
    (Nat.pow_dvd_iff_le_padicValNat (by decide : 2 ≠ 1) hn.ne').mp (by simpa using he)
  have key (h : ℕ) (hh : 2 ≤ h) : h + 1 ≤ minVal 2 n ↔ h - 1 ≤ padicValNat 2 n := by
    rw [le_minVal_iff_carmichael_dvd Nat.prime_two hn,
      ArithmeticFunction.carmichael_two_pow_of_ne_two (by omega),
      show h+1-2=h-1 by omega, Nat.pow_dvd_iff_le_padicValNat (by decide) hn.ne']
  have lo := (key (padicValNat 2 n + 1) (by omega)).mpr (by omega)
  have hi := (key (padicValNat 2 n + 2) (by omega)).not.mpr (by omega)
  omega

/-- Increasing a smoothing exponent by divisibility can only enlarge the
denominator bound. -/
theorem minVal_mono_of_dvd {p m n : ℕ} (hp : p.Prime) (hm : 0 < m) (hn : 0 < n)
    (hd : m ∣ n) : minVal p m ≤ minVal p n := by
  cases he : minVal p m with
  | zero => exact Nat.zero_le _
  | succ h =>
    apply (le_minVal_iff_carmichael_dvd hp hn h).mpr
    exact dvd_trans ((le_minVal_iff_carmichael_dvd hp hm h).mp he.ge) hd

/-- Norms on the intermediate field give every relative-degree power of their
norms to the base. This is the local ramification-index exponent when the
intermediate field is the maximal unramified one. -/
theorem norm_from_intermediate {K U L : Type*} [Field K] [Field U] [Field L]
    [Algebra K U] [Algebra U L] [Algebra K L] [IsScalarTower K U L]
    [FiniteDimensional K U] [FiniteDimensional U L] (x : U) :
    Algebra.norm K (algebraMap U L x) = (Algebra.norm K x) ^ Module.finrank U L := by
  rw [← Algebra.norm_norm (S := U), Algebra.norm_algebraMap, map_pow]

/-- Local norm contributions combine at the gcd of the ramification indices,
without choosing a place at which this gcd is attained. -/
theorem pow_gcd_mem {G ι : Type*} [Group G] (U : Subgroup G) (x : G)
    (places : Finset ι) (e : ι → ℕ) (hx : ∀ w ∈ places, x ^ e w ∈ U) :
    x ^ places.gcd e ∈ U := by
  classical
  induction places using Finset.induction_on with
  | empty => simp
  | insert w s hw ih =>
    have h₁ := hx w (Finset.mem_insert_self w s)
    have h₂ := ih (fun i hi => hx i (Finset.mem_insert_of_mem hi))
    rw [Finset.gcd_insert, ← zpow_natCast]
    change x ^ ((Nat.gcd (e w) (s.gcd e) : ℕ) : ℤ) ∈ U
    rw [Nat.gcd_eq_gcd_ab, zpow_add, zpow_mul, zpow_mul, zpow_natCast, zpow_natCast]
    exact U.mul_mem (U.zpow_mem h₁ _) (U.zpow_mem h₂ _)

/-- The local denominator bound for the actual normalized rational value,
including the power of two and the zero-value convention. -/
theorem normalized_denominator_of_smoothing (p d b : ℕ) [Fact p.Prime] (z : ℚ)
    (hb : b ≠ 0) (h : 0 ≤ padicValRat p ((b : ℚ) * z)) :
    (-padicValRat p (z / (2 : ℚ) ^ d)).toNat ≤ d * padicValNat p 2 + padicValNat p b := by
  by_cases hz : z = 0
  · simp [hz]
  have hb' : (b : ℚ) ≠ 0 := by exact_mod_cast hb
  rw [padicValRat.mul hb' hz, padicValRat.of_nat] at h
  rw [padicValRat.div hz (by positivity), padicValRat.pow,
    show (2 : ℚ) = ((2 : ℕ) : ℚ) by norm_num, padicValRat.of_nat]
  rw [Int.toNat_le]
  simp only [Nat.cast_add, Nat.cast_mul]
  omega

end GRWTSK.NumberTheory.AlpogePartialZetaDenominators
