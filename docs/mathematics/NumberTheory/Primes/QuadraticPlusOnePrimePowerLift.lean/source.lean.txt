/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Prime-power lifting for roots of `x^2 + 1`

For an odd prime `p` and `k ≥ 1`, every canonical root modulo `p^k`
has exactly one canonical lift modulo `p^(k+1)`.  The lift coefficient is
the unique `t < p` solving the linear correction congruence

`(a^2 + 1) / p^k + 2*a*t ≡ 0 [MOD p]`.

This is a finite Hensel step proved directly from the exact quadratic
expansion.  Coprime CRT is not used to cross a noncoprime prime-power step.

The source is isolated from `GRWTSK.lean`.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift

open Finset
open GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots

noncomputable section

/-- Canonical roots of `x^2 + 1` modulo `p^k`. -/
def QuadraticPlusOnePowerRoot (p k : ℕ) : Type :=
  {a : ℕ // a ∈ quadraticPlusOneResidues (p ^ k)}

/-- Finite canonical natural representatives, including the empty zero-modulus set. -/
noncomputable instance quadraticPlusOnePowerRootFintype (p k : ℕ) :
    Fintype (QuadraticPlusOnePowerRoot p k) :=
  inferInstanceAs (Fintype {a : ℕ // a ∈ quadraticPlusOneResidues (p ^ k)})

/-- The candidate obtained by adding one base-`p` digit at level `k`. -/
def quadraticLiftCandidate (p k a t : ℕ) : ℕ :=
  a + t * p ^ k

/-- Quotient already known to be integral when `a` is a root modulo `p^k`. -/
def quadraticLiftQuotient (p k a : ℕ) : ℕ :=
  (a ^ 2 + 1) / p ^ k

/-- The exact linear correction condition for one lift digit. -/
def QuadraticLiftCoefficient (p k a t : ℕ) : Prop :=
  t < p ∧ p ∣ quadraticLiftQuotient p k a + 2 * a * t

/-- The candidate expansion before using the existing root divisibility. -/
theorem quadraticLiftCandidate_expand
    (p k a t : ℕ) :
    quadraticLiftCandidate p k a t ^ 2 + 1 =
      a ^ 2 + 1 + 2 * a * t * p ^ k + t ^ 2 * p ^ (2 * k) := by
  unfold quadraticLiftCandidate
  ring

/-- Exact reconstruction of `a^2+1` from its prime-power quotient. -/
theorem quadraticLiftQuotient_decomposition
    {p k a : ℕ} (hroot : p ^ k ∣ a ^ 2 + 1) :
    p ^ k * quadraticLiftQuotient p k a = a ^ 2 + 1 := by
  exact Nat.mul_div_cancel' hroot

/-- The lifted polynomial value factors by the old modulus. -/
theorem quadraticLiftCandidate_factor
    {p k a t : ℕ} (hroot : p ^ k ∣ a ^ 2 + 1) :
    quadraticLiftCandidate p k a t ^ 2 + 1 =
      p ^ k *
        (quadraticLiftQuotient p k a + 2 * a * t + t ^ 2 * p ^ k) := by
  rw [quadraticLiftCandidate_expand]
  rw [← quadraticLiftQuotient_decomposition hroot]
  ring

/-- The new root condition is exactly the linear correction congruence. -/
theorem quadraticLiftCandidate_root_iff
    {p k a t : ℕ} (hp : 0 < p) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1) :
    p ^ (k + 1) ∣ quadraticLiftCandidate p k a t ^ 2 + 1 ↔
      p ∣ quadraticLiftQuotient p k a + 2 * a * t := by
  rw [quadraticLiftCandidate_factor hroot, pow_succ]
  rw [Nat.mul_dvd_mul_iff_left (Nat.pow_pos hp)]
  have hpterm : p ∣ t ^ 2 * p ^ k := by
    exact dvd_mul_of_dvd_right (dvd_pow_self p (by omega : k ≠ 0)) _
  exact (Nat.dvd_add_iff_left hpterm).symm

/-- A root modulo a positive prime power is nonzero modulo the prime. -/
theorem prime_not_dvd_quadratic_power_root
    {p k a : ℕ} (hp : Nat.Prime p) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1) :
    ¬ p ∣ a := by
  intro hpa
  have hpdvdpow : p ∣ p ^ k := dvd_pow_self p (by omega : k ≠ 0)
  have hpdvdsum : p ∣ a ^ 2 + 1 := hpdvdpow.trans hroot
  have hpdvdsq : p ∣ a ^ 2 := by
    simpa [pow_two] using dvd_mul_of_dvd_left hpa a
  have hpone : p ∣ 1 := (Nat.dvd_add_iff_right hpdvdsq).mpr hpdvdsum
  exact hp.ne_one (Nat.dvd_one.mp hpone)

/-- For an odd prime root, the derivative coefficient `2*a` is invertible
modulo `p`. -/
theorem oddPrime_two_mul_root_coprime
    {p k a : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1) :
    (2 * a).Coprime p := by
  have hpa := prime_not_dvd_quadratic_power_root hp hk hroot
  have hp_not_dvd_two : ¬ p ∣ 2 := by
    intro h
    exact hp2 ((Nat.prime_dvd_prime_iff_eq hp Nat.prime_two).mp h)
  have hp_not_dvd_mul : ¬ p ∣ 2 * a := by
    intro h
    rcases hp.dvd_mul.mp h with h2 | ha
    · exact hp_not_dvd_two h2
    · exact hpa ha
  exact (hp.coprime_iff_not_dvd.mpr hp_not_dvd_mul).symm

/-- Existence of a canonical correction digit. -/
theorem quadraticLiftCoefficient_exists
    {p k a : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1) :
    ∃ t, QuadraticLiftCoefficient p k a t := by
  let q := quadraticLiftQuotient p k a
  have hcop := oddPrime_two_mul_root_coprime hp hp2 hk hroot
  obtain ⟨t, ht, htmod⟩ :=
    Nat.exists_mul_mod_eq_of_coprime
      (p - q % p) hcop hp.ne_zero
  refine ⟨t, ht, ?_⟩
  rw [Nat.dvd_iff_mod_eq_zero]
  have hq_lt : q % p < p := Nat.mod_lt _ hp.pos
  by_cases hq0 : q % p = 0
  · have ht0 : (2 * a * t) % p = 0 := by
      simpa [q, hq0] using htmod
    simp [q, Nat.add_mod, hq0, ht0]
  · have hqpos : 0 < q % p := Nat.pos_of_ne_zero hq0
    have hsub_lt : p - q % p < p := Nat.sub_lt hp.pos hqpos
    have htval : (2 * a * t) % p = p - q % p := by
      simpa [q, Nat.mod_eq_of_lt hsub_lt] using htmod
    rw [Nat.add_mod, htval]
    have hsum : q % p + (p - q % p) = p :=
      Nat.add_sub_of_le (Nat.le_of_lt hq_lt)
    rw [hsum, Nat.mod_self]

/-- Uniqueness of the canonical correction digit. -/
theorem quadraticLiftCoefficient_unique
    {p k a t u : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1)
    (ht : QuadraticLiftCoefficient p k a t)
    (hu : QuadraticLiftCoefficient p k a u) :
    t = u := by
  let q := quadraticLiftQuotient p k a
  let c := 2 * a
  have ht0 : q + c * t ≡ 0 [MOD p] :=
    Nat.modEq_zero_iff_dvd.mpr ht.2
  have hu0 : q + c * u ≡ 0 [MOD p] :=
    Nat.modEq_zero_iff_dvd.mpr hu.2
  have hsum : q + c * t ≡ q + c * u [MOD p] :=
    ht0.trans hu0.symm
  have hmul : c * t ≡ c * u [MOD p] :=
    Nat.ModEq.add_left_cancel' q hsum
  have hcancel := Nat.ModEq.cancel_left_div_gcd hp.pos hmul
  have hcop := oddPrime_two_mul_root_coprime hp hp2 hk hroot
  have htu : t ≡ u [MOD p] := by
    simpa [c, hcop.symm.gcd_eq_one] using hcancel
  exact htu.eq_of_lt_of_lt ht.1 hu.1

/-- Every odd-prime root has exactly one correction digit. -/
theorem quadraticLiftCoefficient_existsUnique
    {p k a : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1) :
    ∃! t, QuadraticLiftCoefficient p k a t := by
  obtain ⟨t, ht⟩ := quadraticLiftCoefficient_exists hp hp2 hk hroot
  refine ⟨t, ht, ?_⟩
  intro u hu
  exact quadraticLiftCoefficient_unique hp hp2 hk hroot hu ht

/-- The selected unique lift digit. -/
noncomputable def oddPrimeLiftCoefficient
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (a : QuadraticPlusOnePowerRoot p k) : ℕ :=
  Classical.choose <|
    quadraticLiftCoefficient_exists hp hp2 hk
      (mem_quadraticPlusOneResidues.mp a.2).2

theorem oddPrimeLiftCoefficient_spec
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (a : QuadraticPlusOnePowerRoot p k) :
    QuadraticLiftCoefficient p k a.1
      (oddPrimeLiftCoefficient hp hp2 hk a) :=
  Classical.choose_spec <|
    quadraticLiftCoefficient_exists hp hp2 hk
      (mem_quadraticPlusOneResidues.mp a.2).2

/-- The selected digit produces a canonical representative at the next level. -/
theorem quadraticLiftCandidate_lt
    {p k a t : ℕ} (hp : 0 < p)
    (ha : a < p ^ k) (ht : t < p) :
    quadraticLiftCandidate p k a t < p ^ (k + 1) := by
  rw [pow_succ]
  unfold quadraticLiftCandidate
  calc
    a + t * p ^ k < p ^ k + t * p ^ k := Nat.add_lt_add_right ha _
    _ = (t + 1) * p ^ k := by ring
    _ ≤ p * p ^ k :=
      (Nat.mul_le_mul_right_iff (Nat.pow_pos hp)).2 (Nat.succ_le_iff.mpr ht)
    _ = p ^ k * p := by ac_rfl

/-- The selected canonical root at the next prime-power level. -/
noncomputable def oddPrimeLift
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k) :
    QuadraticPlusOnePowerRoot p k →
      QuadraticPlusOnePowerRoot p (k + 1) := fun a => by
  let t := oddPrimeLiftCoefficient hp hp2 hk a
  refine ⟨quadraticLiftCandidate p k a.1 t, ?_⟩
  rw [mem_quadraticPlusOneResidues]
  constructor
  · exact quadraticLiftCandidate_lt hp.pos
      (mem_quadraticPlusOneResidues.mp a.2).1
      (oddPrimeLiftCoefficient_spec hp hp2 hk a).1
  · exact
      (quadraticLiftCandidate_root_iff hp.pos hk
        (mem_quadraticPlusOneResidues.mp a.2).2).2
        (oddPrimeLiftCoefficient_spec hp hp2 hk a).2

