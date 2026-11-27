import GRWTSK.NumberTheory.TotientFromPowerDivisorSum
import GRWTSK.NumberTheory.DivisorSumComponentGap
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Tactic.FieldSimp

/-!
# Signed rational moments of divisor sums of powers

Authors: grwtsk contributors

Joseph M. Shunia, arXiv:2611.34242v1, Lemma 3.2, equations (3.4)–(3.5).
The positive nodes are products of entire prime-power components of the input.
See DivisorSumEulerSamples.md for attribution and evidence.
-/
namespace GRWTSK.IntegerFactorization.EulerSamples

open ArithmeticFunction

def component (w p : ℕ) : ℕ := p ^ w.factorization p

def node (w : ℕ) (S : Finset ℕ) : ℕ := ∏ p ∈ S, component w p

def coefficient (S : Finset ℕ) : ℚ := (-1 : ℚ) ^ (S.card + 1) / ∏ p ∈ S, (p : ℚ)

def normalized (w j : ℕ) : ℚ :=
  1 - (w.totient : ℚ) * (sigma 1 (w^j) : ℚ) / (w : ℚ)^(j+1)

@[simp] theorem coefficient_singleton (p : ℕ) : coefficient {p} = (p : ℚ)⁻¹ := by
  simp [coefficient]

@[simp] theorem node_singleton (w p : ℕ) : node w {p} = component w p := by
  simp [node]

theorem component_two_le {w p : ℕ} (hp : p ∈ w.primeFactors) : 2 ≤ component w p := by
  obtain ⟨hprime,hd,hw⟩ := Nat.mem_primeFactors.mp hp
  exact Nat.one_lt_pow (hprime.factorization_pos_of_dvd hw hd).ne' hprime.one_lt

private def ratio (w j : ℕ) : ℚ :=
  (w.totient : ℚ) * (sigma 1 (w^j) : ℚ) / (w : ℚ)^(j+1)

private theorem ratio_mul (j x y : ℕ) (hc : x.Coprime y) :
    ratio (x*y) j = ratio x j * ratio y j := by
  simp only [ratio, Nat.totient_mul hc, Nat.cast_mul, mul_pow,
    isMultiplicative_sigma.map_mul_of_coprime (hc.pow j j)]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

