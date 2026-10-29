-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNegativeEdgeConstant.Varianta047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualNegativeEdgeConstant.Varianta047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next/owner57/20261007T072529Z/bytes/a047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823--SourceActualNegativeEdgeMangoldt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualNegativeEdgeCorrelation
import SourceActualShortMangoldtBlock

/-!
A genuinely negative closed Mangoldt window is selected near the actual upper
support edge. The original real cutoff, every prime power, and the entire
complementary inventory remain literal. A negative partial contribution is
not an estimate of the full signed residual.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNegativeEdgeConstant.Varianta047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeMangoldt
open Filter ArithmeticFunction
open scoped BigOperators Topology
open SourcePairing SourceActualNegativeEdgeCorrelation SourceActualPsiPntTimeDecay
open SourceActualShortMangoldtBlock
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateMertensResidual
open EstimateVaughanSource EstimatePrimeSmoothDefect
noncomputable section

/-- Fixed positive relative width of the genuine physical window. -/
def actualNegativeEdgeConstant : ℝ := (Real.exp (-12) - Real.exp (-13)) / 2

/-- The lower atom is excluded and the upper atom included, exactly as in psi subtraction. -/
def actualNegativeEdgeWindow (A : ℝ) : Finset ℕ :=
  Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊

/-- The actual source contribution of the selected complete prime-power window. -/
def actualNegativeEdgeMangoldtBlock (A : ℝ) : ℝ :=
  ∑ n ∈ actualNegativeEdgeWindow A, vonMangoldt n * closedPrimeWeight A n

/-- Every other original atom, including the positive short sector, is retained. -/
def actualNegativeEdgeComplement (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
    vonMangoldt n * closedPrimeWeight A n

/-- The selected relative-window constant is strictly positive. -/
theorem actualNegativeEdgeConstant_pos : 0 < actualNegativeEdgeConstant := by
  unfold actualNegativeEdgeConstant
  have h : Real.exp (-13 : ℝ) < Real.exp (-12) := Real.exp_lt_exp.mpr (by norm_num)
  linarith

/-- Closed floor endpoints and all Mangoldt prime powers give exact psi subtraction. -/
theorem actualNegativeEdgeMass_eq_psi (A : ℝ) :
    (∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ)) =
      Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13)) := by
  have hf : ⌊Real.exp (2 * A - 13)⌋₊ ≤ ⌊Real.exp (2 * A - 12)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  rw [actualNegativeEdgeWindow, Chebyshev.psi, Chebyshev.psi]
  have hI : Finset.Ioc 0 ⌊Real.exp (2 * A - 12)⌋₊ =
      Finset.Ioc 0 ⌊Real.exp (2 * A - 13)⌋₊ ∪
        Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊ := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hdis : Disjoint (Finset.Ioc 0 ⌊Real.exp (2 * A - 13)⌋₊)
      (Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊) := by
    exact Finset.disjoint_left.mpr (by
      intro n hn hm
      have := Finset.mem_Ioc.mp hn
      have := Finset.mem_Ioc.mp hm
      omega)
  rw [hI, Finset.sum_union hdis]
  ring