/-- Reduction of a higher-level root to the prior power. -/
def reducePowerRoot
    {p k : ℕ} (hp : 0 < p) :
    QuadraticPlusOnePowerRoot p (k + 1) →
      QuadraticPlusOnePowerRoot p k := fun b => by
  let m := p ^ k
  refine ⟨b.1 % m, ?_⟩
  rw [mem_quadraticPlusOneResidues]
  constructor
  · exact Nat.mod_lt _ (Nat.pow_pos hp)
  · have hb :=
      (mem_quadraticPlusOneResidues.mp b.2).2
    have hm_dvd : m ∣ p ^ (k + 1) := by
      dsimp [m]
      rw [pow_succ]
      exact dvd_mul_right _ _
    have hb_old : m ∣ b.1 ^ 2 + 1 := hm_dvd.trans hb
    have hmod : b.1 % m ≡ b.1 [MOD m] := Nat.mod_modEq _ _
    have hsq : (b.1 % m) ^ 2 ≡ b.1 ^ 2 [MOD m] := hmod.pow 2
    have hadd :
        (b.1 % m) ^ 2 + 1 ≡ b.1 ^ 2 + 1 [MOD m] :=
      hsq.add_right 1
    exact Nat.modEq_zero_iff_dvd.mp
      (hadd.trans hb_old.modEq_zero_nat)

