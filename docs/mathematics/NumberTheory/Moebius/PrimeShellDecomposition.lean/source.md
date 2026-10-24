# Complete source: GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41efb9b91729ef198825a01dacccfc03fad0a2b7` · SHA-256 `5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification
import GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy

/-! Exact horizon-shell decomposition of the actual Möbius pickup.

For widths below log 2, a newly admitted shell prime cannot participate in
any composite note before the current horizon. Its exact prime-note insertion
therefore contributes the negative singleton atom. The old-prime source is
retained through the new horizon; its explicit signed maturity echo records
old-prime products beyond the previous integer cutoff.

All identities and L² memberships below are unconditional with their stated
finite source and cutoff hypotheses. No HSS, P04, or RH bound is asserted.
-/

noncomputable section
open scoped BigOperators
open MeasureTheory Set
namespace HSSCP04.HorizonShell
open PPNCP04
open ASBNP04.FiniteProduct (primeProduct primeWeight primeDelay)

/-- All primes first admitted between the two declared logarithmic horizons. -/
def horizonShell (b T : ℝ) : Finset ℕ :=
  (primeInventory T).filter (fun p => Real.exp (T-b) < (p : ℝ))

/-- Old-prime cascade, evaluated through the new horizon rather than zero-extended. -/
def matureState (b T : ℝ) : ℝ → ℝ :=
  primeState (primeInventory (T-b))

/-- Finite-horizon restriction of the genuine old-prime source. -/
def matureWave (b T : ℝ) : ℝ → ℝ :=
  PPNCP04.restrict T (matureState b T)

/-- The new singleton prime notes retain their negative Möbius coefficients. -/
def signedShell (b T : ℝ) (u : ℝ) : ℝ :=
  PPNCP04.restrict T (fun v => -(∑ p ∈ horizonShell b T, atom p v)) u

theorem mem_primeInventory {T : ℝ} {p : ℕ} :
    p ∈ primeInventory T ↔ p.Prime ∧ (p : ℝ) ≤ Real.exp T := by
  simp only [primeInventory, Finset.mem_filter, mem_integerInventory]
  constructor
  · rintro ⟨⟨_, hpT⟩, hp⟩
    exact ⟨hp, hpT⟩
  · rintro ⟨hp, hpT⟩
    exact ⟨⟨hp.one_lt.le, hpT⟩, hp⟩

theorem mem_horizonShell {b T : ℝ} {p : ℕ} :
    p ∈ horizonShell b T ↔ p.Prime ∧ Real.exp (T-b) < (p : ℝ) ∧
      (p : ℝ) ≤ Real.exp T := by
  simp only [horizonShell, Finset.mem_filter, mem_primeInventory]
  aesop

theorem primeInventory_monotone {S T : ℝ} (hST : S ≤ T) :
    primeInventory S ⊆ primeInventory T := by
  intro p hp
  rcases mem_primeInventory.mp hp with ⟨hprime, hpS⟩
  exact mem_primeInventory.mpr ⟨hprime, hpS.trans (Real.exp_le_exp.mpr hST)⟩

theorem inventory_split {b T : ℝ} (hb : 0 ≤ b) :
    primeInventory T = horizonShell b T ∪ primeInventory (T-b) := by
  ext p
  simp only [Finset.mem_union, mem_horizonShell, mem_primeInventory]
  constructor
  · rintro ⟨hp, hT⟩
    by_cases h : Real.exp (T-b) < (p : ℝ)
    · exact Or.inl ⟨hp,h,hT⟩
    · exact Or.inr ⟨hp,le_of_not_gt h⟩
  · rintro (⟨hp,_,hT⟩ | ⟨hp,hT⟩)
    · exact ⟨hp,hT⟩
    · exact ⟨hp,hT.trans (Real.exp_le_exp.mpr (by linarith))⟩

theorem shell_old_disjoint (b T : ℝ) :
    Disjoint (horizonShell b T) (primeInventory (T-b)) := by
  apply Finset.disjoint_left.mpr
  intro p hp ho
  exact (not_le_of_gt (mem_horizonShell.mp hp).2.1) (mem_primeInventory.mp ho).2

