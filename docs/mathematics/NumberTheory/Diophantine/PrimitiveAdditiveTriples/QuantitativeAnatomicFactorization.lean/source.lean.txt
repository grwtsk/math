/-
Copyright (c) 2025 Bhavik Mehta, Arend Mellendijk.
Copyright (c) 2026 grwtsk contributors.
SPDX-License-Identifier: Apache-2.0

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Lemma 2.2. The source paper credits Bhavik
Mehta for assistance using Lean to verify parts of an earlier version.

The proof architecture is adapted from Bhavik Mehta and Arend Mellendijk's
`NiceFactorization` development in `b-mehta/ABC-Exceptions`, as maintained
in `LeanPool/lean-pool`. The exact multiplicity layers are supplied by
`ExactAnatomicFactorization`; this file performs the epsilon-dependent
compression of the high-valuation layers.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExactAnatomicFactorization
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Order.CompletePartialOrder
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset UniqueFactorizationMonoid
open scoped BigOperators

namespace QuantitativeAnatomicFactorization

private theorem factorization_le_right (p n : ℕ) (hp : p.Prime) :
    n.factorization p ≤ n := by
  refine Nat.factorization_le_of_le_pow ?_
  induction n with
  | zero => simp
  | succ n ih =>
    have hone : 1 ≤ p ^ n := by
      apply Nat.one_le_pow
      exact hp.pos
    have htwo : 2 ≤ p := hp.two_le
    rw [pow_succ]
    calc
      _ ≤ p ^ n + p ^ n := by gcongr
      _ = p ^ n * 2 := by ring
      _ ≤ p ^ n * p := by gcongr

private theorem ceil_lt_floor (a b : ℝ) (ha : 0 ≤ a) (hab : a + 2 ≤ b) :
    ⌈a⌉₊ < ⌊b⌋₊ := by
  exact_mod_cast calc
    ⌈a⌉₊ < a + 1 := by
      exact Nat.ceil_lt_add_one ha
    _ ≤ b - 1 := by
      linarith
    _ < ⌊b⌋₊ := by
      exact Nat.sub_one_lt_floor b

/-- Inputs for the fixed-parameter form of the anatomic factorization lemma. -/
class ProofData where
  ε : ℝ
  hε_pos : 0 < ε
  hε : ε < 1 / 2
  d : ℕ
  hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊
  n : ℕ
  X : ℕ
  h1n : 1 ≤ n
  hnX : n ≤ X

open ProofData
variable [data : ProofData]

/-- The exact multiplicity layer already constructed in
`ExactAnatomicFactorization`. -/
abbrev y (j : ℕ) : ℕ :=
  ExactAnatomicFactorization.multiplicityLayer n j

@[simp]
private theorem y_zero : y 0 = 1 := by
  exact ExactAnatomicFactorization.multiplicityLayer_zero n

private theorem hy_pos (j : ℕ) : 0 < y j :=
  ExactAnatomicFactorization.multiplicityLayer_pos n j

private theorem prod_y_pow_eq_n_subset {s : Finset ℕ}
    (hs : ∀ p, p.Prime → p ∣ n → n.factorization p ∈ s) :
    ∏ m ∈ s, y m ^ m = n := by
  have hn_pos : 0 < n := lt_of_lt_of_le Nat.zero_lt_one h1n
  simp_rw [y, ExactAnatomicFactorization.multiplicityLayer]
  conv_rhs =>
    rw [← Nat.prod_factorization_pow_eq_self (show n ≠ 0 by omega)]
  simp_rw [← Finset.prod_pow]
  rw [Nat.prod_factorization_eq_prod_primeFactors]
  convert Finset.prod_fiberwise_of_maps_to
      (f := fun p ↦ p ^ n.factorization p)
      (g := n.factorization) (s := n.primeFactors) (t := s) ?_ using 1
  · apply Finset.prod_congr rfl
    intro k hk
    apply Finset.prod_congr rfl
    simp_all
  · simp_all

