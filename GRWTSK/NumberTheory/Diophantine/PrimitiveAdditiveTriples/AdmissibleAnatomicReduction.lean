/-
Copyright (c) 2025 Bhavik Mehta, Arend Mellendijk.
Copyright (c) 2026 grwtsk contributors.
SPDX-License-Identifier: Apache-2.0

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 2.1.

The finite-cover architecture is adapted from Bhavik Mehta and Arend
Mellendijk's earlier Lean development in `b-mehta/ABC-Exceptions`, as
maintained in `LeanPool/lean-pool`. The source paper credits Bhavik Mehta
for Lean assistance on an earlier version.

This module keeps every fixed dyadic loss explicit. The paper absorbs these
constants, and the residual/logarithmic parameter count, into `X^ε₀` after
assuming that `X` is sufficiently large. That asymptotic absorption is not
used inside the exact finite cover.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ShortIntervalExceptional
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset UniqueFactorizationMonoid
open scoped BigOperators

namespace AdmissibleAnatomicReduction

open AnatomicBoxes DyadicAnatomicCover ShortIntervalExceptional

/-- The unweighted product `∏ AᵢBᵢCᵢ` of the three dyadic scale vectors. -/
def scaleProduct {d : ℕ} (p : Parameters d) : ℕ :=
  supportProduct p.A * supportProduct p.B * supportProduct p.C

/-- The sum `1 + ⋯ + d`, retained in finite-sum form to track the exact loss
when passing from `cᵢ` to its dyadic scale. -/
def weightSum (d : ℕ) : ℕ :=
  ∑ i : Fin d, (i.val + 1)

/-- Pairwise coprimality of the residual factors. -/
def ResidualPrimitive {d : ℕ} (p : Parameters d) : Prop :=
  Nat.Coprime (p.residual 0) (p.residual 1) ∧
  Nat.Coprime (p.residual 0) (p.residual 2) ∧
  Nat.Coprime (p.residual 1) (p.residual 2)

/-- Exact finite parameter inequalities obtained before absorbing constants
into `X^ε`. They imply the asymptotic parameter conditions of Proposition 2.1
once `X` is sufficiently large and `ε` is chosen as a fixed fraction of the
paper's `ε₀`. -/
def ExplicitAdmissible {d : ℕ} (lam ε : ℝ) (X : ℕ)
    (p : Parameters d) : Prop :=
  ResidualPrimitive p ∧
  ((X : ℝ) / 2) ^ lam ≤
    2 * (((X : ℝ) ^ ε) ^ 3) * (((2 : ℝ) ^ d) ^ 3) * scaleProduct p ∧
  (scaleProduct p : ℝ) ≤ (((X : ℝ) ^ ε) ^ 3) * (X : ℝ) ^ lam ∧
  monomial p.A ≤ X ∧
  monomial p.B ≤ X ∧
  monomial p.C ≤ X ∧
  (X : ℝ) ≤
    2 * (X : ℝ) ^ ε * (2 : ℝ) ^ weightSum d * monomial p.C

/-- The finite admissible parameter family for the exact reduction. -/
noncomputable def admissibleParameters (d : ℕ) (lam ε : ℝ) (X : ℕ) :
    Finset (Parameters d) := by
  classical
  exact (parameterCandidates d X (residualCap ε X)).filter
    (ExplicitAdmissible lam ε X)

