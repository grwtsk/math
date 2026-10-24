# coe_two_sylow_of_card_eq_four

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
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f188703-4c7f-b268-0144-43d98d4f76cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6b9a8d9-2ff4-8134-f3ce-2eede76804cd",
  "kind": "theorem",
  "lexical_name": "coe_two_sylow_of_card_eq_four",
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
  "slug": "coe-two-sylow-of-card-eq-four--3b6064bc49f28e062ca2a51a",
  "source": {
    "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b6064bc49f28e062ca2a51a66dba5e9f59b5d3f03d26b8b616953d1f41008c7",
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

Occurrence: `result:d6b9a8d9-2ff4-8134-f3ce-2eede76804cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_two_sylow_of_card_eq_four
    (hα4 : Nat.card α = 4) (S : Sylow 2 (alternatingGroup α)) :
    (S : Set (alternatingGroup α)) =
      {1} ∪ {g : alternatingGroup α | (g : Perm α).cycleType = {2, 2}} := by
  classical
  refine Set.eq_of_subset_of_card_le (fun k hk ↦ ?_) ?_
  · -- inclusion S ⊆ {1} ∪ {g |  cycleType g = { 2, 2 }}
    obtain ⟨n, hn⟩ := (IsPGroup.iff_orderOf.mp S.isPGroup') ⟨k, hk⟩
    replace hn : (orderOf (k : Perm α)) = 2 ^ n := by simpa using hn
    convert! mem_kleinFour_of_order_two_pow hα4 k.2 hn.dvd
    simp
  · -- card (kleinFour α) ≤ card S
    simp_rw [← Nat.card_eq_fintype_card]
    refine (card_two_sylow_of_card_eq_four hα4 S).trans_ge ?_
    rw [Nat.card_eq_card_toFinset, Set.toFinset_union, Set.toFinset_singleton, Set.toFinset_ofPred]
    apply (Finset.card_union_le _ _).trans
    rw [Finset.card_singleton, AlternatingGroup.card_of_cycleType, ← Nat.card_eq_fintype_card, hα4]
    decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7364c02d6a12bedd382ecd64b4ec98586263c328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
