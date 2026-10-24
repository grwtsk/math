# Complete source: GRWTSK.Topology.MetricTopology.Diam.Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `947b76c5a7dfb12db5aff5c6dd81553e6cb5ea38` · SHA-256 `0ddf3b88f2f8378c2f2c4768efa0a764d8f92d6e16f95d23db66f9beb374a38a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Diam.Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Diam.Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be","mathematical_subject":"Topology.MetricSpaces","original_sha256":"d1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/EMetricSpace/Diam.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015, 2017 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Robert Y. Lewis, Johannes Hölzl, Mario Carneiro, Sébastien Gouëzel
-/
import Mathlib.Topology.EMetricSpace.Pi

/-!
# Diameters of sets in extended metric spaces

-/



namespace GRWTSK.Topology.MetricTopology.Diam.Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be

open Set Filter

open scoped Uniformity Topology Filter NNReal ENNReal Pointwise

universe u v w

variable {α β : Type*} {s : Set α} {x y z : α}

namespace EMetric

section
variable [PseudoEMetricSpace α]

/-- The diameter of a set in a pseudoemetric space, named `EMetric.diam` -/
noncomputable def diam (s : Set α) :=
  ⨆ (x ∈ s) (y ∈ s), edist x y

theorem diam_eq_sSup (s : Set α) : diam s = sSup (image2 edist s s) := sSup_image2.symm

theorem diam_le_iff {d : ℝ≥0∞} : diam s ≤ d ↔ ∀ x ∈ s, ∀ y ∈ s, edist x y ≤ d := by
  simp only [diam, iSup_le_iff]

theorem diam_image_le_iff {d : ℝ≥0∞} {f : β → α} {s : Set β} :
    diam (f '' s) ≤ d ↔ ∀ x ∈ s, ∀ y ∈ s, edist (f x) (f y) ≤ d := by
  simp only [diam_le_iff, forall_mem_image]

theorem edist_le_of_diam_le {d} (hx : x ∈ s) (hy : y ∈ s) (hd : diam s ≤ d) : edist x y ≤ d :=
  diam_le_iff.1 hd x hx y hy

/-- If two points belong to some set, their edistance is bounded by the diameter of the set -/
theorem edist_le_diam_of_mem (hx : x ∈ s) (hy : y ∈ s) : edist x y ≤ diam s :=
  edist_le_of_diam_le hx hy le_rfl

/-- If the distance between any two points in a set is bounded by some constant, this constant
bounds the diameter. -/
theorem diam_le {d : ℝ≥0∞} (h : ∀ x ∈ s, ∀ y ∈ s, edist x y ≤ d) : diam s ≤ d :=
  diam_le_iff.2 h

/-- The diameter of a subsingleton vanishes. -/
theorem diam_subsingleton (hs : s.Subsingleton) : diam s = 0 :=
  nonpos_iff_eq_zero.1 <| diam_le fun _x hx y hy => (hs hx hy).symm ▸ edist_self y ▸ le_rfl

/-- The diameter of the empty set vanishes -/
@[simp]
theorem diam_empty : diam (∅ : Set α) = 0 :=
  diam_subsingleton subsingleton_empty

/-- The diameter of a singleton vanishes -/
@[simp]
theorem diam_singleton : diam ({x} : Set α) = 0 :=
  diam_subsingleton subsingleton_singleton

@[to_additive (attr := simp)]
theorem diam_one [One α] : diam (1 : Set α) = 0 :=
  diam_singleton

theorem diam_iUnion_mem_option {ι : Type*} (o : Option ι) (s : ι → Set α) :
    diam (⋃ i ∈ o, s i) = ⨆ i ∈ o, diam (s i) := by cases o <;> simp

theorem diam_insert : diam (insert x s) = max (⨆ y ∈ s, edist x y) (diam s) :=
  eq_of_forall_ge_iff fun d => by
    simp only [diam_le_iff, forall_mem_insert, edist_self, edist_comm x, max_le_iff, iSup_le_iff,
      zero_le, true_and, forall_and, and_self_iff, ← and_assoc]

theorem diam_pair : diam ({x, y} : Set α) = edist x y := by
  simp only [iSup_singleton, diam_insert, diam_singleton, ENNReal.max_zero_right]

