# Complete source: GRWTSK.Topology.GeneralTopology.Divisor.Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `507efea28ee514d9c1202a5f23c09e192048c30b` · SHA-256 `fc3aabc7c0a17070daf5d7b3fb91d0f17e9ae3de8f5b46236fa7506d8eba6dab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Divisor.Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Divisor.Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Meromorphic/Divisor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
import Mathlib.Algebra.Order.WithTop.Untop0
import Mathlib.Analysis.Meromorphic.Order
import Mathlib.Topology.LocallyFinsupp

/-!
# The Divisor of a meromorphic function

This file defines the divisor of a meromorphic function and proves the most basic lemmas about those
divisors. The lemma `MeromorphicOn.divisor_restrict` guarantees compatibility between restrictions
of divisors and of meromorphic functions to subsets of their domain of definition.
-/


namespace GRWTSK.Topology.GeneralTopology.Divisor.Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {U : Set 𝕜} {z : 𝕜}
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

open Filter Topology

namespace MeromorphicOn

/-!
## Definition of the Divisor
-/

open Classical in
/--
The divisor of a meromorphic function `f`, mapping a point `z` to the order of `f` at `z`, and to
zero if the order is infinite.
-/
noncomputable def divisor (f : 𝕜 → E) (U : Set 𝕜) :
    Function.locallyFinsuppWithin U ℤ where
  toFun := fun z ↦ if MeromorphicOn f U ∧ z ∈ U then (meromorphicOrderAt f z).untop₀ else 0
  supportWithinDomain' z hz := by
    by_contra h₂z
    simp [h₂z] at hz
  supportLocallyFiniteWithinDomain' := by
    simp_all only [Function.support_subset_iff, ne_eq, ite_eq_right_iff, WithTop.untop₀_eq_zero,
      and_imp, Classical.not_imp, not_or, implies_true,
      ← supportDiscreteWithin_iff_locallyFiniteWithin]
    by_cases hf : MeromorphicOn f U
    · filter_upwards [mem_codiscrete_subtype_iff_mem_codiscreteWithin.1
        hf.codiscrete_setOf_meromorphicOrderAt_eq_zero_or_top]
      simp only [Set.mem_image, Set.mem_setOf_eq, Subtype.exists, exists_and_left, exists_prop,
        exists_eq_right_right, Pi.ofNat_apply, ite_eq_right_iff, WithTop.untop₀_eq_zero, and_imp]
      tauto
    · simp only [hf, false_and, ↓reduceDIte]
      exact (Eq.eventuallyEq rfl)

open Classical in
/-- Definition of the divisor -/
theorem divisor_def (f : 𝕜 → E) (U : Set 𝕜) :
    divisor f U z = if MeromorphicOn f U ∧ z ∈ U then (meromorphicOrderAt f z).untop₀ else 0 :=
  rfl

/--
Simplifier lemma: on `U`, the divisor of a function `f` that is meromorphic on `U` evaluates to
`order.untop₀`.
-/
@[simp]
lemma divisor_apply {f : 𝕜 → E} (hf : MeromorphicOn f U) (hz : z ∈ U) :
    divisor f U z = (meromorphicOrderAt f z).untop₀ := by simp_all [MeromorphicOn.divisor_def, hz]

/-!
## Congruence Lemmas
-/

/--
If `f₁` is meromorphic on `U`, if `f₂` agrees with `f₁` on a codiscrete subset of `U` and outside of
`U`, then `f₁` and `f₂` induce the same divisors on `U`.
-/
theorem divisor_congr_codiscreteWithin_of_eqOn_compl {f₁ f₂ : 𝕜 → E} (hf₁ : MeromorphicOn f₁ U)
    (h₁ : f₁ =ᶠ[Filter.codiscreteWithin U] f₂) (h₂ : Set.EqOn f₁ f₂ Uᶜ) :
    divisor f₁ U = divisor f₂ U := by
  ext x
  by_cases hx : x ∈ U
  · simp only [hf₁, hx, divisor_apply, hf₁.congr_codiscreteWithin_of_eqOn_compl h₁ h₂]
    congr 1
    apply meromorphicOrderAt_congr
    simp_rw [EventuallyEq, Filter.Eventually, mem_codiscreteWithin,
      disjoint_principal_right] at h₁
    filter_upwards [h₁ x hx] with a ha
    simp at ha
    tauto
  · simp [hx]

