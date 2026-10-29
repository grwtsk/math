-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProperCoprimeDivisorInventory.Variant6bdfb7a6e7478b7b76ca6bb9bf93e365b372790a456c414bb20f095c14273bf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bdfb7a6e7478b7b76ca6bb9bf93e365b372790a456c414bb20f095c14273bf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ProperCoprimeDivisorInventory.Variant6bdfb7a6e7478b7b76ca6bb9bf93e365b372790a456c414bb20f095c14273bf7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6bdfb7a6e7478b7b76ca6bb9bf93e365b372790a456c414bb20f095c14273bf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh16-kapitza-20261007/artifacts/rh16-kapitza-20261007/residual-coefficient-independent-replay-K-C9/SourceKapitzaResidualCoefficient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic.IntervalCases
import Lean.Elab.Tactic.Omega

/-!
# Genuine proper-cofactor divisor coefficient

RH16-KAPITZA-20261007 / K-C7 / KAP-DIVISOR-COEFFICIENT-01.
grwtsk contributors retains the originating direction, theorem selection,
corrections and evaluation. The original proposal date remains unverified.
Codex prepared this bounded source inspection and isolated proof draft.

This file was first prepared as an ignored uncompiled draft. Its exact
verification grade is recorded separately in the compilation/replay receipts.
The coefficient uses genuine Mangoldt values and every divisor, including
prime powers. The filter is on the proper cofactor, not on the outer prime.
There are no admissions and no full finite J/R reconstruction claim here.
The future source sum uses the original closed inventory 2 <= n <= N; the
pointwise coefficient is independent of N and has its first product at 10.
The signed arithmetic remainder cap remains OPEN.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProperCoprimeDivisorInventory.Variant6bdfb7a6e7478b7b76ca6bb9bf93e365b372790a456c414bb20f095c14273bf7

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient

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
  interval_cases m
  · exact (by decide : ¬ Nat.Coprime 2 6) hcop
  · exact (by decide : ¬ Nat.Coprime 3 6) hcop
  · exact (by decide : ¬ Nat.Coprime 4 6) hcop

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
    exact mem_properCoprimeDivisorInventory.mpr
      ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

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
  exact mem_properCoprimeDivisorInventory.mpr
    ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

end

end FormalResearch.RiemannHypothesis.SourceKapitzaDivisorCoefficient


/-!
# Genuine residual outer primes and squares

RH16-KAPITZA-20261007 / K-C9 / KAP-RESIDUAL-COEFFICIENT-NATIVE-01.
grwtsk contributors retains the reported originating direction, theorem
selection, corrections and evaluation; the original date is unverified.
Codex performs only this finite pointwise source formalization. The preceding
fourteen-export coefficient source is copied byte for byte. This extension
retains native proper divisors and prime squares; it does not supply a cap
on the actual signed residual readout or prove the original estimate.
-/

namespace FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient

open SourceKapitzaDivisorCoefficient

noncomputable section

/-- Native proper divisors restricted to genuine outer primes or prime squares at least five. -/
def residualPrimeSquareInventory (n : ℕ) : Finset ℕ := by
  classical
  exact (properCoprimeDivisorInventory n).filter fun d ↦
    5 ≤ d ∧ ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ (d = p ∨ d = p ^ 2)

/-- Every retained divisor has its original Mangoldt coefficient and multiplicity. -/
def residualPrimeSquareCoeff (n : ℕ) : ℝ :=
  ∑ d ∈ residualPrimeSquareInventory n, ArithmeticFunction.vonMangoldt d

/-- The residual filter retains every literal native proper-cofactor condition. -/
theorem mem_residualPrimeSquareInventory {n d : ℕ} :
    d ∈ residualPrimeSquareInventory n ↔
      d ∈ properCoprimeDivisorInventory n ∧ 5 ≤ d ∧
        ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ (d = p ∨ d = p ^ 2) := by
  classical
  simp only [residualPrimeSquareInventory, Finset.mem_filter]

/-- The new inventory is a subset of the original genuine proper-divisor inventory. -/
theorem residualPrimeSquareInventory_subset (n : ℕ) :
    residualPrimeSquareInventory n ⊆ properCoprimeDivisorInventory n := by
  intro d hd
  exact (mem_residualPrimeSquareInventory.mp hd).1

/-- Mangoldt nonnegativity holds for the actual filtered arithmetic coefficient. -/
theorem residualPrimeSquareCoeff_nonneg (n : ℕ) : 0 ≤ residualPrimeSquareCoeff n := by
  unfold residualPrimeSquareCoeff
  exact Finset.sum_nonneg fun d _ ↦ ArithmeticFunction.vonMangoldt_nonneg