private theorem prod_y_pow_eq_n :
    ∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m ^ m = n := by
  have hn_pos : 0 < n := lt_of_lt_of_le Nat.zero_lt_one h1n
  apply prod_y_pow_eq_n_subset
  intro p hp hpn
  simp only [Finset.mem_union, Finset.mem_Icc]
  have hfac : n.factorization p ≤ n := factorization_le_right p n hp
  have hsplit : n.factorization p ≤ d ∨ d < n.factorization p :=
    le_or_gt (n.factorization p) d
  simp only [Finset.mem_Ioc]
  have hpos : 1 ≤ n.factorization p := by
    rw [← hp.dvd_iff_one_le_factorization]
    · exact hpn
    · omega
  tauto

private theorem hy_cop (i j : ℕ) (hij : i ≠ j) : Nat.Coprime (y i) (y j) :=
  ExactAnatomicFactorization.multiplicityLayer_coprime n i j hij

private theorem y_squarefree {i : ℕ} : Squarefree (y i) :=
  ExactAnatomicFactorization.multiplicityLayer_squarefree n i

private theorem prod_y_eq_radical_n :
    ∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m = radical n := by
  conv_rhs =>
    rw [← prod_y_pow_eq_n]
  rw [radical_prod]
  · apply Finset.prod_congr rfl
    simp only [Finset.mem_union, Finset.mem_Icc]
    intro i _
    by_cases hi : i = 0
    · simp [hi]
    · rw [radical_pow _ hi]
      have h := radical_associated (y_squarefree (i := i)).isRadical (hy_pos _).ne'
      exact associated_iff_eq.mp h.symm
  · intro i _ j _ hij
    apply Nat.coprime_iff_isRelPrime.mp
    apply Nat.Coprime.pow_right
    apply Nat.Coprime.pow_left
    exact hy_cop i j hij

/-- The selected high-multiplicity index. -/
noncomputable def K : ℕ := ⌈ε⁻¹⌉₊

private theorem two_lt_eps_inv : 2 < ε⁻¹ := by
  have hpos := hε_pos
  rw [← inv_inv 2]
  gcongr
  linarith only [hε]

private theorem hK_pos : 0 < K := by
  rw [K, Nat.ceil_pos]
  simp [hε_pos]

private theorem two_lt_K : 2 < K := by
  rw [K, Nat.lt_ceil]
  simp [two_lt_eps_inv]

private theorem K_inv_le_eps : (K : ℝ)⁻¹ ≤ ε := by
  rw [inv_le_iff_one_le_mul₀]
  · calc
      1 = ε * ε⁻¹ := by
        field_simp [hε_pos.ne.symm]
      _ ≤ ε * K := by
        exact mul_le_mul_of_nonneg_left (Nat.le_ceil (ε⁻¹)) hε_pos.le
  · simp [hK_pos]

private theorem hd_pos : 0 < d := by
  rw [hd, Nat.floor_pos]
  nlinarith only [two_lt_eps_inv]

instance hd_ne_zero : NeZero d := by
  simp_rw [neZero_iff]
  apply ne_of_gt hd_pos

private theorem hKd : K < d := by
  have htwo := two_lt_eps_inv
  simp_rw [K, hd]
  rw [Nat.lt_iff_add_one_le]
  apply ceil_lt_floor
  · positivity
  nlinarith

private theorem hK_div_d : (K / d : ℝ) ≤ ε := by
  have hhalf := hε
  have hpos := hε_pos
  have htwo := two_lt_eps_inv
  rw [div_le_iff₀ (mod_cast hd_pos)]
  simp only [K]
  calc
    (⌈ε⁻¹⌉₊ : ℝ) ≤ ε⁻¹ + 1 := by
      apply le_of_lt
      apply Nat.ceil_lt_add_one
      positivity
    _ ≤ 5 / 2 * ε⁻¹ - ε := by
      linarith
    _ = ε * (5 / 2 * ε⁻¹ ^ 2 - 1) := by
      field_simp [hε_pos.ne.symm]
    _ ≤ ε * d := by
      rw [hd]
      gcongr
      apply le_of_lt
      apply Nat.sub_one_lt_floor

