# Complete source: GRWTSK.Topology.GeneralTopology.BoundedCompactlySupported.Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7057082b82379dafed722616d1af0a2704f9769` · SHA-256 `29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yoh Tanimoto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoh Tanimoto
-/
import Mathlib.Topology.ContinuousMap.Bounded.Normed

/-!
# Compactly supported bounded continuous functions

The two-sided ideal of compactly supported bounded continuous functions taking values in a metric
space, with the uniform distance.
-/

open Set BoundedContinuousFunction

section CompactlySupported

/-- The two-sided ideal of compactly supported functions. -/
def compactlySupported (α γ : Type*) [TopologicalSpace α] [NonUnitalNormedRing γ] :
    TwoSidedIdeal (α →ᵇ γ) :=
  .mk' {z | HasCompactSupport z} .zero .add .neg' .mul_left .mul_right

variable {α γ : Type*} [TopologicalSpace α] [NonUnitalNormedRing γ]

@[inherit_doc]
scoped[BoundedContinuousFunction] notation
  "C_cb(" α ", " γ ")" => compactlySupported α γ

lemma mem_compactlySupported {f : α →ᵇ γ} :
    f ∈ C_cb(α, γ) ↔ HasCompactSupport f :=
  TwoSidedIdeal.mem_mk' {z : α →ᵇ γ | HasCompactSupport z} .zero .add .neg' .mul_left .mul_right f

lemma exist_norm_eq [c : Nonempty α] {f : α →ᵇ γ} (h : f ∈ C_cb(α, γ)) : ∃ (x : α),
    ‖f x‖ = ‖f‖ := by
  by_cases hs : (tsupport f).Nonempty
  · obtain ⟨x, _, hmax⟩ := mem_compactlySupported.mp h |>.exists_isMaxOn hs <|
      (map_continuous f).norm.continuousOn
    refine ⟨x, le_antisymm (norm_coe_le_norm f x) (norm_le (norm_nonneg _) |>.mpr fun y ↦ ?_)⟩
    by_cases hy : y ∈ tsupport f
    · exact hmax hy
    · simp [image_eq_zero_of_notMem_tsupport hy]
  · suffices f = 0 by simp [this]
    rwa [not_nonempty_iff_eq_empty, tsupport_eq_empty_iff, ← coe_zero, ← DFunLike.ext'_iff] at hs

theorem norm_lt_iff_of_compactlySupported {f : α →ᵇ γ} (h : f ∈ C_cb(α, γ)) {M : ℝ}
    (M0 : 0 < M) : ‖f‖ < M ↔ ∀ (x : α), ‖f x‖ < M := by
  refine ⟨fun hn x ↦ lt_of_le_of_lt (norm_coe_le_norm f x) hn, ?_⟩
  · obtain (he | he) := isEmpty_or_nonempty α
    · simpa
    · obtain ⟨x, hx⟩ := exist_norm_eq h
      exact fun h ↦ hx ▸ h x

theorem norm_lt_iff_of_nonempty_compactlySupported [c : Nonempty α] {f : α →ᵇ γ}
    (h : f ∈ C_cb(α, γ)) {M : ℝ} : ‖f‖ < M ↔ ∀ (x : α), ‖f x‖ < M := by
  obtain (hM | hM) := lt_or_le 0 M
  · exact norm_lt_iff_of_compactlySupported h hM
  · exact ⟨fun h ↦ False.elim <| (h.trans_le hM).not_le (by positivity),
      fun h ↦ False.elim <| (h (Classical.arbitrary α) |>.trans_le hM).not_le (by positivity)⟩

theorem compactlySupported_eq_top_of_isCompact (h : IsCompact (Set.univ : Set α)) :
    C_cb(α, γ) = ⊤ :=
  eq_top_iff.mpr fun _ _ ↦ h.of_isClosed_subset (isClosed_tsupport _) (subset_univ _)

/- This is intentionally not marked `@[simp]` to prevent Lean looking for a `CompactSpace α`
instance every time it sees `C_cb(α, γ)`. -/
theorem compactlySupported_eq_top [CompactSpace α] : C_cb(α, γ) = ⊤ :=
  compactlySupported_eq_top_of_isCompact CompactSpace.isCompact_univ

theorem compactlySupported_eq_top_iff [Nontrivial γ] :
    C_cb(α, γ) = ⊤ ↔ IsCompact (Set.univ : Set α) := by
  refine ⟨fun h ↦ ?_, compactlySupported_eq_top_of_isCompact⟩
  obtain ⟨x, hx⟩ := exists_ne (0 : γ)
  simpa [tsupport, Function.support_const hx]
    using (mem_compactlySupported (f := const α x).mp (by simp [h])).isCompact

/-- A compactly supported continuous function is automatically bounded. This constructor gives
an object of `α →ᵇ γ` from `g : α → γ` and these assumptions. -/
def ofCompactSupport (g : α → γ) (hg₁ : Continuous g) (hg₂ : HasCompactSupport g) : α →ᵇ γ where
  toFun := g
  continuous_toFun := hg₁
  map_bounded' := by
    obtain (hs | hs) := (tsupport g).eq_empty_or_nonempty
    · exact ⟨0, by simp [tsupport_eq_empty_iff.mp hs]⟩
    · obtain ⟨z, _, hmax⟩ := hg₂.exists_isMaxOn hs <| hg₁.norm.continuousOn
      refine ⟨2 * ‖g z‖, dist_le_two_norm' fun x ↦ ?_⟩
      by_cases hx : x ∈ tsupport g
      · exact isMaxOn_iff.mp hmax x hx
      · simp [image_eq_zero_of_notMem_tsupport hx]

lemma ofCompactSupport_mem (g : α → γ) (hg₁ : Continuous g) (hg₂ : HasCompactSupport g) :
    ofCompactSupport g hg₁ hg₂ ∈ C_cb(α, γ) := mem_compactlySupported.mpr hg₂

instance : SMul C(α, γ) C_cb(α, γ) where
  smul := fun (g : C(α, γ)) => (fun (f : C_cb(α, γ)) =>
    ⟨ofCompactSupport (g * (f : α →ᵇ γ) : α → γ) (Continuous.mul g.2 f.1.1.2)
    (HasCompactSupport.mul_left (mem_compactlySupported.mp f.2)), by
      apply mem_compactlySupported.mpr
      rw [ofCompactSupport]
      exact HasCompactSupport.mul_left <| mem_compactlySupported.mp f.2
    ⟩)

end CompactlySupported
```