/-- The selected lift reduces to its source root. -/
theorem oddPrimeLift_mod
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (a : QuadraticPlusOnePowerRoot p k) :
    (oddPrimeLift hp hp2 hk a).1 % p ^ k = a.1 := by
  simp [oddPrimeLift, quadraticLiftCandidate,
    Nat.mod_eq_of_lt (mem_quadraticPlusOneResidues.mp a.2).1]

/-- The selected lift map is injective because reduction recovers the source. -/
theorem oddPrimeLift_injective
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k) :
    Function.Injective (oddPrimeLift hp hp2 hk) := by
  intro a b hab
  apply Subtype.ext
  have hval := congrArg Subtype.val hab
  have hmod := congrArg (fun n => n % p ^ k) hval
  rw [oddPrimeLift_mod hp hp2 hk a,
    oddPrimeLift_mod hp hp2 hk b] at hmod
  exact hmod

/-- Every higher-level root decomposes into a reduced root and one digit. -/
theorem powerRoot_decomposition
    {p k : ℕ} (hp : 0 < p)
    (b : QuadraticPlusOnePowerRoot p (k + 1)) :
    let a := reducePowerRoot hp b
    let t := b.1 / p ^ k
    t < p ∧ quadraticLiftCandidate p k a.1 t = b.1 := by
  dsimp
  constructor
  · apply (Nat.div_lt_iff_lt_mul (Nat.pow_pos hp)).2
    simpa [pow_succ, mul_comm] using
      (mem_quadraticPlusOneResidues.mp b.2).1
  · simpa [reducePowerRoot, quadraticLiftCandidate, mul_comm] using
      (Nat.mod_add_div b.1 (p ^ k))