theorem card_admissibleParameters_le (d : ℕ) (lam ε : ℝ) (X : ℕ) :
    (admissibleParameters d lam ε X).card ≤
      (Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3 := by
  classical
  exact (Finset.card_filter_le _ _).trans
    (card_parameterCandidates_le d X (residualCap ε X))

private theorem scale_support_le {d : ℕ} {A x : Fin d → ℕ}
    (h : ∀ i, ClosedDyadic (x i) (A i)) :
    supportProduct A ≤ supportProduct x := by
  unfold supportProduct
  apply Finset.prod_le_prod
  · simp
  · intro i hi
    exact (h i).1

private theorem support_le_two_pow_mul_scale {d : ℕ} {A x : Fin d → ℕ}
    (h : ∀ i, ClosedDyadic (x i) (A i)) :
    supportProduct x ≤ 2 ^ d * supportProduct A := by
  calc
    supportProduct x ≤ supportProduct (fun i ↦ 2 * A i) := by
      unfold supportProduct
      apply Finset.prod_le_prod
      · simp
      · intro i hi
        exact (h i).2
    _ = 2 ^ d * supportProduct A := by
      simp [supportProduct, Finset.prod_mul_distrib]

private theorem scale_monomial_le {d : ℕ} {A x : Fin d → ℕ}
    (h : ∀ i, ClosedDyadic (x i) (A i)) :
    monomial A ≤ monomial x := by
  unfold monomial
  apply Finset.prod_le_prod
  · simp
  · intro i hi
    gcongr
    exact (h i).1

private theorem monomial_le_two_pow_weight_mul_scale {d : ℕ}
    {A x : Fin d → ℕ} (h : ∀ i, ClosedDyadic (x i) (A i)) :
    monomial x ≤ 2 ^ weightSum d * monomial A := by
  calc
    monomial x ≤ ∏ i : Fin d, (2 * A i) ^ (i.val + 1) := by
      unfold monomial
      apply Finset.prod_le_prod
      · simp
      · intro i hi
        gcongr
        exact (h i).2
    _ = ∏ i : Fin d, (2 ^ (i.val + 1) * A i ^ (i.val + 1)) := by
      apply Finset.prod_congr rfl
      intro i hi
      rw [mul_pow]
    _ = (∏ i : Fin d, 2 ^ (i.val + 1)) * monomial A := by
      rw [Finset.prod_mul_distrib]
      rfl
    _ = 2 ^ weightSum d * monomial A := by
      simp only [Finset.prod_pow_eq_pow_sum, weightSum]

private theorem support_le_rpow_mul_radical
    {ε : ℝ} {X n s : ℕ} (hX : 0 < X)
    (h : (X : ℝ) ^ (-ε) * s ≤ (radical n : ℕ)) :
    (s : ℝ) ≤ (X : ℝ) ^ ε * (radical n : ℕ) := by
  calc
    (s : ℝ) = (X : ℝ) ^ ε * ((X : ℝ) ^ (-ε) * s) := by
      rw [← mul_assoc, ← Real.rpow_add (by exact_mod_cast hX), add_neg_cancel,
        Real.rpow_zero, one_mul]
    _ ≤ (X : ℝ) ^ ε * (radical n : ℕ) := by
      gcongr

private theorem residualPrimitive_of_reconstructions
    {d : ℕ} (t : PrimitiveAdditiveTriple) (p : Parameters d)
    (xa xb xc : Fin d → ℕ)
    (ha : p.totalA xa = t.a) (hb : p.totalB xb = t.b)
    (hc : p.totalC xc = t.c) : ResidualPrimitive p := by
  have hda : p.residual 0 ∣ t.a := by
    rw [← ha, Parameters.totalA]
    exact dvd_mul_right _ _
  have hdb : p.residual 1 ∣ t.b := by
    rw [← hb, Parameters.totalB]
    exact dvd_mul_right _ _
  have hdc : p.residual 2 ∣ t.c := by
    rw [← hc, Parameters.totalC]
    exact dvd_mul_right _ _
  exact
    ⟨(t.coprime_ab.coprime_dvd_left hda).coprime_dvd_right hdb,
      (t.coprime_ac.coprime_dvd_left hda).coprime_dvd_right hdc,
      (t.coprime_bc.coprime_dvd_left hdb).coprime_dvd_right hdc⟩

private theorem explicitAdmissible_of_factorizations
    {lam ε : ℝ} (hlam : 0 ≤ lam) {X d : ℕ}
    {t : PrimitiveAdditiveTriple} (ht : t ∈ nStarTriples lam X)
    (p : Parameters d) (xa xb xc : Fin d → ℕ)
    (hda : ∀ i, ClosedDyadic (xa i) (p.A i))
    (hdb : ∀ i, ClosedDyadic (xb i) (p.B i))
    (hdc : ∀ i, ClosedDyadic (xc i) (p.C i))
    (ha : p.totalA xa = t.a) (hb : p.totalB xb = t.b)
    (hc : p.totalC xc = t.c)
    (ha₀_pos : 0 < p.residual 0) (hb₀_pos : 0 < p.residual 1)
    (hc₀_pos : 0 < p.residual 2)
    (_ha₀ : (p.residual 0 : ℝ) ≤ (X : ℝ) ^ ε)
    (_hb₀ : (p.residual 1 : ℝ) ≤ (X : ℝ) ^ ε)
    (hc₀ : (p.residual 2 : ℝ) ≤ (X : ℝ) ^ ε)
    (ha_low : (X : ℝ) ^ (-ε) * supportProduct xa ≤ (radical t.a : ℕ))
    (hb_low : (X : ℝ) ^ (-ε) * supportProduct xb ≤ (radical t.b : ℕ))
    (hc_low : (X : ℝ) ^ (-ε) * supportProduct xc ≤ (radical t.c : ℕ))
    (ha_up : (radical t.a : ℕ) ≤ (X : ℝ) ^ ε * supportProduct xa)
    (hb_up : (radical t.b : ℕ) ≤ (X : ℝ) ^ ε * supportProduct xb)
    (hc_up : (radical t.c : ℕ) ≤ (X : ℝ) ^ ε * supportProduct xc) :
    ExplicitAdmissible lam ε X p := by
  have hmem := mem_nStarTriples.mp ht
  have htcX : t.c ≤ X := hmem.1
  have hXc : X ≤ 2 * t.c := hmem.2.1
  have hrad_lt : (t.radical : ℝ) < (t.c : ℝ) ^ lam := hmem.2.2.1
  have hpow_le_rad : (t.c : ℝ) ^ lam ≤ 2 * (t.radical : ℝ) := hmem.2.2.2
  have hX_pos : 0 < X := lt_of_lt_of_le t.c_pos htcX
  have hscale_support :
      scaleProduct p ≤
        supportProduct xa * supportProduct xb * supportProduct xc := by
    unfold scaleProduct
    gcongr
    · exact scale_support_le hda
    · exact scale_support_le hdb
    · exact scale_support_le hdc
  have hsupport_scale :
      supportProduct xa * supportProduct xb * supportProduct xc ≤
        (2 ^ d) ^ 3 * scaleProduct p := by
    have hA := support_le_two_pow_mul_scale hda
    have hB := support_le_two_pow_mul_scale hdb
    have hC := support_le_two_pow_mul_scale hdc
    unfold scaleProduct
    calc
      supportProduct xa * supportProduct xb * supportProduct xc ≤
          (2 ^ d * supportProduct p.A) *
            (2 ^ d * supportProduct p.B) *
              (2 ^ d * supportProduct p.C) := by gcongr
      _ = (2 ^ d) ^ 3 *
          (supportProduct p.A * supportProduct p.B * supportProduct p.C) := by ring
  have hsa := support_le_rpow_mul_radical hX_pos ha_low
  have hsb := support_le_rpow_mul_radical hX_pos hb_low
  have hsc := support_le_rpow_mul_radical hX_pos hc_low
  have hsupport_upper :
      (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) ≤
        (((X : ℝ) ^ ε) ^ 3) * (t.radical : ℝ) := by
    calc
      (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) =
          (supportProduct xa : ℝ) * (supportProduct xb : ℝ) *
            (supportProduct xc : ℝ) := by norm_num
      _ ≤ ((X : ℝ) ^ ε * (radical t.a : ℕ)) *
          ((X : ℝ) ^ ε * (radical t.b : ℕ)) *
          ((X : ℝ) ^ ε * (radical t.c : ℕ)) := by gcongr
      _ = (((X : ℝ) ^ ε) ^ 3) * (t.radical : ℝ) := by
        rw [t.radical_eq_product]
        push_cast
        ring
  have hrad_support :
      (t.radical : ℝ) ≤ (((X : ℝ) ^ ε) ^ 3) *
        (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) := by
    calc
      (t.radical : ℝ) =
          ((radical t.a : ℕ) : ℝ) * ((radical t.b : ℕ) : ℝ) * ((radical t.c : ℕ) : ℝ) := by
        rw [t.radical_eq_product]
        push_cast
        ring
      _ ≤ (((X : ℝ) ^ ε) * supportProduct xa) *
          (((X : ℝ) ^ ε) * supportProduct xb) *
          (((X : ℝ) ^ ε) * supportProduct xc) := by gcongr
      _ = (((X : ℝ) ^ ε) ^ 3) *
          (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) := by
        push_cast
        ring
  have hhalf_c : (X : ℝ) / 2 ≤ t.c := by
    have hXc_real : (X : ℝ) ≤ 2 * (t.c : ℝ) := by
      exact_mod_cast hXc
    linarith
  have hpow_half : ((X : ℝ) / 2) ^ lam ≤ (t.c : ℝ) ^ lam := by
    exact Real.rpow_le_rpow (by positivity) hhalf_c hlam
  have hc_pow_X : (t.c : ℝ) ^ lam ≤ (X : ℝ) ^ lam := by
    exact Real.rpow_le_rpow (by positivity) (by exact_mod_cast htcX) hlam
  have hmonA : monomial p.A ≤ X := by
    exact (scale_monomial_le hda).trans <|
      (show monomial xa ≤ t.a by
        rw [← ha, Parameters.totalA]
        exact Nat.le_mul_of_pos_left _ ha₀_pos).trans
          ((Nat.le_of_lt t.a_lt_c).trans htcX)
  have hmonB : monomial p.B ≤ X := by
    exact (scale_monomial_le hdb).trans <|
      (show monomial xb ≤ t.b by
        rw [← hb, Parameters.totalB]
        exact Nat.le_mul_of_pos_left _ hb₀_pos).trans
          ((Nat.le_of_lt t.b_lt_c).trans htcX)
  have hmonC : monomial p.C ≤ X := by
    exact (scale_monomial_le hdc).trans <|
      (show monomial xc ≤ t.c by
        rw [← hc, Parameters.totalC]
        exact Nat.le_mul_of_pos_left _ hc₀_pos).trans htcX
  have hc_weight :
      (X : ℝ) ≤ 2 * (X : ℝ) ^ ε * (2 : ℝ) ^ weightSum d * monomial p.C := by
    have hmono := monomial_le_two_pow_weight_mul_scale hdc
    calc
      (X : ℝ) ≤ 2 * t.c := by exact_mod_cast hXc
      _ = 2 * (p.residual 2 * monomial xc : ℕ) := by rw [← hc]; rfl
      _ ≤ 2 * (X : ℝ) ^ ε * monomial xc := by
        push_cast
        nlinarith [mul_le_mul_of_nonneg_right hc₀ (Nat.cast_nonneg (monomial xc))]
      _ ≤ 2 * (X : ℝ) ^ ε *
          ((2 : ℝ) ^ weightSum d * monomial p.C) := by
        gcongr
        exact_mod_cast hmono
      _ = 2 * (X : ℝ) ^ ε * (2 : ℝ) ^ weightSum d * monomial p.C := by ring
  refine ⟨residualPrimitive_of_reconstructions t p xa xb xc ha hb hc, ?_, ?_,
    hmonA, hmonB, hmonC, hc_weight⟩
  · calc
      ((X : ℝ) / 2) ^ lam ≤ (t.c : ℝ) ^ lam := hpow_half
      _ ≤ 2 * (t.radical : ℝ) := hpow_le_rad
      _ ≤ 2 * ((((X : ℝ) ^ ε) ^ 3) *
          (supportProduct xa * supportProduct xb * supportProduct xc : ℕ)) := by gcongr
      _ ≤ 2 * ((((X : ℝ) ^ ε) ^ 3) *
          (((2 : ℝ) ^ d) ^ 3 * scaleProduct p)) := by
        gcongr
        exact_mod_cast hsupport_scale
      _ = 2 * (((X : ℝ) ^ ε) ^ 3) * (((2 : ℝ) ^ d) ^ 3) *
          scaleProduct p := by ring
  · calc
      (scaleProduct p : ℝ) ≤
          (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) := by
        exact_mod_cast hscale_support
      _ ≤ (((X : ℝ) ^ ε) ^ 3) * (t.radical : ℝ) := hsupport_upper
      _ ≤ (((X : ℝ) ^ ε) ^ 3) * (t.c : ℝ) ^ lam := by
        exact mul_le_mul_of_nonneg_left hrad_lt.le (by positivity)
      _ ≤ (((X : ℝ) ^ ε) ^ 3) * (X : ℝ) ^ lam := by gcongr

/-- The exact admissible finite cover of `N*ₗ(X)`. -/
theorem nStarTriples_subset_admissible_cover
    {lam ε : ℝ} (hlam : 0 ≤ lam) (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    nStarTriples lam X ⊆
      coveredTriples (admissibleParameters d lam ε X) := by
  classical
  intro t ht
  have hmem := mem_nStarTriples.mp ht
  have htcX : t.c ≤ X := hmem.1
  have htaX : t.a ≤ X := (Nat.le_of_lt t.a_lt_c).trans htcX
  have htbX : t.b ≤ X := (Nat.le_of_lt t.b_lt_c).trans htcX
  obtain ⟨xa, a₀, ha, ha₀, hxa_cop, ha_low, ha_up, ha₀_pos, hxa_pos, hxa_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := ε) hε_pos hε (d := d) hd t.a_pos htaX
  obtain ⟨xb, b₀, hb, hb₀, hxb_cop, hb_low, hb_up, hb₀_pos, hxb_pos, hxb_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := ε) hε_pos hε (d := d) hd t.b_pos htbX
  obtain ⟨xc, c₀, hc, hc₀, hxc_cop, hc_low, hc_up, hc₀_pos, hxc_pos, hxc_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := ε) hε_pos hε (d := d) hd t.c_pos htcX
  let ea : Fin d → ℕ := fun i ↦ Nat.log 2 (xa i)
  let eb : Fin d → ℕ := fun i ↦ Nat.log 2 (xb i)
  let ec : Fin d → ℕ := fun i ↦ Nat.log 2 (xc i)
  let r : Fin 3 → ℕ := ![a₀, b₀, c₀]
  let raw : RawIndex d := ⟨ea, eb, ec, r⟩
  let p : Parameters d := parametersOfIndex raw
  let q : Point d := ⟨xa, xb, xc⟩
  have hea : ea ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact Nat.log_mono_right (hxa_le i)
  have heb : eb ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact Nat.log_mono_right (hxb_le i)
  have hec : ec ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact Nat.log_mono_right (hxc_le i)
  have hr : r ∈ residualTuples (residualCap ε X) := by
    rw [mem_residualTuples]
    intro i
    fin_cases i
    · change 1 ≤ a₀ ∧ a₀ ≤ residualCap ε X
      exact ⟨ha₀_pos, residual_le_cap ha₀⟩
    · change 1 ≤ b₀ ∧ b₀ ≤ residualCap ε X
      exact ⟨hb₀_pos, residual_le_cap hb₀⟩
    · change 1 ≤ c₀ ∧ c₀ ≤ residualCap ε X
      exact ⟨hc₀_pos, residual_le_cap hc₀⟩
  have hp_candidate : p ∈ parameterCandidates d X (residualCap ε X) := by
    apply Finset.mem_image.mpr
    refine ⟨raw, ?_, rfl⟩
    simp [rawParameterIndices, raw, hea, heb, hec, hr]
  have htotalA : p.totalA xa = t.a := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalA, monomial] using ha.symm
  have htotalB : p.totalB xb = t.b := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalB, monomial] using hb.symm
  have htotalC : p.totalC xc = t.c := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalC, monomial] using hc.symm
  have hda : ∀ i, ClosedDyadic (xa i) (p.A i) := by
    intro i
    exact closedDyadic_dyadicScale (hxa_pos i)
  have hdb : ∀ i, ClosedDyadic (xb i) (p.B i) := by
    intro i
    exact closedDyadic_dyadicScale (hxb_pos i)
  have hdc : ∀ i, ClosedDyadic (xc i) (p.C i) := by
    intro i
    exact closedDyadic_dyadicScale (hxc_pos i)
  have hprimitive : SupportPrimitive p q := by
    constructor
    · exact (t.coprime_ab.coprime_dvd_left
        (htotalA ▸ carrierA_dvd_totalA p xa)).coprime_dvd_right
          (htotalB ▸ carrierB_dvd_totalB p xb)
    constructor
    · exact (t.coprime_ac.coprime_dvd_left
        (htotalA ▸ carrierA_dvd_totalA p xa)).coprime_dvd_right
          (htotalC ▸ carrierC_dvd_totalC p xc)
    · exact (t.coprime_bc.coprime_dvd_left
        (htotalB ▸ carrierB_dvd_totalB p xb)).coprime_dvd_right
          (htotalC ▸ carrierC_dvd_totalC p xc)
  have hq : q ∈ boxFinset p := by
    rw [mem_boxFinset]
    exact ⟨hda, hdb, hdc,
      by simpa [q, htotalA] using t.a_pos,
      by simpa [q, htotalB] using t.b_pos,
      by simpa [q, htotalC] using t.c_pos,
      by simpa [q, htotalA, htotalB, htotalC] using t.sum_eq,
      hprimitive⟩
  have hadmissible : ExplicitAdmissible lam ε X p := by
    apply explicitAdmissible_of_factorizations hlam ht p xa xb xc hda hdb hdc
      htotalA htotalB htotalC
    · simpa [p, raw, r, parametersOfIndex] using ha₀_pos
    · simpa [p, raw, r, parametersOfIndex] using hb₀_pos
    · simpa [p, raw, r, parametersOfIndex] using hc₀_pos
    · simpa [p, raw, r, parametersOfIndex] using ha₀
    · simpa [p, raw, r, parametersOfIndex] using hb₀
    · simpa [p, raw, r, parametersOfIndex] using hc₀
    · simpa [supportProduct] using ha_low
    · simpa [supportProduct] using hb_low
    · simpa [supportProduct] using hc_low
    · simpa [supportProduct] using ha_up
    · simpa [supportProduct] using hb_up
    · simpa [supportProduct] using hc_up
  have hp : p ∈ admissibleParameters d lam ε X := by
    exact Finset.mem_filter.mpr ⟨hp_candidate, hadmissible⟩
  have hmap : boxToTriple p ⟨q, hq⟩ = t := by
    apply PrimitiveAdditiveTriple.coordinates_injective
    simp [boxToTriple, q, htotalA, htotalB]
  rw [coveredTriples]
  apply Finset.mem_biUnion.mpr
  refine ⟨p, hp, ?_⟩
  apply Finset.mem_image.mpr
  exact ⟨⟨q, hq⟩, by simp, hmap⟩

