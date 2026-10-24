# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf55ae93ba2ffec7af600b5d185583612c20d2bf` · SHA-256 `fe07e0d59161b665ab0bb828ec77f5d0923f63772422e6da19b4cf539dcbd84d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsExtremal.Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.IsExtremal.Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"bc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/SimpleGraph/Extremal/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mitchell Horner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Horner
-/
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Combinatorics.SimpleGraph.Operations
import Mathlib.Combinatorics.SimpleGraph.Copy

/-!
# Extremal graph theory

This file introduces basic definitions for extremal graph theory, including extremal numbers.

## Main definitions

* `SimpleGraph.IsExtremal` is the predicate that `G` satisfies `p` and any `H` satisfying `p` has
  at most as many edges as `G`.

* `SimpleGraph.extremalNumber` is the maximum number of edges in a `H`-free simple graph on `n`
  vertices.

  If `H` is contained in all simple graphs on `n` vertices, then this is `0`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsExtremal.Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de

open Finset Fintype

namespace SimpleGraph

section IsExtremal

variable {V : Type*} [Fintype V] {G : SimpleGraph V} [DecidableRel G.Adj]

/-- `G` is an extremal graph satisfying `p` if `G` has the maximum number of edges of any simple
graph satisfying `p`. -/
def IsExtremal (G : SimpleGraph V) [DecidableRel G.Adj] (p : SimpleGraph V → Prop) :=
  p G ∧ ∀ ⦃G' : SimpleGraph V⦄ [DecidableRel G'.Adj], p G' → #G'.edgeFinset ≤ #G.edgeFinset

lemma IsExtremal.prop {p : SimpleGraph V → Prop} (h : G.IsExtremal p) : p G := h.1

open Classical in
/-- If one simple graph satisfies `p`, then there exists an extremal graph satisfying `p`. -/
theorem exists_isExtremal_iff_exists (p : SimpleGraph V → Prop) :
    (∃ G : SimpleGraph V, ∃ _ : DecidableRel G.Adj, G.IsExtremal p) ↔ ∃ G, p G := by
  refine ⟨fun ⟨_, _, h⟩ ↦ ⟨_, h.1⟩, fun ⟨G, hp⟩ ↦ ?_⟩
  obtain ⟨G', hp', h⟩ := by
    apply exists_max_image { G | p G } (#·.edgeFinset)
    use G, by simpa using hp
  use G', inferInstanceAs (DecidableRel G'.Adj)
  exact ⟨by simpa using hp', fun _ _ hp ↦ by convert h _ (by simpa using hp)⟩

/-- If `H` has at least one edge, then there exists an extremal `H.Free` graph. -/
theorem exists_isExtremal_free {W : Type*} {H : SimpleGraph W} (h : H ≠ ⊥) :
    ∃ G : SimpleGraph V, ∃ _ : DecidableRel G.Adj, G.IsExtremal H.Free :=
  (exists_isExtremal_iff_exists H.Free).mpr ⟨⊥, free_bot h⟩

end IsExtremal

section ExtremalNumber

open Classical in
/-- The extremal number of a natural number `n` and a simple graph `H` is the the maximum number of
edges in a `H`-free simple graph on `n` vertices.

