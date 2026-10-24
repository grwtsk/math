# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualSignedDyadicSummableErrorNative01.Variantf81662c0d244503e98a7fe66a8e97d3dee22a4a01d1aeb4d62c57fbcdc778aec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `318209ded6891c78d6011ef82e84ed1990805184` · SHA-256 `9b1a7213df968aa50c06fd4bf9f11a4b6aad4c0ee8b3e637692f4d240bbaeccf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDyadicGoodHeightIndex.Variant9b9e7d17557e95622bc7999a74f4146da501e5e3360fdb50cf275ef7f1ac8514","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b9e7d17557e95622bc7999a74f4146da501e5e3360fdb50cf275ef7f1ac8514","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualDyadicGoodHeightIndex.Variant9b9e7d17557e95622bc7999a74f4146da501e5e3360fdb50cf275ef7f1ac8514","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9b9e7d17557e95622bc7999a74f4146da501e5e3360fdb50cf275ef7f1ac8514","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-signed-dyadic-summable-error/SourceActualSignedDyadicSummableError-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSignedZeroDyadicShell

/-!
Actual completed horizontal errors are summed along separately selected genuine
dyadic good heights. The original sixth-power radius decay is retained before
bounding the logarithm. The actual signed vertical annuli and critical shells
are preserved; this supplies no arithmetic lower cap on their sum.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDyadicGoodHeightIndex.Variant9b9e7d17557e95622bc7999a74f4146da501e5e3360fdb50cf275ef7f1ac8514

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualSignedDyadicSummableError
open Complex MeasureTheory Set Filter Topology
open Zeta23 Zeta23.WeilEF
open SourceActualGoodHeightContour SourceActualBumpMovingHeight
open SourceActualSignedZeroDyadicShell ActualMovingHorizontalCompletedBudget
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualBumpTransform ActualCorrelationOppositeHalf
open SourceActualFullZeroContour SourceActualCriticalZeroHead SourcePairing

/-- Each successive actual natural good-height interval starts after twice its predecessor. -/
def actualDyadicGoodHeightIndex (A c : ℝ) : ℕ → ℕ
  | 0 => actualGoodHeightIndex A c
  | k+1 => 2 * actualDyadicGoodHeightIndex A c k + 2

/-- The explicit analytic coefficient, independent of the real moving scale. -/
def actualDyadicHorizontalCoefficient (K c : ℝ) : ℝ :=
  actualHorizontalSourceConstant K c * (Real.log 11 + Real.log 2 + 2/5)^2 / Real.pi

private theorem index_real_formula (A c : ℝ) (k : ℕ) :
    (actualDyadicGoodHeightIndex A c k : ℝ) + 2 =
      (2 : ℝ)^k * ((actualGoodHeightIndex A c : ℝ) + 2) := by
  induction k with
  | zero => simp [actualDyadicGoodHeightIndex]
  | succ k hk =>
    simp only [actualDyadicGoodHeightIndex, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat,
      pow_succ]
    nlinarith

private theorem nat_succ_le_two_pow (k : ℕ) : (k : ℝ)+1 ≤ (2 : ℝ)^k := by
  induction k with
  | zero => norm_num
  | succ k hk =>
    rw [pow_succ]
    push_cast
    nlinarith [Nat.cast_nonneg k]