theorem diam_triple : diam ({x, y, z} : Set α) = max (max (edist x y) (edist x z)) (edist y z) := by
  simp only [diam_insert, iSup_insert, iSup_singleton, diam_singleton, ENNReal.max_zero_right]

/-- The diameter is monotonous with respect to inclusion -/
@[gcongr]
theorem diam_mono {s t : Set α} (h : s ⊆ t) : diam s ≤ diam t :=
  diam_le fun _x hx _y hy => edist_le_diam_of_mem (h hx) (h hy)

/-- The diameter of a union is controlled by the diameter of the sets, and the edistance
between two points in the sets. -/
theorem diam_union {t : Set α} (xs : x ∈ s) (yt : y ∈ t) :
    diam (s ∪ t) ≤ diam s + edist x y + diam t := by
  have A : ∀ a ∈ s, ∀ b ∈ t, edist a b ≤ diam s + edist x y + diam t := fun a ha b hb =>
    calc
      edist a b ≤ edist a x + edist x y + edist y b := edist_triangle4 _ _ _ _
      _ ≤ diam s + edist x y + diam t :=
        add_le_add (add_le_add (edist_le_diam_of_mem ha xs) le_rfl) (edist_le_diam_of_mem yt hb)
  refine diam_le fun a ha b hb => ?_
  rcases (mem_union _ _ _).1 ha with h'a | h'a <;> rcases (mem_union _ _ _).1 hb with h'b | h'b
  · calc
      edist a b ≤ diam s := edist_le_diam_of_mem h'a h'b
      _ ≤ diam s + (edist x y + diam t) := le_self_add
      _ = diam s + edist x y + diam t := (add_assoc _ _ _).symm
  · exact A a h'a b h'b
  · have Z := A b h'b a h'a
    rwa [edist_comm] at Z
  · calc
      edist a b ≤ diam t := edist_le_diam_of_mem h'a h'b
      _ ≤ diam s + edist x y + diam t := le_add_self

theorem diam_union' {t : Set α} (h : (s ∩ t).Nonempty) : diam (s ∪ t) ≤ diam s + diam t := by
  let ⟨x, ⟨xs, xt⟩⟩ := h
  simpa using diam_union xs xt

theorem diam_closedBall {r : ℝ≥0∞} : diam (closedBall x r) ≤ 2 * r :=
  diam_le fun a ha b hb =>
    calc
      edist a b ≤ edist a x + edist b x := edist_triangle_right _ _ _
      _ ≤ r + r := add_le_add ha hb
      _ = 2 * r := (two_mul r).symm

theorem diam_ball {r : ℝ≥0∞} : diam (ball x r) ≤ 2 * r :=
  le_trans (diam_mono ball_subset_closedBall) diam_closedBall

theorem diam_pi_le_of_le {π : β → Type*} [Fintype β] [∀ b, PseudoEMetricSpace (π b)]
    {s : ∀ b : β, Set (π b)} {c : ℝ≥0∞} (h : ∀ b, diam (s b) ≤ c) : diam (Set.pi univ s) ≤ c := by
  refine diam_le fun x hx y hy => edist_pi_le_iff.mpr ?_
  rw [mem_univ_pi] at hx hy
  exact fun b => diam_le_iff.1 (h b) (x b) (hx b) (y b) (hy b)

end

section
variable [EMetricSpace β] {s : Set β}

theorem diam_eq_zero_iff : diam s = 0 ↔ s.Subsingleton :=
  ⟨fun h _x hx _y hy => edist_le_zero.1 <| h ▸ edist_le_diam_of_mem hx hy, diam_subsingleton⟩

theorem diam_pos_iff : 0 < diam s ↔ s.Nontrivial := by
  simp only [pos_iff_ne_zero, Ne, diam_eq_zero_iff, Set.not_subsingleton_iff]

theorem diam_pos_iff' : 0 < diam s ↔ ∃ x ∈ s, ∃ y ∈ s, x ≠ y := by
  simp only [diam_pos_iff, Set.Nontrivial, exists_prop]

end

end EMetric
```
