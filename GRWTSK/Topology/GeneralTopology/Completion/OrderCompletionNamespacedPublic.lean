-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.DedekindCutContinuousPrincipal.Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.DedekindCutContinuousPrincipal.Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Order/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios, Antoine Chambert-Loir
-/
module

public import Mathlib.Algebra.Field.Rat
public import Mathlib.Algebra.Order.Ring.Rat
public import Mathlib.Data.Prod.Lex
public import Mathlib.Order.SuccPred.Limit
public import Mathlib.Topology.Order.Basic
public import Mathlib.Order.Completion

import Mathlib.Algebra.Order.Field.Basic

/-!
# Dense and continuous completion of a linear order

Let `α` be a linear order.

* `DedekindCut.continuous_principal`: the map `DedekindCut.principal : α → DedekindCut α`
  that embeds `α` in its Dedekind completion is continuous for the order topologies.
* `Order.Fill α`: this is a type with a dense linear order endowed
  with a continuous order-embedding `Order.Fill.some` of `α`.
  It is defined as a subtype of `α × ℚ` and its order is induced by the lexicographic order.
* `Order.Fill.some`: the order embedding `α ↪o Order.Fill α` given by `a ↦ (a, 0)`.
* `Order.Fill.continuous_some`: the map `⇑Order.Fill.some` is continuous for the order topologies.
* `Order.exists_dense_continuous_completion`: any linear order embeds continuously
  (for the order topologies) into a dense and complete linear order.
  The linearly ordered type provided by the proof is given by the Dedekind completion of
  `Order.Fill α`, although the user does not need to know that.
-/


namespace GRWTSK.Topology.GeneralTopology.DedekindCutContinuousPrincipal.Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d

@[expose] public section

open Set

variable {α : Type*} [LinearOrder α]

theorem DedekindCut.continuous_principal [TopologicalSpace α] [OrderTopology α]
    [TopologicalSpace (DedekindCut α)] [OrderTopology (DedekindCut α)] :
    Continuous (fun a : α ↦ principal a) := by
  rw [OrderTopology.continuous_iff]
  refine fun c ↦ ⟨?_, ?_⟩
  · have : IsOpen (⋃ a ∈ c.right, Ioi a) := isOpen_biUnion fun _ _ ↦ isOpen_Ioi
    convert this
    ext
    simp [lt_principal_iff]
  · have : IsOpen (⋃ a ∈ c.left, Iio a) := isOpen_biUnion fun _ _ ↦ isOpen_Iio
    convert this
    ext
    simp [principal_lt_iff]

namespace Order

/-- A dense linear order into which α embeds continuously, formed by "filling in" the blanks. -/
abbrev Fill (α : Type*) [LinearOrder α] : Type _ :=
  {x : α ×ₗ ℚ //
    (IsSuccPrelimit (ofLex x).1 → 0 ≤ (ofLex x).2) ∧
    (IsPredPrelimit (ofLex x).1 → (ofLex x).2 ≤ 0) }

namespace Fill

instance : TopologicalSpace (Fill α) := Preorder.topology _

instance : OrderTopology (Fill α) := ⟨rfl⟩

set_option backward.isDefEq.respectTransparency.types false in
/-- A continuous embedding of `α` into `Fill α`. -/
def some : α ↪o Fill α where
  toFun x := ⟨toLex (x, 0), by simp⟩
  inj' _ := by simp
  map_rel_iff' := by simp [Prod.Lex.toLex_le_toLex']

set_option backward.isDefEq.respectTransparency.types false in
instance : DenselyOrdered (Fill α) where
  dense := by
    simp only [ofLex_toLex, Subtype.forall, Prod.Lex.lt_iff, Subtype.mk_lt_mk,
      Lex.forall, Prod.forall]
    rintro x q ⟨hx₁, hx₂⟩ y r ⟨hy₁, hy₂⟩ (h | ⟨rfl, h⟩)
    · by_cases hx : IsPredPrelimit x
      · obtain ⟨z, hz, hz'⟩ := hx.nonempty_Ioo_of_lt h
        use some z
        simp [some, Prod.Lex.lt_iff, hz', hz]
      obtain ⟨s, hs⟩ := exists_gt (max 0 q)
      rw [max_lt_iff] at hs
      refine ⟨⟨toLex (x, s), ?_⟩, ?_⟩
      · simp [hx, hs.1.le]
      · simp [Prod.Lex.lt_iff, hs.2, h]
    · obtain ⟨s, hs, hs'⟩ := exists_between h
      refine ⟨⟨toLex (x, s), ?_⟩, ?_⟩
      · grind [ofLex_toLex]
      · simp [Prod.Lex.lt_iff, hs, hs']

set_option backward.isDefEq.respectTransparency.types false in
theorem continuous_some [TopologicalSpace α] [OrderTopology α] : Continuous (X := α) some := by
  simp only [OrderTopology.continuous_iff, ofLex_toLex, Subtype.forall, Lex.forall, Prod.forall]
  refine fun x q ⟨hx₁, hx₂⟩ ↦ ⟨?_, ?_⟩
  · obtain hq | hq := le_or_gt 0 q
    · convert isOpen_Ioi (a := x)
      ext
      simp [some, Prod.Lex.lt_iff, hq.not_gt]
    · obtain ⟨y, hy⟩ := not_isSuccPrelimit_iff.1 <| mt hx₁ hq.not_ge
      convert isOpen_Ioi (a := y)
      ext
      simpa [some, Prod.Lex.lt_iff, hq, le_iff_lt_or_eq] using hy.le_iff_lt_right
  · obtain hq | hq := le_or_gt q 0
    · convert isOpen_Iio (a := x)
      ext
      simp [some, Prod.Lex.lt_iff, hq.not_gt]
    · obtain ⟨y, hy⟩ := not_isPredPrelimit_iff.1 <| mt hx₂ hq.not_ge
      convert isOpen_Iio (a := y)
      ext
      simpa [some, Prod.Lex.lt_iff, hq, le_iff_lt_or_eq] using hy.le_iff_lt_left

end Fill

universe u

/-- Every linear order embeds continuously in a dense complete linear order. -/
theorem exists_dense_continuous_completion
    (α : Type u) [LinearOrder α] [TopologicalSpace α] [OrderTopology α] :
    ∃ (β : Type u) (_ : CompleteLinearOrder β) (_ : DenselyOrdered β) (_ : TopologicalSpace β)
      (_ : OrderTopology β) (ι : α ↪o β), Continuous ι :=
  let : TopologicalSpace (DedekindCut (Fill α)) := Preorder.topology _
  have : OrderTopology (DedekindCut (Fill α)) := ⟨rfl⟩
  ⟨_, inferInstance, inferInstance, inferInstance, inferInstance,
    Fill.some.trans DedekindCut.principalEmbedding,
    DedekindCut.continuous_principal.comp Fill.continuous_some⟩

end Order
