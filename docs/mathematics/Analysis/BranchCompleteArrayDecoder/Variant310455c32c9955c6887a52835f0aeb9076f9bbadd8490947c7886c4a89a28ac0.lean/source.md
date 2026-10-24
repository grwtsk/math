# Complete source: GRWTSK.Analysis.BranchCompleteArrayDecoder.Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce9edc7077f0237b5987f808ff120ec6af461d0e` · SHA-256 `310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# Completed mode arrays retain their decoder price and residual

Batch 28, `detection-and-price.md`, sections 1--2. The finite reconstruction
identity and every decoder coefficient are retained. These modewise results
do not separate an infinite zero sum or establish an arithmetic amplitude cap.
Human research direction: grwtsk contributors. Proofs: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchCompleteArrayDecoder
open scoped BigOperators

/-- The decoder price in this module, with the following exact parameterization.

def decoderPrice {ι : Type*} [Fintype ι] (d : ι → ℂ) : ℝ := ∑ i, ‖d i‖
-/
def decoderPrice {ι : Type*} [Fintype ι] (d : ι → ℂ) : ℝ := ∑ i, ‖d i‖

theorem price_nonnegative {ι : Type*} [Fintype ι] (d : ι → ℂ) : 0 ≤ decoderPrice d :=
  Finset.sum_nonneg (fun i _ ↦ norm_nonneg (d i))

theorem completed_norm_bound {ι : Type*} [Fintype ι] (d Y : ι → ℂ)
    (W : ℂ) (B : ℝ) (hcomplete : W = ∑ i, d i * Y i)
    (hB : ∀ i, ‖Y i‖ ≤ B) : ‖W‖ ≤ decoderPrice d * B := by
  rw [hcomplete]
  calc
    _ ≤ ∑ i, ‖d i * Y i‖ := norm_sum_le _ _
    _ ≤ ∑ i, ‖d i‖ * B := by
      apply Finset.sum_le_sum
      intro i _
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (hB i) (norm_nonneg _)
    _ = _ := (Finset.sum_mul _ _ _).symm

theorem inverse_price_bound {ι : Type*} [Fintype ι] (d Y : ι → ℂ)
    (W : ℂ) (B : ℝ) (hcomplete : W = ∑ i, d i * Y i)
    (hB : ∀ i, ‖Y i‖ ≤ B) (hprice : 0 < decoderPrice d) :
    ‖W‖ / decoderPrice d ≤ B := by
  exact (div_le_iff₀ hprice).mpr (by
    simpa only [mul_comm] using completed_norm_bound d Y W B hcomplete hB)

theorem residual_norm_bound {ι : Type*} [Fintype ι] (d Y : ι → ℂ)
    (W error : ℂ) (B : ℝ) (hcomplete : W = (∑ i, d i * Y i) + error)
    (hB : ∀ i, ‖Y i‖ ≤ B) : ‖W‖ - ‖error‖ ≤ decoderPrice d * B := by
  have h := completed_norm_bound d Y (∑ i, d i * Y i) B rfl hB
  have hn := norm_add_le (∑ i, d i * Y i) error
  rw [← hcomplete] at hn
  linarith

theorem residual_positive_part {ι : Type*} [Fintype ι] (d Y : ι → ℂ)
    (W error : ℂ) (B : ℝ) (hB0 : 0 ≤ B)
    (hcomplete : W = (∑ i, d i * Y i) + error) (hB : ∀ i, ‖Y i‖ ≤ B) :
    max 0 (‖W‖ - ‖error‖) ≤ decoderPrice d * B := by
  exact max_le (mul_nonneg (price_nonnegative d) hB0)
    (residual_norm_bound d Y W error B hcomplete hB)

theorem cardinality_price {ι : Type*} [Fintype ι] (d : ι → ℂ) (D : ℝ)
    (hD : ∀ i, ‖d i‖ ≤ D) : decoderPrice d ≤ Fintype.card ι * D := by
  unfold decoderPrice
  calc
    _ ≤ ∑ _i : ι, D := Finset.sum_le_sum (fun i _ ↦ hD i)
    _ = _ := by simp

theorem scalar_decoder_preserves_polarity {ι : Type*} [Fintype ι] (d y : ι → ℝ)
    (hd : ∀ i, 0 ≤ d i) : (∑ i, d i * y i) ≤ ∑ i, d i * max 0 (y i) := by
  apply Finset.sum_le_sum
  intro i _
  exact mul_le_mul_of_nonneg_left (le_max_right _ _) (hd i)

theorem signed_decoder_can_reverse_polarity :
    ∃ d y : ℝ, y < 0 ∧ d < 0 ∧ d * y = 1 := by
  exact ⟨-1, -1, by norm_num, by norm_num, by norm_num⟩

end FormalResearch.RiemannHypothesis.Conversation.BranchCompleteArrayDecoder
```