/-- Genuine PNT gives a relative lower mass for every sufficiently large real radius. -/
theorem actualNegativeEdgeMass_eventually_lower :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeConstant * Real.exp (2 * A) ≤
        ∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ) := by
  have ht (d : ℝ) : Tendsto (fun A : ℝ => 2 * A - d) atTop atTop := by
    apply tendsto_atTop.2
    intro b
    filter_upwards [eventually_ge_atTop ((b + d) / 2)] with A hA
    linarith
  have h12 := actualRelativePsiTimeError_tendsto_zero.comp (ht 12)
  have h13 := actualRelativePsiTimeError_tendsto_zero.comp (ht 13)
  have heq (A d : ℝ) :
      Chebyshev.psi (Real.exp (2 * A - d)) * Real.exp (-(2 * A)) =
        (actualRelativePsiTimeError (2 * A - d) + 1) * Real.exp (-d) := by
    unfold actualRelativePsiTimeError
    have hh : Real.exp (-(2 * A - d)) * Real.exp (-d) = Real.exp (-(2 * A)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    have hh' : Real.exp (2 * A - d) * Real.exp (-(2 * A)) = Real.exp (-d) := by
      rw [← Real.exp_add]
      congr 1
      ring
    simp only [add_mul, sub_mul, mul_assoc, hh, hh', one_mul]
    ring
  have he : (fun A : ℝ =>
      (Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13))) *
        Real.exp (-(2 * A))) = fun A : ℝ =>
      (actualRelativePsiTimeError (2 * A - 12) + 1) * Real.exp (-12) -
      (actualRelativePsiTimeError (2 * A - 13) + 1) * Real.exp (-13) := by
    funext A
    rw [sub_mul, heq A 12, heq A 13]
  have hl : Tendsto (fun A : ℝ =>
      (Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13))) *
        Real.exp (-(2 * A))) atTop (𝓝 (2 * actualNegativeEdgeConstant)) := by
    rw [he]
    convert ((h12.add_const 1).mul_const (Real.exp (-12))).sub
      ((h13.add_const 1).mul_const (Real.exp (-13))) using 1 <;>
      first | rfl | (unfold actualNegativeEdgeConstant; ring)
  have hev := hl.eventually (Ioi_mem_nhds
    (by linarith [actualNegativeEdgeConstant_pos] : actualNegativeEdgeConstant <
      2 * actualNegativeEdgeConstant))
  obtain ⟨R, hR⟩ := eventually_atTop.1 hev
  refine ⟨max 20000000000000 R, le_max_left _ _, ?_⟩
  intro A hA
  have hh := (hR A ((le_max_right _ _).trans hA)).le
  rw [Real.exp_neg, ← div_eq_mul_inv] at hh
  rw [actualNegativeEdgeMass_eq_psi]
  exact (le_div_iff₀ (Real.exp_pos _)).1 hh

private theorem edgeWindow_long {A : ℝ} (hA : 20000000000000 ≤ A) {n : ℕ}
    (hn : n ∈ actualNegativeEdgeWindow A) :
    n ∈ Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊ := by
  have hp : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp A hp.le 3
  norm_num at he
  have hpow : A ^ 2 ≤ Real.exp A := by
    have hs := sq_nonneg A
    nlinarith
  have hl : A ^ 2 ≤ Real.exp (2 * A - 13) :=
    hpow.trans (Real.exp_le_exp.mpr (by linarith))
  have hU : vaughanCutoff A ≤ ⌊Real.exp (2 * A - 13)⌋₊ := Nat.floor_mono hl
  have hN : ⌊Real.exp (2 * A - 12)⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  have hm := Finset.mem_Ioc.mp hn
  exact Finset.mem_Ioc.mpr ⟨by omega, by omega⟩

private theorem edge_atom_weight {A : ℝ} (hA : 20000000000000 ≤ A) {n : ℕ}
    (hn : n ∈ actualNegativeEdgeWindow A) :
    closedPrimeWeight A n ≤ -(1 / (A ^ 9 * Real.exp A)) := by
  have hp : 0 < A := by linarith
  have hm := Finset.mem_Ioc.mp hn
  have hnlo : Real.exp (2 * A - 13) < (n : ℝ) :=
    (Nat.floor_lt (Real.exp_pos _).le).1 hm.1
  have hn0 : (0 : ℝ) < n := (Real.exp_pos _).trans hnlo
  have hnN : (n : ℝ) ≤ Real.exp (2 * A - 12) :=
    (show (n : ℝ) ≤ ⌊Real.exp (2 * A - 12)⌋₊ by exact_mod_cast hm.2).trans
      (Nat.floor_le (Real.exp_pos _).le)
  have hl : 2 * A - 13 < Real.log n := by
    simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos _) hnlo
  have hu : Real.log n ≤ 2 * A - 12 := by
    simpa only [Real.log_exp] using Real.log_le_log hn0 hnN
  have hc := actualCorrelation_negative_edge hA (by linarith : 12 ≤ 2 * A - Real.log n)
    (by linarith : 2 * A - Real.log n ≤ 13)
  rw [show 2 * A - (2 * A - Real.log n) = Real.log n by ring] at hc
  have hn0N : 0 < n := by exact_mod_cast hn0
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hn0
  have hs : Real.sqrt (n : ℝ) ≤ Real.exp A := by
    have hns : (n : ℝ) ≤ (Real.exp A) ^ 2 := by
      calc
        _ ≤ Real.exp (2 * A - 12) := hnN
        _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr (by linarith)
        _ = (Real.exp A) ^ 2 := by rw [show 2 * A = A + A by ring, Real.exp_add]; ring
    exact (Real.sqrt_le_sqrt hns).trans_eq (Real.sqrt_sq (Real.exp_pos _).le)
  unfold closedPrimeWeight
  rw [exponentialTest_log _ _ hn0N]
  calc
    _ ≤ -(1 / A ^ 9) / Real.sqrt (n : ℝ) := div_le_div_of_nonneg_right hc hsn.le
    _ ≤ -(1 / (A ^ 9 * Real.exp A)) := by
      have hh := div_le_div_of_nonneg_left (by positivity : 0 ≤ 1 / A ^ 9) hsn hs
      simpa only [neg_div, div_div] using neg_le_neg hh

