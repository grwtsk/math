# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchSharpSupplierReturn.Variantd34248744a16eb1ce802609c11c46f589c6271386e7161ace3f6d4aa64aa3fdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90f431d3194a40a1d8b1fe717f2fcf9805ebfa73` · SHA-256 `d34248744a16eb1ce802609c11c46f589c6271386e7161ace3f6d4aa64aa3fdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchSharpDiagonal

/-!
# Improved witnesses from the actual signed weighted cross budget

Batch 39, `weighted-source-meter-energy.md`, section 4. The sharp diagonal
is proved on the existing native coefficients. The cross-energy premise
remains explicit. The original strict sectors, reset and EReal essential
supremum are unchanged. Human research direction: grwtsk contributors.
Formal implementation assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchSharpSupplierReturn
open OriginalSignedSupplier SupplierOriginalAdapters BranchSharpDiagonal
open GRWTSK.RiemannHypothesis.Conversation
open WeightedSourcePickupIdentity WeightedSourceEnergy WeightedSourceMass
  WeightedSourceSupplierReturn
open MeasureTheory

/-- The sharp constant in this module, with the following exact parameterization.

def sharpConstant (C : ℝ) : ℝ := massDecoder * Real.sqrt (8 + C)
-/
def sharpConstant (C : ℝ) : ℝ := massDecoder * Real.sqrt (8 + C)

theorem sharp_energy_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    physicalEnergy A t ≤ (8 + C) * A ^ (max r 1) := by
  rw [physicalEnergy_eq_diagonal_add_cross hA]
  have hd := diagonal_sharp hA ht
  have hpow : A ≤ A ^ (max r 1) := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le hA (le_max_right r 1)
  have hscale := Real.rpow_le_rpow_of_exponent_le hA (le_max_left r 1)
  have hx := mul_le_mul_of_nonneg_left hscale hC
  linarith

theorem sharp_norm_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    sourceNorm A t ≤ Real.sqrt (8 + C) * A ^ returnExponent r := by
  have hbound := Real.sqrt_le_sqrt (sharp_energy_return hA ht hC hX)
  rw [Real.sqrt_mul (by linarith : 0 ≤ 8 + C)] at hbound
  have hpow : Real.sqrt (A ^ (max r 1)) = A ^ returnExponent r := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_mul (by linarith : 0 ≤ A)]
    congr 1
    unfold returnExponent
    ring
  rwa [hpow] at hbound

theorem sharp_pickup_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    |centeredPickup A t| ≤ sharpConstant C * A ^ returnExponent r := by
  rw [centeredPickup_exact hA ht]
  have hd := weightedRecording_uniform_decoder hA t
  have hn := mul_le_mul_of_nonneg_left (sharp_norm_return hA ht hC hX) decoder_nonneg
  exact hd.trans (by simpa only [sharpConstant, mul_assoc] using hn)

theorem sharp_signed_meter_return {A C r : ℝ} (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hX : ∀ t ∈ readingWindow A, crossEnergy A t ≤ C * A ^ r) :
    signedMeter A ≤ ((sharpConstant C * A ^ returnExponent r : ℝ) : EReal) := by
  have hL : 0 ≤ sharpConstant C * A ^ returnExponent r := by
    unfold sharpConstant
    exact mul_nonneg (mul_nonneg decoder_nonneg (Real.sqrt_nonneg _))
      (Real.rpow_nonneg (by linarith) _)
  apply (signedMeter_le_iff A _ hL).mpr
  constructor
  · exact ae_of_all _ fun t ht ↦ (le_abs_self _).trans
      (sharp_pickup_return hA ht.1 hC (hX t ht.1))
  · exact ae_of_all _ fun t ht ↦ (neg_le_abs _).trans
      (sharp_pickup_return hA ht.1 hC (hX t ht.1))

/-- Witnesses K₀=0, D=C_mass*sqrt(8+C), p=max(r,1)/2, R=R_X. -/
theorem original_supplier_sharp {C r R : ℝ} (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hX : SignedCrossEnergyBound C r R) : SupplierEstimate := by
  refine ⟨0, sharpConstant C, returnExponent r, R, by norm_num, ?_, ?_, ?_, ?_⟩
  · exact mul_nonneg decoder_nonneg (Real.sqrt_nonneg _)
  · unfold returnExponent
    positivity
  · simpa using hR
  · intro A hA
    have hbudget : sharpConstant C * A ^ returnExponent r ≤
        supplierAllowance 0 (sharpConstant C) (returnExponent r) A := by
      simp only [supplierAllowance, zero_div, add_zero]
      have hn : 0 ≤ (1 / Real.sqrt 2) * positiveEnvelope (2 * A) :=
        mul_nonneg (by positivity) (positiveEnvelope_nonneg _)
      linarith
    exact (sharp_signed_meter_return (hR.trans hA) hC (hX A hA)).trans
      (EReal.coe_le_coe_iff.mpr hbudget)

end FormalResearch.RiemannHypothesis.Conversation.BranchSharpSupplierReturn
```
