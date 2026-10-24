# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMovingHorizontalCompletedBudget.Varianteaea369fb926c319d819935fbe67456b52994aac05e58e3374656e78895b83c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67aa33505e45c5fee422ba92b33b0dd7704253c2` · SHA-256 `45e5f1132931b66a8b93cf6e3633cb39d5f0fa9225804ed3cfe435b5172feb19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedHorizontalIntegral.Variantc9473b10ae061de01a732e87abfb371b15c535dd294e388359b1741bbb4c9db8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9473b10ae061de01a732e87abfb371b15c535dd294e388359b1741bbb4c9db8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCompletedHorizontalIntegral.Variantc9473b10ae061de01a732e87abfb371b15c535dd294e388359b1741bbb4c9db8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c9473b10ae061de01a732e87abfb371b15c535dd294e388359b1741bbb4c9db8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualMovingHorizontalCompletedBudget-native02/ActualMovingHorizontalCompletedBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCompletedHorizontalBudget
import SourceActualGoodHeightContour

/-!
The actual completed-zeta horizontal integrals have a source-specific budget
uniform in the moving real scale. The good heights, gamma factors, functional
reflection and exact ordinary-square source kernel remain. All crossed-zero
residues and signed vertical heads remain outside this estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedHorizontalIntegral.Variantc9473b10ae061de01a732e87abfb371b15c535dd294e388359b1741bbb4c9db8

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualMovingHorizontalCompletedBudget
open MeasureTheory Set Complex Topology Filter
open Zeta23 Zeta23.WeilEF
open SourcePairing ActualCorrelationOppositeHalf ActualBumpHorizontalStripBudget
open ActualCompletedHorizontalBudget SourceActualGoodHeightContour
open SourceActualBumpMovingHeight
noncomputable section

/-- The literal actual source integral on either completed-zeta horizontal segment. -/
def actualCompletedHorizontalIntegral (A c y : ℝ) : ℂ :=
  HIntegral (fun s => actualBilateralCorrelationTransform A (s-1/2)*
    logDeriv completedRiemannZeta s) (1-c) c y

/-- A moving height gives an extra exponential factor for the actual sixth-power tail. -/
theorem actual_exponential_height_ratio_le (v R : ℝ) (hR : Real.exp (v / 5) ≤ R) :
    Real.exp v / R^6 ≤ Real.exp (-v/5) := by
  have hRp : 0 < R := (Real.exp_pos _).trans_le hR
  have hp := pow_le_pow_left₀ (Real.exp_pos (v / 5)).le hR 6
  have he : Real.exp (v / 5)^6 = Real.exp (6*v/5) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he] at hp
  calc
    _ ≤ Real.exp v / Real.exp (6*v/5) :=
      div_le_div_of_nonneg_left (Real.exp_pos _).le (Real.exp_pos _) hp
    _ = _ := by rw [← Real.exp_sub]; congr 1; ring