/--
If `f₁` is meromorphic on an open set `U`, if `f₂` agrees with `f₁` on a codiscrete subset of `U`,
then `f₁` and `f₂` induce the same divisors on`U`.
-/
theorem divisor_congr_codiscreteWithin {f₁ f₂ : 𝕜 → E} (hf₁ : MeromorphicOn f₁ U)
    (h₁ : f₁ =ᶠ[Filter.codiscreteWithin U] f₂) (h₂ : IsOpen U) :
    divisor f₁ U = divisor f₂ U := by
  ext x
  by_cases hx : x ∈ U
  · simp only [hf₁, hx, divisor_apply, hf₁.congr_codiscreteWithin h₁ h₂]
    congr 1
    apply meromorphicOrderAt_congr
    simp_rw [EventuallyEq, Filter.Eventually, mem_codiscreteWithin,
      disjoint_principal_right] at h₁
    have : U ∈ 𝓝[≠] x := by
      apply mem_nhdsWithin.mpr
      use U, h₂, hx, Set.inter_subset_left
    filter_upwards [this, h₁ x hx] with a h₁a h₂a
    simp only [Set.mem_compl_iff, Set.mem_diff, Set.mem_setOf_eq, not_and, Decidable.not_not] at h₂a
    tauto
  · simp [hx]

/-!
## Divisors of Analytic Functions
-/

/-- Analytic functions have non-negative divisors. -/
theorem AnalyticOnNhd.divisor_nonneg {f : 𝕜 → E} (hf : AnalyticOnNhd 𝕜 f U) :
    0 ≤ MeromorphicOn.divisor f U := by
  intro x
  by_cases hx : x ∈ U
  · simp [hf.meromorphicOn, hx, (hf x hx).meromorphicOrderAt_nonneg]
  simp [hx]

/-!
## Behavior under Standard Operations
-/

/--
If orders are finite, the divisor of the scalar product of two meromorphic functions is the sum of
the divisors.

See `MeromorphicOn.exists_order_ne_top_iff_forall` and
`MeromorphicOn.order_ne_top_of_isPreconnected` for two convenient criteria to guarantee conditions
`h₂f₁` and `h₂f₂`.
-/
theorem divisor_smul {f₁ : 𝕜 → 𝕜} {f₂ : 𝕜 → E} (h₁f₁ : MeromorphicOn f₁ U)
    (h₁f₂ : MeromorphicOn f₂ U) (h₂f₁ : ∀ z ∈ U, meromorphicOrderAt f₁ z ≠ ⊤)
    (h₂f₂ : ∀ z ∈ U, meromorphicOrderAt f₂ z ≠ ⊤) :
    divisor (f₁ • f₂) U = divisor f₁ U + divisor f₂ U := by
  ext z
  by_cases hz : z ∈ U
  · lift meromorphicOrderAt f₁ z to ℤ using (h₂f₁ z hz) with a₁ ha₁
    lift meromorphicOrderAt f₂ z to ℤ using (h₂f₂ z hz) with a₂ ha₂
    simp [h₁f₁, h₁f₂, h₁f₁.smul h₁f₂, hz, meromorphicOrderAt_smul (h₁f₁ z hz) (h₁f₂ z hz),
      ← ha₁, ← ha₂, ← WithTop.coe_add]
  · simp [hz]

/--
If orders are finite, the divisor of the product of two meromorphic functions is the sum of the
divisors.

