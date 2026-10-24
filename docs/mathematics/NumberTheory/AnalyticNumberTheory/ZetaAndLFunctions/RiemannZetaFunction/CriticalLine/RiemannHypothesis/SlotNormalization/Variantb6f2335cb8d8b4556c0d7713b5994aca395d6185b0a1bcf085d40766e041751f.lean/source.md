# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SlotNormalization.Variantb6f2335cb8d8b4556c0d7713b5994aca395d6185b0a1bcf085d40766e041751f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5263c621d3566060183bf70dc4b55e893850885` · SHA-256 `b6f2335cb8d8b4556c0d7713b5994aca395d6185b0a1bcf085d40766e041751f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PortBudget

/-!
# Common slot amplitudes cancel in the complete normalized finite expression

Batch 03 LT03-11 and the Batch 02 slot-amplitude calculation use the same
nonzero amplitudes in every physical row and in the principal normalizer.
The full signed finite row sum is retained. No fixed-profile analytic estimate,
prime normalizer nonvanishing, or shape change is inferred from this identity.

Human normalization constraint: grwtsk contributors. Local multilinear identity
and normalized consumer: OpenAI Codex. Mathlib finite products remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.SlotNormalization
open scoped BigOperators
noncomputable section

/-- The physical in this module, with the following exact parameterization.

def physical {ι κ : Type*} (slots : Finset ι) (rows : Finset κ) (c : κ → ℂ) (W : κ → ι → ℂ) :
ℂ := ∑ r ∈ rows, c r * ∏ i ∈ slots, W r i
-/
def physical {ι κ : Type*} (slots : Finset ι) (rows : Finset κ)
    (c : κ → ℂ) (W : κ → ι → ℂ) : ℂ :=
  ∑ r ∈ rows, c r * ∏ i ∈ slots, W r i

/-- The principal in this module, with the following exact parameterization.

def principal {ι : Type*} (slots : Finset ι) (P : ι → ℂ) : ℂ := ∏ i ∈ slots, P i
-/
def principal {ι : Type*} (slots : Finset ι) (P : ι → ℂ) : ℂ := ∏ i ∈ slots, P i

theorem complete_physical_amplitude {ι κ : Type*} (slots : Finset ι) (rows : Finset κ)
    (c : κ → ℂ) (W : κ → ι → ℂ) (a : ι → ℂ) :
    physical slots rows c (fun r i ↦ a i * W r i) =
      (∏ i ∈ slots, a i) * physical slots rows c W := by
  unfold physical
  simp_rw [Finset.prod_mul_distrib]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r _
  ring

theorem principal_amplitude {ι : Type*} (slots : Finset ι) (P a : ι → ℂ) :
    principal slots (fun i ↦ a i * P i) = (∏ i ∈ slots, a i) * principal slots P :=
  Finset.prod_mul_distrib

theorem complete_normalized_invariance {ι κ : Type*} (slots : Finset ι) (rows : Finset κ)
    (c : κ → ℂ) (W : κ → ι → ℂ) (P a : ι → ℂ)
    (ha : ∀ i ∈ slots, a i ≠ 0) :
    physical slots rows c (fun r i ↦ a i * W r i) /
        principal slots (fun i ↦ a i * P i) =
      physical slots rows c W / principal slots P := by
  have hp : (∏ i ∈ slots, a i) ≠ 0 := Finset.prod_ne_zero_iff.mpr ha
  rw [complete_physical_amplitude, principal_amplitude, mul_div_mul_left _ _ hp]

/-- A bound on the normalized scaled expression is exactly the same bound. -/
theorem normalized_cap_iff {ι κ : Type*} (slots : Finset ι) (rows : Finset κ)
    (c : κ → ℂ) (W : κ → ι → ℂ) (P a : ι → ℂ)
    (ha : ∀ i ∈ slots, a i ≠ 0) (B : ℝ) :
    ‖physical slots rows c (fun r i ↦ a i * W r i) /
        principal slots (fun i ↦ a i * P i)‖ ≤ B ↔
      ‖physical slots rows c W / principal slots P‖ ≤ B := by
  rw [complete_normalized_invariance slots rows c W P a ha]

/-- Amplitudes may depend on scale; each scale still has the exact identity. -/
theorem scale_dependent_amplitudes {ι κ : Type*} (slots : Finset ι) (rows : Finset κ)
    (c : ℝ → κ → ℂ) (W : ℝ → κ → ι → ℂ) (P a : ℝ → ι → ℂ)
    (ha : ∀ Z i, i ∈ slots → a Z i ≠ 0) (Z : ℝ) :
    physical slots rows (c Z) (fun r i ↦ a Z i * W Z r i) /
        principal slots (fun i ↦ a Z i * P Z i) =
      physical slots rows (c Z) (W Z) / principal slots (P Z) :=
  complete_normalized_invariance slots rows (c Z) (W Z) (P Z) (a Z) (ha Z)

end
end GRWTSK.RiemannHypothesis.Conversation.SlotNormalization
```
