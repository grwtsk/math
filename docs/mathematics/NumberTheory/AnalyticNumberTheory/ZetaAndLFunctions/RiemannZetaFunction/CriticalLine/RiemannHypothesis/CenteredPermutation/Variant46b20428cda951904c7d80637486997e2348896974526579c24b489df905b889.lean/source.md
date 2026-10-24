# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredPermutation.Variant46b20428cda951904c7d80637486997e2348896974526579c24b489df905b889

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9ad8c2c37406d4bd252de0a557d418cb60dc923` · SHA-256 `46b20428cda951904c7d80637486997e2348896974526579c24b489df905b889`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# The invariant-readout obstruction for a transitive permutation carrier

The transitive-action hypothesis is explicit. A fixed coefficient vector is
constant, so its linear pairing vanishes on the centered carrier. The actual
M23 source action and its descent data remain unconstructed; no finite group
label is used to assume those missing laws.

Source: audited RH conversation Batches 22 and 23. Human programme and
direction: grwtsk contributors. Local interface and Lean implementation:
OpenAI Codex. Standard finite representation algebra: Mathlib.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CenteredPermutation

open scoped BigOperators
noncomputable section

/-- The transitive family in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def TransitiveFamily {G ι : Type*} (ρ : G → Equiv.Perm ι) : Prop := ∀ i j : ι, ∃ g : G, ρ g i
= j
-/
def TransitiveFamily {G ι : Type*} (ρ : G → Equiv.Perm ι) : Prop :=
  ∀ i j : ι, ∃ g : G, ρ g i = j

/-- The fixed in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def Fixed {G ι : Type*} (ρ : G → Equiv.Perm ι) (v : ι → ℚ) : Prop := ∀ g : G, ∀ i : ι, v (ρ g
i) = v i
-/
def Fixed {G ι : Type*} (ρ : G → Equiv.Perm ι) (v : ι → ℚ) : Prop :=
  ∀ g : G, ∀ i : ι, v (ρ g i) = v i

/-- The centered in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def Centered {ι : Type*} [Fintype ι] (v : ι → ℚ) : Prop := ∑ i, v i = 0
-/
def Centered {ι : Type*} [Fintype ι] (v : ι → ℚ) : Prop := ∑ i, v i = 0

theorem fixed_coordinates_constant {G ι : Type*} (ρ : G → Equiv.Perm ι)
    (htrans : TransitiveFamily ρ) (v : ι → ℚ) (hv : Fixed ρ v) (i j : ι) : v i = v j := by
  obtain ⟨g, hg⟩ := htrans i j
  simpa only [hg] using (hv g i).symm

/-- There is no nonzero fixed centered vector on a nonempty transitive carrier. -/
theorem fixed_centered_eq_zero {G ι : Type*} [Fintype ι] [Nonempty ι]
    (ρ : G → Equiv.Perm ι) (htrans : TransitiveFamily ρ)
    (v : ι → ℚ) (hv : Fixed ρ v) (hcenter : Centered v) : v = 0 := by
  funext i
  have hc (j : ι) : v j = v i := fixed_coordinates_constant ρ htrans v hv j i
  have hsum : (Fintype.card ι : ℚ) * v i = 0 := by
    simpa only [Centered, hc, Finset.sum_const, Finset.card_univ, nsmul_eq_mul] using hcenter
  have hn : (Fintype.card ι : ℚ) ≠ 0 := by exact_mod_cast Fintype.card_ne_zero
  exact (mul_eq_zero.mp hsum).resolve_left hn

/-- Every invariant coefficient readout on the centered carrier vanishes. -/
theorem invariant_coefficient_readout_zero {G ι : Type*} [Fintype ι] [Nonempty ι]
    (ρ : G → Equiv.Perm ι) (htrans : TransitiveFamily ρ)
    (c v : ι → ℚ) (hc : Fixed ρ c) (hv : Centered v) : ∑ i, c i * v i = 0 := by
  let i : ι := Classical.choice inferInstance
  have he (j : ι) : c j = c i := fixed_coordinates_constant ρ htrans c hc j i
  simp_rw [he]
  rw [← Finset.mul_sum]
  change c i * (∑ j, v j) = 0
  rw [hv, mul_zero]

/-- The finite mean projection retains the common root; centering alone does not bound it. -/
theorem constant_channel_unbounded (B : ℚ) :
    ∃ v : Fin 23 → ℚ, (∀ i j, v i = v j) ∧ B < ∑ i, v i := by
  refine ⟨fun _ => (|B| + 1), by intros; rfl, ?_⟩
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  norm_num
  have hB := le_abs_self B
  have h0 := abs_nonneg B
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.CenteredPermutation
```