/-- The genuine indices retain the true radius and an explicit logarithmic envelope. -/
theorem actualDyadicGoodHeightIndex_bounds (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3/2) (k : ℕ) :
    7 ≤ actualDyadicGoodHeightIndex A c k ∧
    (2 : ℝ)^k * actualBumpMovingHeight A c ≤ actualDyadicGoodHeightIndex A c k ∧
    Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3) ≤
      A * (Real.log 11 + Real.log 2 + 2/5) * (2 : ℝ)^k := by
  have hi := actualGoodHeightIndex_bounds A c
  have h7 : ∀ k, 7 ≤ actualDyadicGoodHeightIndex A c k := by
    intro k
    induction k with
    | zero => exact hi.1
    | succ k hk => simp only [actualDyadicGoodHeightIndex]; omega
  have hp1 : (1 : ℝ) ≤ (2 : ℝ)^k := one_le_pow₀ (by norm_num)
  have hf := index_real_formula A c k
  have hbase : actualBumpMovingHeight A c ≤ (actualGoodHeightIndex A c : ℝ) :=
    (le_max_right _ _).trans hi.2.1
  have hrad : (2 : ℝ)^k * actualBumpMovingHeight A c ≤
      (actualDyadicGoodHeightIndex A c k : ℝ) := by
    have hh := mul_le_mul_of_nonneg_left hbase (by positivity : 0 ≤ (2 : ℝ)^k)
    nlinarith
  refine ⟨h7 k,hrad,?_⟩
  let v : ℝ := (2*c-1)*A/5
  have hv : 0 ≤ v := by dsimp [v]; positivity
  have hvA : v ≤ (2/5)*A := by dsimp [v]; nlinarith
  have hT1 : 1 ≤ actualBumpMovingHeight A c := actualBumpMovingHeight_ge_one A c hA hc
  have hm : max 7 (actualBumpMovingHeight A c) ≤ 7*actualBumpMovingHeight A c :=
    max_le (by linarith) (by linarith)
  have hb : (actualGoodHeightIndex A c : ℝ)+3 ≤ 11*actualBumpMovingHeight A c := by
    linarith [hi.2.2]
  have hj : (actualDyadicGoodHeightIndex A c k : ℝ)+3 ≤
      (2 : ℝ)^k * (11*actualBumpMovingHeight A c) := by
    have hh := mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ (2 : ℝ)^k)
    nlinarith
  have hl := Real.log_le_log (by positivity : 0 <
    (actualDyadicGoodHeightIndex A c k : ℝ)+3) hj
  have he : Real.log ((2 : ℝ)^k * (11*actualBumpMovingHeight A c)) =
      (k : ℝ)*Real.log 2 + Real.log 11 + v := by
    rw [Real.log_mul (by positivity) (by positivity), Real.log_pow,
      Real.log_mul (by norm_num) (Real.exp_pos _)]
    simp only [actualBumpMovingHeight, Real.log_exp]
    dsimp [v]
  rw [he] at hl
  have hlog2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hlog11 : 0 ≤ Real.log 11 := Real.log_nonneg (by norm_num)
  have hk := nat_succ_le_two_pow k
  calc
    _ ≤ (k : ℝ)*Real.log 2 + Real.log 11 + v := hl
    _ ≤ A*(Real.log 11+Real.log 2+2/5)*((k : ℝ)+1) := by
      have hh1 := mul_le_mul_of_nonneg_right hA hlog11
      have hh2 := mul_le_mul_of_nonneg_right hA hlog2
      have hh3 := mul_nonneg (Nat.cast_nonneg k)
        (show 0 ≤ A*(Real.log 11+2/5) by positivity)
      nlinarith
    _ ≤ _ := mul_le_mul_of_nonneg_left hk (by positivity)

private theorem initial_bilateral {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    actualInitialPrimeMellin A s = actualBilateralCorrelationTransform A (s-1/2) := by
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA,
    actualBilateralCorrelationTransform_eq_bump hA]
  rfl

private theorem correction_bound (A c R D : ℝ) (hA : 1 ≤ A)
    (hb : ∀ y : ℝ, (y=R ∨ y= -R) → ‖actualCompletedHorizontalIntegral A c y‖ ≤ D) :
    ‖actualFiniteHorizontalCorrection A c R‖ ≤ D/Real.pi := by
  unfold actualFiniteHorizontalCorrection
  simp_rw [initial_bilateral hA]
  change ‖(1/(2*(Real.pi : ℂ)*I)) *
    (actualCompletedHorizontalIntegral A c (-R)-actualCompletedHorizontalIntegral A c R)‖ ≤ _
  have hn : ‖(1/(2*(Real.pi : ℂ)*I))‖ = 1/(2*Real.pi) := by
    norm_num [norm_div,norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_pos Real.pi_pos]
  rw [norm_mul,hn]
  calc
    _ ≤ (1/(2*Real.pi))*(‖actualCompletedHorizontalIntegral A c (-R)‖+
        ‖actualCompletedHorizontalIntegral A c R‖) :=
      mul_le_mul_of_nonneg_left (norm_sub_le _ _) (by positivity)
    _ ≤ (1/(2*Real.pi))*(D+D) :=
      mul_le_mul_of_nonneg_left (add_le_add (hb _ (Or.inr rfl))
        (hb _ (Or.inl rfl))) (by positivity)
    _ = _ := by ring

