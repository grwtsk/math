# isPreprimitive_alternatingGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d8a868210145dc990640f55fe12d0a969a57930",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdc38ca6-d9e7-a952-cbfb-ebebb5633c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32a22d44-f3d1-8a7b-f909-f7ce1c1f56f2",
  "kind": "theorem",
  "lexical_name": "isPreprimitive_alternatingGroup",
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
  "slug": "ispreprimitive-alternatinggroup--1c6698b369704e96dfe43ae8",
  "source": {
    "blob": "3d8a868210145dc990640f55fe12d0a969a57930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 306,
    "path": "GRWTSK/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c6698b369704e96dfe43ae8f69aec0d3bb883fc99ae3c1bd1e771106e57a5f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a22d44-f3d1-8a7b-f909-f7ce1c1f56f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreprimitive_alternatingGroup [Fintype α] {n : ℕ}
    (h_three_le : 3 ≤ n) (hn : n < Nat.card α) (hα : Nat.card α ≠ 2 * n) :
    IsPreprimitive (alternatingGroup α) (powersetCard α n) := by
  have : IsPretransitive (alternatingGroup α) (powersetCard α n) :=
    isPretransitive_alternatingGroup (le_trans h_three_le hn.le)
  have : Nontrivial (powersetCard α n) := nontrivial (by positivity) (by simpa using hn)
  obtain ⟨s⟩ := this.to_nonempty
  rw [← isCoatom_stabilizer_iff_preprimitive _ s, stabilizer_coe]
  apply alternatingGroup.isCoatom_stabilizer
  · rw [powersetCard.coe_nonempty_iff]
    exact le_trans (by norm_num) h_three_le
  · simpa [nonempty_compl, ne_eq, eq_univ_iff_ncard, ncard_eq] using ne_of_lt hn
  · simpa only [ncard_eq]

end Set.powersetCard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8a868210145dc990640f55fe12d0a969a57930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