/-- The compressed layers. The selected layer `K` absorbs the quotients of all
multiplicities above `d`; the other layers are unchanged. -/
noncomputable def x (j : Fin d) : ℕ :=
  y (j.val + 1) *
    if j.val + 1 = K then
      ∏ m ∈ Finset.Ioc d n, y m ^ (m / K)
    else 1

theorem x_pos (j : Fin d) : 0 < x j := by
  rw [x]
  split_ifs with h
  · apply mul_pos
    · exact hy_pos _
    · apply Finset.prod_pos
      intros
      apply pow_pos (hy_pos _)
  · simp [hy_pos]

private theorem x_pairwise_coprime (i j : Fin d) (hij : i ≠ j) :
    Nat.gcd (x i) (x j) = 1 := by
  have hij' : i.val ≠ j.val := by
    simp [Fin.val_inj, hij]
  have hij'' : i.val + 1 ≠ j.val + 1 := by
    omega
  simp_rw [x]
  rw [← Nat.coprime_iff_gcd_eq_one]
  split_ifs with hik hjk
  · simp_all
  · rw [Nat.coprime_mul_iff_left, mul_one]
    refine ⟨hy_cop _ _ hij'', ?_⟩
    rw [Nat.coprime_prod_left_iff]
    simp only [Finset.mem_Ioc, and_imp]
    intro m hdm hmn
    apply Nat.Coprime.pow_left
    apply hy_cop
    omega
  · rw [Nat.coprime_mul_iff_right, mul_one]
    refine ⟨hy_cop _ _ hij'', ?_⟩
    rw [Nat.coprime_prod_right_iff]
    simp only [Finset.mem_Ioc, and_imp]
    intro m hdm hmn
    apply Nat.Coprime.pow_right
    apply hy_cop
    omega
  · simp_rw [mul_one]
    exact hy_cop _ _ hij''

/-- The small residual factor formed from the remainders modulo `K`. -/
noncomputable def c : ℕ :=
  ∏ m ∈ Finset.Ioc d n, y m ^ (m % K)

private theorem c_pos : 0 < c := by
  rw [c]
  apply Finset.prod_pos
  simp only [Finset.mem_Ioc, and_imp]
  intro i _ _
  exact pow_pos (hy_pos _) _

omit data in
private theorem nat_eq_fin_iff {n a : ℕ} {b : Fin n} [NeZero n] (ha : a < n) :
    Fin.ofNat n a = b ↔ a = b.val := by
  rw [← Fin.val_inj]
  simp [Fin.ofNat, Nat.mod_eq_of_lt ha]

