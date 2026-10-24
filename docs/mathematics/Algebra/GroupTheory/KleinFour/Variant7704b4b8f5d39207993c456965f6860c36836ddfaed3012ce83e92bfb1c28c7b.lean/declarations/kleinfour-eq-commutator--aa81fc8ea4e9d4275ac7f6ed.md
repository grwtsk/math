# kleinFour_eq_commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:367fabe3-8059-24e2-3712-e53caf600040",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0acfce0-7543-6d98-eadf-bb6dfa40e7a9",
  "kind": "theorem",
  "lexical_name": "kleinFour_eq_commutator",
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
  "slug": "kleinfour-eq-commutator--aa81fc8ea4e9d4275ac7f6ed",
  "source": {
    "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 192,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa81fc8ea4e9d4275ac7f6eda60bdf80afc0f0719635368e330466fac4cccfa0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0acfce0-7543-6d98-eadf-bb6dfa40e7a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kleinFour_eq_commutator (hα4 : Nat.card α = 4) :
    kleinFour α = commutator (alternatingGroup α) := by
  have _ : (kleinFour α).Normal := normal_kleinFour hα4
  have : Nat.card (alternatingGroup α ⧸ kleinFour α) = 3 := by
    rw [← Nat.mul_left_inj (a := Nat.card (kleinFour α))]
    · rw [← Subgroup.card_eq_card_quotient_mul_card_subgroup]
      rw [card_of_card_eq_four hα4, kleinFour_card_of_card_eq_four hα4]
    rw [kleinFour_card_of_card_eq_four hα4]; simp
  have comm_le : commutator (alternatingGroup α) ≤ kleinFour α := by
    rw [← Subgroup.Normal.quotient_commutative_iff_commutator_le]
    exact (isCyclic_of_prime_card this).isMulCommutative
  have comm_ne_bot : commutator (alternatingGroup α) ≠ ⊥ := by
    rw [ne_eq, commutator_eq_bot_iff_center_eq_top,
      center_eq_bot (le_of_eq hα4.symm)]
    apply @bot_ne_top _ _ _ ?_
    rw [Subgroup.nontrivial_iff, ← Finite.one_lt_card_iff_nontrivial,
      card_of_card_eq_four hα4]
    simp
  obtain ⟨k, hk, hk'⟩ := Or.resolve_left (Subgroup.bot_or_exists_ne_one _) comm_ne_bot
  suffices hk22 : (k : Equiv.Perm α).cycleType = {2, 2} by
    refine le_antisymm ?_ comm_le
    intro g hg
    rw [← SetLike.mem_coe, coe_kleinFour_of_card_eq_four hα4,
      Set.mem_union, Set.mem_singleton_iff, Set.mem_ofPred_eq] at hg
    rcases hg with ⟨rfl⟩ | hg
    · exact Subgroup.one_mem _
    · rw [← hg, ← Equiv.Perm.isConj_iff_cycleType_eq, isConj_iff] at hk22
      obtain ⟨c, hc⟩ := hk22
      rw [← MulAut.conjNormal_apply, Subtype.coe_inj] at hc
      simp only [commutator, ← hc]
      let fc : MulAut (alternatingGroup α) := MulAut.conjNormal c
      suffices (⊤ : Subgroup (alternatingGroup α)) =
        Subgroup.map fc.toMonoidHom (⊤ : Subgroup (alternatingGroup α)) by
        rw [this, ← Subgroup.map_commutator]
        refine Subgroup.mem_map_of_mem _ hk
      simp
  have hk2 := comm_le hk
  rw [← SetLike.mem_coe, coe_kleinFour_of_card_eq_four hα4,
    Set.mem_union, Set.mem_singleton_iff, Set.mem_ofPred_eq] at hk2
  exact hk2.resolve_left hk'

end alternatingGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7364c02d6a12bedd382ecd64b4ec98586263c328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