private theorem correction_geometric {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0<K ∧ ∀ (A c R : ℝ) (k : ℕ),
      1 ≤ A → 1<c → c≤3/2 →
      (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R →
      R ≤ (actualDyadicGoodHeightIndex A c k : ℝ)+1 →
      (∀ s : ℂ, (s.im=R ∨ s.im= -R) → 1/2≤s.re → s.re≤2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3))^2) →
      ‖actualFiniteHorizontalCorrection A c R‖ ≤
        actualDyadicHorizontalCoefficient K c/A^7 *
          Real.exp (-((2*c-1)*A)/5) * (1/16 : ℝ)^k := by
  obtain ⟨K,hK,hb⟩ := actual_horizontal_completed_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R k hA hc hc2 hjR hRj hg
  have hi := actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k
  have hRp : 0<R := by have hj7 : (7 : ℝ) ≤ actualDyadicGoodHeightIndex A c k := by
                        exact_mod_cast hi.1
                      linarith
  have hZ := source_normalization_pos A hA
  have hzl := ActualBumpHorizontalStripBudget.actualBumpNormalization_lower A hA
  have hzinv : 1/sourceNormalization A ≤ (109395/4096 : ℝ) := by
    rw [div_le_iff₀ hZ]
    nlinarith
  let B : ℝ := Real.log 11+Real.log 2+2/5
  let v : ℝ := (2*c-1)*A/5
  have hlog0 : 0 ≤ Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3) :=
    Real.log_nonneg (by have hj7 : (7 : ℝ) ≤ actualDyadicGoodHeightIndex A c k := by
                           exact_mod_cast hi.1
                       linarith)
  have hlogsq := pow_le_pow_left₀ hlog0 hi.2.2 2
  have hrad : (2 : ℝ)^k*Real.exp v ≤ R := by
    simpa only [actualBumpMovingHeight] using hi.2.1.trans hjR
  have hrad6 := pow_le_pow_left₀ (by positivity : 0 ≤ (2 : ℝ)^k*Real.exp v) hrad 6
  have hquot : Real.exp ((2*c-1)*A) / R^6 ≤
      Real.exp (-v) / ((2 : ℝ)^k)^6 := by
    have he : Real.exp ((2*c-1)*A) / ((2 : ℝ)^k*Real.exp v)^6 =
        Real.exp (-v) / ((2 : ℝ)^k)^6 := by
      rw [mul_pow, ← Real.exp_nat_mul]
      dsimp [v]
      rw [div_mul_eq_div_div, ← Real.exp_sub]
      congr 1
      ring
    exact (div_le_div_of_nonneg_left (Real.exp_pos _).le (by positivity) hrad6).trans_eq he
  have hpow : ((2 : ℝ)^k)^2 / ((2 : ℝ)^k)^6 = (1/16 : ℝ)^k := by
    rw [← pow_mul, ← pow_mul, show k*6=k*2+k*4 by omega, pow_add]
    field_simp
    rw [← mul_pow]
    norm_num
  have hcst : 0 ≤ (2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*K/A^9 := by positivity
  let D := actualHorizontalSourceConstant K c * B^2/A^7 *
    Real.exp (-v) * (1/16 : ℝ)^k
  have hline (y : ℝ) (hy : y=R ∨ y= -R) :
      ‖actualCompletedHorizontalIntegral A c y‖ ≤ D := by
    calc
      _ ≤ _ := hb A c R y (actualDyadicGoodHeightIndex A c k) hA hc hc2
        hi.1 hjR hRj hg hy
      _ = ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*K/A^9) *
        (1/sourceNormalization A) *
        (Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3))^2 *
        (Real.exp ((2*c-1)*A)/R^6) := by ring
      _ ≤ ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*K/A^9) *
        (109395/4096) * (A*B*(2 : ℝ)^k)^2 *
        (Real.exp (-v)/((2 : ℝ)^k)^6) := by
          exact mul_le_mul (mul_le_mul
            (mul_le_mul_of_nonneg_left hzinv hcst) hlogsq
            (by positivity) (by positivity)) hquot (by positivity) (by positivity)
      _ = D := by
        dsimp [D]
        unfold actualHorizontalSourceConstant
        rw [mul_pow, mul_pow]
        have hAp : A ≠ 0 := by linarith
        have hpp : ((2 : ℝ)^k)^6 ≠ 0 := by positivity
        have hh := hpow
        field_simp at hh ⊢
        nlinarith [hh]
  have hh := correction_bound A c R D hA hline
  convert hh using 1
  dsimp [D,actualDyadicHorizontalCoefficient,B,v]
  ring