/-- The selected odd-prime lift is surjective. -/
theorem oddPrimeLift_surjective
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k) :
    Function.Surjective (oddPrimeLift hp hp2 hk) := by
  intro b
  let a := reducePowerRoot hp.pos b
  let t := b.1 / p ^ k
  have hdecomp := powerRoot_decomposition hp.pos b
  have ht : t < p := by simpa [a, t] using hdecomp.1
  have hcand : quadraticLiftCandidate p k a.1 t = b.1 := by
    simpa [a, t] using hdecomp.2
  have hroot_a :
      p ^ k ∣ a.1 ^ 2 + 1 :=
    (mem_quadraticPlusOneResidues.mp a.2).2
  have hroot_b :
      p ^ (k + 1) ∣ quadraticLiftCandidate p k a.1 t ^ 2 + 1 := by
    simpa [hcand] using
      (mem_quadraticPlusOneResidues.mp b.2).2
  have htcoeff : QuadraticLiftCoefficient p k a.1 t :=
    ⟨ht, (quadraticLiftCandidate_root_iff hp.pos hk hroot_a).1 hroot_b⟩
  have hchoice :
      oddPrimeLiftCoefficient hp hp2 hk a = t :=
    quadraticLiftCoefficient_unique hp hp2 hk hroot_a
      (oddPrimeLiftCoefficient_spec hp hp2 hk a) htcoeff
  refine ⟨a, ?_⟩
  apply Subtype.ext
  simpa [oddPrimeLift, hchoice] using hcand

/-- One-step Hensel equivalence on the canonical finite root sets. -/
noncomputable def oddPrimePowerRootEquiv
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k) :
    QuadraticPlusOnePowerRoot p k ≃
      QuadraticPlusOnePowerRoot p (k + 1) :=
  Equiv.ofBijective (oddPrimeLift hp hp2 hk)
    ⟨oddPrimeLift_injective hp hp2 hk,
      oddPrimeLift_surjective hp hp2 hk⟩

/-- Cardinality of the canonical power-root type is the repository root count. -/
theorem card_powerRoot (p k : ℕ) :
    Fintype.card (QuadraticPlusOnePowerRoot p k) =
      quadraticPlusOneRootCount (p ^ k) := by
  unfold QuadraticPlusOnePowerRoot quadraticPlusOneRootCount
  exact Fintype.card_coe _

/-- Odd-prime root counts are stable under one prime-power lift. -/
theorem quadraticPlusOneRootCount_primePower_succ
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k) :
    quadraticPlusOneRootCount (p ^ (k + 1)) =
      quadraticPlusOneRootCount (p ^ k) := by
  rw [← card_powerRoot p (k + 1), ← card_powerRoot p k]
  exact (Fintype.card_congr
    (oddPrimePowerRootEquiv hp hp2 hk)).symm

end
end GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift
