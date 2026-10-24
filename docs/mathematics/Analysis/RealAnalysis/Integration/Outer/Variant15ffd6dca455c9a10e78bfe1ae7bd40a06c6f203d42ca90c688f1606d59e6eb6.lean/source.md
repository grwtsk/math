# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Outer.Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21bde7bc9f1ca4cef171802c818159631272181f` · SHA-256 `9648a9cb41c7613eb26b600b9ac4b1876fcd4cc5d757481260e5741c39eed671`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.InnerIntegral.Variante02a80aa44df20571a9997241abc71f14cec86cd444d5e9df9f91e5ec6c21f8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e02a80aa44df20571a9997241abc71f14cec86cd444d5e9df9f91e5ec6c21f8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.InnerIntegral.Variante02a80aa44df20571a9997241abc71f14cec86cd444d5e9df9f91e5ec6c21f8b","mathematical_subject":"Analysis.Integration","original_sha256":"e02a80aa44df20571a9997241abc71f14cec86cd444d5e9df9f91e5ec6c21f8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/inner-abel-20261005/independent-replay/Outer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LocalTheorem
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing

/-!
Locally checked proof-development candidate; full verification and accepted integration remain pending.
Research direction/theorem selection: grwtsk contributors.
This concrete proof development: OpenAI Codex.

The actual existing mu*log decomposition is reused. Both finite coordinates,
all prime powers, the unit divisor, and the touching support term are retained.
Prefix estimates alone do not bound the omitted divisor sector or produce an
all-scale signed witness. No research assumption or axiom is introduced.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.InnerIntegral.Variante02a80aa44df20571a9997241abc71f14cec86cd444d5e9df9f91e5ec6c21f8b

set_option autoImplicit false
noncomputable section
namespace InnerAbel.Outer
open MeasureTheory Set Finset
open InnerAbel.Actual
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingTaylor SourcePositiveSampling
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensAbel EstimateSourceMobiusKernel
open EstimateMobiusIntegerTransport EstimateMertensResidual EstimateWeightedMobiusPairing
open PrimePowerDescent

/-- The local source integral is specified independently of the finite sum. -/
def innerIntegral (A d : ℝ) : ℝ :=
  ∫ y in (1 : ℝ)..innerCutoff A d,
    Real.log y / Real.sqrt (d * y) *
      sourceCorrelation explicitSecondDerivative A (Real.log (d * y))

