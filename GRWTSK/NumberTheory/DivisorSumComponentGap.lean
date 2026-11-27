import GRWTSK.NumberTheory.AbundanceFactorRecovery
import GRWTSK.NumberTheory.CompleteIntegerFactorization

/-!
# A separated block of small unitary divisors

Authors: grwtsk contributors

A division-free version of the gap in Shunia, arXiv:2611.34242v1, Lemma 3.3.
The two integral endpoints certify the relative gap used in the recurrence.
-/
namespace GRWTSK.IntegerFactorization.AbundanceRecovery

private theorem interval_gap (xs : List ℕ) {l u C q : ℕ}
    (hlu : l ≤ u) (hord : xs.Pairwise (· ≤ ·))
    (hxs : ∀ x ∈ xs, l ≤ x ∧ x ≤ u)
    (hbudget : (xs.length+1)*q ≤ C*(u-l)) :
    ∃ a z, l ≤ a ∧ a ≤ z ∧ z ≤ u ∧ q ≤ C*(z-a) ∧
      (∀ x ∈ xs, x ≤ a ∨ z ≤ x) := by
  induction xs generalizing l with
  | nil => exact ⟨l,u,le_rfl,hlu,le_rfl,by simpa using hbudget, by simp⟩
  | cons x xs ih =>
    obtain ⟨hlx,hxu⟩ := hxs _ List.mem_cons_self
    have ht := List.pairwise_cons.mp hord
    by_cases hfirst : q ≤ C*(x-l)
    · refine ⟨l,x,le_rfl,hlx,hxu,hfirst,?_⟩
      intro y hy
      rcases List.mem_cons.mp hy with rfl|hy
      · exact Or.inr le_rfl
      · exact Or.inr (ht.1 _ hy)
    · have hsplit : u-l = (x-l)+(u-x) := by omega
      rw [hsplit, Nat.mul_add, List.length_cons, Nat.succ_mul] at hbudget
      obtain ⟨a,z,hxa,haz,hzu,hgap,hrest⟩ := ih hxu ht.2
        (fun y hy => ⟨ht.1 _ hy, (hxs _ (.tail x hy)).2⟩) (by omega)
      refine ⟨a,z,hlx.trans hxa,haz,hzu,hgap,?_⟩
      intro y hy
      rcases List.mem_cons.mp hy with rfl|hy
      · exact Or.inl hxa
      · exact hrest _ hy

