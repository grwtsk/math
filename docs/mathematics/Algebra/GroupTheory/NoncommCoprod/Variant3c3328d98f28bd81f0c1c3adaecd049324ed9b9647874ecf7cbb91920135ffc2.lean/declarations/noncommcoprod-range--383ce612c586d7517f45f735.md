# noncommCoprod_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e6893eb3d1b523f69455a607bffde5d5b33fc18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72fe54a6-e449-5a9a-e628-91302a1c9bda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ac73570-7ab7-d9bb-f4ce-d3c953d6fc2d",
  "kind": "lemma",
  "lexical_name": "noncommCoprod_range",
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
  "slug": "noncommcoprod-range--383ce612c586d7517f45f735",
  "source": {
    "blob": "6e6893eb3d1b523f69455a607bffde5d5b33fc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 142,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:383ce612c586d7517f45f735e79e7f044824a5d50031966fd3d953edf9a2d2aa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac73570-7ab7-d9bb-f4ce-d3c953d6fc2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma noncommCoprod_range {M N P : Type*} [Group M] [Group N] [Group P]
    (f : M →* P) (g : N →* P) (comm : ∀ (m : M) (n : N), Commute (f m) (g n)) :
    (noncommCoprod f g comm).range = f.range ⊔ g.range := by
  apply le_antisymm
  · rintro - ⟨a, rfl⟩
    exact mul_mem (mem_sup_left ⟨a.1, rfl⟩) (mem_sup_right ⟨a.2, rfl⟩)
  · rw [sup_le_iff]
    constructor
    · rintro - ⟨a, rfl⟩
      exact ⟨(a, 1), by rw [noncommCoprod_apply, map_one, mul_one]⟩
    · rintro - ⟨a, rfl⟩
      exact ⟨(1, a), by rw [noncommCoprod_apply, map_one, one_mul]⟩

end group

end MonoidHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6893eb3d1b523f69455a607bffde5d5b33fc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