If `H` is contained in all simple graphs on `n` vertices, then this is `0`. -/
noncomputable def extremalNumber (n : ℕ) {W : Type*} (H : SimpleGraph W) : ℕ :=
  sup { G : SimpleGraph (Fin n) | H.Free G } (#·.edgeFinset)

variable {n : ℕ} {V W : Type*} {G : SimpleGraph V} {H : SimpleGraph W}

open Classical in
theorem extremalNumber_of_fintypeCard_eq [Fintype V] (hc : card V = n) :
    extremalNumber n H = sup { G : SimpleGraph V | H.Free G } (#·.edgeFinset) := by
  let e := Fintype.equivFinOfCardEq hc
  rw [extremalNumber, le_antisymm_iff]
  and_intros
  on_goal 1 =>
    replace e := e.symm
  all_goals
  rw [Finset.sup_le_iff]
  intro G h
  let G' := G.map e.toEmbedding
  replace h' : G' ∈ univ.filter (H.Free ·) := by
    rw [mem_filter, ← free_congr .refl (.map e G)]
    simpa using h
  rw [Iso.card_edgeFinset_eq (.map e G)]
  convert @le_sup _ _ _ _ { G | H.Free G } (#·.edgeFinset) G' h'

variable [Fintype V] [DecidableRel G.Adj]

/-- If `G` is `H`-free, then `G` has at most `extremalNumber (card V) H` edges. -/
theorem card_edgeFinset_le_extremalNumber (h : H.Free G) :
    #G.edgeFinset ≤ extremalNumber (card V) H := by
  rw [extremalNumber_of_fintypeCard_eq rfl]
  convert @le_sup _ _ _ _ { G | H.Free G } (#·.edgeFinset) G (by simpa using h)

/-- If `G` has more than `extremalNumber (card V) H` edges, then `G` contains a copy of `H`. -/
theorem IsContained.of_extremalNumber_lt_card_edgeFinset
    (h : extremalNumber (card V) H < #G.edgeFinset) : H ⊑ G := by
  contrapose! h
  exact card_edgeFinset_le_extremalNumber h

/-- `extremalNumber (card V) H` is at most `x` if and only if every `H`-free simple graph `G` has
at most `x` edges. -/
theorem extremalNumber_le_iff (H : SimpleGraph W) (m : ℕ) :
    extremalNumber (card V) H ≤ m ↔
      ∀ ⦃G : SimpleGraph V⦄ [DecidableRel G.Adj], H.Free G → #G.edgeFinset ≤ m := by
  simp_rw [extremalNumber_of_fintypeCard_eq rfl, Finset.sup_le_iff, mem_filter, mem_univ, true_and]
  exact ⟨fun h _ _ h' ↦ by convert h _ h', fun h _ h' ↦ by convert h h'⟩

/-- `extremalNumber (card V) H` is greater than `x` if and only if there exists a `H`-free simple
graph `G` with more than `x` edges. -/
theorem lt_extremalNumber_iff (H : SimpleGraph W) (m : ℕ) :
    m < extremalNumber (card V) H ↔
      ∃ G : SimpleGraph V, ∃ _ : DecidableRel G.Adj, H.Free G ∧ m < #G.edgeFinset := by
  simp_rw [extremalNumber_of_fintypeCard_eq rfl, Finset.lt_sup_iff, mem_filter, mem_univ, true_and]
  exact ⟨fun ⟨_, h, h'⟩ ↦ ⟨_, _, h, h'⟩, fun ⟨_, _, h, h'⟩ ↦ ⟨_, h, by convert h'⟩⟩

variable {R : Type*} [Semiring R] [LinearOrder R] [FloorSemiring R]

@[inherit_doc extremalNumber_le_iff]
theorem extremalNumber_le_iff_of_nonneg (H : SimpleGraph W) {m : R} (h : 0 ≤ m) :
    extremalNumber (card V) H ≤ m ↔
      ∀ ⦃G : SimpleGraph V⦄ [DecidableRel G.Adj], H.Free G → #G.edgeFinset ≤ m := by
  simp_rw [← Nat.le_floor_iff h]
  exact extremalNumber_le_iff H ⌊m⌋₊

@[inherit_doc lt_extremalNumber_iff]
theorem lt_extremalNumber_iff_of_nonneg (H : SimpleGraph W) {m : R} (h : 0 ≤ m) :
    m < extremalNumber (card V) H ↔
      ∃ G : SimpleGraph V, ∃ _ : DecidableRel G.Adj, H.Free G ∧ m < #G.edgeFinset := by
  simp_rw [← Nat.floor_lt h]
  exact lt_extremalNumber_iff H ⌊m⌋₊

/-- If `H` contains a copy of `H'`, then `extremalNumber n H` is at most `extremalNumber n H`. -/
theorem IsContained.extremalNumber_le {W' : Type*} {H' : SimpleGraph W'} (h : H' ⊑ H) :
    extremalNumber n H' ≤ extremalNumber n H := by
  rw [← Fintype.card_fin n, extremalNumber_le_iff]
  intro _ _ h'
  contrapose! h'
  rw [not_not]
  exact h.trans (IsContained.of_extremalNumber_lt_card_edgeFinset h')

/-- If `H₁ ≃g H₂`, then `extremalNumber n H₁` equals `extremalNumber n H₂`. -/
@[congr]
theorem extremalNumber_congr {n₁ n₂ : ℕ} {W₁ W₂ : Type*} {H₁ : SimpleGraph W₁}
    {H₂ : SimpleGraph W₂} (h : n₁ = n₂) (e : H₁ ≃g H₂) :
    extremalNumber n₁ H₁ = extremalNumber n₂ H₂ := by
  rw [h, le_antisymm_iff]
  and_intros
  on_goal 2 =>
    replace e := e.symm
  all_goals
    rw [← Fintype.card_fin n₂, extremalNumber_le_iff]
    intro G _ h
    apply card_edgeFinset_le_extremalNumber
    contrapose! h
    rw [not_free] at h ⊢
    exact h.trans' ⟨e.toCopy⟩

/-- If `H₁ ≃g H₂`, then `extremalNumber n H₁` equals `extremalNumber n H₂`. -/
theorem extremalNumber_congr_right {W₁ W₂ : Type*} {H₁ : SimpleGraph W₁} {H₂ : SimpleGraph W₂}
  (e : H₁ ≃g H₂) : extremalNumber n H₁ = extremalNumber n H₂ := extremalNumber_congr rfl e

/-- `H`-free extremal graphs are `H`-free simple graphs having `extremalNumber (card V) H` many
edges. -/
theorem isExtremal_free_iff :
    G.IsExtremal H.Free ↔ H.Free G ∧ #G.edgeFinset = extremalNumber (card V) H := by
  rw [IsExtremal, and_congr_right_iff, ← extremalNumber_le_iff]
  exact fun h ↦ ⟨eq_of_le_of_le (card_edgeFinset_le_extremalNumber h), ge_of_eq⟩

lemma card_edgeFinset_of_isExtremal_free (h : G.IsExtremal H.Free) :
    #G.edgeFinset = extremalNumber (card V) H := (isExtremal_free_iff.mp h).2

end ExtremalNumber

end SimpleGraph
```