/-- Exact finite pigeonhole bound with the source-derived admissibility
constraints and every fixed loss displayed. -/
theorem nStarCount_le_admissible_parameter_mul_sup
    {lam ε : ℝ} (hlam : 0 ≤ lam) (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    nStarCount lam X ≤
      (admissibleParameters d lam ε X).card *
        (admissibleParameters d lam ε X).sup boxCard := by
  unfold nStarCount
  exact (Finset.card_le_card
    (nStarTriples_subset_admissible_cover hlam hε_pos hε hd X)).trans
      (card_coveredTriples_le_card_mul_sup _)

/-- Explicit parameter-count version of the finite admissible reduction. -/
theorem nStarCount_le_explicit_admissible_bound
    {lam ε : ℝ} (hlam : 0 ≤ lam) (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    nStarCount lam X ≤
      ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
        (admissibleParameters d lam ε X).sup boxCard := by
  calc
    nStarCount lam X ≤
        (admissibleParameters d lam ε X).card *
          (admissibleParameters d lam ε X).sup boxCard :=
      nStarCount_le_admissible_parameter_mul_sup hlam hε_pos hε hd X
    _ ≤ ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
          (admissibleParameters d lam ε X).sup boxCard := by
      gcongr
      exact card_admissibleParameters_le d lam ε X

end AdmissibleAnatomicReduction

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
