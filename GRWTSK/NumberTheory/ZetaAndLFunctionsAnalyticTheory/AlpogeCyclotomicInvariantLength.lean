import Mathlib.NumberTheory.ArithmeticFunction.Carmichael
import Mathlib.NumberTheory.Padics.RingHoms
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.PadicValNat
import Mathlib.Tactic.Ring

/-!
# Cyclotomic fixed fractions and the finite twist window

These lemmas compute the finite unit-group test for the local invariant term
in Alpöge's `Glob.h0` at an odd prime unramified in the host. The local-field
identification, coefficient length normalization and source are in the paired note.
-/

namespace GRWTSK.NumberTheory.AlpogeCyclotomicInvariantLength

/-- The fixed classes in a fraction field modulo its integral subring are the
classes killed by a generator of the scalar differences. -/
theorem fixed_fraction_iff {F G : Type*} [Field F] (O : Subring F)
    (χ : G → F) (a : F)
    (hdiv : ∀ g, ∃ q ∈ O, χ g - 1 = a * q)
    (hgen : ∃ g, ∃ v ∈ O, v * (χ g - 1) = a) (x : F) :
    (∀ g, χ g * x - x ∈ O) ↔ a * x ∈ O := by
  constructor
  · intro h
    obtain ⟨g, v, hv, he⟩ := hgen
    rw [← he]
    convert O.mul_mem hv (h g) using 1
    ring
  · intro h g
    obtain ⟨q, hq, he⟩ := hdiv g
    rw [← sub_one_mul, he]
    convert O.mul_mem hq h using 1
    ring

/-- Every unit fixes the depth-`k+1` cyclotomic twist precisely at multiples
of the exponent of the odd prime-power unit group. -/
theorem units_fix_iff {p n : ℕ} (hp : p.Prime) (hp₂ : p ≠ 2) (k : ℕ) :
    (∀ u : (ZMod (p ^ (k + 1)))ˣ, u ^ n = 1) ↔ (p - 1) * p ^ k ∣ n := by
  rw [← Monoid.exponent_dvd_iff_forall_pow_eq_one,
    ← ArithmeticFunction.carmichael_eq_exponent (pow_ne_zero _ hp.ne_zero),
    ArithmeticFunction.carmichael_pow_of_prime_ne_two _ hp hp₂,
    Nat.totient_prime_pow_succ hp, Nat.mul_comm]

/-- The scalar differences of the full group of actual p-adic units are all
divisible by the stated power exactly at the finite exponent threshold. -/
theorem padic_units_fix_iff {p n : ℕ} [hp : Fact p.Prime] (hp₂ : p ≠ 2) (k : ℕ) :
    (∀ u : ℤ_[p]ˣ, (p : ℤ_[p]) ^ (k + 1) ∣ (u : ℤ_[p]) ^ n - 1) ↔
      (p - 1) * p ^ k ∣ n := by
  let r := PadicInt.toZModPow (p := p) (k + 1)
  have mod_iff (u : ℤ_[p]ˣ) : (p : ℤ_[p]) ^ (k + 1) ∣ (u : ℤ_[p]) ^ n - 1 ↔
      (Units.map r.toMonoidHom u) ^ n = 1 := by
    rw [← Ideal.mem_span_singleton, ← PadicInt.ker_toZModPow, RingHom.mem_ker,
      map_sub, map_pow, map_one, sub_eq_zero]
    constructor
    · intro h
      apply Units.ext
      simpa [r] using h
    · intro h
      simpa [r] using congrArg (fun v : (ZMod (p ^ (k + 1)))ˣ => v.val) h
  simp_rw [mod_iff]
  rw [← units_fix_iff hp.out hp₂ k]
  refine ⟨fun h v => ?_, fun h u => h _⟩
  let a := (v : ZMod (p ^ (k + 1))).val
  have hc : a.Coprime p := (ZMod.val_coe_unit_coprime v).of_dvd_right (dvd_pow_self p (by omega))
  have hu : IsUnit (a : ℤ_[p]) := by
    by_contra hn
    have hh := PadicInt.not_isUnit_iff.mp hn
    have hh' : ‖((a : ℤ) : ℤ_[p])‖ < 1 := by exact_mod_cast hh
    have hd := (PadicInt.norm_int_lt_one_iff_dvd _).mp hh'
    exact (hp.out.coprime_iff_not_dvd.mp hc.symm) (by exact_mod_cast hd)
  have hv : Units.map r.toMonoidHom hu.unit = v := by
    apply Units.ext
    change r (hu.unit : ℤ_[p]) = (v : ZMod (p ^ (k + 1)))
    rw [hu.unit_spec, map_natCast]
    exact ZMod.natCast_zmod_val _
  simpa only [hv] using h hu.unit