/-- A true signed negative prime-power block has critical exponential scale. -/
theorem actualNegativeEdgeMangoldtBlock_eventually_negative :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeMangoldtBlock A ≤
        -actualNegativeEdgeConstant * Real.exp A / A ^ 9 := by
  obtain ⟨R, hR, hmass⟩ := actualNegativeEdgeMass_eventually_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hs : actualNegativeEdgeMangoldtBlock A ≤
      -(∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ)) /
        (A ^ 9 * Real.exp A) := by
    unfold actualNegativeEdgeMangoldtBlock
    rw [neg_div, Finset.sum_div, ← Finset.sum_neg_distrib]
    apply Finset.sum_le_sum
    intro n hn
    have hw := mul_le_mul_of_nonneg_left (edge_atom_weight (hR.trans hA) hn)
      (vonMangoldt_nonneg (n := n))
    convert hw using 1
    ring
  have hb := neg_le_neg (div_le_div_of_nonneg_right (hmass A hA)
    (by positivity : 0 ≤ A ^ 9 * Real.exp A))
  refine hs.trans ?_
  have he : Real.exp (2 * A) = Real.exp A * Real.exp A := by
    rw [show 2 * A = A + A by ring, Real.exp_add]
  rw [he] at hb
  convert hb using 1 <;> field_simp

/-- The complete unchanged residual retains the entire complementary closed inventory. -/
theorem actualResidual_eq_negativeEdge_add_complement {A : ℝ}
    (hA : 20000000000000 ≤ A) :
    mertensResidual A = actualNegativeEdgeMangoldtBlock A + actualNegativeEdgeComplement A := by
  have hs : actualNegativeEdgeWindow A ⊆ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ := by
    intro n hn
    have hm := Finset.mem_Ioc.mp (edgeWindow_long hA hn)
    have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
    exact Finset.mem_Icc.mpr ⟨by omega, hm.2⟩
  rw [mertensResidual_eq_closedPrimeMoment A (by linarith : 1 ≤ A)]
  unfold closedPrimeMoment actualNegativeEdgeMangoldtBlock actualNegativeEdgeComplement
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n) = _
  have h := Finset.sum_sdiff hs (f := fun n => vonMangoldt n * closedPrimeWeight A n)
  linarith

/-- This negative block forces an opposite complementary contribution, not a full-residual cap. -/
theorem actualNegativeEdgeComplement_eventually_above_residual :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A + actualNegativeEdgeConstant * Real.exp A / A ^ 9 ≤
        actualNegativeEdgeComplement A := by
  obtain ⟨R, hR, he⟩ := actualNegativeEdgeMangoldtBlock_eventually_negative
  refine ⟨R, hR, ?_⟩
  intro A hA
  have h := actualResidual_eq_negativeEdge_add_complement (hR.trans hA)
  have heA := he A hA
  rw [neg_mul, neg_div] at heA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeMangoldt
