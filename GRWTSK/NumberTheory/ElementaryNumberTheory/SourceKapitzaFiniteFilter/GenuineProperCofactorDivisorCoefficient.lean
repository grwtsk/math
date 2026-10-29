import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic.IntervalCases
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic

/-!
# Genuine proper-cofactor divisor coefficient

RH16-KAPITZA-20261007 / K-C7 / KAP-DIVISOR-COEFFICIENT-01.
grwtsk contributors retains the originating direction, theorem selection,
corrections and evaluation. The original proposal date remains unverified.
Codex prepared this bounded source inspection and isolated proof draft.

The twelve coefficient theorems below preserve the K-C7 owner draft.
This maintained local copy is verified separately by CSE-RH16-20261007.
Its verification grade is recorded in the current arithmetic receipt.
The coefficient uses genuine Mangoldt values and every divisor, including
prime powers. The filter is on the proper cofactor, not on the outer prime.
The finite reconstruction proves J = Z + R without admissions.
The source sum uses the original closed inventory 2 <= n <= N; the
pointwise coefficient is independent of N and has its first product at 10.
The signed arithmetic remainder cap remains OPEN.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceKapitzaFiniteFilter

noncomputable section

/-- Genuine divisor inventory with proper cofactor coprime to six. -/
def properCoprimeDivisorInventory (n : ℕ) : Finset ℕ :=
  n.divisors.filter fun d ↦ 2 ≤ d ∧ 2 ≤ n / d ∧ Nat.Coprime (n / d) 6

/-- The proper-cofactor coefficient retains every genuine Mangoldt divisor. -/
def properCoprimeDivisorCoeff (n : ℕ) : ℝ :=
  ∑ d ∈ properCoprimeDivisorInventory n, ArithmeticFunction.vonMangoldt d

/-- Membership retains the exact divisor and proper-cofactor conditions. -/
theorem mem_properCoprimeDivisorInventory {n d : ℕ} :
    d ∈ properCoprimeDivisorInventory n ↔
      d ∈ n.divisors ∧ 2 ≤ d ∧ 2 ≤ n / d ∧ Nat.Coprime (n / d) 6 := by
  simp only [properCoprimeDivisorInventory, Finset.mem_filter]

/-- Filtering does not introduce divisors or prime-power terms. -/
theorem properCoprimeDivisorInventory_subset_divisors (n : ℕ) :
    properCoprimeDivisorInventory n ⊆ n.divisors := by
  intro d hd
  exact (mem_properCoprimeDivisorInventory.mp hd).1

/-- A proper cofactor coprime to six starts at five. -/
theorem proper_coprime_six_ge_five {m : ℕ} (hm : 2 ≤ m)
    (hcop : Nat.Coprime m 6) : 5 ≤ m := by
  by_contra h
  have hm4 : m ≤ 4 := by omega
  have cases : m = 2 ∨ m = 3 ∨ m = 4 := by omega
  rcases cases with h2 | h3 | h4
  · subst m; exact absurd hcop (by decide)
  · subst m; exact absurd hcop (by decide)
  · subst m; exact absurd hcop (by decide)

/-- Exact natural division makes ten the first possible product. -/
theorem product_ge_ten_of_mem {n d : ℕ}
    (hd : d ∈ properCoprimeDivisorInventory n) : 10 ≤ n := by
  rcases mem_properCoprimeDivisorInventory.mp hd with ⟨hdiv, hd2, hm2, hcop⟩
  have hm5 := proper_coprime_six_ge_five hm2 hcop
  have hprod : d * (n / d) = n := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
  have hmul := Nat.mul_le_mul hd2 hm5
  rw [hprod] at hmul
  simpa only [Nat.reduceMul] using hmul

/-- The source coefficient is nonnegative without an RH or PNT premise. -/
theorem properCoprimeDivisorCoeff_nonneg (n : ℕ) :
    0 ≤ properCoprimeDivisorCoeff n := by
  unfold properCoprimeDivisorCoeff
  exact Finset.sum_nonneg fun d _ ↦ ArithmeticFunction.vonMangoldt_nonneg

/-- The genuine divisor identity bounds the filtered coefficient by log n. -/
theorem properCoprimeDivisorCoeff_le_log (n : ℕ) :
    properCoprimeDivisorCoeff n ≤ Real.log (n : ℝ) := by
  unfold properCoprimeDivisorCoeff
  calc
    _ ≤ ∑ d ∈ n.divisors, ArithmeticFunction.vonMangoldt d := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · exact properCoprimeDivisorInventory_subset_divisors n
      · intro d _ _
        exact ArithmeticFunction.vonMangoldt_nonneg
    _ = Real.log (n : ℝ) := ArithmeticFunction.vonMangoldt_sum