/-- Completed logarithmic derivative and actual kernel combine before integrating. -/
theorem actual_horizontal_completed_norm_le {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R y : ℝ) (j : ℕ),
      1 ≤ A → 1 < c → c ≤ 3/2 → 7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      (y = R ∨ y = -R) →
      ‖actualCompletedHorizontalIntegral A c y‖ ≤
        ((204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
          Real.exp ((2*c-1)*A)/(A^9*R^6)) *
        (K*(Real.log ((j : ℝ)+3))^2)*(2*c-1) := by
  obtain ⟨K,hK,hlog⟩ := actual_completed_logDeriv_good_line hCg
  refine ⟨K,hK,?_⟩
  intro A c R y j hA hc hc2 hj hjR hRj hgood hy
  have hj7 : (7 : ℝ) ≤ j := by exact_mod_cast hj
  have hRp : 0 < R := by linarith
  have hyabs : |y| = R := by rcases hy with hy | hy <;> simp [hy,hRp.le]
  unfold actualCompletedHorizontalIntegral HIntegral
  have hi := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := 1-c) (b := c) (f := fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)*
        logDeriv completedRiemannZeta ((x : ℂ)+y*I))
    (C := ((204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
      Real.exp ((2*c-1)*A)/(A^9*R^6))*(K*(Real.log ((j : ℝ)+3))^2))
    (fun x hx => ?_)
  · simpa only [show |c-(1-c)| = 2*c-1 by rw [abs_of_pos (by linarith)]; ring] using hi
  · rw [Set.uIoc_of_le (by linarith)] at hx
    rw [norm_mul]
    have hk := actual_bilateral_on_strip_norm_le A c x y hA hc hx.1.le hx.2
      (by rw [hyabs]; linarith)
    rw [hyabs] at hk
    exact mul_le_mul hk (hlog j R c x y hj hjR hRj hgood hc hc2 hy hx.1.le hx.2)
      (norm_nonneg _) (by have hZ := source_normalization_pos A hA; positivity)

/-- The explicit uniform-in-A coefficient of the actual horizontal estimate. -/
def actualHorizontalSourceConstant (K c : ℝ) : ℝ :=
  (2*c-1)*(204288 : ℝ)^2*(109395/4096)*(1+c^2)^2*K

/-- The complete actual horizontal budget decays exponentially above the moving height. -/
theorem actual_horizontal_moving_height_norm_le {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R y : ℝ) (j : ℕ),
      1 ≤ A → 1 < c → c ≤ 3/2 → 7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      actualBumpMovingHeight A c ≤ R → (y = R ∨ y = -R) →
      ‖actualCompletedHorizontalIntegral A c y‖ ≤
        actualHorizontalSourceConstant K c*(Real.log ((j : ℝ)+3))^2/A^9*
          Real.exp (-((2*c-1)*A)/5) := by
  obtain ⟨K,hK,hbound⟩ := actual_horizontal_completed_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R y j hA hc hc2 hj hjR hRj hgood hheight hy
  have hb := hbound A c R y j hA hc hc2 hj hjR hRj hgood hy
  have he := actual_exponential_height_ratio_le ((2*c-1)*A) R hheight
  have hZ := source_normalization_pos A hA
  have hZlower := actualBumpNormalization_lower A hA
  have hzinv : 1/sourceNormalization A ≤ (109395/4096 : ℝ) := by
    rw [div_le_iff₀ hZ]
    nlinarith
  have ha : 0 < A := by linarith
  have hκ : 0 < 2*c-1 := by linarith
  have hfac : 0 ≤ (2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
      K*(Real.log ((j : ℝ)+3))^2/A^9 := by positivity
  calc
    _ ≤ _ := hb
    _ = ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
        K*(Real.log ((j : ℝ)+3))^2/A^9) *
        (1/sourceNormalization A) * (Real.exp ((2*c-1)*A)/R^6) := by ring
    _ ≤ ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
        K*(Real.log ((j : ℝ)+3))^2/A^9) *
        (109395/4096) * Real.exp (-((2*c-1)*A)/5) := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hzinv hfac) he
        (by positivity) (by positivity)
    _ = _ := by unfold actualHorizontalSourceConstant; ring

