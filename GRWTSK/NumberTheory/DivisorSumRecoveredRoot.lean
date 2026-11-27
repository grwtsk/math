import GRWTSK.NumberTheory.DivisorSumRecurrence
import GRWTSK.NumberTheory.DivisorSumRecurrenceError
import GRWTSK.NumberTheory.ReciprocalVandermondeBound

/-!
# An actual recurrence order yielding a least component

Authors: grwtsk contributors

Joseph M. Shunia, arXiv:2611.34242v1, Lemmas 3.3–3.4 and equation (3.11).
See DivisorSumRecurrence.md for source attribution and evidence.
-/
namespace GRWTSK.IntegerFactorization.DivisorSumRecurrence

open scoped BigOperators Matrix

/-- At the actual window there is a trial order for which a least full component
is an integer root of the reversed equation formed from the observed samples. -/
theorem exists_recovered_root {w n : ℕ} (hw : 2 ≤ w) (hwn : w ≤ n) :
    let J := 48*(1+Nat.clog 2 n)^2
    ∃ l : ℕ, 0 < l ∧ l ≤ w.log2 ∧ ∃ p ∈ w.primeFactors,
      (∀ r ∈ w.primeFactors, EulerSamples.component w p ≤ EulerSamples.component w r) ∧
      (let A := system l J (EulerSamples.normalized w)
       let b := rhs l J (EulerSamples.normalized w)
       (EulerSamples.component w p : ℤ)^l + ∑ k : Fin l, round ((A⁻¹ *ᵥ b) k) *
         (EulerSamples.component w p : ℤ)^(l - (k.val+1)) = 0) := by
  classical
  let J := 48*(1+Nat.clog 2 n)^2
  obtain ⟨a,B,z,S,ha,hB,hz,hne,hsub,⟨p₀,hp₀,he₀⟩,hleast,hcut,hprod,hbudget⟩ :=
    AbundanceRecovery.exists_window_budget hw hwn
  let p : Fin S.card → ℕ := fun i => (S.equivFin.symm i).val
  let q := fun i => EulerSamples.component w (p i)
  have hpS (i) : p i ∈ S := (S.equivFin.symm i).property
  have hp (i) := hsub (hpS i)
  have hpi : Function.Injective p := fun _ _ h => S.equivFin.symm.injective (Subtype.ext h)
  have himage : Finset.univ.image p = S := by
    ext t
    constructor
    · intro ht
      obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp ht
      exact hpS i
    · intro ht
      exact Finset.mem_image.mpr ⟨S.equivFin ⟨t,ht⟩,Finset.mem_univ _, by simp [p]⟩
  have hsupport (i) : (q i).primeFactors = {p i} := by
    simpa [q] using EulerSamples.node_primeFactors (Finset.singleton_subset_iff.mpr (hp i))
  have hd : Function.Injective q := by
    intro i k h
    apply hpi
    apply Finset.singleton_inj.mp
    rw [← hsupport i, ← hsupport k, h]
  have hqb (i) : 0 < q i ∧ q i ≤ B := by
    have hu := EulerSamples.node_unitary (by omega : 0 < w)
      (Finset.singleton_subset_iff.mpr (hp i)) (Finset.singleton_nonempty (p i))
    simp only [EulerSamples.node_singleton] at hu
    exact ⟨by have := hu.1; dsimp [q]; omega,
      ((hcut _ hu.1 hu.2.1 hu.2.2).1).2 ⟨p i,hpS i,rfl⟩⟩
  have hpb (i) : 0 < p i ∧ p i ≤ B := by
    obtain ⟨hprime,hdv,hw0⟩ := Nat.mem_primeFactors.mp (hp i)
    exact ⟨hprime.pos, (Nat.le_of_dvd (hqb i).1
      (dvd_pow_self (p i) (hprime.factorization_pos_of_dvd hw0 hdv).ne')).trans (hqb i).2⟩
  have hl : S.card ≤ w.log2 := calc
    _ ≤ w.primeFactors.card := Finset.card_le_card hsub
    _ = (canonical w).length := by simp [canonical]
    _ ≤ _ := (canonical_complete hw).length_le
  have htwo : 2^S.card ≤ n := ((Nat.le_log2 (by omega)).mp hl).trans hwn
  have hlN := (Nat.lt_two_pow_self (n := S.card)).le.trans htwo
  let C := AbundanceRecovery.inverseEnvelope B J S.card
  have hrow (i : Fin S.card) :
      rowSum (system S.card J (retained p q))⁻¹ i ≤ (C : ℚ) := by
    rw [rowSum,retained_matrix, show node q = (fun a => (q a : ℚ)⁻¹) from rfl]
    simpa only [C,AbundanceRecovery.inverseEnvelope,Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat]
      using ReciprocalVandermonde.retained_inverse_row p q B J hpb hqb hd i
  obtain ⟨hc,hs⟩ := AbundanceRecovery.rational_margins (l := S.card) (hw.trans hwn) hwn
    (by omega : 0 < z) hlN hbudget
  have mass : (∏ i, (1+q i)) ≤ n^3 := calc
    _ ≤ ∏ _ : Fin S.card, (2*B) := Finset.prod_le_prod fun i _ => by
      have := (hqb i).2
      omega
    _ = 2^S.card * B^S.card := by simp [mul_pow]
    _ ≤ n * n^2 := Nat.mul_le_mul htwo (hprod.trans (Nat.pow_le_pow_left hwn _))
    _ = _ := by ring
  have massQ : (∏ i, (1+(q i : ℚ))) ≤ (n : ℚ)^3 := by exact_mod_cast mass
  have hgap : ∀ d, 1 < d → d ∣ w → d.Coprime (w / d) →
      ((d ≤ B ↔ ∃ a ∈ Finset.univ.image p, d = EulerSamples.component w a) ∧
        (d ≤ B ∨ z ≤ d)) := by simpa only [himage,EulerSamples.component] using hcut
  have hrounded := (shunia_recovery (J := J) (by omega : 0 < w) (by omega : 0 < z)
    p hpi hp hd hgap (by positivity : (0 : ℚ) ≤ C) hrow hc
    ((mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left massQ (by positivity))
      (by positivity : (0 : ℚ) ≤ C)).trans_lt hs)).2
  let i := S.equivFin ⟨p₀,hp₀⟩
  have hi : p i = p₀ := by simp [p,i]
  refine ⟨S.card,hne.card_pos,hl,p₀,hsub hp₀,?_,?_⟩
  · intro t ht
    change p₀ ^ w.factorization p₀ ≤ t ^ w.factorization t
    rw [he₀]
    exact hleast t ht
  · calc
      _ = (EulerSamples.component w p₀ : ℤ)^S.card + ∑ k : Fin S.card, coeffs q k *
          (EulerSamples.component w p₀ : ℤ)^(S.card - (k.val+1)) := by
        congr 1
        exact Finset.sum_congr rfl (fun k _ => congrArg
          (fun t : ℤ => t * (EulerSamples.component w p₀ : ℤ)^(S.card-(k.val+1))) (hrounded k))
      _ = 0 := by simpa only [q,hi] using reversed_root q (fun t => (hqb t).1.ne') i

end GRWTSK.IntegerFactorization.DivisorSumRecurrence
