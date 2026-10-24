# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedSourceSupplierReturn.Variant28b1d8fd5004edf12b4f2661de803c0e0b6577c32e2505ca79694f8f58ce3979

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b0766118d01cdcdb1eb629fd8c3ea63a87ade27` · SHA-256 `28b1d8fd5004edf12b4f2661de803c0e0b6577c32e2505ca79694f8f58ce3979`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceEnergy
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourcePickupIdentity
import FormalResearch.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence

/-!
# Explicit conditional return to the original signed supplier

Written continuation 2026-10-09: grwtsk contributors. Local implication and
witness adapter: OpenAI Codex. The full weighted physical energy, closed
integer inventory, original strict polarities and essential-supremum meter
are retained. SignedCrossEnergyProblem is an open ordinary proposition.
The return proves sufficiency, not equivalence or arithmetic cancellation.
It makes no RH claim and does not discharge the separate classical-decay input.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceSupplierReturn
open WeightedSourcePickup WeightedSourcePickupIdentity WeightedSourceMass WeightedSourceEnergy
open SupplierEnvelopeRecurrence
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open MeasureTheory Set
noncomputable section

/-- Every scale and every reading, including silent sectors. -/
def SignedCrossEnergyBound (C r R : ℝ) : Prop :=
  ∀ A : ℝ, R ≤ A → ∀ t ∈ readingWindow A, crossEnergy A t ≤ C * A ^ r

/-- The stronger sufficient arithmetic problem. This is not an axiom,
instance, theorem or equivalent reformulation of the original supplier. -/
def SignedCrossEnergyProblem : Prop :=
  ∃ C r R : ℝ, 0 ≤ C ∧ 0 ≤ r ∧ 1 ≤ R ∧ SignedCrossEnergyBound C r R

def returnExponent (r : ℝ) : ℝ := max r 1 / 2

def returnConstant (C : ℝ) : ℝ := massDecoder * Real.sqrt (16 + C)

theorem physicalEnergy_polynomial_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    physicalEnergy A t ≤ (16 + C) * A ^ (max r 1) := by
  rw [physicalEnergy_eq_diagonal_add_cross hA]
  have hd := diagonal_paid hA ht.1
  have hpow : A ≤ A ^ (max r 1) := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le hA (le_max_right r 1)
  have hscale := Real.rpow_le_rpow_of_exponent_le hA (le_max_left r 1)
  have hx := mul_le_mul_of_nonneg_left hscale hC
  linarith

theorem sourceNorm_polynomial_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    sourceNorm A t ≤ Real.sqrt (16 + C) * A ^ returnExponent r := by
  have hbound := Real.sqrt_le_sqrt (physicalEnergy_polynomial_return hA ht hC hX)
  rw [Real.sqrt_mul (by linarith : 0 ≤ 16 + C)] at hbound
  have hpow : Real.sqrt (A ^ (max r 1)) = A ^ returnExponent r := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_mul (by linarith : 0 ≤ A)]
    congr 1
    unfold returnExponent
    ring
  rw [hpow] at hbound
  exact hbound

/-- The exact original scalar, not a reflected residual or surrogate readout. -/
theorem centeredPickup_polynomial_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    |centeredPickup A t| ≤ returnConstant C * A ^ returnExponent r := by
  rw [centeredPickup_exact hA ht]
  have hd := weightedRecording_uniform_decoder hA t
  have hn := mul_le_mul_of_nonneg_left (sourceNorm_polynomial_return hA ht hC hX) decoder_nonneg
  exact hd.trans (by simpa only [returnConstant, mul_assoc] using hn)

theorem signedMeter_polynomial_return {A C r : ℝ} (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hX : ∀ t ∈ readingWindow A, crossEnergy A t ≤ C * A ^ r) :
    signedMeter A ≤ ((returnConstant C * A ^ returnExponent r : ℝ) : EReal) := by
  have hL : 0 ≤ returnConstant C * A ^ returnExponent r := by
    unfold returnConstant
    exact mul_nonneg (mul_nonneg decoder_nonneg (Real.sqrt_nonneg _))
      (Real.rpow_nonneg (by linarith) _)
  apply (signedMeter_le_iff A _ hL).mpr
  constructor
  · exact ae_of_all _ fun t ht ↦ (le_abs_self _).trans
      (centeredPickup_polynomial_return hA ht.1 hC (hX t ht.1))
  · exact ae_of_all _ fun t ht ↦ (neg_le_abs _).trans
      (centeredPickup_polynomial_return hA ht.1 hC (hX t ht.1))

/-- Explicit witnesses K₀=0, D=C_mass*sqrt(16+C), p=max(r,1)/2, R=R_X.
The arithmetic hypothesis is retained verbatim and is not proved here. -/
theorem original_supplier_of_signed_cross_energy {C r R : ℝ}
    (hC : 0 ≤ C) (hR : 1 ≤ R) (hX : SignedCrossEnergyBound C r R) : SupplierEstimate := by
  refine ⟨0, returnConstant C, returnExponent r, R, by norm_num, ?_, ?_, ?_, ?_⟩
  · exact mul_nonneg decoder_nonneg (Real.sqrt_nonneg _)
  · unfold returnExponent
    exact div_nonneg ((by norm_num : (0 : ℝ) ≤ 1).trans (le_max_right r 1)) (by norm_num)
  · simpa using hR
  · intro A hA
    have hA1 := hR.trans hA
    have he : 0 ≤ positiveEnvelope (2 * A) :=
      runningPositiveMaximum_nonneg pickup_continuous (2 * A)
    have hbudget : returnConstant C * A ^ returnExponent r ≤
        supplierAllowance 0 (returnConstant C) (returnExponent r) A := by
      simp only [supplierAllowance, zero_div, add_zero]
      have hn : 0 ≤ (1 / Real.sqrt 2) * positiveEnvelope (2 * A) :=
        mul_nonneg (by positivity) he
      linarith
    exact (signedMeter_polynomial_return hA1 hC (hX A hA)).trans
      (EReal.coe_le_coe_iff.mpr hbudget)

theorem cross_problem_is_sufficient : SignedCrossEnergyProblem → SupplierEstimate := by
  rintro ⟨C, r, R, hC, _, hR, hX⟩
  exact original_supplier_of_signed_cross_energy hC hR hX

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceSupplierReturn
```