/-- Residual coefficient costs are bounded by the complete original divisor coefficient. -/
theorem residualPrimeSquareCoeff_le_proper (n : ℕ) :
    residualPrimeSquareCoeff n ≤ properCoprimeDivisorCoeff n := by
  unfold residualPrimeSquareCoeff properCoprimeDivisorCoeff
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · exact residualPrimeSquareInventory_subset n
  · intro d _ _
    exact ArithmeticFunction.vonMangoldt_nonneg

/-- The genuine full-divisor logarithmic envelope transfers without a new arithmetic premise. -/
theorem residualPrimeSquareCoeff_le_log (n : ℕ) :
    residualPrimeSquareCoeff n ≤ Real.log (n : ℝ) :=
  (residualPrimeSquareCoeff_le_proper n).trans (properCoprimeDivisorCoeff_le_log n)

/-- Proper cofactors start at five, and the residual outer divisor also starts at five. -/
theorem product_ge_twenty_five_of_mem {n d : ℕ}
    (hd : d ∈ residualPrimeSquareInventory n) : 25 ≤ n := by
  rcases mem_residualPrimeSquareInventory.mp hd with ⟨hdnative, hd5, _⟩
  rcases mem_properCoprimeDivisorInventory.mp hdnative with ⟨hdiv, _, hm2, hcop⟩
  have hm5 := proper_coprime_six_ge_five hm2 hcop
  have hprod : d * (n / d) = n := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
  have hmul := Nat.mul_le_mul hd5 hm5
  rw [hprod] at hmul
  simpa only [Nat.reduceMul] using hmul

/-- No earlier product can occur in the literal residual inventory. -/
theorem residualPrimeSquareInventory_empty_of_lt_twenty_five {n : ℕ} (hn : n < 25) :
    residualPrimeSquareInventory n = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro d hd
  exact (not_le_of_gt hn) (product_ge_twenty_five_of_mem hd)

/-- The residual arithmetic coefficient is exactly zero below twenty-five. -/
theorem residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five {n : ℕ} (hn : n < 25) :
    residualPrimeSquareCoeff n = 0 := by
  simp only [residualPrimeSquareCoeff,
    residualPrimeSquareInventory_empty_of_lt_twenty_five hn, Finset.sum_empty]

/-- At the first product the proper-cofactor filter leaves exactly the prime divisor five. -/
theorem residualPrimeSquareInventory_twenty_five :
    residualPrimeSquareInventory 25 = {5} := by
  ext d
  constructor
  · intro hd
    rcases mem_residualPrimeSquareInventory.mp hd with ⟨hdnative, hd5, _⟩
    rcases mem_properCoprimeDivisorInventory.mp hdnative with ⟨hdiv, _, hm2, hcop⟩
    have hm5 := proper_coprime_six_ge_five hm2 hcop
    have hd5upper : d * 5 ≤ 25 := by
      calc
        d * 5 ≤ d * (25 / d) := Nat.mul_le_mul_left d hm5
        _ = 25 := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
    have hd_eq : d = 5 := by omega
    simp only [hd_eq, Finset.mem_singleton]
  · intro hd
    have hd_eq : d = 5 := Finset.mem_singleton.mp hd
    subst d
    apply mem_residualPrimeSquareInventory.mpr
    refine ⟨?_, by norm_num, 5, by decide, by norm_num, Or.inl rfl⟩
    exact mem_properCoprimeDivisorInventory.mpr
      ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

/-- The first retained product carries exactly the genuine Mangoldt value log five. -/
theorem residualPrimeSquareCoeff_twenty_five :
    residualPrimeSquareCoeff 25 = Real.log 5 := by
  rw [residualPrimeSquareCoeff, residualPrimeSquareInventory_twenty_five,
    Finset.sum_singleton]
  rw [ArithmeticFunction.vonMangoldt_apply_prime (by decide : Nat.Prime 5)]
  norm_num

/-- The first product is positive, so the improved onset is attained exactly. -/
theorem residualPrimeSquareCoeff_twenty_five_pos :
    0 < residualPrimeSquareCoeff 25 := by
  rw [residualPrimeSquareCoeff_twenty_five]
  exact Real.log_pos (by norm_num)

/-- A square outer divisor is retained at its first eligible proper product. -/
theorem primeSquare_twenty_five_mem_one_twenty_five :
    25 ∈ residualPrimeSquareInventory 125 := by
  apply mem_residualPrimeSquareInventory.mpr
  refine ⟨?_, by norm_num, 5, by decide, by norm_num, Or.inr (by norm_num)⟩
  exact mem_properCoprimeDivisorInventory.mpr
    ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

end

end FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient
