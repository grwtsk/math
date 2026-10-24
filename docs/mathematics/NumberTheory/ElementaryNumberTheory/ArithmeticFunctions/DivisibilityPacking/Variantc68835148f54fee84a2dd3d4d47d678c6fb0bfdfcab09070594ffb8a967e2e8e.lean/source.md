# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DivisibilityPacking.Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b89210c715e559734dba1925ff08544d82b78544` · SHA-256 `c68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.ZMod.QuotientRing
import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

/-!
# Finite raw divisibility packing

These are finite local congruence counts. Neither a survivor nor its exact density
asserts primality or prime-pattern occurrence. Bounded proper-divisor semantics
are a separate interface.
-/

namespace FormalResearch.SUCAS.DivisibilityPacking

open scoped BigOperators

/-- Distinct prime observations admitted through the support scale. -/
def primeSupport (y : ℕ) : Finset ℕ := (Finset.range (y + 1)).filter Nat.Prime

@[simp] theorem mem_primeSupport (p y : ℕ) :
    p ∈ primeSupport y ↔ p ≤ y ∧ Nat.Prime p := by
  simp only [primeSupport, Finset.mem_filter, Finset.mem_range, Nat.lt_succ_iff]

/-- The squarefree observation modulus; empty support has modulus one. -/
def Modulus (y : ℕ) : ℕ := ∏ p ∈ primeSupport y, p

theorem modulus_pos (y : ℕ) : 0 < Modulus y := by
  apply Finset.prod_pos
  intro p hp
  exact (mem_primeSupport p y |>.mp hp).2.pos

instance modulus_neZero (y : ℕ) : NeZero (Modulus y) := ⟨(modulus_pos y).ne'⟩

instance prime_neZero {y : ℕ} (p : primeSupport y) : NeZero (p : ℕ) :=
  ⟨(mem_primeSupport p y |>.mp p.property).2.ne_zero⟩

/-- Forbidden local residues are the distinct negatives of pattern offsets. -/
def forbiddenResidues (H : Finset ℤ) (p : ℕ) : Finset (ZMod p) :=
  H.image fun h : ℤ => -(h : ZMod p)

/-- Number of distinct forbidden residues, counting overlapping offsets once. -/
def localForbiddenCount (H : Finset ℤ) (p : ℕ) : ℕ := (forbiddenResidues H p).card

theorem localForbiddenCount_le (H : Finset ℤ) (p : ℕ) [NeZero p] :
    localForbiddenCount H p ≤ p := by
  simpa [localForbiddenCount, ZMod.card] using (forbiddenResidues H p).card_le_univ

/-- An explicit projection, whose domain is always the declared modulus. -/
def localReduction (y : ℕ) (p : primeSupport y) : ZMod (Modulus y) →+* ZMod (p : ℕ) :=
  ZMod.castHom (Finset.dvd_prod_of_mem id p.property) _

/-- Every visible prime coordinate avoids the residues excluded by the pattern. -/
def RawAdmissible (H : Finset ℤ) (y : ℕ) (a : ZMod (Modulus y)) : Prop :=
  ∀ p : primeSupport y, localReduction y p a ∉ forbiddenResidues H p