/-- Separating the tame and principal-unit tests at a single positive twist. -/
theorem units_fix_iff_valuation {p n : ℕ} (hp : p.Prime) (hp₂ : p ≠ 2)
    (hn : n ≠ 0) (k : ℕ) :
    (∀ u : (ZMod (p ^ (k + 1)))ˣ, u ^ n = 1) ↔
      (p - 1) ∣ n ∧ k ≤ padicValNat p n := by
  have hcop : Nat.Coprime (p - 1) (p ^ k) := by
    refine (hp.coprime_iff_not_dvd.mpr ?_).symm.pow_right _
    intro hd
    exact (Nat.not_le_of_lt (Nat.sub_lt hp.pos (by decide : 0 < 1)))
      (Nat.le_of_dvd (Nat.sub_pos_of_lt hp.one_lt) hd)
  rw [units_fix_iff hp hp₂, ← Nat.pow_dvd_iff_le_padicValNat hp.ne_one hn]
  exact ⟨fun h => ⟨(dvd_mul_right _ _).trans h, (dvd_mul_left _ _).trans h⟩,
    fun h => hcop.mul_dvd_of_dvd_of_dvd h.1 h.2⟩

/-- The exact threshold for a surviving cyclotomic layer somewhere among the
source exponents `0 < n < t`. The first possible twist realizes the threshold. -/
theorem layer_in_window_iff {p t : ℕ} (hp : p.Prime) (hp₂ : p ≠ 2) (k : ℕ) :
    (∃ n : ℕ, 0 < n ∧ n < t ∧ ∀ u : (ZMod (p ^ (k + 1)))ˣ, u ^ n = 1) ↔
      (p - 1) * p ^ k < t := by
  simp_rw [units_fix_iff hp hp₂]
  constructor
  · rintro ⟨n, hn, hnt, hd⟩
    exact lt_of_le_of_lt (Nat.le_of_dvd hn hd) hnt
  · intro h
    exact ⟨_, Nat.mul_pos (Nat.sub_pos_of_lt hp.one_lt) (Nat.pow_pos hp.pos), h, dvd_rfl⟩

/-- Closed form for the largest surviving layer once the first layer is present. -/
theorem layer_in_window_iff_log {p t : ℕ} (hp : p.Prime) (hp₂ : p ≠ 2)
    (ht : p ≤ t) (k : ℕ) :
    (∃ n : ℕ, 0 < n ∧ n < t ∧ ∀ u : (ZMod (p ^ (k + 1)))ˣ, u ^ n = 1) ↔
      k ≤ Nat.log p ((t - 1) / (p - 1)) := by
  have hp' : 0 < p - 1 := Nat.sub_pos_of_lt hp.one_lt
  have hdiv : 0 < (t - 1) / (p - 1) := Nat.div_pos (by omega) hp'
  rw [layer_in_window_iff hp hp₂, Nat.le_log_iff_pow_le hp.one_lt hdiv.ne',
    Nat.le_div_iff_mul_le hp', Nat.mul_comm (p ^ k)]
  omega

/-- With the source range excluding 2 and 3, each surviving layer contributes
a prime power inside the indicated Chebyshev cutoff. -/
theorem layer_prime_power_le {p t : ℕ} (hp : p.Prime) (hp₅ : 5 ≤ p)
    (k : ℕ) (h : ∃ n : ℕ, 0 < n ∧ n < t ∧ ∀ u : (ZMod (p ^ (k + 1)))ˣ, u ^ n = 1) :
    p ^ (k + 1) ≤ (5 * (t - 1)) / 4 := by
  have ht := (layer_in_window_iff hp (by omega) k).mp h
  have hmul := Nat.mul_le_mul_right (p ^ k) (show 4 * p ≤ 5 * (p - 1) by omega)
  have hle : (p - 1) * p ^ k ≤ t - 1 := by omega
  rw [Nat.le_div_iff_mul_le (by decide : 0 < 4), pow_succ]
  calc
    p ^ k * p * 4 = (4 * p) * p ^ k := by ring
    _ ≤ (5 * (p - 1)) * p ^ k := hmul
    _ = 5 * ((p - 1) * p ^ k) := by ring
    _ ≤ 5 * (t - 1) := Nat.mul_le_mul_left _ hle

end GRWTSK.NumberTheory.AlpogeCyclotomicInvariantLength
