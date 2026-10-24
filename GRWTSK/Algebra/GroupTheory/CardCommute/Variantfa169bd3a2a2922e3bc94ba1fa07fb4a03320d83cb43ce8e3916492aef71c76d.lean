-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CardCommEqCardConjClassesMulCard.Variant8ae1ca83ec7c9025caae876f72271a6fdd033fe967262c9774f05744763d16fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ae1ca83ec7c9025caae876f72271a6fdd033fe967262c9774f05744763d16fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CardCommEqCardConjClassesMulCard.Variant8ae1ca83ec7c9025caae876f72271a6fdd033fe967262c9774f05744763d16fd","mathematical_subject":"Algebra.Groups","original_sha256":"8ae1ca83ec7c9025caae876f72271a6fdd033fe967262c9774f05744763d16fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/GroupAction/CardCommute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Thomas Browning
-/
import Mathlib.Algebra.Group.ConjFinite
import Mathlib.GroupTheory.GroupAction.Quotient

/-!
# A consequence of Burnside's lemma

See `Mathlib/GroupTheory/GroupAction/Quotient.lean` for Burnside's lemma itself.
This lemma is separate because it requires `Nat.card`
and hence transitively the development of cardinals.
-/


namespace GRWTSK.Algebra.GroupTheory.CardCommEqCardConjClassesMulCard.Variant8ae1ca83ec7c9025caae876f72271a6fdd033fe967262c9774f05744763d16fd

variable {α : Type*}

instance instInfiniteProdSubtypeCommute [Mul α] [Infinite α] :
    Infinite { p : α × α // Commute p.1 p.2 } :=
  Infinite.of_injective (fun a => ⟨⟨a, a⟩, rfl⟩) (by intro; simp)

open Fintype

theorem card_comm_eq_card_conjClasses_mul_card (G : Type*) [Group G] :
    Nat.card { p : G × G // Commute p.1 p.2 } = Nat.card (ConjClasses G) * Nat.card G := by
  classical
  rcases fintypeOrInfinite G; swap
  · rw [mul_comm, Nat.card_eq_zero_of_infinite, Nat.card_eq_zero_of_infinite, zero_mul]
  simp only [Nat.card_eq_fintype_card]
  -- Porting note: Changed `calc` proof into a `rw` proof.
  rw [card_congr (Equiv.subtypeProdEquivSigmaSubtype Commute), card_sigma,
    sum_equiv ConjAct.toConjAct.toEquiv (fun a ↦ card { b // Commute a b })
      (fun g ↦ card (MulAction.fixedBy G g))
      fun g ↦ card_congr' <| congr_arg _ <| funext fun h ↦ mul_inv_eq_iff_eq_mul.symm.eq,
    MulAction.sum_card_fixedBy_eq_card_orbits_mul_card_group]
  congr 1; apply card_congr'; congr; ext
  exact (Setoid.comm' _).trans isConj_iff.symm