/-- A genuine selected good height bounds both actual horizontal integrals. -/
theorem actual_source_growing_horizontal_budget :
    ∃ Cg : ℝ, 0 < Cg ∧ ∃ K : ℝ, 0 < K ∧
      ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3/2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c)+2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
        ∀ y : ℝ, (y = R ∨ y = -R) →
          ‖actualCompletedHorizontalIntegral A c y‖ ≤
            actualHorizontalSourceConstant K c*
              (Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2/A^9*
              Real.exp (-((2*c-1)*A)/5) := by
  obtain ⟨Cg,hCg,hgood⟩ := good_heights_at
  obtain ⟨K,hK,hbound⟩ := actual_horizontal_moving_height_norm_le hCg
  refine ⟨Cg,hCg,K,hK,?_⟩
  intro A c hA hc hc2
  have hi := actualGoodHeightIndex_bounds A c
  obtain ⟨R,hjR,hRj,hRg⟩ := hgood (actualGoodHeightIndex A c) hi.1
  have hlower := hi.2.1.trans hjR
  refine ⟨R,hlower,by linarith [hi.2.2],hRg,?_⟩
  intro y hy
  exact hbound A c R y (actualGoodHeightIndex A c) hA hc hc2 hi.1 hjR hRj hRg
    ((le_max_right _ _).trans hlower) hy

/-- Good-height logarithmic growth is absorbed by the actual exponential remainder. -/
theorem actual_moving_goodheight_log_factor_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2*
      Real.exp (-((2*c-1)*A)/5) ≤ 2*(Real.log 11)^2+8 := by
  let v : ℝ := (2*c-1)*A/5
  have hv : 0 ≤ v := by dsimp [v]; positivity
  have hi := actualGoodHeightIndex_bounds A c
  have hT : 1 ≤ actualBumpMovingHeight A c := actualBumpMovingHeight_ge_one A c hA hc
  have hm : max 7 (actualBumpMovingHeight A c) ≤ 7*actualBumpMovingHeight A c := by
    exact max_le (by linarith) (by linarith)
  have hidx : (actualGoodHeightIndex A c : ℝ)+3 ≤ 11*actualBumpMovingHeight A c := by
    linarith [hi.2.2]
  have hidxp : 0 < (actualGoodHeightIndex A c : ℝ)+3 := by positivity
  have hlog : Real.log ((actualGoodHeightIndex A c : ℝ)+3) ≤ Real.log 11+v := by
    have hh := Real.log_le_log hidxp hidx
    rw [Real.log_mul (by norm_num) (by unfold actualBumpMovingHeight; positivity),
      actualBumpMovingHeight,Real.log_exp] at hh
    exact hh
  have hlog0 : 0 ≤ Real.log ((actualGoodHeightIndex A c : ℝ)+3) :=
    Real.log_nonneg (by have hj := Nat.cast_nonneg (actualGoodHeightIndex A c); linarith)
  have hlog11 : 0 ≤ Real.log 11 := Real.log_nonneg (by norm_num)
  have hsq : (Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2 ≤
      2*(Real.log 11)^2+2*v^2 := by
    have hh := pow_le_pow_left₀ hlog0 hlog 2
    nlinarith [sq_nonneg (Real.log 11-v)]
  have hexp2 : Real.exp (v/2)^2 = Real.exp v := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hvexp : v ≤ 2*Real.exp (v/2) := by linarith [Real.add_one_le_exp (v/2)]
  have hv2 : v^2 ≤ 4*Real.exp v := by
    have hh := pow_le_pow_left₀ hv hvexp 2
    rw [mul_pow,hexp2] at hh
    norm_num at hh
    exact hh
  have hprod : Real.exp v*Real.exp (-v) = 1 := by rw [← Real.exp_add]; simp
  have hv2exp : v^2*Real.exp (-v) ≤ 4 := by
    have hh := mul_le_mul_of_nonneg_right hv2 (Real.exp_pos (-v)).le
    simpa only [mul_assoc,hprod,mul_one] using hh
  have hexp : Real.exp (-v) ≤ 1 := by simpa using Real.exp_le_exp.mpr (neg_nonpos.mpr hv)
  change (Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2*Real.exp (-v) ≤ _
  calc
    _ ≤ (2*(Real.log 11)^2+2*v^2)*Real.exp (-v) := by gcongr
    _ ≤ _ := by
      have hh := mul_le_mul_of_nonneg_left hexp (show 0 ≤ 2*(Real.log 11)^2 by positivity)
      nlinarith

/-- A fixed coefficient absorbs the good-height logarithm in the actual source budget. -/
def actualUniformHorizontalSourceConstant (K c : ℝ) : ℝ :=
  actualHorizontalSourceConstant K c*(2*(Real.log 11)^2+8)

/-- Both genuine moving good horizontals satisfy an unconditional A⁻⁹ estimate. -/
theorem actual_source_growing_horizontal_uniform_budget :
    ∃ Cg : ℝ, 0 < Cg ∧ ∃ K : ℝ, 0 < K ∧
      ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3/2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c)+2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
        ∀ y : ℝ, (y = R ∨ y = -R) →
          ‖actualCompletedHorizontalIntegral A c y‖ ≤
            actualUniformHorizontalSourceConstant K c/A^9 := by
  obtain ⟨Cg,hCg,K,hK,hbound⟩ := actual_source_growing_horizontal_budget
  refine ⟨Cg,hCg,K,hK,?_⟩
  intro A c hA hc hc2
  obtain ⟨R,hlo,hhi,hgood,hb⟩ := hbound A c hA hc hc2
  refine ⟨R,hlo,hhi,hgood,?_⟩
  intro y hy
  have hlog := actual_moving_goodheight_log_factor_le A c hA hc
  have hκ : 0 < 2*c-1 := by linarith
  have hconst : 0 ≤ actualHorizontalSourceConstant K c/A^9 := by
    unfold actualHorizontalSourceConstant
    positivity
  calc
    _ ≤ _ := hb y hy
    _ = (actualHorizontalSourceConstant K c/A^9)*
        ((Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2*
          Real.exp (-((2*c-1)*A)/5)) := by ring
    _ ≤ (actualHorizontalSourceConstant K c/A^9)*(2*(Real.log 11)^2+8) :=
      mul_le_mul_of_nonneg_left hlog hconst
    _ = _ := by unfold actualUniformHorizontalSourceConstant; ring

end
end FormalResearch.RiemannHypothesis.ActualMovingHorizontalCompletedBudget
```
