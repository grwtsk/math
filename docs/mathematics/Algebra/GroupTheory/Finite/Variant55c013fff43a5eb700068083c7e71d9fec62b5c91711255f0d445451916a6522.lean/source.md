# Complete source: GRWTSK.Algebra.GroupTheory.Finite.Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d329a188a5016f24bb8577223017c3dfca20a803` · SHA-256 `343f57558a92f3c92375024daf5cc5d8dedbb672e973f060e2414e1b5272d3fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CommutatorPiPiOfFinite.Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CommutatorPiPiOfFinite.Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14","mathematical_subject":"Algebra.Groups","original_sha256":"4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Commutator/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jordan Brown, Thomas Browning, Patrick Lutz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jordan Brown, Thomas Browning, Patrick Lutz
-/
import Mathlib.Algebra.Group.Subgroup.Finite
import Mathlib.GroupTheory.Commutator.Basic
import Mathlib.GroupTheory.Rank
import Mathlib.GroupTheory.Index

/-!
The commutator of a finite direct product is contained in the direct product of the commutators.
-/



namespace GRWTSK.Algebra.GroupTheory.CommutatorPiPiOfFinite.Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14

namespace Subgroup

/-- The commutator of a finite direct product is contained in the direct product of the commutators.
-/
theorem commutator_pi_pi_of_finite {η : Type*} [Finite η] {Gs : η → Type*} [∀ i, Group (Gs i)]
    (H K : ∀ i, Subgroup (Gs i)) : ⁅Subgroup.pi Set.univ H, Subgroup.pi Set.univ K⁆ =
    Subgroup.pi Set.univ fun i => ⁅H i, K i⁆ := by
  classical
    apply le_antisymm (commutator_pi_pi_le H K)
    rw [pi_le_iff]
    intro i hi
    rw [map_commutator]
    apply commutator_mono <;>
      · rw [le_pi_iff]
        intro j _hj
        rintro _ ⟨_, ⟨x, hx, rfl⟩, rfl⟩
        by_cases h : j = i
        · subst h
          simpa using hx
        · simp [h, one_mem]

variable (G : Type*) [Group G] [Group.FG G] [Finite (commutatorSet G)]

instance finiteIndex_center : FiniteIndex (center G) := by
  obtain ⟨S, -, hS⟩ := Group.rank_spec G
  exact ⟨mt (Finite.card_eq_zero_of_embedding (quotientCenterEmbedding hS)) Finite.card_pos.ne'⟩

lemma index_center_le_pow : (center G).index ≤ Nat.card (commutatorSet G) ^ Group.rank G := by
  obtain ⟨S, hS1, hS2⟩ := Group.rank_spec G
  rw [← hS1, ← Fintype.card_coe, ← Nat.card_eq_fintype_card, ← Finset.coe_sort_coe, ← Nat.card_fun]
  exact Finite.card_le_of_embedding (quotientCenterEmbedding hS2)

end Subgroup
```
