import GRWTSK.ComputerScience.AlgorithmsInComputerScience.AbundanceOracleSamples

/-!
# Recovering a factorization from consecutive divisor sums

Local source attribution: grwtsk contributors. Joseph M. Shunia,
arXiv:2611.34242v1, Algorithms 2 and 3. The uncovered input to Algorithm 2
is an integer-root candidate generator for the rounded rational recurrences.
This file proves the rest of the residual loop on its actual list of answers.
-/

namespace GRWTSK.IntegerFactorization.AbundanceRecovery

def samples (w J count : ℕ) : List ℕ :=
  (List.range count).map fun s => sigma (w ^ (J+s))

/-- The root supplier only sees the residual and the stored sample list.
Spurious roots are allowed. For each residual it must include a smallest
full prime-power component when supplied with the correct sampled sums. -/
structure RootSupplier (n J count : ℕ) where
  roots : ℕ → List ℕ → Finset ℕ
  covers : ∀ w, 2 ≤ w → w ≤ n →
    ∃ p ∈ w.primeFactors,
      p ^ w.factorization p ∈ roots w (samples w J count) ∧
      ∀ r ∈ w.primeFactors, p ^ w.factorization p ≤ r ^ w.factorization r

def pickComponent (w : ℕ) (roots : Finset ℕ) : Option (ℕ × ℕ) :=
  let good := retained w roots
  if h : good.Nonempty then decodeComponent (good.min' h) else none

theorem pickComponent_spec {n J count : ℕ} (r : RootSupplier n J count)
    {w : ℕ} (hw : 2 ≤ w) (hwn : w ≤ n) :
    ∃ p ∈ w.primeFactors, pickComponent w (r.roots w (samples w J count)) =
      some (p, w.factorization p) := by
  obtain ⟨p, hp, hroot, hleast⟩ := r.covers w hw hwn
  have hgood := component_mem_retained (by omega : w ≠ 0) hp hroot
  have hex : (retained w (r.roots w (samples w J count))).Nonempty := ⟨_, hgood⟩
  have hmin := least_retained (by omega : w ≠ 0) hleast hgood
  obtain ⟨hprime, hd, hne⟩ := Nat.mem_primeFactors.mp hp
  refine ⟨p, hp, ?_⟩
  simpa only [pickComponent, dite_eq_left hex, hmin] using
    decodeComponent_prime_power hprime (hprime.factorization_pos_of_dvd hne hd)

/-- Update the stored integers in order. No abundance or divisor-sum oracle
is invoked by this calculation. -/
def peelSamples (J p a : ℕ) (answers : List ℕ) : List ℕ :=
  answers.mapIdx fun s v => v / ((p * (p ^ a) ^ (J+s) - 1) / (p - 1))

theorem peelSamples_correct {w p : ℕ} (hp : p ∈ w.primeFactors) (J count : ℕ) :
    peelSamples J p (w.factorization p) (samples w J count) =
    samples (w / p ^ w.factorization p) J count := by
  obtain ⟨hprime, _, hn⟩ := Nat.mem_primeFactors.mp hp
  apply List.ext_getElem
  · simp [peelSamples, samples]
  · intro i hi hi'
    simp only [peelSamples, samples, List.getElem_mapIdx, List.getElem_map, List.getElem_range]
    rw [← sigma_prime_power_sample hprime _ _]
    exact (residual_sample (Nat.ordProj_dvd w p) (Nat.ordProj_pos w p)
      ((Nat.coprime_ordCompl hprime hn).pow_left _) _).2

/-- At most one full prime-power removal per fuel unit. -/
def recoverLeaves {n J count : ℕ} (r : RootSupplier n J count) :
    ℕ → ℕ → List ℕ → Option (List ℕ)
  | 0, w, _ => if w = 1 then some [] else none
  | k+1, w, answers =>
    if w = 1 then some []
    else do
      let (p, a) ← pickComponent w (r.roots w answers)
      let tail ← recoverLeaves r k (w / p ^ a) (peelSamples J p a answers)
      return List.replicate a p ++ tail

theorem recoverLeaves_spec {n J count : ℕ} (r : RootSupplier n J count)
    (fuel w : ℕ) (hw : 0 < w) (hn : w ≤ n) (hb : w < 2 ^ (fuel + 1)) :
    ∃ leaves, recoverLeaves r fuel w (samples w J count) = some leaves ∧
      leaves.prod = w ∧ ∀ p ∈ leaves, Nat.Prime p := by
  induction fuel generalizing w with
  | zero =>
    have hw1 : w = 1 := by norm_num at hb; omega
    subst w
    exact ⟨[], by simp [recoverLeaves]⟩
  | succ k ih =>
    by_cases hw1 : w = 1
    · subst w
      exact ⟨[], by simp [recoverLeaves]⟩
    obtain ⟨p, hp, hchoose⟩ := pickComponent_spec r (by omega : 2 ≤ w) hn
    obtain ⟨hprime, hdiv, hne⟩ := Nat.mem_primeFactors.mp hp
    let q := p ^ w.factorization p
    have hq : 2 ≤ q :=
      Nat.one_lt_pow (hprime.factorization_pos_of_dvd hne hdiv).ne' hprime.one_lt
    have hprod : q * (w / q) = w := Nat.mul_div_cancel' (Nat.ordProj_dvd w p)
    have hqpos : 0 < w / q := Nat.div_pos (Nat.ordProj_le p hne) (Nat.ordProj_pos w p)
    have hhalf : w / q < 2 ^ (k + 1) := by
      have ht := Nat.mul_le_mul_right (w / q) hq
      rw [hprod] at ht
      rw [pow_succ (2 : ℕ) (k+1)] at hb
      omega
    obtain ⟨tail, htail, hpt, hpr⟩ := ih (w / q) hqpos ((Nat.div_le_self ..).trans hn) hhalf
    refine ⟨List.replicate (w.factorization p) p ++ tail, ?_, ?_, ?_⟩
    · dsimp only [q] at htail
      simp [recoverLeaves, hw1, hchoose, peelSamples_correct hp, htail]
    · simpa [List.prod_append, List.prod_replicate, hpt, q] using hprod
    · intro t ht
      obtain h | h := List.mem_append.mp ht
      · simpa [List.eq_of_mem_replicate h] using hprime
      · exact hpr t h

/-- Convert to the canonical prime-base order even when prime-power order
disagrees with it (as it does for 12). -/
def recoverOutput {n J count : ℕ} (r : RootSupplier n J count) (answers : List ℕ) :
    Option (List (ℕ × ℕ)) :=
  (recoverLeaves r n.log2 n answers).map fun leaves =>
    compressRuns (leaves.mergeSort (· ≤ ·)) |>.1

theorem recoverOutput_samples {n J count : ℕ} (r : RootSupplier n J count)
    (hn : 2 ≤ n) : recoverOutput r (samples n J count) = some (canonical n) := by
  have hlog : n < 2 ^ (n.log2 + 1) := (Nat.log2_lt (by omega : n ≠ 0)).1 (by omega)
  obtain ⟨l, hrun, hp, hpr⟩ := recoverLeaves_spec r n.log2 n (by omega) le_rfl hlog
  have hsort : l.mergeSort (· ≤ ·) = n.primeFactorsList :=
    List.Perm.eq_of_sortedLE (List.sortedLE_mergeSort (l := l)) (Nat.primeFactorsList_sorted _)
      ((List.mergeSort_perm _ _).trans (Nat.primeFactorsList_unique hp hpr))
  simp [recoverOutput, hrun, hsort, compressRuns_primeFactorsList hn]

theorem recoverOutput_abundance {n J count : ℕ} (r : RootSupplier n J count)
    (t : ThresholdSupplier) (oracle : ℕ → Bool) (hn : 2 ≤ n) (hJ : 0 < J)
    (hor : ∀ z, oracle z = true ↔ 2 * z < sigma z) :
    recoverOutput r ((sampleRuns t oracle n J count).map Prod.fst) = some (canonical n) := by
  rw [sampleRuns_values t oracle hor n J count hn hJ]
  exact recoverOutput_samples r hn

end GRWTSK.IntegerFactorization.AbundanceRecovery