/-- Every coefficient below the first product has an empty filtered inventory. -/
theorem properCoprimeDivisorInventory_empty_of_lt_ten {n : ℕ} (hn : n < 10) :
    properCoprimeDivisorInventory n = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro d hd
  exact (not_le_of_gt hn) (product_ge_ten_of_mem hd)

/-- This also includes the literal unit and zero conventions. -/
theorem properCoprimeDivisorCoeff_eq_zero_of_lt_ten {n : ℕ} (hn : n < 10) :
    properCoprimeDivisorCoeff n = 0 := by
  simp only [properCoprimeDivisorCoeff,
    properCoprimeDivisorInventory_empty_of_lt_ten hn, Finset.sum_empty]

/-- At the first product, the only retained genuine divisor is two. -/
theorem properCoprimeDivisorInventory_ten :
    properCoprimeDivisorInventory 10 = {2} := by
  ext d
  constructor
  · intro hd
    rcases mem_properCoprimeDivisorInventory.mp hd with ⟨hdiv, hd2, hm2, hcop⟩
    have hm5 := proper_coprime_six_ge_five hm2 hcop
    have hd5 : d * 5 ≤ 10 := by
      calc
        d * 5 ≤ d * (10 / d) := Nat.mul_le_mul_left d hm5
        _ = 10 := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
    have hd_eq : d = 2 := by omega
    simp only [hd_eq, Finset.mem_singleton]
  · intro hd
    have hd_eq : d = 2 := Finset.mem_singleton.mp hd
    subst d
    norm_num [properCoprimeDivisorInventory, Nat.mem_divisors]

/-- The closed first product contributes log two, with no missing multiplicity. -/
theorem properCoprimeDivisorCoeff_ten :
    properCoprimeDivisorCoeff 10 = Real.log 2 := by
  rw [properCoprimeDivisorCoeff, properCoprimeDivisorInventory_ten,
    Finset.sum_singleton, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  norm_num

/-- The first product is a genuine positive arithmetic contribution. -/
theorem properCoprimeDivisorCoeff_ten_pos : 0 < properCoprimeDivisorCoeff 10 := by
  rw [properCoprimeDivisorCoeff_ten]
  exact Real.log_pos (by norm_num)

/-- A concrete regression keeps the outer prime power four at the product twenty. -/
theorem primePower_four_mem_inventory_twenty :
    4 ∈ properCoprimeDivisorInventory 20 := by
  norm_num [properCoprimeDivisorInventory, Nat.mem_divisors]

/-- The literal two-three filter does not require its unit value to vanish. -/
def finiteFilter (v : ℕ → ℝ) (n : ℕ) : ℝ :=
  v n - v (2 * n) - v (3 * n) + v (6 * n)

/-- The omitted discrete unit does not force the filter's unit value to vanish. -/
theorem finiteFilter_unit_can_be_nonzero :
    finiteFilter (fun n => if n = 2 then 1 else 0) 1 = -1 := by
  norm_num [finiteFilter]

/-- Finite dilation is exactly the inventory of multiples, retaining zero terms. -/
theorem sum_supported_dilate (f : ℕ → ℝ) (N k : ℕ) (hk : 0 < k)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ m ∈ Finset.Icc 1 N, f (k * m)) =
      ∑ n ∈ Finset.Icc 1 N, if k ∣ n then f n else 0 := by
  classical
  apply Finset.sum_bij_ne_zero (fun a _ _ => k * a)
  · intro a ha hfa
    have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
    have hka : k * a ≤ N := by
      by_contra h
      exact hfa (hf _ (by omega))
    exact Finset.mem_Icc.mpr ⟨by nlinarith, hka⟩
  · intro a ha hfa b hb hfb hab
    exact Nat.eq_of_mul_eq_mul_left hk hab
  · intro b hb hfb
    have hkb : k ∣ b := by
      by_contra h
      simp only [if_neg h, ne_eq, not_true_eq_false] at hfb
    have hp : k * (b / k) = b := Nat.mul_div_cancel' hkb
    have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
    have ha1 : 1 ≤ b / k := by
      by_contra h
      have hzero : b / k = 0 := Nat.lt_one_iff.mp (lt_of_not_ge h)
      rw [hzero, mul_zero] at hp
      omega
    refine ⟨b / k, Finset.mem_Icc.mpr ⟨ha1,
      (Nat.div_le_self b k).trans (Finset.mem_Icc.mp hb).2⟩, ?_, hp⟩
    simpa only [hp, if_pos hkb] using hfb
  · intro a ha hfa
    simp only [if_pos (dvd_mul_right k a)]