/-- Each genuine selected horizontal error has geometric decay with an explicit A⁻⁷ factor. -/
theorem actual_good_dyadic_horizontal_sequence :
    ∃ Cg K : ℝ, 0<Cg ∧ 0<K ∧ ∀ A c : ℝ,
      1≤A → 1<c → c≤3/2 → ∃ R : ℕ → ℝ,
      (∀ k, (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R k ∧
        R k ≤ (actualDyadicGoodHeightIndex A c k : ℝ)+1) ∧
      (∀ k, 2*R k ≤ R (k+1)) ∧
      (∀ k s, (s.im=R k ∨ s.im= -R k) → 1/2≤s.re → s.re≤2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3))^2) ∧
      (∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤
        actualDyadicHorizontalCoefficient K c/A^7 *
          Real.exp (-((2*c-1)*A)/5) * (1/16 : ℝ)^k) := by
  obtain ⟨Cg,hCg,hg⟩ := good_heights_at
  obtain ⟨K,hK,hb⟩ := correction_geometric hCg
  refine ⟨Cg,K,hCg,hK,?_⟩
  intro A c hA hc hc2
  have hex (k : ℕ) := hg (actualDyadicGoodHeightIndex A c k)
    (actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k).1
  choose R hlo hhi hgood using hex
  refine ⟨R,fun k => ⟨hlo k,hhi k⟩,?_,hgood,?_⟩
  · intro k
    have he : (actualDyadicGoodHeightIndex A c (k+1) : ℝ) =
        2*(actualDyadicGoodHeightIndex A c k : ℝ)+2 := by
      simp [actualDyadicGoodHeightIndex]
    have hh := hlo (k+1)
    rw [he] at hh
    linarith [hhi k]
  · intro k
    exact hb A c (R k) k hA hc hc2 (hlo k) (hhi k) (hgood k)

/-- The actual signed shell errors are summable, with both critical and vertical terms retained. -/
theorem actual_compensated_dyadic_shell_errors_summable (A c E : ℝ) (R : ℕ → ℝ)
    (hA : 1≤A) (hc : 1<c) (hc2 : c≤3/2) (h7 : ∀ k, 7≤R k)
    (horder : ∀ k, R k≤R (k+1))
    (hgood : ∀ k s, (s.im=R k ∨ s.im= -R k) → 1/2≤s.re → s.re≤2 → riemannZeta s ≠ 0)
    (hb : ∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E*(1/16 : ℝ)^k) :
    Summable (fun k => ‖(actualOffAxisZeroHeightHead A (R (k+1))-
      actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k+1))-actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k+1))-actualCompletedVerticalHead A c (R k))‖) ∧
    (∑' k, ‖(actualOffAxisZeroHeightHead A (R (k+1))-actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k+1))-actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k+1))-actualCompletedVerticalHead A c (R k))‖)
      ≤ (17/15 : ℝ)*E := by
  let f := fun k => ‖(actualOffAxisZeroHeightHead A (R (k+1))-
      actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k+1))-actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k+1))-actualCompletedVerticalHead A c (R k))‖
  have hE : 0≤E := by simpa using (norm_nonneg _).trans (hb 0)
  have hbound (k : ℕ) : f k ≤ (17/16 : ℝ)*E*(1/16 : ℝ)^k := by
    have he : (actualOffAxisZeroHeightHead A (R (k+1))-actualOffAxisZeroHeightHead A (R k)) +
        (actualCriticalZeroHeightHead A (R (k+1))-actualCriticalZeroHeightHead A (R k)) =
        actualSignedZeroHeightShell A (R k) (R (k+1)) := by
      rw [actualSignedZeroHeightShell_eq_head_sub A _ _ (horder k),
        actualZeroHeightHead_eq_critical_add_offAxis A (R k),
        actualZeroHeightHead_eq_critical_add_offAxis A (R (k+1))]
      ring
    dsimp [f]
    rw [he,actualSignedZeroHeightShell_eq_contour_difference A c _ _ hA hc hc2
      (h7 k) (horder k) (hgood k) (hgood (k+1)),add_sub_cancel_left]
    calc
      _ ≤ ‖actualFiniteHorizontalCorrection A c (R (k+1))‖+
        ‖actualFiniteHorizontalCorrection A c (R k)‖ := norm_sub_le _ _
      _ ≤ E*(1/16 : ℝ)^(k+1)+E*(1/16 : ℝ)^k := add_le_add (hb _) (hb _)
      _ = _ := by rw [pow_succ]; ring
  have hs : Summable (fun k : ℕ => (17/16 : ℝ)*E*(1/16 : ℝ)^k) :=
    (summable_geometric_of_lt_one (by norm_num : (0 : ℝ)≤1/16) (by norm_num)).mul_left _
  have hf : Summable f := Summable.of_nonneg_of_le (fun k => norm_nonneg _) hbound hs
  refine ⟨hf,?_⟩
  calc
    _ ≤ ∑' k : ℕ, (17/16 : ℝ)*E*(1/16 : ℝ)^k := hf.tsum_le_tsum hbound hs
    _ = (17/15 : ℝ)*E := by
      rw [tsum_mul_left,tsum_geometric_of_lt_one (by norm_num : (0 : ℝ)≤1/16) (by norm_num)]
      ring