/-- Every nonempty squarefree prime product has its first entry at or after log 2. -/
theorem primeProduct_at_least_two (P U : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hU : U ⊆ P) (hne : U.Nonempty) :
    2 ≤ primeProduct U := by
  obtain ⟨p,hp⟩ := hne
  have hd : p ∣ primeProduct U := by
    exact Finset.dvd_prod_of_mem (fun q : ℕ => q) hp
  have hpos := ASBNP04.FiniteProduct.primeProduct_positive U (fun q hq => hP q (hU hq))
  exact (hP p (hU hp)).two_le.trans (Nat.le_of_dvd hpos hd)

theorem primeState_before_first_prime (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) {u : ℝ} (hu : u < Real.log 2) :
    primeState P u = baseWave u := by
  classical
  change ASBNP04.FiniteProduct.primeState P u = _
  rw [ASBNP04.FiniteProduct.primeState_exact P hP]
  rw [Finset.sum_eq_single ∅]
  · simp only [primeProduct, Finset.prod_empty, ArithmeticFunction.moebius_apply_one,
      Int.cast_one, one_mul]
    exact (congrFun baseWave_eq_atom_one u).symm
  · intro U hU hne
    have htwo := primeProduct_at_least_two P U hP (Finset.mem_powerset.mp hU)
      (Finset.nonempty_iff_ne_empty.mpr hne)
    have hcast : (2 : ℝ) ≤ primeProduct U := by exact_mod_cast htwo
    have hlog : Real.log 2 ≤ Real.log (primeProduct U : ℝ) :=
      Real.log_le_log (by norm_num) hcast
    have hn : ¬Real.log (primeProduct U : ℝ) ≤ u := not_le.mpr (hu.trans_le hlog)
    simp [ASBNP04.FiniteProduct.atom, hn]
  · simp