/-- Exact inclusion-exclusion on the proper cofactor, including the unit cofactor. -/
theorem sum_finiteFilter_eq_coprime (v : ℕ → ℝ) (N : ℕ)
    (hv : ∀ n, N < n → v n = 0) :
    (∑ m ∈ Finset.Icc 1 N, finiteFilter v m) =
      ∑ m ∈ Finset.Icc 1 N, if Nat.Coprime m 6 then v m else 0 := by
  classical
  unfold finiteFilter
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, Finset.sum_sub_distrib,
    sum_supported_dilate v N 2 (by norm_num) hv,
    sum_supported_dilate v N 3 (by norm_num) hv,
    sum_supported_dilate v N 6 (by norm_num) hv,
    ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  have hc : Nat.Coprime m 6 ↔ ¬2 ∣ m ∧ ¬3 ∣ m := by
    rw [show 6 = 2 * 3 from rfl, Nat.coprime_mul_iff_right]
    rw [(Nat.coprime_comm (n := m) (m := 2)), Nat.prime_two.coprime_iff_not_dvd,
      (Nat.coprime_comm (n := m) (m := 3)), Nat.prime_three.coprime_iff_not_dvd]
  have h6 : 6 ∣ m ↔ 2 ∣ m ∧ 3 ∣ m := by
    constructor
    · intro h; exact ⟨dvd_trans (by decide : 2 ∣ 6) h, dvd_trans (by decide : 3 ∣ 6) h⟩
    · rintro ⟨h2, h3⟩
      exact (show Nat.Coprime 2 3 by decide).mul_dvd_of_dvd_of_dvd h2 h3
  by_cases h2 : 2 ∣ m <;> by_cases h3 : 3 ∣ m <;>
    simp only [hc, h6, h2, h3, and_self, and_false, false_and,
      not_true_eq_false, not_false_eq_true, if_true, if_false] <;> ring

/-- Closed positive inventory is a unit endpoint followed by the original source atoms. -/
theorem sum_Icc_one (f : ℕ → ℝ) (N : ℕ) (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 N, f n) = f 1 + ∑ n ∈ Finset.Icc 2 N, f n := by
  have he : Finset.Icc 1 N = insert 1 (Finset.Icc 2 N) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  rw [he, Finset.sum_insert (by simp)]

/-- Divisors are the exact bounded positive divisor filter. -/
theorem bounded_divisor_sum (n N : ℕ) (hn : 1 ≤ n) (hnN : n ≤ N) :
    (∑ d ∈ Finset.Icc 1 N, if d ∣ n then ArithmeticFunction.vonMangoldt d else 0) =
      Real.log n := by
  classical
  rw [← Finset.sum_filter]
  have he : (Finset.Icc 1 N).filter (fun d => d ∣ n) = n.divisors := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd1, hdN⟩, hdn⟩
      exact ⟨hdn, by omega⟩
    · rintro ⟨hdn, hn0⟩
      exact ⟨⟨Nat.pos_of_mem_divisors (Nat.mem_divisors.mpr ⟨hdn, hn0⟩),
        (Nat.le_of_dvd (by omega : 0 < n) hdn).trans hnN⟩, hdn⟩
  rw [he, ArithmeticFunction.vonMangoldt_sum]