/-- Pure local admissibility, not a bounded primality classifier. -/
def RawPacking (H : Finset ℤ) (y : ℕ) := {a : ZMod (Modulus y) // RawAdmissible H y a}

noncomputable instance rawPackingFintype (H : Finset ℤ) (y : ℕ) :
    Fintype (RawPacking H y) := by
  classical
  exact inferInstanceAs (Fintype {a // RawAdmissible H y a})

theorem primeSupport_pairwise (y : ℕ) :
    Pairwise fun p q : primeSupport y => Nat.Coprime (p : ℕ) (q : ℕ) := by
  intro p q hpq
  apply (Nat.coprime_primes (mem_primeSupport p y |>.mp p.property).2
    (mem_primeSupport q y |>.mp q.property).2).mpr
  exact fun h => hpq (Subtype.ext h)

/-- Full CRT equivalence, including every residue, before any filtering. -/
noncomputable def residueEquiv (y : ℕ) :
    ZMod (Modulus y) ≃+* (∀ p : primeSupport y, ZMod (p : ℕ)) :=
  (ZMod.ringEquivCongr (Finset.prod_subtype (primeSupport y) (fun _ => Iff.rfl) id)).trans
    (ZMod.prodEquivPi (fun p : primeSupport y => (p : ℕ)) (primeSupport_pairwise y))

@[simp] theorem residueEquiv_apply (y : ℕ) (a : ZMod (Modulus y)) (p : primeSupport y) :
    residueEquiv y a p = localReduction y p a := by
  change ((Pi.evalRingHom (fun p : primeSupport y => ZMod (p : ℕ)) p).comp
    (residueEquiv y).toRingHom) a = localReduction y p a
  exact RingHom.congr_fun (Subsingleton.elim _ _) a

/-- Restrict CRT exactly to the independent permitted local residues. -/
noncomputable def rawPackingEquiv (H : Finset ℤ) (y : ℕ) :
    RawPacking H y ≃ (∀ p : primeSupport y, {a : ZMod (p : ℕ) //
      a ∉ forbiddenResidues H p}) :=
  (Equiv.subtypeEquiv (residueEquiv y).toEquiv (by
    intro a
    change RawAdmissible H y a ↔ ∀ p : primeSupport y,
      residueEquiv y a p ∉ forbiddenResidues H p
    simp only [RawAdmissible, residueEquiv_apply])).trans Equiv.subtypePiEquivPi

/-- Exact CRT survivor cardinality. Zero factors and empty supports are allowed. -/
theorem rawPacking_card (H : Finset ℤ) (y : ℕ) :
    Fintype.card (RawPacking H y) = ∏ p ∈ primeSupport y, (p - localForbiddenCount H p) := by
  classical
  rw [Fintype.card_congr (rawPackingEquiv H y), Fintype.card_pi]
  simp only [Fintype.card_subtype_compl, Fintype.card_coe, ZMod.card]
  exact (Finset.prod_subtype (primeSupport y) (fun _ => Iff.rfl)
    (fun p => p - localForbiddenCount H p)).symm

/-- Exact rational local-admissibility density on the finite residue ring. -/
noncomputable def rawDensity (H : Finset ℤ) (y : ℕ) : ℚ :=
  Fintype.card (RawPacking H y) / (Modulus y : ℚ)

theorem rawPacking_density (H : Finset ℤ) (y : ℕ) :
    rawDensity H y = ∏ p ∈ primeSupport y, (1 - (localForbiddenCount H p : ℚ) / p) := by
  rw [rawDensity, rawPacking_card, Modulus, Nat.cast_prod, Nat.cast_prod,
    ← Finset.prod_div_distrib]
  apply Finset.prod_congr rfl
  intro p hp
  have : NeZero p := ⟨(mem_primeSupport p y |>.mp hp).2.ne_zero⟩
  rw [Nat.cast_sub (localForbiddenCount_le H p)]
  have hpn : (p : ℚ) ≠ 0 := by exact_mod_cast (NeZero.ne p)
  field_simp

/-- Integer survivors use the same raw divisibility predicate, not compositeness. -/
def IntegerSurvivor (H : Finset ℤ) (y : ℕ) (n : ℤ) : Prop :=
  ∀ p ∈ primeSupport y, ∀ h ∈ H, ¬ (p : ℤ) ∣ n + h

theorem integerSurvivor_mono (H : Finset ℤ) {y y' : ℕ} (hy : y ≤ y') {n : ℤ}
    (hn : IntegerSurvivor H y' n) : IntegerSurvivor H y n := by
  intro p hp
  apply hn p
  exact (mem_primeSupport p y').mpr ⟨(mem_primeSupport p y |>.mp hp).1.trans hy,
    (mem_primeSupport p y |>.mp hp).2⟩

/-- The local residue predicate agrees with integer divisibility, including signs. -/
theorem integerSurvivor_iff_rawAdmissible (H : Finset ℤ) (y : ℕ) (n : ℤ) :
    IntegerSurvivor H y n ↔ RawAdmissible H y (n : ZMod (Modulus y)) := by
  classical
  simp only [IntegerSurvivor, RawAdmissible, forbiddenResidues, Finset.mem_image,
    not_exists, not_and]
  constructor
  · intro hn p h hh heq
    apply hn p p.property h hh
    have hz : ((n + h : ℤ) : ZMod (p : ℕ)) = 0 := by
      have hr : localReduction y p (n : ZMod (Modulus y)) = (n : ZMod (p : ℕ)) :=
        map_intCast (localReduction y p) n
      rw [hr] at heq
      push_cast
      linear_combination -heq
    exact (ZMod.intCast_zmod_eq_zero_iff_dvd (n + h) p).mp hz
  · intro hn p hp h hh hd
    have hz := (ZMod.intCast_zmod_eq_zero_iff_dvd (n + h) p).mpr hd
    apply hn ⟨p, hp⟩ h hh
    rw [map_intCast]
    push_cast at hz
    linear_combination -hz

/-- The formulation using a product is equivalent because every observed modulus is prime. -/
theorem integerSurvivor_iff_product (H : Finset ℤ) (y : ℕ) (n : ℤ) :
    IntegerSurvivor H y n ↔ ∀ p ∈ primeSupport y, ¬ (p : ℤ) ∣ ∏ h ∈ H, (n + h) := by
  constructor
  · intro hn p hp hd
    have : Fact (Nat.Prime p) := ⟨(mem_primeSupport p y |>.mp hp).2⟩
    have hz := (ZMod.intCast_zmod_eq_zero_iff_dvd (∏ h ∈ H, (n + h)) p).mpr hd
    rw [Int.cast_prod] at hz
    have hnz : ∀ h ∈ H, ((n + h : ℤ) : ZMod p) ≠ 0 := by
      intro h hh he
      exact hn p hp h hh ((ZMod.intCast_zmod_eq_zero_iff_dvd (n + h) p).mp he)
    exact (Finset.prod_ne_zero_iff.mpr hnz) hz
  · intro hn p hp h hh hd
    exact hn p hp (dvd_trans hd (Finset.dvd_prod_of_mem (fun h : ℤ => n + h) hh))

theorem primeSupport_mono {y y' : ℕ} (hy : y ≤ y') : primeSupport y ⊆ primeSupport y' := by
  intro p hp
  exact (mem_primeSupport p y').mpr ⟨(mem_primeSupport p y |>.mp hp).1.trans hy,
    (mem_primeSupport p y |>.mp hp).2⟩

theorem modulus_dvd_of_le {y y' : ℕ} (hy : y ≤ y') : Modulus y ∣ Modulus y' :=
  Finset.prod_dvd_prod_of_subset _ _ id (primeSupport_mono hy)

/-- A coarser residue ring is reached by this checked reduction, never by subset coercion. -/
def reduction {y y' : ℕ} (hy : y ≤ y') : ZMod (Modulus y') →+* ZMod (Modulus y) :=
  ZMod.castHom (modulus_dvd_of_le hy) _

@[simp] theorem localReduction_reduction {y y' : ℕ} (hy : y ≤ y')
    (p : primeSupport y) (a : ZMod (Modulus y')) :
    localReduction y p (reduction hy a) =
      localReduction y' ⟨p, primeSupport_mono hy p.property⟩ a := by
  change ((localReduction y p).comp (reduction hy)) a = _
  exact RingHom.congr_fun (Subsingleton.elim _ _) a

/-- Exact inverse-image compatibility for the retained coarse observations. -/
theorem rawAdmissible_reduce_iff (H : Finset ℤ) {y y' : ℕ} (hy : y ≤ y')
    (a : ZMod (Modulus y')) :
    RawAdmissible H y (reduction hy a) ↔
      ∀ p : primeSupport y,
        localReduction y' ⟨p, primeSupport_mono hy p.property⟩ a ∉ forbiddenResidues H p := by
  simp only [RawAdmissible, localReduction_reduction]

theorem rawAdmissible_of_finer (H : Finset ℤ) {y y' : ℕ} (hy : y ≤ y')
    {a : ZMod (Modulus y')} (ha : RawAdmissible H y' a) :
    RawAdmissible H y (reduction hy a) := by
  rw [rawAdmissible_reduce_iff]
  intro p
  exact ha ⟨p, primeSupport_mono hy p.property⟩

@[simp] theorem singleton_forbidden_count (p : ℕ) : localForbiddenCount {0} p = 1 := by
  simp [localForbiddenCount, forbiddenResidues]

theorem singleton_density (y : ℕ) :
    rawDensity {0} y = ∏ p ∈ primeSupport y, (1 - (1 : ℚ) / p) := by
  simp [rawPacking_density]

theorem totient_prime_product (s : Finset ℕ) (hs : ∀ p ∈ s, Nat.Prime p) :
    Nat.totient (∏ p ∈ s, p) = ∏ p ∈ s, (p - 1) := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert p s hp ih =>
    have hpp := hs p (Finset.mem_insert_self p s)
    have hsp : ∀ q ∈ s, Nat.Prime q := fun q hq => hs q (Finset.mem_insert_of_mem hq)
    have hcop : Nat.Coprime p (∏ q ∈ s, q) := by
      rw [Nat.coprime_prod_right_iff]
      intro q hq
      apply (Nat.coprime_primes hpp (hsp q hq)).mpr
      exact fun he => hp (he.symm ▸ hq)
    simp only [Finset.prod_insert hp, Nat.totient_mul hcop, Nat.totient_prime hpp, ih hsp]

theorem singleton_card_totient (y : ℕ) :
    Fintype.card (RawPacking {0} y) = Nat.totient (Modulus y) := by
  rw [rawPacking_card, Modulus, totient_prime_product]
  · simp
  · intro p hp
    exact (mem_primeSupport p y |>.mp hp).2

theorem singleton_density_totient (y : ℕ) :
    rawDensity {0} y = (Nat.totient (Modulus y) : ℚ) / Modulus y := by
  rw [rawDensity, singleton_card_totient]

/-- The even-prime collision of the two offsets is counted once. -/
theorem twin_forbidden_two : localForbiddenCount {0, 2} 2 = 1 := by
  decide

/-- Above two the two forbidden residues are distinct. -/
theorem twin_forbidden_large {p : ℕ} (hp : 2 < p) : localForbiddenCount {0, 2} p = 2 := by
  have hn : (2 : ZMod p) ≠ 0 := by
    simpa using (ZMod.natCast_eq_zero_iff 2 p).not.mpr (Nat.not_dvd_of_pos_of_lt (by decide) hp)
  simp [localForbiddenCount, forbiddenResidues, hn]

/-- This is a finite wheel density, with no assertion of twin-prime existence. -/
theorem twin_density (y : ℕ) (hy : 2 ≤ y) :
    rawDensity {0, 2} y = (1 / 2 : ℚ) *
      ∏ p ∈ (primeSupport y).erase 2, (1 - (2 : ℚ) / p) := by
  have h2 : 2 ∈ primeSupport y := (mem_primeSupport 2 y).mpr ⟨hy, Nat.prime_two⟩
  rw [rawPacking_density, ← Finset.mul_prod_erase _ _ h2, twin_forbidden_two]
  norm_num only [Nat.cast_one, Nat.cast_ofNat, one_div, sub_half]
  congr 1
  apply Finset.prod_congr rfl
  intro p hp
  have hh := Finset.mem_erase.mp hp
  have hp2 := (mem_primeSupport p y |>.mp hh.2).2.two_le
  have hpl : 2 < p := by omega
  rw [twin_forbidden_large hpl]
  rfl

/-- A composite can survive a finite local wheel. -/
theorem composite_raw_survivor : IntegerSurvivor {0} 3 25 ∧ ¬ Nat.Prime 25 := by
  have hs : primeSupport 3 = {2, 3} := by decide
  norm_num [IntegerSurvivor, hs]

/-- A visible prime is eliminated by raw divisibility; this is not compositeness. -/
theorem visible_prime_raw_excluded : Nat.Prime 2 ∧ ¬ IntegerSurvivor {0} 2 2 := by
  have hs : primeSupport 2 = {2} := by decide
  norm_num [IntegerSurvivor, hs]

/-- A translated visible-prime equality has exactly the same raw exception. -/
theorem translated_prime_raw_excluded : Nat.Prime (3 + 2) ∧
    ¬ IntegerSurvivor {2} 5 3 := by
  constructor
  · decide
  · intro h
    exact h 5 ((mem_primeSupport 5 5).mpr ⟨le_rfl, by decide⟩) 2
      (Finset.mem_singleton_self 2) (by norm_num)

/-- Empty observation support has one residue and excludes nothing. -/
theorem empty_support_card (H : Finset ℤ) : Fintype.card (RawPacking H 1) = 1 := by
  have hs : primeSupport 1 = ∅ := by decide
  simp [rawPacking_card, hs]

/-- Three of the thirty classes survive the twin-pattern wheel through five. -/
theorem twin_five_card : Fintype.card (RawPacking {0, 2} 5) = 3 := by
  have hs : primeSupport 5 = {2, 3, 5} := by decide
  rw [rawPacking_card, hs]
  norm_num [twin_forbidden_two, twin_forbidden_large]

end FormalResearch.SUCAS.DivisibilityPacking
```