private theorem ratio_component {p : ℕ} (hp : p.Prime) {a : ℕ} (ha : 0 < a) (j : ℕ) :
    ratio (p^a) j = 1 - (p : ℚ)⁻¹ * ((p^a : ℕ) : ℚ)⁻¹ ^ j := by
  have hp0 : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  have hs : (sigma 1 ((p^a)^j) : ℚ) * ((p : ℚ) - 1) = ((p : ℚ)^a)^j*p - 1 := by
    rw [← pow_mul, sigma_one_apply_prime_pow hp, Nat.cast_sum]
    simp only [Nat.cast_pow, ← pow_mul]
    simpa [pow_succ] using geom_sum_mul (p : ℚ) (a*j+1)
  unfold ratio
  rw [Nat.totient_eq_mul_prod_factors, Nat.primeFactors_prime_pow ha.ne' hp, Finset.prod_singleton]
  simp only [Nat.cast_pow, inv_pow] at *
  rw [pow_succ]
  field_simp [hp0]
  simpa only [mul_comm] using hs

/-- The Euler product of the exact, normalized divisor-sum answer. -/
theorem normalized_product {w : ℕ} (hw : 0 < w) (j : ℕ) :
    normalized w j = 1 - ∏ p ∈ w.primeFactors,
      (1 - (p : ℚ)⁻¹ * (((component w p : ℕ) : ℚ)⁻¹)^j) := by
  change 1 - ratio w j = _
  congr 1
  calc
    ratio w j = ∏ p ∈ w.primeFactors, ratio (component w p) j :=
      Nat.multiplicative_factorization (fun x => ratio x j) (ratio_mul j) (by simp [ratio]) hw.ne'
    _ = _ := by
      apply Finset.prod_congr rfl
      intro p hp
      obtain ⟨hprime,hd,hw⟩ := Nat.mem_primeFactors.mp hp
      exact ratio_component hprime (hprime.factorization_pos_of_dvd hw hd) j

private theorem signed_term (w j : ℕ) (S : Finset ℕ) :
    -(∏ p ∈ S, -((p : ℚ)⁻¹ * (((component w p : ℕ) : ℚ)⁻¹)^j)) =
      coefficient S * ((node w S : ℚ)⁻¹)^j := by
  simp only [Finset.prod_neg, Finset.prod_mul_distrib, Finset.prod_inv_distrib,
    Finset.prod_pow, coefficient, node, Nat.cast_prod, div_eq_mul_inv, pow_succ]
  ring

/-- The actual sample is a signed sum over all nonempty prime subsets. -/
theorem normalized_expansion {w : ℕ} (hw : 0 < w) (j : ℕ) :
    normalized w j = ∑ S ∈ w.primeFactors.powerset.erase ∅,
      coefficient S * ((node w S : ℚ)⁻¹)^j := by
  let f := fun p : ℕ => -((p : ℚ)⁻¹ * (((component w p : ℕ) : ℚ)⁻¹)^j)
  have h0 : (∅ : Finset ℕ) ∈ w.primeFactors.powerset := Finset.mem_powerset.mpr (Finset.empty_subset _)
  have split := Finset.sum_erase_add (f := fun S => ∏ p ∈ S, f p) _ h0
  rw [normalized_product hw j]
  simp_rw [sub_eq_add_neg (1:ℚ) (_ * _)]
  change 1 - ∏ p ∈ w.primeFactors, (1 + f p) = _
  rw [Finset.prod_one_add, ← split]
  simp only [Finset.prod_empty]
  calc
    _ = -(∑ S ∈ w.primeFactors.powerset.erase ∅, ∏ p ∈ S, f p) := by ring
    _ = _ := by
      rw [← Finset.sum_neg_distrib]
      exact Finset.sum_congr rfl (fun S _ => signed_term w j S)

/-- The sum of the absolute weights of the full expansion is bounded by the input. -/
theorem coefficient_mass_le {w : ℕ} (hw : 0 < w) :
    ∑ S ∈ w.primeFactors.powerset.erase ∅, |coefficient S| ≤ (w : ℚ) := by
  let F := w.primeFactors.powerset.erase ∅
  have bound (S : Finset ℕ) (hS : S ∈ F) : |coefficient S| ≤ 1 := by
    have hsub := Finset.mem_powerset.mp (Finset.mem_of_mem_erase hS)
    have hden : (1 : ℚ) ≤ ∏ p ∈ S, (p : ℚ) := by
      apply Finset.one_le_prod₀
      intro p hp
      exact_mod_cast Nat.one_le_of_lt (Nat.prime_of_mem_primeFactors (hsub hp)).one_lt
    simp only [coefficient, abs_div, abs_pow, abs_neg, abs_one, one_pow, abs_of_pos (by linarith : (0:ℚ)<∏ p ∈ S, (p:ℚ))]
    exact (div_le_iff₀ (by linarith)).2 (by linarith)
  have hc : F.card ≤ 2 ^ w.primeFactors.card :=
    (Finset.card_le_card (Finset.erase_subset _ _)).trans_eq (Finset.card_powerset _)
  have hn : 2 ^ w.primeFactors.card ≤ w := by
    calc
      _ ≤ ∏ p ∈ w.primeFactors, component w p := Finset.pow_card_le_prod _ _ _ (fun _ => component_two_le)
      _ = _ := (Nat.prod_primeFactors_pow_factorization hw.ne').symm
  change ∑ S ∈ F, _ ≤ _
  calc
    _ ≤ ∑ _ ∈ F, (1 : ℚ) := Finset.sum_le_sum bound
    _ = (F.card : ℚ) := by simp
    _ ≤ _ := by exact_mod_cast hc.trans hn

/-- Full components determine their subset from the ordinary prime support of its node. -/
theorem node_primeFactors {w : ℕ} {S : Finset ℕ} (hS : S ⊆ w.primeFactors) :
    (node w S).primeFactors = S := by
  induction S using Finset.induction_on with
  | empty => simp [node]
  | @insert p S hp ih =>
    have hsub := Finset.insert_subset_iff.mp hS
    obtain ⟨hprime,hd,hw⟩ := Nat.mem_primeFactors.mp hsub.1
    have hnode : 0 < node w S := Finset.prod_pos fun t ht => lt_of_lt_of_le (by decide : 0 < 2) (component_two_le (hsub.2 ht))
    rw [node, Finset.prod_insert hp]
    change (component w p * node w S).primeFactors = _
    have hcomp : component w p ≠ 0 := pow_ne_zero _ hprime.ne_zero
    rw [Nat.primeFactors_mul hcomp hnode.ne', ih hsub.2,
      component, Nat.primeFactors_prime_pow (hprime.factorization_pos_of_dvd hw hd).ne' hprime]
    simp

/-- Every nonempty index in (3.5) has a positive, nontrivial unitary node. -/
theorem node_unitary {w : ℕ} (hw : 0 < w) {S : Finset ℕ}
    (hS : S ⊆ w.primeFactors) (hne : S.Nonempty) :
    1 < node w S ∧ node w S ∣ w ∧ (node w S).Coprime (w / node w S) := by
  let T := w.primeFactors \ S
  have hpos : 0 < node w S := Finset.prod_pos fun _ hp => lt_of_lt_of_le (by decide : 0 < 2) (component_two_le (hS hp))
  have hv : node w T * node w S = w :=
    (Finset.prod_sdiff (f := component w) hS).trans (Nat.prod_primeFactors_pow_factorization hw.ne').symm
  have hgt : 1 < node w S := by
    by_contra! h
    have he : node w S = 1 := by omega
    have hy := node_primeFactors hS
    rw [he, Nat.primeFactors_one] at hy
    exact hne.ne_empty hy.symm
  have hco : (node w S).Coprime (node w T) := by
    apply Nat.coprime_prod_left_iff.mpr
    intro p hp
    apply Nat.coprime_prod_right_iff.mpr
    intro t ht
    have ht' := Finset.mem_sdiff.mp ht
    exact Nat.coprime_pow_primes _ _ (Nat.prime_of_mem_primeFactors (hS hp))
      (Nat.prime_of_mem_primeFactors ht'.1) (fun h => ht'.2 (h ▸ hp))
  refine ⟨hgt, ⟨node w T, (mul_comm ..).trans hv |>.symm⟩, ?_⟩
  have hdiv : w / node w S = node w T :=
    (congrArg (· / node w S) hv.symm).trans (Nat.mul_div_cancel _ hpos)
  rwa [hdiv]

/-- The positive moments of the retained singleton components. -/
def retainedMoment (w : ℕ) (K : Finset ℕ) (j : ℕ) : ℚ :=
  ∑ p ∈ K, (p : ℚ)⁻¹ * ((component w p : ℚ)⁻¹)^j

/-- A certified gap for unitary divisors bounds the complete omitted rational
sum in the actual sample, uniformly in the exponent. -/
theorem retainedMoment_error {w B z : ℕ} (hw : 0 < w) (hz : 0 < z) (K : Finset ℕ)
    (hK : K ⊆ w.primeFactors)
    (hgap : ∀ d, 1 < d → d ∣ w → d.Coprime (w / d) →
      ((d ≤ B ↔ ∃ p ∈ K, d = component w p) ∧ (d ≤ B ∨ z ≤ d))) (j : ℕ) :
    |normalized w j - retainedMoment w K j| ≤ (w : ℚ) / (z : ℚ)^j := by
  let F := w.primeFactors.powerset.erase ∅
  let singles := K.image (fun p => ({p} : Finset ℕ))
  let val := fun S : Finset ℕ => coefficient S * ((node w S : ℚ)⁻¹)^j
  have hsub : singles ⊆ F := by
    intro S hS
    obtain ⟨p,hp,rfl⟩ := Finset.mem_image.mp hS
    exact Finset.mem_erase.mpr ⟨by simp, Finset.mem_powerset.mpr (Finset.singleton_subset_iff.mpr (hK hp))⟩
  have hsingles : ∑ S ∈ singles, val S = retainedMoment w K j := by
    unfold singles
    rw [Finset.sum_image]
    · simp [val, retainedMoment]
    · intro a _ b _ hab
      simpa using hab
  have diff : normalized w j - retainedMoment w K j = ∑ S ∈ F \ singles, val S := by
    rw [normalized_expansion hw, ← hsingles]
    change (∑ S ∈ F, val S) - (∑ S ∈ singles, val S) = _
    rw [← Finset.sum_sdiff (f := val) hsub]
    ring
  have hlarge (S : Finset ℕ) (hS : S ∈ F \ singles) : z ≤ node w S := by
    obtain ⟨hf,hn⟩ := Finset.mem_sdiff.mp hS
    have ⟨he,hh⟩ := Finset.mem_erase.mp hf
    have hs := Finset.mem_powerset.mp hh
    obtain ⟨hpos,hd,hc⟩ := node_unitary hw hs (Finset.nonempty_iff_ne_empty.mpr he)
    have gap := hgap _ hpos hd hc
    rcases gap.2 with small | large
    · obtain ⟨p,hp,hnode⟩ := gap.1.mp small
      have eq : S = {p} := by
        rw [← node_primeFactors hs, hnode, ← node_singleton, node_primeFactors]
        exact Finset.singleton_subset_iff.mpr (hK hp)
      exact (hn (eq ▸ Finset.mem_image_of_mem _ hp)).elim
    · exact large
  have hz' : (0 : ℚ) < z := by exact_mod_cast hz
  have mass : (∑ S ∈ F \ singles, |coefficient S|) ≤ (w : ℚ) := by
    exact (Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset (fun _ _ _ => abs_nonneg _)).trans (coefficient_mass_le hw)
  rw [diff]
  calc
    _ ≤ ∑ S ∈ F \ singles, |val S| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ S ∈ F \ singles, |coefficient S| * ((z : ℚ)⁻¹)^j := by
      apply Finset.sum_le_sum
      intro S hS
      have hnode : (z : ℚ) ≤ node w S := by exact_mod_cast hlarge S hS
      rw [show |val S| = |coefficient S| * ((node w S : ℚ)⁻¹)^j from by simp [val,abs_mul]]
      exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (inv_anti₀ hz' hnode) _) (abs_nonneg _)
    _ = (∑ S ∈ F \ singles, |coefficient S|) * ((z : ℚ)⁻¹)^j := (Finset.sum_mul ..).symm
    _ ≤ (w : ℚ) * ((z : ℚ)⁻¹)^j := mul_le_mul_of_nonneg_right mass (by positivity)
    _ = _ := by rw [inv_pow,div_eq_mul_inv]

/-- At the paper's actual window, some retained set contains a smallest
component and its omitted contribution is exponentially small at every offset. -/
theorem shunia_window_moments {w n : ℕ} (hw : 2 ≤ w) (hwn : w ≤ n) :
    let m := Nat.clog 2 n
    let J := 48*(1+m)^2
    ∃ B z : ℕ, ∃ K : Finset ℕ, 0 < B ∧ B < z ∧ K.Nonempty ∧ K ⊆ w.primeFactors ∧
      (∃ p ∈ K, ∀ t ∈ w.primeFactors, component w p ≤ component w t) ∧ B^K.card ≤ w^2 ∧
      (∀ p ∈ K, component w p ≤ B) ∧
      ∀ s : ℕ, (2 : ℚ)^(24*(1+m)) * (B : ℚ)^(J+s) *
        |normalized w (J+s) - retainedMoment w K (J+s)| ≤ (w : ℚ) := by
  dsimp only
  obtain ⟨q,B,z,K,hq,hB,hz,_,hrel,hne,hK,⟨p,hp,hpval⟩,hmin,hcard,hgap⟩ :=
    AbundanceRecovery.component_gap hw
  have hBpos : 0 < B := by omega
  have hzpos : 0 < z := by omega
  have smallest (t : ℕ) (ht : t ∈ w.primeFactors) : component w p ≤ component w t :=
    (show component w p = q from hpval).le.trans (hmin t ht)
  refine ⟨B,z,K,hBpos,hz,hne,hK,⟨p,hp,smallest⟩,hcard,?_,?_⟩
  · intro t ht
    have hu := node_unitary (by omega : 0 < w) (Finset.singleton_subset_iff.mpr (hK ht)) (Finset.singleton_nonempty t)
    simp only [node_singleton] at hu
    exact ((hgap _ hu.1 hu.2.1 hu.2.2).1).2 ⟨t,ht,rfl⟩
  · intro s
    let J := 48*(1+Nat.clog 2 n)^2
    let C := 2^(24*(1+Nat.clog 2 n))
    have hrate : C * B^J ≤ z^J := AbundanceRecovery.shunia_window_suppression hwn hBpos hrel
    have hrate' : C * B^(J+s) ≤ z^(J+s) := by
      rw [pow_add B, pow_add z, ← mul_assoc]
      exact Nat.mul_le_mul hrate (Nat.pow_le_pow_left hz.le _)
    have hscale : (C : ℚ) * (B : ℚ)^(J+s) ≤ (z : ℚ)^(J+s) := by exact_mod_cast hrate'
    have herr := retainedMoment_error (by omega : 0 < w) hzpos K hK hgap (J+s)
    have hzp : (0 : ℚ) < (z : ℚ)^(J+s) := by positivity
    have hmul := (le_div_iff₀ hzp).mp herr
    have hfinal : (C : ℚ) * (B : ℚ)^(J+s) *
        |normalized w (J+s) - retainedMoment w K (J+s)| ≤ (w : ℚ) := calc
      _ ≤ (z : ℚ)^(J+s) * |normalized w (J+s) - retainedMoment w K (J+s)| :=
        mul_le_mul_of_nonneg_right hscale (abs_nonneg _)
      _ = _ := mul_comm _ _
      _ ≤ _ := hmul
    simpa [C,J] using hfinal

/-- The computable normalized sample uses only the two stored integers at J and j. -/
theorem observed_expansion {w n J j sJ sj : ℕ} (hw : 2 ≤ w) (hwn : w ≤ n)
    (hJ : 16 * Nat.clog 2 n ≤ J) (hsJ : sJ = sigma 1 (w^J)) (hsj : sj = sigma 1 (w^j)) :
    1 - ((w^(J+1) / sJ : ℕ) : ℚ) * (sj : ℚ) / (w : ℚ)^(j+1) =
      ∑ S ∈ w.primeFactors.powerset.erase ∅, coefficient S * ((node w S : ℚ)⁻¹)^j := by
  rw [hsJ, hsj, PowerDivisorSum.shunia_lemma_3_2 hw hwn hJ]
  exact normalized_expansion (by omega) j

end GRWTSK.IntegerFactorization.EulerSamples