/-- Complete finite divisor-product interchange, with no infinite limiting argument. -/
theorem logarithmic_sum_eq_rows (f : ℕ → ℝ) (N : ℕ)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Icc 1 N, Real.log n * f n) =
      ∑ d ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt d *
        ∑ m ∈ Finset.Icc 1 N, f (d * m) := by
  classical
  calc
    _ = ∑ n ∈ Finset.Icc 1 N, ∑ d ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt d * (if d ∣ n then f n else 0) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [← bounded_divisor_sum n N (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).2,
        Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro d _
      split_ifs <;> ring
    _ = ∑ d ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt d *
        ∑ n ∈ Finset.Icc 1 N, if d ∣ n then f n else 0 := by
      rw [Finset.sum_comm]
      simp only [Finset.mul_sum]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [← sum_supported_dilate f N d (Finset.mem_Icc.mp hd).1 hf]

/-- Complete proper-cofactor row with finite zero extension at the original cutoff. -/
def properRow (v : ℕ → ℝ) (N d : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 2 N, if Nat.Coprime m 6 then v (d * m) else 0

/-- The exact reduced outer cutoff includes every outer prime power. -/
def finiteResidual (v : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 2 (N / 5), ArithmeticFunction.vonMangoldt d * properRow v N d

def finiteJ (v : ℕ → ℝ) (N : ℕ) : ℝ :=
  (∑ n ∈ Finset.Icc 2 N, Real.log n * finiteFilter v n) - ∑ n ∈ Finset.Icc 2 N, v n

def finiteZ (v : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) * v n

/-- No proper row survives beyond the literal outer N/5 cutoff. -/
theorem properRow_zero_of_large (v : ℕ → ℝ) (N d : ℕ)
    (hv : ∀ n, N < n → v n = 0) (hd : N / 5 < d) : properRow v N d = 0 := by
  apply Finset.sum_eq_zero
  intro m hm
  split_ifs with hc
  · have hm5 := proper_coprime_six_ge_five (Finset.mem_Icc.mp hm).1 hc
    have hd5 : N < 5 * d := by omega
    exact hv _ (by nlinarith)
  · rfl

/-- Genuine complete two-three divisor balance; log one handles the omitted unit atom. -/
theorem finite_divisor_balance (v : ℕ → ℝ) (N : ℕ) (hN : 2 ≤ N)
    (hv : ∀ n, N < n → v n = 0) :
    finiteJ v N = finiteZ v N + finiteResidual v N := by
  classical
  have hfilter : ∀ n, N < n → finiteFilter v n = 0 := by
    intro n hn
    simp only [finiteFilter, hv n hn, hv (2 * n) (by omega),
      hv (3 * n) (by omega), hv (6 * n) (by omega)]
    ring
  have hrow (d : ℕ) (hd : 1 ≤ d) :
      (∑ m ∈ Finset.Icc 1 N, finiteFilter v (d * m)) = v d + properRow v N d := by
    have hs : ∀ m, N < m → v (d * m) = 0 := by
      intro m hm
      exact hv _ (by nlinarith)
    have hf := sum_finiteFilter_eq_coprime (fun m => v (d * m)) N hs
    have he : (fun m => finiteFilter v (d * m)) =
        finiteFilter (fun m => v (d * m)) := by
      funext m
      simp only [finiteFilter]
      congr 1 <;> congr 1 <;> ring
    rw [he, hf, sum_Icc_one _ N (by omega)]
    have hc1 : Nat.Coprime 1 6 := by decide
    simp only [if_pos hc1, mul_one, properRow]
  have hlogs := logarithmic_sum_eq_rows (finiteFilter v) N hfilter
  rw [sum_Icc_one _ N (by omega)] at hlogs
  simp only [Nat.cast_one, Real.log_one, zero_mul, zero_add] at hlogs
  have hs : (∑ d ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt d *
      ∑ m ∈ Finset.Icc 1 N, finiteFilter v (d * m)) =
      (∑ d ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt d * v d) +
        ∑ d ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt d * properRow v N d := by
    rw [sum_Icc_one _ N (by omega)]
    simp only [ArithmeticFunction.vonMangoldt_apply_one, zero_mul, zero_add]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    rw [hrow d (by have := (Finset.mem_Icc.mp hd).1; omega)]
    ring
  have hr : (∑ d ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt d * properRow v N d) =
      finiteResidual v N := by
    symm
    apply Finset.sum_subset
    · intro d hd
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
        (Finset.mem_Icc.mp hd).2.trans (Nat.div_le_self N 5)⟩
    · intro d hd hdn
      have hlarge : N / 5 < d := by
        have hd2 := (Finset.mem_Icc.mp hd).1
        simp only [Finset.mem_Icc, not_and] at hdn
        exact lt_of_not_ge (hdn hd2)
      rw [properRow_zero_of_large v N d hv hlarge, mul_zero]
  rw [hs, hr] at hlogs
  unfold finiteJ finiteZ
  rw [hlogs]
  simp only [sub_mul, one_mul, Finset.sum_sub_distrib]
  ring

/-- The finite zero extension agrees with the literal product cutoff N/d. -/
theorem properRow_eq_clipped (v : ℕ → ℝ) (N d : ℕ) (hd : 0 < d)
    (hv : ∀ n, N < n → v n = 0) :
    properRow v N d = ∑ m ∈ Finset.Icc 2 (N / d),
      if Nat.Coprime m 6 then v (d * m) else 0 := by
  classical
  symm
  apply Finset.sum_subset
  · intro m hm
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1,
      (Finset.mem_Icc.mp hm).2.trans (Nat.div_le_self N d)⟩
  · intro m hm hmn
    have hlarge : N < d * m := by
      have hm2 := (Finset.mem_Icc.mp hm).1
      have hdiv : ¬m ≤ N / d := by
        intro h
        exact hmn (Finset.mem_Icc.mpr ⟨hm2, h⟩)
      have hmul : ¬m * d ≤ N := fun h => hdiv ((Nat.le_div_iff_mul_le hd).mpr h)
      simpa only [mul_comm] using lt_of_not_ge hmul
    split_ifs
    · exact hv _ hlarge
    · rfl

end

end FormalResearch.RiemannHypothesis.SourceKapitzaFiniteFilter