private theorem aux (f : ℕ → ℕ) :
    (∏ i : Fin d, if i.val + 1 = K then f (i.val + 1) else 1) = f K := by
  have hKd' := hKd
  obtain ⟨K', hK'⟩ := Nat.exists_eq_add_one.mpr hK_pos
  simp +contextual [hK', ← Finset.prod_filter]
  have hfilter :
      Finset.univ.filter (fun a : Fin d ↦ a.val = K') =
        ({Fin.ofNat d K'} : Finset (Fin d)) := by
    ext z
    simp only [mem_filter, mem_univ, true_and, mem_singleton]
    rw [eq_comm]
    conv_rhs => rw [eq_comm]
    apply (nat_eq_fin_iff _).symm
    omega
  simp [hfilter]

private theorem c_mul_prod_x_eq_n :
    c * ∏ j, x j ^ (j.val + 1) = n := by
  simp_rw [c, x]
  simp_rw [mul_pow, Finset.prod_mul_distrib]
  simp only [ite_pow, one_pow]
  simp +contextual only
  rw [Fin.prod_univ_eq_prod_range (fun i ↦ y (i + 1) ^ (i + 1))]
  rw [mul_comm, mul_assoc, ← Finset.prod_pow, aux (fun _ ↦ _),
    ← Finset.prod_mul_distrib]
  simp_rw [← pow_mul, ← pow_add, mul_comm _ K, Nat.div_add_mod]
  conv_rhs => rw [← prod_y_pow_eq_n]
  rw [Finset.prod_union]
  · have hmap :
        (Finset.range d).map (addRightEmbedding 1) = Finset.Icc 1 d := by
      rw [range_eq_Ico, Finset.map_add_right_Ico, zero_add,
        Ico_add_one_right_eq_Icc]
    rw [← hmap]
    simp
  refine Finset.disjoint_left.mpr ?_
  simp +contextual

private theorem prod_y_large_le_X_pow :
    ∏ m ∈ Finset.Ioc d n, y m ≤ (X : ℝ) ^ (d⁻¹ : ℝ) := by
  calc
    (∏ m ∈ Finset.Ioc d n, y m : ℕ) ≤
        (∏ m ∈ Finset.Ioc d n, y m ^ m : ℝ) ^ (d⁻¹ : ℝ) := by
      rw [← Real.finsetProd_rpow]
      · push_cast
        apply Finset.prod_le_prod
        · intro i hi
          positivity
        · simp only [Finset.mem_Ioc, and_imp]
          intro i hdi hin
          conv_lhs => rw [← Real.rpow_one (y i : ℝ)]
          rw [← Real.rpow_natCast_mul (by simp)]
          gcongr
          · norm_cast
            exact hy_pos i
          · rw [le_mul_inv_iff₀]
            · simpa only [one_mul] using
                (show (d : ℝ) ≤ i by exact_mod_cast hdi.le)
            · exact_mod_cast hd_pos
      · intro i hi
        positivity
    _ ≤ (n : ℝ) ^ (d⁻¹ : ℝ) := by
      gcongr
      norm_cast
      conv_rhs => rw [← prod_y_pow_eq_n]
      apply Finset.prod_le_prod_of_subset_of_one_le'
      · simp
      simp only [Finset.mem_union, Finset.mem_Icc]
      intro i hi _
      apply Nat.one_le_pow
      exact (hy_pos _)
    _ ≤ (X : ℝ) ^ (d⁻¹ : ℝ) := by
      gcongr
      exact hnX

private theorem c_le_X_pow : c ≤ (X : ℝ) ^ ε := by
  have hX : 1 ≤ X := h1n.trans hnX
  calc
    (c : ℝ) ≤ ∏ m ∈ Finset.Ioc d n, (y m : ℝ) ^ K := by
      simp_rw [c]
      push_cast
      apply Finset.prod_le_prod
      · intro i hi
        positivity
      · simp only [Finset.mem_Ioc, and_imp]
        intro i hdi hin
        gcongr
        · exact_mod_cast hy_pos i
        · exact (Nat.mod_lt i hK_pos).le
    _ ≤ ((X : ℝ) ^ (d⁻¹ : ℝ)) ^ (K : ℝ) := by
      simp only [Real.rpow_natCast]
      rw [Finset.prod_pow]
      gcongr
      exact_mod_cast prod_y_large_le_X_pow
    _ = (X : ℝ) ^ (K / d : ℝ) := by
      rw [← Real.rpow_mul]
      · ring_nf
      · positivity
    _ ≤ (X : ℝ) ^ ε := by
      exact Real.rpow_le_rpow_of_exponent_le (by exact_mod_cast hX) hK_div_d

/-- The distinguished index `K - 1`, viewed in `Fin d`. -/
noncomputable def KIndex : Fin d := Fin.ofNat d (K - 1)

@[simp]
private theorem KIndex_val_add_one : KIndex.val + 1 = K := by
  have hKd' := hKd
  have hK_pos' := hK_pos
  have hlt : K - 1 < d := by omega
  simp [KIndex, Fin.ofNat, Nat.mod_eq_of_lt hlt]
  omega

private theorem radical_le_X_pow_mul_prod :
    (radical n : ℕ) ≤ (X : ℝ) ^ ε * ∏ j, x j := by
  calc
    (radical n : ℕ) ≤
        ((radical c : ℕ) : ℝ) * radical (∏ j, x j ^ (j.val + 1)) := by
      norm_cast
      apply Nat.le_of_dvd
      · positivity
      rw [← c_mul_prod_x_eq_n]
      apply radical_mul_dvd
    _ ≤ ((radical c : ℕ) : ℝ) *
        ∏ j, (radical (x j ^ (j.val + 1)) : ℕ) := by
      gcongr
      apply Nat.le_of_dvd
      · positivity
      apply radical_prod_dvd
    _ = ((radical c : ℕ) : ℝ) *
        ∏ j, (radical (x j) : ℕ) := by
      congr 3 with j
      rw [radical_pow]
      omega
    _ ≤ (X : ℝ) ^ ε * ∏ j, x j := by
      gcongr
      · calc
          ((radical c : ℕ) : ℝ) ≤ c := by
            norm_cast
            apply Nat.le_of_dvd c_pos
            apply radical_dvd_self
          _ ≤ (X : ℝ) ^ ε := c_le_X_pow
      · apply Nat.le_of_dvd
        · exact x_pos _
        · apply radical_dvd_self

theorem x_K_le_X_pow : x KIndex ≤ (X : ℝ) ^ ε := by
  have hX : 1 ≤ X := h1n.trans hnX
  have hKd' := hKd
  rw [x, if_pos KIndex_val_add_one]
  simp only [KIndex_val_add_one, Nat.cast_mul, Nat.cast_prod,
    Nat.cast_pow, ge_iff_le]
  exact_mod_cast calc
    (y K * ∏ m ∈ Finset.Ioc d n, y m ^ (m / K) : ℝ) ≤
        (y K ^ K) ^ (K⁻¹ : ℝ) *
          (∏ m ∈ Finset.Ioc d n, y m ^ m) ^ (K⁻¹ : ℝ) := by
      gcongr
      · rw [← Real.rpow_natCast_mul, mul_inv_cancel₀]
        · simp
        · simp only [ne_eq, Nat.cast_eq_zero]
          exact hK_pos.ne'
        · exact_mod_cast (hy_pos _).le
      · push_cast
        rw [← Real.finsetProd_rpow _ _ (by simp)]
        gcongr with i hi
        rw [← Real.rpow_natCast_mul, ← Real.rpow_natCast]
        · gcongr
          · exact_mod_cast hy_pos i
          · simpa only [div_eq_mul_inv] using
              (Nat.cast_div_le (α := ℝ) (m := i) (n := K))
        · simp
    _ = (∏ m ∈ {K} ∪ Finset.Ioc d n, y m ^ m) ^ (K⁻¹ : ℝ) := by
      rw [Finset.prod_union]
      · simp only [Nat.cast_prod, Nat.cast_pow, Finset.prod_singleton,
          Nat.cast_mul]
        rw [Real.mul_rpow]
        · simp
        · positivity
      · simp only [disjoint_singleton_left, mem_Ioc, not_and, not_le]
        intro h
        linarith
    _ ≤ (∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m ^ m) ^
        (K⁻¹ : ℝ) := by
      have hprod : (∏ m ∈ {K} ∪ Finset.Ioc d n, y m ^ m : ℕ) ≤
          ∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m ^ m := by
        apply Finset.prod_le_prod_of_subset_of_one_le'
        · intro i hi
          rcases Finset.mem_union.mp hi with hi | hi
          · have hiK : i = K := Finset.mem_singleton.mp hi
            subst i
            exact Finset.mem_union_left _ (Finset.mem_Icc.mpr ⟨hK_pos, hKd.le⟩)
          · exact Finset.mem_union_right _ hi
        · intro i hi hnot
          apply Nat.one_le_pow
          exact hy_pos i
      exact Real.rpow_le_rpow (by positivity) (by exact_mod_cast hprod) (by positivity)
    _ = (n : ℝ) ^ (K⁻¹ : ℝ) := by
      congr
      rw [prod_y_pow_eq_n]
    _ ≤ (X : ℝ) ^ (K⁻¹ : ℝ) := by
      gcongr
      exact hnX
    _ ≤ (X : ℝ) ^ ε := by
      exact Real.rpow_le_rpow_of_exponent_le (by exact_mod_cast hX) K_inv_le_eps

private theorem X_pow_mul_prod_le_radical :
    (X : ℝ) ^ (-ε) * ∏ j, x j ≤ (radical n : ℕ) := by
  calc
    (X : ℝ) ^ (-ε) * ∏ j, x j ≤
        ∏ j : Fin d, if j ≠ KIndex then x j else 1 := by
      rw [Real.rpow_neg (by positivity)]
      apply inv_mul_le_of_le_mul₀
      · positivity
      · positivity
      · simp only [Nat.cast_prod, Nat.cast_ite, Nat.cast_one]
        calc
          (∏ j : Fin d, x j : ℝ) ≤
              (x KIndex : ℝ) *
                ∏ j : Fin d, if j ≠ KIndex then (x j : ℝ) else 1 := by
            norm_cast
            rw [← Finset.prod_filter, Finset.filter_ne',
              Finset.mul_prod_erase]
            exact Finset.mem_univ _
          _ ≤ (X : ℝ) ^ ε *
                ∏ j : Fin d, if j ≠ KIndex then (x j : ℝ) else 1 := by
            gcongr
            exact x_K_le_X_pow
    _ = ∏ j : Fin d,
        if j.val ≠ K - 1 then y (j.val + 1) else 1 := by
      have hKIndex (j : Fin d) : j.val = K - 1 ↔ j = KIndex := by
        have hlt : K - 1 < d := lt_of_le_of_lt (Nat.sub_le K 1) hKd
        constructor
        · intro hj
          ext
          simpa [KIndex, Fin.ofNat, Nat.mod_eq_of_lt hlt] using hj
        · intro hj
          rw [hj]
          simp [KIndex, Fin.ofNat, Nat.mod_eq_of_lt hlt]
      norm_cast
      simp_rw [← Finset.prod_filter, hKIndex]
      apply Finset.prod_congr
      · ext j
        simp
      · simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        intro j hj
        have hnot : j.val + 1 ≠ K := by
          intro h
          have hv : j.val = K - 1 := by omega
          exact hj ((hKIndex j).mp hv)
        simp [x, mul_one, hnot]
    _ ≤ ∏ j : Fin d,
        if j.val + 1 ≠ K then y (j.val + 1) else 1 := by
      gcongr with j
      apply le_of_eq
      apply if_congr
      · apply Iff.not
        rw [eq_comm, Nat.sub_eq_iff_eq_add, eq_comm]
        have := two_lt_K
        omega
      · rfl
      · rfl
    _ = ∏ m ∈ Finset.range d with m + 1 ≠ K, y (m + 1) := by
      norm_cast
      rw [Finset.prod_filter,
        Fin.prod_univ_eq_prod_range
          (fun j ↦ if j + 1 ≠ K then y (j + 1) else 1) d]
    _ ≤ ∏ m ∈ Finset.range d, y (m + 1) := by
      norm_cast
      apply Finset.prod_le_prod_of_subset_of_one_le'
      · exact Finset.filter_subset _ _
      · intro i hi hnot
        exact (hy_pos _)
    _ = ∏ m ∈ Finset.Icc 1 d, y m := by
      norm_cast
      have hmap :
          (Finset.range d).map (addRightEmbedding 1) = Finset.Icc 1 d := by
        have h1d : 1 ≤ d := hd_pos
        rw [Nat.range_eq_Icc_zero_sub_one _ (by omega),
          Finset.map_add_right_Icc]
        simp [h1d]
      simp [← hmap, Finset.prod_map]
    _ ≤ ∏ m ∈ Finset.Icc 1 d ∪ Finset.Ioc d n, y m := by
      norm_cast
      apply Finset.prod_le_prod_of_subset_of_one_le'
      · simp
      · intro i hi hnot
        exact (hy_pos _)
    _ = (radical n : ℕ) := by
      exact_mod_cast prod_y_eq_radical_n

/-- Fixed-parameter quantitative anatomic factorization. This is the complete
arithmetic compression step used in the source proof. -/
theorem exists_fixed_anatomic_factorization :
    ∃ (x : Fin d → ℕ), ∃ c : ℕ,
      n = c * ∏ j, x j ^ (j.val + 1) ∧
      c ≤ (X : ℝ) ^ ε ∧
      (∀ i j, i ≠ j → Nat.gcd (x i) (x j) = 1) ∧
      (X : ℝ) ^ (-ε) * ∏ j, x j ≤ (radical n : ℕ) ∧
      (radical n : ℕ) ≤ (X : ℝ) ^ ε * ∏ j, x j := by
  exact ⟨x, c, c_mul_prod_x_eq_n.symm, c_le_X_pow,
    x_pairwise_coprime, X_pow_mul_prod_le_radical,
    radical_le_X_pow_mul_prod⟩

end QuantitativeAnatomicFactorization

open QuantitativeAnatomicFactorization in
/-- Public fixed-parameter form, including positivity and coordinate bounds. -/
theorem exists_fixed_anatomic_factorization
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    {n X : ℕ} (h1n : 1 ≤ n) (hnX : n ≤ X) :
    ∃ (x : Fin d → ℕ), ∃ c : ℕ,
      n = c * ∏ j, x j ^ (j.val + 1) ∧
      c ≤ (X : ℝ) ^ ε ∧
      (∀ i j, i ≠ j → Nat.gcd (x i) (x j) = 1) ∧
      (X : ℝ) ^ (-ε) * ∏ j, x j ≤ (radical n : ℕ) ∧
      (radical n : ℕ) ≤ (X : ℝ) ^ ε * ∏ j, x j ∧
      0 < c ∧ (∀ i, 0 < x i) ∧ (∀ i, x i ≤ X) := by
  let data : QuantitativeAnatomicFactorization.ProofData :=
    ⟨ε, hε_pos, hε, d, hd, n, X, h1n, hnX⟩
  let : QuantitativeAnatomicFactorization.ProofData := data
  change ∃ (x : Fin ProofData.d → ℕ), ∃ c : ℕ,
    ProofData.n = c * ∏ j, x j ^ (j.val + 1) ∧
    c ≤ (ProofData.X : ℝ) ^ ProofData.ε ∧
    (∀ i j, i ≠ j → Nat.gcd (x i) (x j) = 1) ∧
    (ProofData.X : ℝ) ^ (-ProofData.ε) * ∏ j, x j ≤
      (radical ProofData.n : ℕ) ∧
    (radical ProofData.n : ℕ) ≤
      (ProofData.X : ℝ) ^ ProofData.ε * ∏ j, x j ∧
    0 < c ∧ (∀ i, 0 < x i) ∧ (∀ i, x i ≤ ProofData.X)
  obtain ⟨x, c, hn, hc, hcop, hlow, hupp⟩ :=
    QuantitativeAnatomicFactorization.exists_fixed_anatomic_factorization
  have hc_pos : 0 < c := by
    have hn_pos : 0 < ProofData.n :=
      lt_of_lt_of_le Nat.zero_lt_one ProofData.h1n
    apply Nat.pos_of_mul_pos_right (hn ▸ hn_pos)
  have hx_le (i : Fin ProofData.d) : x i ≤ ProofData.X := by
    apply le_trans _ ProofData.hnX
    apply Nat.le_of_dvd
    · exact lt_of_lt_of_le Nat.zero_lt_one ProofData.h1n
    rw [hn]
    apply Dvd.dvd.mul_left
    trans x i ^ (i.val + 1)
    · simp_all
    apply Finset.dvd_prod_of_mem
    exact Finset.mem_univ i
  have hx_pos (i : Fin ProofData.d) : 0 < x i := by
    apply Nat.pos_of_ne_zero
    intro hzero
    have hprod : (∏ j : Fin ProofData.d, x j ^ (j.val + 1)) = 0 := by
      apply Finset.prod_eq_zero (Finset.mem_univ i)
      simp [hzero]
    have hn_zero : ProofData.n = 0 := by
      rw [hn, hprod, mul_zero]
    exact (Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one ProofData.h1n)) hn_zero
  exact ⟨x, c, hn, hc, hcop, hlow, hupp, hc_pos, hx_pos, hx_le⟩

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