See `MeromorphicOn.exists_order_ne_top_iff_forall` and
`MeromorphicOn.order_ne_top_of_isPreconnected` for two convenient criteria to guarantee conditions
`h₂f₁` and `h₂f₂`.
-/
theorem divisor_mul {f₁ f₂ : 𝕜 → 𝕜} (h₁f₁ : MeromorphicOn f₁ U)
    (h₁f₂ : MeromorphicOn f₂ U) (h₂f₁ : ∀ z ∈ U, meromorphicOrderAt f₁ z ≠ ⊤)
    (h₂f₂ : ∀ z ∈ U, meromorphicOrderAt f₂ z ≠ ⊤) :
    divisor (f₁ * f₂) U = divisor f₁ U + divisor f₂ U :=
  divisor_smul h₁f₁ h₁f₂ h₂f₁ h₂f₂

/-- The divisor of the inverse is the negative of the divisor. -/
@[simp]
theorem divisor_inv {f : 𝕜 → 𝕜} :
    divisor f⁻¹ U = -divisor f U := by
  ext z
  by_cases h : MeromorphicOn f U ∧ z ∈ U
  · simp [divisor_apply, h, meromorphicOrderAt_inv]
  · simp [divisor_def, h]

/--
Taking the divisor of a meromorphic function commutes with restriction.
-/
@[simp]
theorem divisor_restrict {f : 𝕜 → E} {V : Set 𝕜} (hf : MeromorphicOn f U) (hV : V ⊆ U) :
    (divisor f U).restrict hV = divisor f V := by
  ext x
  by_cases hx : x ∈ V
  · rw [Function.locallyFinsuppWithin.restrict_apply]
    simp [hf, hx, hf.mono_set hV, hV hx]
  · simp [hx]

/-- Adding an analytic function to a meromorphic one does not change the pole divisor. -/
theorem negPart_divisor_add_of_analyticNhdOn_right {f₁ f₂ : 𝕜 → E} (hf₁ : MeromorphicOn f₁ U)
    (hf₂ : AnalyticOnNhd 𝕜 f₂ U) :
    (divisor (f₁ + f₂) U)⁻ = (divisor f₁ U)⁻ := by
  ext x
  by_cases hx : x ∈ U
  · suffices -(meromorphicOrderAt (f₁ + f₂) x).untop₀ ⊔ 0 = -(meromorphicOrderAt f₁ x).untop₀ ⊔ 0 by
      simpa [negPart_def, hx, hf₁, hf₁.add hf₂.meromorphicOn]
    by_cases h : 0 ≤ meromorphicOrderAt f₁ x
    · suffices 0 ≤ meromorphicOrderAt (f₁ + f₂) x by simp_all
      calc 0
      _ ≤ min (meromorphicOrderAt f₁ x) (meromorphicOrderAt f₂ x) :=
        le_inf h (hf₂ x hx).meromorphicOrderAt_nonneg
      _ ≤ meromorphicOrderAt (f₁ + f₂) x :=
        meromorphicOrderAt_add (hf₁ x hx) (hf₂ x hx).meromorphicAt
    · suffices meromorphicOrderAt f₁ x < meromorphicOrderAt f₂ x by
        rwa [meromorphicOrderAt_add_eq_left_of_lt (hf₂.meromorphicOn x hx)]
      calc meromorphicOrderAt f₁ x
      _ < 0 := by simpa using h
      _ ≤ meromorphicOrderAt f₂ x := (hf₂ x hx).meromorphicOrderAt_nonneg
  simp [hx]

/-- Adding an analytic function to a meromorphic one does not change the pole divisor. -/
theorem negPart_divisor_add_of_analyticNhdOn_left {f₁ f₂ : 𝕜 → E} (hf₁ : AnalyticOnNhd 𝕜 f₁ U)
    (hf₂ : MeromorphicOn f₂ U) :
    (divisor (f₁ + f₂) U)⁻ = (divisor f₂ U)⁻ := by
  rw [add_comm]
  exact negPart_divisor_add_of_analyticNhdOn_right hf₂ hf₁

end MeromorphicOn
```
