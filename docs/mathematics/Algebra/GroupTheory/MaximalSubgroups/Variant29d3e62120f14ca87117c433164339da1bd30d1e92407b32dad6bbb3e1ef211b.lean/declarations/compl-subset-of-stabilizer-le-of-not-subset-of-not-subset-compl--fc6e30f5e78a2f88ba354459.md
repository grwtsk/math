# compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:999b0dde-da0a-1e6b-a3d9-160c339253d5",
  "kind": "lemma",
  "lexical_name": "compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "compl-subset-of-stabilizer-le-of-not-subset-of-not-subset-compl--fc6e30f5e78a2f88ba354459",
  "source": {
    "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 299,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc6e30f5e78a2f88ba354459936e2338c08fe0188bca48b1f87b0b9eb0ef71b1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:999b0dde-da0a-1e6b-a3d9-160c339253d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl
    [IsMultiplyPretransitive M α (s.ncard + 1)]
    {G : Subgroup M} (hG : stabilizer M s ≤ G)
    {B : Set α}
    (hBs : ¬ B ⊆ s) (hBsc : ¬ B ⊆ sᶜ) (hB : IsBlock G B) :
    sᶜ ⊆ B := by
  have : ∃ a : α, a ∈ B ∧ a ∈ s := by grind
  obtain ⟨a, ha, ha'⟩ := this
  have : ∃ b : α, b ∈ B ∧ b ∈ sᶜ := by grind
  obtain ⟨b, hb, hb'⟩ := this
  intro x hx'
  suffices ∃ k : fixingSubgroup M s, k • b = x by
    obtain ⟨⟨k, hk⟩, rfl⟩ := this
    suffices k • B = B from this.le (smul_mem_smul_set hb)
    -- `k • B = B`
    apply isBlock_iff_smul_eq_of_nonempty.mp hB (g := ⟨k, ?_⟩)
    · refine ⟨a, ?_, ha⟩
      rw [mem_fixingSubgroup_iff] at hk
      rw [← hk a ha']
      exact Set.smul_mem_smul_set ha
    · -- `k ∈ G`
      apply hG
      exact MulAction.fixingSubgroup_le_stabilizer _ _ hk
  · -- `∃ (k : fixingSubgroup (Perm α) s), k • b = x`
    suffices h : IsPretransitive (fixingSubgroup M s) (ofFixingSubgroup M s) by
      obtain ⟨k, hk⟩ := h.exists_smul_eq (⟨b, hb'⟩ : ofFixingSubgroup M s) ⟨x, hx'⟩
      rw [← Subtype.coe_inj, val_smul] at hk
      exact ⟨k, hk⟩
    -- Prove pretransitivity…
    rw [← is_one_pretransitive_iff]
    apply ofFixingSubgroup.isMultiplyPretransitive M s rfl

end MulAction.IsBlock

namespace Equiv.Perm

open MulAction Equiv

variable [Finite α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
