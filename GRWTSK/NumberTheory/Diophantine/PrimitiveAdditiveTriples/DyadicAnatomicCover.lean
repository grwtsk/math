/-
Copyright (c) 2025 Bhavik Mehta, Arend Mellendijk.
Copyright (c) 2026 R.A. Jacob Martone.
SPDX-License-Identifier: Apache-2.0

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 2.1.

The dyadic-cover architecture is adapted from Bhavik Mehta and Arend
Mellendijk's `BToTriple`, `indexSet'`, and `BUnion` development in
`b-mehta/ABC-Exceptions`, as maintained in `LeanPool/lean-pool`. The source
paper credits Bhavik Mehta for Lean assistance on an earlier version.

This file proves the exact finite covering and pigeonhole layer. It does not
absorb logarithms or fixed dyadic losses into `X^ε`; that asymptotic step is
kept separate.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AnatomicBoxes
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AnatomicFactorization
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators

namespace DyadicAnatomicCover

open AnatomicBoxes

/-- The canonical endpoint-inclusive dyadic scale below a positive integer. -/
def dyadicScale (x : ℕ) : ℕ := 2 ^ Nat.log 2 x

theorem closedDyadic_dyadicScale {x : ℕ} (hx : 0 < x) :
    ClosedDyadic x (dyadicScale x) := by
  constructor
  · exact Nat.pow_log_le_self 2 hx.ne'
  · have h := Nat.lt_pow_succ_log_self (by decide : 1 < (2 : ℕ)) x
    simpa [dyadicScale, pow_succ, Nat.mul_comm] using h.le

theorem dyadicScale_le {x X : ℕ} (hx : 0 < x) (hxX : x ≤ X) :
    dyadicScale x ≤ X :=
  (closedDyadic_dyadicScale hx).1.trans hxX

/-- Exponent vectors for powers of two not exceeding the dyadic height of
`X`. -/
def dyadicExponentTuples (d X : ℕ) : Finset (Fin d → ℕ) :=
  Fintype.piFinset fun _ ↦ Finset.Icc 0 (Nat.log 2 X)

@[simp]
theorem mem_dyadicExponentTuples {d X : ℕ} {e : Fin d → ℕ} :
    e ∈ dyadicExponentTuples d X ↔ ∀ i, e i ≤ Nat.log 2 X := by
  simp [dyadicExponentTuples]

/-- Positive residual vectors bounded by `R`. -/
def residualTuples (R : ℕ) : Finset (Fin 3 → ℕ) :=
  Fintype.piFinset fun _ ↦ Finset.Icc 1 R

@[simp]
theorem mem_residualTuples {R : ℕ} {r : Fin 3 → ℕ} :
    r ∈ residualTuples R ↔ ∀ i, 1 ≤ r i ∧ r i ≤ R := by
  simp [residualTuples]

/-- Raw exponent and residual data from which an anatomic box parameter is
constructed. -/
abbrev RawIndex (d : ℕ) :=
  (Fin d → ℕ) × (Fin d → ℕ) × (Fin d → ℕ) × (Fin 3 → ℕ)

/-- Convert dyadic exponents and residuals to actual box parameters. -/
def parametersOfIndex {d : ℕ} (q : RawIndex d) : Parameters d where
  residual := q.2.2.2
  A := fun i ↦ 2 ^ q.1 i
  B := fun i ↦ 2 ^ q.2.1 i
  C := fun i ↦ 2 ^ q.2.2.1 i

/-- The finite raw parameter index set. -/
def rawParameterIndices (d X R : ℕ) : Finset (RawIndex d) :=
  (dyadicExponentTuples d X).product
    ((dyadicExponentTuples d X).product
      ((dyadicExponentTuples d X).product (residualTuples R)))

/-- All dyadic anatomic boxes with residuals at most `R` and coordinate scales
at most the dyadic height of `X`. -/
noncomputable def parameterCandidates (d X R : ℕ) : Finset (Parameters d) :=
  (rawParameterIndices d X R).image parametersOfIndex

theorem card_parameterCandidates_le (d X R : ℕ) :
    (parameterCandidates d X R).card ≤
      (Nat.log 2 X + 1) ^ (3 * d) * R ^ 3 := by
  classical
  calc
    (parameterCandidates d X R).card ≤
        (rawParameterIndices d X R).card := Finset.card_image_le
    _ = (Nat.log 2 X + 1) ^ (3 * d) * R ^ 3 := by
      simp [rawParameterIndices, dyadicExponentTuples, residualTuples,
        Fintype.card_piFinset]
      ring

/-- The natural residual cap supplied by a real-power estimate. -/
noncomputable def residualCap (ε : ℝ) (X : ℕ) : ℕ :=
  ⌊(X : ℝ) ^ ε⌋₊

private theorem supportProduct_dvd_monomial {d : ℕ} (x : Fin d → ℕ) :
    supportProduct x ∣ monomial x := by
  unfold supportProduct monomial
  apply Finset.prod_dvd_prod_of_dvd
  intro i hi
  exact dvd_pow_self (x i) (by omega)

private theorem carrierA_dvd_totalA {d : ℕ} (p : Parameters d)
    (x : Fin d → ℕ) : p.carrierA x ∣ p.totalA x := by
  exact mul_dvd_mul_left (p.residual 0) (supportProduct_dvd_monomial x)

private theorem carrierB_dvd_totalB {d : ℕ} (p : Parameters d)
    (x : Fin d → ℕ) : p.carrierB x ∣ p.totalB x := by
  exact mul_dvd_mul_left (p.residual 1) (supportProduct_dvd_monomial x)

private theorem carrierC_dvd_totalC {d : ℕ} (p : Parameters d)
    (x : Fin d → ℕ) : p.carrierC x ∣ p.totalC x := by
  exact mul_dvd_mul_left (p.residual 2) (supportProduct_dvd_monomial x)

private theorem residual_le_cap {ε : ℝ} {X r : ℕ}
    (hr : (r : ℝ) ≤ (X : ℝ) ^ ε) : r ≤ residualCap ε X := by
  rw [residualCap, Nat.le_floor_iff]
  · exact hr
  · positivity

private theorem log_le_log_of_pos {x X : ℕ} (_hx : 0 < x) (hxX : x ≤ X) :
    Nat.log 2 x ≤ Nat.log 2 X := by
  exact Nat.log_mono_right hxX

/-- Every bounded primitive additive triple is covered by one of the finite
anatomic boxes produced by the fixed-parameter factorization theorem. This is
the exact finite pigeonhole core preceding the paper's parameter inequalities. -/
theorem boundedTriples_subset_covered
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    boundedTriples X ⊆
      coveredTriples (parameterCandidates d X (residualCap ε X)) := by
  classical
  intro t ht
  have htcX : t.c ≤ X := mem_boundedTriples.mp ht
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
    exact log_le_log_of_pos (hxa_pos i) (hxa_le i)
  have heb : eb ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact log_le_log_of_pos (hxb_pos i) (hxb_le i)
  have hec : ec ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact log_le_log_of_pos (hxc_pos i) (hxc_le i)
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
  have hraw : raw ∈ rawParameterIndices d X (residualCap ε X) := by
    simp [rawParameterIndices, raw, hea, heb, hec, hr]
  have hp : p ∈ parameterCandidates d X (residualCap ε X) := by
    exact Finset.mem_image.mpr ⟨raw, hraw, rfl⟩
  have htotalA : p.totalA xa = t.a := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalA, monomial] using ha.symm
  have htotalB : p.totalB xb = t.b := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalB, monomial] using hb.symm
  have htotalC : p.totalC xc = t.c := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalC, monomial] using hc.symm
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
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, hprimitive⟩
    · intro i
      exact closedDyadic_dyadicScale (hxa_pos i)
    · intro i
      exact closedDyadic_dyadicScale (hxb_pos i)
    · intro i
      exact closedDyadic_dyadicScale (hxc_pos i)
    · simpa [q, htotalA] using t.a_pos
    · simpa [q, htotalB] using t.b_pos
    · simpa [q, htotalC] using t.c_pos
    · simpa [q, htotalA, htotalB, htotalC] using t.sum_eq
  have hmap : boxToTriple p ⟨q, hq⟩ = t := by
    apply PrimitiveAdditiveTriple.coordinates_injective
    simp [boxToTriple, q, htotalA, htotalB]
  rw [coveredTriples]
  apply Finset.mem_biUnion.mpr
  refine ⟨p, hp, ?_⟩
  apply Finset.mem_image.mpr
  exact ⟨⟨q, hq⟩, by simp, hmap⟩

/-- Exact finite pigeonhole bound before restricting to the paper's admissible
parameter inequalities. -/
theorem card_boundedTriples_le_parameter_mul_sup
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    (boundedTriples X).card ≤
      (parameterCandidates d X (residualCap ε X)).card *
        (parameterCandidates d X (residualCap ε X)).sup boxCard := by
  exact (Finset.card_le_card
    (boundedTriples_subset_covered hε_pos hε hd X)).trans
      (card_coveredTriples_le_card_mul_sup _)

/-- Fully explicit parameter-count version of the finite pigeonhole bound. -/
theorem card_boundedTriples_le_explicit_parameter_bound
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    (boundedTriples X).card ≤
      ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
        (parameterCandidates d X (residualCap ε X)).sup boxCard := by
  calc
    (boundedTriples X).card ≤
        (parameterCandidates d X (residualCap ε X)).card *
          (parameterCandidates d X (residualCap ε X)).sup boxCard :=
      card_boundedTriples_le_parameter_mul_sup hε_pos hε hd X
    _ ≤ ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
          (parameterCandidates d X (residualCap ε X)).sup boxCard := by
      gcongr
      exact card_parameterCandidates_le d X (residualCap ε X)

end DyadicAnatomicCover

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