/-- Every nontrivial unitary divisor below twice the smallest component is a
whole component. This shorter interval suffices even at the lower endpoint 2. -/
theorem unitary_below_twice {w d q : ℕ} (hw : w ≠ 0)
    (hlow : ∀ p ∈ w.primeFactors, q ≤ p ^ w.factorization p)
    (hd : 1 < d) (hdw : d ∣ w) (hcop : d.Coprime (w/d)) (hs : d < 2*q) :
    ∃ p ∈ w.primeFactors, d = p^w.factorization p := by
  obtain ⟨p,hp,k,hk⟩ := unitary_contains_component hd hw hdw hcop
  refine ⟨p,hp,?_⟩
  have hq := hlow p hp
  have hk' : k = 1 := by
    by_cases h : k = 0
    · simp [h] at hk
      omega
    by_contra hne
    have : 2 ≤ k := by omega
    have hm := Nat.mul_le_mul hq this
    rw [hk] at hs
    omega
  simpa [hk'] using hk

/-- The nonempty retained prime set lies below the integer cutoff. Its full
components give all small unitary divisors, and the remaining unitary divisors
start at least at `z`. The relative bound is written without rounding or logs
of rationals. -/
theorem component_gap {w : ℕ} (hw : 2 ≤ w) :
    ∃ q B z : ℕ, ∃ S : Finset ℕ, 2 ≤ q ∧ q ≤ B ∧ B < z ∧ z ≤ 2*q ∧
      (2*(w.log2+1)+1)*B ≤ (2*(w.log2+1))*z ∧ S.Nonempty ∧
      S ⊆ w.primeFactors ∧ (∃ p ∈ S, p^w.factorization p = q) ∧
      (∀ p ∈ w.primeFactors, q ≤ p^w.factorization p) ∧ B^S.card ≤ w^2 ∧
      (∀ d, 1 < d → d ∣ w → d.Coprime (w/d) →
        ((d ≤ B ↔ ∃ p ∈ S, d = p^w.factorization p) ∧ (d ≤ B ∨ z ≤ d))) := by
  let f := fun p : ℕ => p^w.factorization p
  let Q := w.primeFactors.image f
  have hp0 : w.minFac ∈ w.primeFactors :=
    Nat.mem_primeFactors.mpr ⟨Nat.minFac_prime (by omega), Nat.minFac_dvd _, by omega⟩
  have hQ : Q.Nonempty := ⟨f w.minFac, Finset.mem_image_of_mem f hp0⟩
  let q := Q.min' hQ
  have hqm := Q.min'_mem hQ
  have low : ∀ p ∈ w.primeFactors, q ≤ f p :=
    fun p hp => Finset.min'_le Q _ (Finset.mem_image_of_mem f hp)
  obtain ⟨p₀,h₀,he⟩ := Finset.mem_image.mp hqm
  have hprime := Nat.mem_primeFactors.mp h₀
  have hq2 : 2 ≤ q := by
    change f p₀ = q at he
    rw [← he]
    exact Nat.one_lt_pow (hprime.1.factorization_pos_of_dvd hprime.2.2 hprime.2.1).ne' hprime.1.one_lt
  let points := Q.filter (· ≤ 2*q)
  let xs := points.sort
  have hcard : xs.length ≤ w.log2 := by
    have hc : w.primeFactors.card = (canonical w).length := by simp [canonical]
    simpa [xs] using (Finset.card_filter_le ..).trans
      (Finset.card_image_le.trans (hc ▸ (canonical_complete hw).length_le) :
        Q.card ≤ w.log2)
  have hxs : ∀ x ∈ xs, q ≤ x ∧ x ≤ 2*q := by
    intro x hx
    have hm := Finset.mem_filter.mp ((points.mem_sort (· ≤ ·)).mp hx)
    exact ⟨Finset.min'_le _ _ hm.1,hm.2⟩
  obtain ⟨B,z,hqB,hBz,hzu,hgap,between⟩ := interval_gap xs (C:=w.log2+1) (q:=q)
    (by omega : q ≤ 2*q) (points.pairwise_sort (· ≤ ·)) hxs
    (by have hm := Nat.mul_le_mul_right q (Nat.succ_le_succ hcard)
        simpa [show 2*q-q=q by omega] using hm)
  have hBz' : B < z := by
    by_contra! h
    rw [Nat.sub_eq_zero_of_le h] at hgap
    simp at hgap
    omega
  have hrelative : (2*(w.log2+1)+1)*B ≤ (2*(w.log2+1))*z := by
    have hdiff : z-B+B=z := Nat.sub_add_cancel hBz
    have hscale := congrArg ((w.log2+1)* ·) hdiff
    simp only [Nat.mul_add] at hscale
    nlinarith only [hgap,hscale,hzu,hBz]
  let S := w.primeFactors.filter fun p => f p ≤ B
  have hsub : S ⊆ w.primeFactors := Finset.filter_subset ..
  have hprod : (∏ p ∈ S, f p) ≤ w := by
    calc
      _ ≤ ∏ p ∈ w.primeFactors, f p := Finset.prod_le_prod_of_subset_of_one_le hsub
        (fun p hp _ => Nat.succ_le_of_lt (pow_pos (Nat.mem_primeFactors.mp hp).1.pos _))
      _ = w := (Nat.prod_primeFactors_pow_factorization (by omega : w ≠ 0)).symm
  have hsq : B^S.card ≤ w^2 := calc
    _ = ∏ _p ∈ S, B := by simp
    _ ≤ ∏ p ∈ S, (f p)^2 := by
      apply Finset.prod_le_prod
      intro p hp
      have hh := low p (hsub hp)
      nlinarith only [hq2, hzu, hBz, Nat.pow_le_pow_left hh 2,
        Nat.mul_le_mul_right q hq2]
    _ = (∏ p ∈ S, f p)^2 := Finset.prod_pow S 2 f
    _ ≤ _ := Nat.pow_le_pow_left hprod _
  refine ⟨q,B,z,S,hq2,hqB,hBz',hzu,hrelative,⟨p₀,Finset.mem_filter.mpr ⟨h₀,he.le.trans hqB⟩⟩,
    hsub,⟨p₀, Finset.mem_filter.mpr ⟨h₀,he.le.trans hqB⟩,he⟩,low,hsq,?_⟩
  intro d hd hdw hc
  have comp (hdz : d < z) := unitary_below_twice (by omega : w ≠ 0) low hd hdw hc (lt_of_lt_of_le hdz hzu)
  constructor
  · constructor
    · intro hdB
      obtain ⟨p,hp,e⟩ := comp (hdB.trans_lt hBz')
      exact ⟨p,Finset.mem_filter.mpr ⟨hp,e.symm.le.trans hdB⟩,e⟩
    · rintro ⟨p,hp,rfl⟩
      exact (Finset.mem_filter.mp hp).2
  · by_cases hz : z ≤ d
    · exact Or.inr hz
    have ⟨p,hp,e⟩ := comp (by omega)
    apply between d
    apply (points.mem_sort (· ≤ ·)).mpr
    exact Finset.mem_filter.mpr ⟨e.symm ▸ Finset.mem_image_of_mem f hp,by omega⟩

/-- A relative separation of one part in D gives a factor of two every D
powers. This is the integer error suppression used for the omitted components. -/
theorem gap_suppression {D B z t J : ℕ} (hD : 0 < D) (hB : 0 < B)
    (hrel : (D+1)*B ≤ D*z) (hJ : D*t ≤ J) :
    2^t * B^J ≤ z^J := by
  let r := (z : ℚ)/B
  have hd : 0 < (D : ℚ) := by exact_mod_cast hD
  have hb : 0 < (B : ℚ) := by exact_mod_cast hB
  have rel : ((D:ℚ)+1)*B ≤ D*z := by exact_mod_cast hrel
  have h1 : 1+1/(D:ℚ) ≤ r := by
    calc
      _ = ((D:ℚ)+1)/D := by field_simp
      _ ≤ _ := (div_le_div_iff₀ hd hb).2 (by linarith only [rel])
  have hbase : 1 ≤ r := (le_add_of_nonneg_right (by positivity)).trans h1
  have h2 : (2:ℚ) ≤ r^D := by
    calc
      _ = 1+(D:ℚ)*(1/D) := by field_simp; ring
      _ ≤ (1+1/(D:ℚ))^D := one_add_mul_le_pow ((by norm_num : (-2:ℚ) ≤ 0).trans (by positivity)) D
      _ ≤ _ := pow_le_pow_left₀ (by positivity) h1 _
  have hpow : (2:ℚ)^t ≤ r^J := calc
    _ ≤ (r^D)^t := pow_le_pow_left₀ (by norm_num) h2 _
    _ = r^(D*t) := (pow_mul ..).symm
    _ ≤ _ := pow_le_pow_right₀ hbase hJ
  dsimp [r] at hpow
  rw [div_pow] at hpow
  exact_mod_cast (le_div_iff₀ (pow_pos hb J)).mp hpow

/-- At the paper's first sampled exponent, the tail-to-cutoff denominator
ratio already exceeds the exact power of two required in (3.6). -/
theorem shunia_window_suppression {w n B z : ℕ} (hwn : w ≤ n) (hB : 0 < B)
    (hr : (2*(w.log2+1)+1)*B ≤ (2*(w.log2+1))*z) :
    let m := Nat.clog 2 n
    let J := 48*(1+m)^2
    2^(24*(1+m))*B^J ≤ z^J := by
  dsimp only
  apply gap_suppression (by positivity) hB hr
  have h : w.log2 ≤ Nat.clog 2 n := by
    rw [Nat.log2_eq_log_two]
    exact (Nat.log_le_clog 2 w).trans (Nat.clog_mono_right 2 hwn)
  calc
    _ ≤ (2*(Nat.clog 2 n+1))*(24*(1+Nat.clog 2 n)) :=
      Nat.mul_le_mul_right _ (Nat.mul_le_mul_left _ (Nat.succ_le_succ h))
    _ = _ := by ring

end GRWTSK.IntegerFactorization.AbundanceRecovery