/-- The exact finite Mobius-weighted continuous term through a divisor prefix. -/
def outerIntegral (A : ℝ) (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, realMoebius d * innerIntegral A d

/-- The exact signed cell remainder through a divisor prefix. -/
def outerRemainder (A : ℝ) (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, realMoebius d * innerRemainder A d

/-- The existing product cutoff is exactly the closed inner floor cutoff.
No support sample is dropped by this finite reindexing. -/
theorem admissibleK_eq_innerInventory (A : ℝ) {d : ℕ} (hd : 1 ≤ d) :
    admissibleK A d = Finset.Icc 1 ⌊innerCutoff A d⌋₊ := by
  have hd0 : (0 : ℝ) < d := by exact_mod_cast (by omega : 0 < d)
  have hY0 : 0 ≤ innerCutoff A d := by
    unfold innerCutoff
    positivity
  ext k
  rw [admissibleK, Finset.mem_filter, Finset.mem_Icc, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨hk1, _hkN⟩, hprod⟩
    refine ⟨hk1, ?_⟩
    have hprodR : (d : ℝ) * k ≤ Real.exp (2 * A) := by
      have hr : ((d * k : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
        apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mp
        simpa only [sourceKernelCutoff, sourceUpper] using hprod
      exact_mod_cast hr
    apply Nat.le_floor
    change (k : ℝ) ≤ Real.exp (2 * A) / d
    exact (le_div_iff₀ hd0).2 (by simpa only [mul_comm] using hprodR)
  · rintro ⟨hk1, hkY⟩
    have hkR : (k : ℝ) ≤ innerCutoff A d :=
      (by exact_mod_cast hkY : (k : ℝ) ≤ (⌊innerCutoff A d⌋₊ : ℝ)).trans
        (Nat.floor_le hY0)
    have hprodR : (d : ℝ) * k ≤ Real.exp (2 * A) := by
      have hr := (le_div_iff₀ hd0).mp hkR
      simpa only [mul_comm] using hr
    have hprod : d * k ≤ sourceKernelCutoff A := by
      change d * k ≤ ⌊Real.exp (2 * A)⌋₊
      apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr
      exact_mod_cast hprodR
    have hkN : k ≤ sourceKernelCutoff A := by
      have hkprod : k ≤ d * k := by
        simpa only [one_mul] using Nat.mul_le_mul_right k hd
      exact hkprod.trans hprod
    exact ⟨⟨hk1, hkN⟩, hprod⟩

/-- A fixed positive sample is the actual h_A(d*m) logarithmic weight. -/
theorem sourceKernelTerm_eq_innerWeight (A : ℝ) {d m : ℕ}
    (hd : 1 ≤ d) (hm : 1 ≤ m) :
    sourceKernelTerm A m d =
      Real.log m * plainProfile A 1 ((d : ℝ) * m) := by
  have hd0 : (0 : ℝ) < d := by exact_mod_cast (by omega : 0 < d)
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have hp : (0 : ℝ) < (d : ℝ) * m := mul_pos hd0 hm0
  rw [plainProfile_eq_of_pos A 1 hp]
  simp only [sourceKernelTerm, sourcePlainSamplingTerm, Real.log_one,
    zero_add, exponentialTest]

/-- The old fixed finite kernel and the new closed inner sum agree exactly. -/
theorem sourceMobiusKernel_eq_inner_sum {A : ℝ} (hA : 1 ≤ A)
    {d : ℕ} (hd : 1 ≤ d) :
    sourceMobiusKernel A d =
      ∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊,
        Real.log m * plainProfile A 1 ((d : ℝ) * m) := by
  rw [sourceMobiusKernel_eq_admissible_sum A hA d hd,
    admissibleK_eq_innerInventory A hd]
  apply Finset.sum_congr rfl
  intro m hm
  exact sourceKernelTerm_eq_innerWeight A hd (Finset.mem_Icc.mp hm).1

/-- Every positive divisor in a source prefix is in the local theorem's domain. -/
theorem divisor_le_sourceUpper {A : ℝ} {N d : ℕ}
    (hN : N ≤ sourceKernelCutoff A) (hdN : d ≤ N) :
    (d : ℝ) ≤ Real.exp (2 * A) := by
  have hc : (d : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast hdN.trans hN
  apply hc.trans
  exact Nat.floor_le (Real.exp_pos (2 * A)).le

/-- The corrected local Abel identity instantiates the actual old source kernel. -/
theorem sourceMobiusKernel_eq_integral_add_error {A : ℝ} (hA : 1 ≤ A)
    {d : ℕ} (hd : 1 ≤ d) (hdX : (d : ℝ) ≤ Real.exp (2 * A)) :
    sourceMobiusKernel A d = innerIntegral A d + innerRemainder A d := by
  rw [sourceMobiusKernel_eq_inner_sum hA hd]
  exact (inner_sum_abel_estimate hA hd hdX).1

/-- The complete unchanged arithmetic residual splits into independently
specified finite continuous and exact signed lattice terms. -/
theorem mertensResidual_eq_outer_integral_add_error {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A =
      outerIntegral A (sourceKernelCutoff A) +
        outerRemainder A (sourceKernelCutoff A) := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  unfold outerIntegral outerRemainder
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [sourceMobiusKernel_eq_integral_add_error hA (Finset.mem_Icc.mp hd).1
    (divisor_le_sourceUpper (le_refl _) (Finset.mem_Icc.mp hd).2)]
  ring

/-- The exact signed prefix is bounded only by its finite absolute envelope. -/
theorem outerRemainder_abs_le_budget {A : ℝ} (hA : 1 ≤ A)
    {N : ℕ} (hN : N ≤ sourceKernelCutoff A) :
    |outerRemainder A N| ≤
      (2 + 10 / A) * ∑ d ∈ Finset.Icc 1 N, 1 / Real.sqrt (d : ℝ) := by
  unfold outerRemainder
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 N, |realMoebius d * innerRemainder A d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 N, (2 + 10 / A) * (1 / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      have hmu : |realMoebius d| ≤ 1 := by
        unfold realMoebius
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      have hdr : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
      have hE := innerRemainder_abs_le hA hdr
        (divisor_le_sourceUpper hN (Finset.mem_Icc.mp hd).2)
      rw [abs_mul]
      calc
        _ ≤ 1 * ((2 + 10 / A) / Real.sqrt (d : ℝ)) :=
          mul_le_mul hmu hE (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = _ := by rw [Finset.mul_sum]

/-- The explicit twelve-budget remains a growing finite envelope. -/
theorem outerRemainder_abs_le_twelve {A : ℝ} (hA : 1 ≤ A)
    {N : ℕ} (hN : N ≤ sourceKernelCutoff A) :
    |outerRemainder A N| ≤ 12 * ∑ d ∈ Finset.Icc 1 N, 1 / Real.sqrt (d : ℝ) := by
  apply (outerRemainder_abs_le_budget hA hN).trans
  have hc : 2 + 10 / A ≤ (12 : ℝ) := by
    have hp : 0 < A := by linarith
    have ht : 10 / A ≤ (10 : ℝ) := (div_le_iff₀ hp).2 (by linarith)
    linarith
  exact mul_le_mul_of_nonneg_right hc
    (Finset.sum_nonneg (fun d _ => by positivity))

/-- A telescoping square-root majorant requires no asymptotic or integral estimate. -/
theorem inverse_sqrt_sum_le (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, 1 / Real.sqrt (d : ℝ)) ≤ 2 * Real.sqrt (N : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    have hs : 0 < Real.sqrt ((N + 1 : ℕ) : ℝ) := by positivity
    have hs2 := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ ((N + 1 : ℕ) : ℝ))
    have ht2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) N)
    have hstep : 1 / Real.sqrt ((N + 1 : ℕ) : ℝ) ≤
        2 * (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ)) := by
      apply (div_le_iff₀ hs).2
      have hsq := sq_nonneg
        (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ))
      simp only [Nat.cast_add, Nat.cast_one] at hs2 hsq ⊢
      nlinarith [hsq]
    calc
      _ ≤ 2 * Real.sqrt (N : ℝ) + 1 / Real.sqrt ((N + 1 : ℕ) : ℝ) :=
        by linarith
      _ ≤ 2 * Real.sqrt ((N + 1 : ℕ) : ℝ) := by linarith

/-- Prefix envelope in a convenient closed form. It supplies no uniform witness. -/
theorem outerRemainder_abs_le_sqrt {A : ℝ} (hA : 1 ≤ A)
    {N : ℕ} (hN : N ≤ sourceKernelCutoff A) :
    |outerRemainder A N| ≤ 24 * Real.sqrt (N : ℝ) := by
  apply (outerRemainder_abs_le_twelve hA hN).trans
  calc
    _ ≤ 12 * (2 * Real.sqrt (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (inverse_sqrt_sum_le N) (by norm_num)
    _ = _ := by ring

/-- The user-specified short divisor prefix has a growing exp(A/2) envelope.
The omitted d>floor(exp A) sector is still present in the complete identity. -/
theorem short_outerRemainder_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |outerRemainder A ⌊Real.exp A⌋₊| ≤ 24 * Real.exp (A / 2) := by
  have hN : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    apply Nat.floor_mono
    exact Real.exp_le_exp.mpr (by linarith)
  apply (outerRemainder_abs_le_sqrt hA hN).trans
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  calc
    _ ≤ Real.sqrt (Real.exp A) :=
      Real.sqrt_le_sqrt (Nat.floor_le (Real.exp_pos A).le)
    _ = _ := (Real.exp_half A).symm

/-- Applying the local estimate to the complete actual divisor inventory gives
only exp(A), not an O(1) or A^-2 signed outer remainder. -/
theorem full_outerRemainder_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |outerRemainder A (sourceKernelCutoff A)| ≤ 24 * Real.exp A := by
  apply (outerRemainder_abs_le_sqrt hA (le_refl _)).trans
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  calc
    _ ≤ Real.sqrt (Real.exp (2 * A)) :=
      Real.sqrt_le_sqrt (Nat.floor_le (Real.exp_pos (2 * A)).le)
    _ = Real.exp ((2 * A) / 2) := (Real.exp_half (2 * A)).symm
    _ = Real.exp A := by congr 1; ring

#check mertensResidual_eq_outer_integral_add_error
#check outerRemainder_abs_le_budget
#check short_outerRemainder_abs_le
#print axioms admissibleK_eq_innerInventory
#print axioms sourceKernelTerm_eq_innerWeight
#print axioms sourceMobiusKernel_eq_inner_sum
#print axioms divisor_le_sourceUpper
#print axioms sourceMobiusKernel_eq_integral_add_error
#print axioms mertensResidual_eq_outer_integral_add_error
#print axioms outerRemainder_abs_le_budget
#print axioms outerRemainder_abs_le_twelve
#print axioms inverse_sqrt_sum_le
#print axioms outerRemainder_abs_le_sqrt
#print axioms short_outerRemainder_abs_le
#print axioms full_outerRemainder_abs_le
end InnerAbel.Outer
```