/-- Genuine good-height selection makes the full phase-preserving shell error summable. -/
theorem actual_good_dyadic_compensated_shell_total_budget :
    ∃ Cg K : ℝ, 0<Cg ∧ 0<K ∧ ∀ A c : ℝ,
      1≤A → 1<c → c≤3/2 → ∃ R : ℕ → ℝ,
      (∀ k, (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R k ∧
        R k ≤ (actualDyadicGoodHeightIndex A c k : ℝ)+1) ∧
      (∀ k, 2*R k≤R (k+1)) ∧
      Summable (fun k => ‖(actualOffAxisZeroHeightHead A (R (k+1))-
        actualOffAxisZeroHeightHead A (R k)) +
        (actualCriticalZeroHeightHead A (R (k+1))-actualCriticalZeroHeightHead A (R k)) -
        (actualCompletedVerticalHead A c (R (k+1))-actualCompletedVerticalHead A c (R k))‖) ∧
      (∑' k, ‖(actualOffAxisZeroHeightHead A (R (k+1))-actualOffAxisZeroHeightHead A (R k)) +
        (actualCriticalZeroHeightHead A (R (k+1))-actualCriticalZeroHeightHead A (R k)) -
        (actualCompletedVerticalHead A c (R (k+1))-actualCompletedVerticalHead A c (R k))‖)
        ≤ (17/15 : ℝ)*actualDyadicHorizontalCoefficient K c/A^7*
          Real.exp (-((2*c-1)*A)/5) := by
  obtain ⟨Cg,K,hCg,hK,hseq⟩ := actual_good_dyadic_horizontal_sequence
  refine ⟨Cg,K,hCg,hK,?_⟩
  intro A c hA hc hc2
  obtain ⟨R,hidx,hdyad,hgood,hb⟩ := hseq A c hA hc hc2
  have h7 (k : ℕ) : 7≤R k := by
    have hh : (7 : ℝ)≤actualDyadicGoodHeightIndex A c k := by
      exact_mod_cast (actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k).1
    exact hh.trans (hidx k).1
  have horder (k : ℕ) : R k≤R (k+1) := by linarith [h7 k,hdyad k]
  have ht := actual_compensated_dyadic_shell_errors_summable A c
    (actualDyadicHorizontalCoefficient K c/A^7*Real.exp (-((2*c-1)*A)/5)) R
    hA hc hc2 h7 horder (fun k s him hrl hru => (hgood k s him hrl hru).1) hb
  refine ⟨R,hidx,hdyad,ht.1,?_⟩
  convert ht.2 using 1 <;> ring

end FormalResearch.RiemannHypothesis.SourceActualSignedDyadicSummableError
```