/-- A sufficiently late singleton insertion acts only on the base wave before T. -/
theorem late_prime_insert (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    {p : ℕ} (hp : p.Prime) (hnot : p ∉ P) {T u : ℝ}
    (hlate : T-Real.log (p : ℝ) < Real.log 2) (hu : u ≤ T) :
    primeState (insert p P) u = primeState P u - atom p u := by
  have hd : Disjoint ({p} : Finset ℕ) P := Finset.disjoint_singleton_left.mpr hnot
  have he := ASBNP04.FiniteProduct.primeState_block_factorization P {p} hP
    (by simpa using hp) hd
  have hs : ASBNP04.FiniteProduct.shift (primeDelay p)
      (ASBNP04.FiniteProduct.primeState P) u =
      ASBNP04.FiniteProduct.shift (primeDelay p) ASBNP04.FiniteProduct.baseWave u := by
    unfold ASBNP04.FiniteProduct.shift
    by_cases h : primeDelay p ≤ u
    · simp only [if_pos h]
      exact primeState_before_first_prime P hP (show u-primeDelay p < Real.log 2 by
        dsimp only [primeDelay]
        linarith)
    · simp only [if_neg h]
  have ha := ASBNP04.FiniteProduct.atom_eq_scaled_shift p hp.pos u
  change ASBNP04.FiniteProduct.primeState (insert p P) u = _
  rw [show insert p P = ({p} : Finset ℕ) ∪ P by simp, he]
  simp only [Finset.toList_singleton, ASBNP04.FiniteProduct.cascade,
    List.foldr_cons, List.foldr_nil, ASBNP04.FiniteProduct.note]
  rw [hs, ← ha]
  rfl

theorem late_block_exact (P B : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint B P) {T u : ℝ}
    (hlate : ∀ p ∈ B, T-Real.log (p : ℝ) < Real.log 2) (hu : u ≤ T) :
    primeState (B ∪ P) u = primeState P u - ∑ p ∈ B, atom p u := by
  classical
  induction B using Finset.induction_on with
  | empty => simp
  | @insert p B hnot ih =>
      have hp := hB p (Finset.mem_insert_self _ _)
      have hB' : ∀ q ∈ B, q.Prime := fun q hq => hB q (Finset.mem_insert_of_mem hq)
      have hd' : Disjoint B P := hd.mono_left (Finset.subset_insert _ _)
      have hpP : p ∉ P := fun h => Finset.disjoint_left.mp hd
        (Finset.mem_insert_self _ _) h
      have hpBP : p ∉ B ∪ P := by simp [hnot,hpP]
      have hpr : ∀ q ∈ B ∪ P, q.Prime := by
        intro q hq
        exact (Finset.mem_union.mp hq).elim (hB' q) (hP q)
      rw [Finset.insert_union,late_prime_insert (B ∪ P) hpr hp hpBP
        (hlate p (Finset.mem_insert_self _ _)) hu,
        ih hB' hd' (fun q hq => hlate q (Finset.mem_insert_of_mem hq)),
        Finset.sum_insert hnot]
      ring

theorem shell_prime_late {b T : ℝ} (hb : b < Real.log 2) {p : ℕ}
    (hp : p ∈ horizonShell b T) : T-Real.log (p : ℝ) < Real.log 2 := by
  have hlog : T-b < Real.log (p : ℝ) := by
    simpa only [Real.log_exp] using
      Real.log_lt_log (Real.exp_pos (T-b)) (mem_horizonShell.mp hp).2.1
  linarith

/-- A shell prime cannot share the horizon with any second prime factor. -/
theorem shell_composite_above {b T : ℝ} (hb : b < Real.log 2)
    {p q : ℕ} (hp : p ∈ horizonShell b T) (hq : 2 ≤ q) :
    Real.exp T < (p : ℝ) * q := by
  have he : Real.exp T = Real.exp (T-b)*Real.exp b := by
    rw [← Real.exp_add]
    congr 1
    ring
  have heb : Real.exp b < 2 := by
    simpa only [Real.exp_log (by norm_num : (0:ℝ) < 2)] using Real.exp_lt_exp.mpr hb
  have hqcast : (2 : ℝ) ≤ q := by exact_mod_cast hq
  calc
    Real.exp T = Real.exp (T-b)*Real.exp b := he
    _ < Real.exp (T-b)*2 := mul_lt_mul_of_pos_left heb (Real.exp_pos _)
    _ < (p : ℝ)*2 := mul_lt_mul_of_pos_right (mem_horizonShell.mp hp).2.1 (by norm_num)
    _ ≤ (p : ℝ)*q := mul_le_mul_of_nonneg_left hqcast (Nat.cast_nonneg _)

theorem shell_composite_atom_zero {b T u : ℝ} (hb : b < Real.log 2)
    {p q : ℕ} (hp : p ∈ horizonShell b T) (hq : 2 ≤ q) (hu : u ≤ T) :
    atom (p*q) u = 0 := by
  have he := shell_composite_above hb hp hq
  have hl : T < Real.log ((p*q : ℕ) : ℝ) := by
    simpa only [Real.log_exp,Nat.cast_mul] using Real.log_lt_log (Real.exp_pos T) he
  simp only [atom,if_neg (not_le.mpr (hu.trans_lt hl))]

/-- The full actual pickup is the mature old-prime source plus negative shell notes. -/
theorem pickup_split {b T u : ℝ} (hb0 : 0 ≤ b) (hb : b < Real.log 2)
    (hu : u ∈ Icc 0 T) : pickup T u = matureWave b T u + signedShell b T u := by
  rw [← completed_pickup_identification T u hu.2,inventory_split hb0]
  have he := late_block_exact (primeInventory (T-b)) (horizonShell b T)
    (fun p hp => (mem_primeInventory.mp hp).1)
    (fun p hp => (mem_horizonShell.mp hp).1) (shell_old_disjoint b T)
    (fun p hp => shell_prime_late hb hp) hu.2
  rw [he]
  simp only [matureWave,matureState,signedShell,PPNCP04.restrict,if_pos (show 0 ≤ u ∧ u ≤ T from hu)]
  ring

theorem shell_zero_before {b T u : ℝ} (hu : u ≤ T-b) :
    signedShell b T u = 0 := by
  have hz : (∑ p ∈ horizonShell b T, atom p u) = 0 := by
    apply Finset.sum_eq_zero
    intro p hp
    have hlog : T-b < Real.log (p : ℝ) := by
      simpa only [Real.log_exp] using
        Real.log_lt_log (Real.exp_pos (T-b)) (mem_horizonShell.mp hp).2.1
    simp [atom,not_le.mpr (hu.trans_lt hlog)]
  simp [signedShell,PPNCP04.restrict,hz]

theorem matureWave_equals_previous_pickup {b T u : ℝ}
    (hu : u ∈ Icc 0 T) (hbefore : u ≤ T-b) :
    matureWave b T u = pickup (T-b) u := by
  simp only [matureWave,matureState,PPNCP04.restrict,if_pos (show 0 ≤ u ∧ u ≤ T from hu)]
  exact completed_pickup_identification _ _ hbefore

/-- Alternative public name for the signed horizon-shell waveform. -/
abbrev horizonWave := signedShell

theorem horizonWave_eq_sum {b T u : ℝ} (hu : u ∈ Icc 0 T) :
    horizonWave b T u = -(∑ p ∈ horizonShell b T, atom p u) := by
  simp only [horizonWave,signedShell,PPNCP04.restrict,if_pos (show 0 ≤ u ∧ u ≤ T from hu)]

/-- The old-prime products that have not entered at the old integer cutoff.
Their arithmetic Möbius coefficients are retained, including composite parity. -/
def maturityEcho (b T u : ℝ) : ℝ :=
  ∑ U ∈ (primeInventory (T-b)).powerset.filter
    (fun U => ¬primeProduct U ≤ Nat.floor (Real.exp (T-b))),
      realMoebius (primeProduct U) * atom (primeProduct U) u

/-- Exact old-state return: mature evaluation includes all newly active old-prime products. -/
theorem mature_source_eq_old_pickup_add_echo (b T u : ℝ) :
    primeState (primeInventory (T-b)) u = pickup (T-b) u + maturityEcho b T u := by
  classical
  change ASBNP04.FiniteProduct.primeState (primeInventory (T-b)) u = _
  rw [ASBNP04.FiniteProduct.primeState_exact _
    (fun p hp => (mem_primeInventory.mp hp).1)]
  have hl : (∑ U ∈ (primeInventory (T-b)).powerset.filter
      (fun U => primeProduct U ≤ Nat.floor (Real.exp (T-b))),
      (ArithmeticFunction.moebius (primeProduct U) : ℝ) *
        ASBNP04.FiniteProduct.atom (primeProduct U) u) = pickup (T-b) u := by
    rw [primeInventory_eq]
    exact ASBNP04.FiniteProduct.subset_moebius_reindex _ (fun n => atom n u)
  rw [← hl]
  exact (Finset.sum_filter_add_sum_filter_not _ _ _).symm

theorem maturityEcho_zero_before {b T u : ℝ} (hu : u ≤ T-b) :
    maturityEcho b T u = 0 := by
  have he := mature_source_eq_old_pickup_add_echo b T u
  rw [completed_pickup_identification _ _ hu] at he
  linarith

theorem matureWave_eq_old_pickup_add_echo {b T u : ℝ} (hu : u ∈ Icc 0 T) :
    matureWave b T u = pickup (T-b) u + maturityEcho b T u := by
  simp only [matureWave,matureState,PPNCP04.restrict,if_pos (show 0 ≤ u ∧ u ≤ T from hu)]
  exact mature_source_eq_old_pickup_add_echo b T u

theorem matureState_eq_old_pickup_add_echo (b T u : ℝ) :
    matureState b T u = pickup (T-b) u + maturityEcho b T u :=
  mature_source_eq_old_pickup_add_echo b T u

theorem mature_equals_previous_pickup {b T u : ℝ} (hu : u ≤ T-b) :
    matureState b T u = pickup (T-b) u :=
  completed_pickup_identification _ _ hu

theorem matureState_continuous (b T : ℝ) : Continuous (matureState b T) :=
  ASBNP04.FiniteProduct.primeState_continuous _
    (fun _p hp => (mem_primeInventory.mp hp).1)

/-- Both old-boundary terms have the exact required endpoint values. -/
theorem old_endpoint {b T : ℝ} (hb : 0 ≤ b) (hT : b ≤ T) :
    signedShell b T (T-b) = 0 ∧
    matureWave b T (T-b) = pickup (T-b) (T-b) ∧
    maturityEcho b T (T-b) = 0 := by
  refine ⟨shell_zero_before le_rfl,?_,maturityEcho_zero_before le_rfl⟩
  apply matureWave_equals_previous_pickup
  · exact ⟨by linarith,by linarith⟩
  · exact le_rfl

/-- Every genuinely new cutoff atom is zero at its entry, with no endpoint residue. -/
theorem prime_entry_zero {p : ℕ} (hp : p.Prime) : atom p (Real.log (p : ℝ)) = 0 :=
  atom_entry_zero hp.pos

/-- The source split also holds as an equality of whole restricted real functions. -/
theorem pickup_split_restriction {b T : ℝ} (hb0 : 0 ≤ b) (hb : b < Real.log 2) :
    PPNCP04.restrict T (pickup T) = fun u => matureWave b T u + horizonWave b T u := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T
  · simp only [PPNCP04.restrict,if_pos hu]
    exact pickup_split hb0 hb hu
  · simp only [PPNCP04.restrict,matureWave,horizonWave,signedShell,if_neg hu,zero_add]

theorem matureWave_memLp_two (b T : ℝ) : MemLp (matureWave b T) 2 volume := by
  exact ASBNP04.FiniteProduct.restricted_source_memLp_two _
    (fun _p hp => (mem_primeInventory.mp hp).1) T

theorem matureWave_square_integrable (b T : ℝ) :
    Integrable (fun u => matureWave b T u ^ 2) volume := by
  exact ASBNP04.FiniteProduct.restricted_source_square_integrable _
    (fun _p hp => (mem_primeInventory.mp hp).1) T

theorem shellSource_continuous (b T : ℝ) :
    Continuous (fun u => -(∑ p ∈ horizonShell b T, atom p u)) := by
  apply Continuous.neg
  apply continuous_finsetSum
  intro p hp
  exact atom_continuous (mem_horizonShell.mp hp).1.pos

theorem horizonWave_square_integrable (b T : ℝ) :
    Integrable (fun u => horizonWave b T u ^ 2) volume := by
  change Integrable (fun u => ASBNP04.FiniteProduct.restrict T
    (fun v => -(∑ p ∈ horizonShell b T, atom p v)) u ^ 2)
  rw [ASBNP04.FiniteProduct.restrict_square_eq_indicator]
  exact ((shellSource_continuous b T).pow 2).integrableOn_Icc.integrable_indicator
    measurableSet_Icc

theorem horizonWave_memLp_two (b T : ℝ) : MemLp (horizonWave b T) 2 volume := by
  have hm : AEStronglyMeasurable (horizonWave b T) volume := by
    change AEStronglyMeasurable (ASBNP04.FiniteProduct.restrict T
      (fun v => -(∑ p ∈ horizonShell b T, atom p v))) volume
    rw [ASBNP04.FiniteProduct.restrict_eq_indicator]
    exact (shellSource_continuous b T).aestronglyMeasurable.indicator measurableSet_Icc
  exact (memLp_two_iff_integrable_sq hm).mpr (horizonWave_square_integrable b T)

end HSSCP04.HorizonShell
#print axioms HSSCP04.HorizonShell.pickup_split
#print axioms HSSCP04.HorizonShell.matureState_eq_old_pickup_add_echo
#print axioms HSSCP04.HorizonShell.horizonWave_memLp_two
```
