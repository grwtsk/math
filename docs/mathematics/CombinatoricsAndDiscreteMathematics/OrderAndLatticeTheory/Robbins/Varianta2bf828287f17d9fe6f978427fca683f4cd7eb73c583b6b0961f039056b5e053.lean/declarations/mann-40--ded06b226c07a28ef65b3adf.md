# mann_40

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b744ae4d8e99bb45d3f5d1a930887aed56b9af6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b420d78-f111-a6d9-6271-9b266c6a6e9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0743525e-cb7b-9ad7-c010-a06fa9ce66c3",
  "kind": "lemma",
  "lexical_name": "mann_40",
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
  "slug": "mann-40--ded06b226c07a28ef65b3adf",
  "source": {
    "blob": "1b744ae4d8e99bb45d3f5d1a930887aed56b9af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded06b226c07a28ef65b3adfe60850b50f4d20cbc930a22a0ee26cf8e23dab5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0743525e-cb7b-9ad7-c010-a06fa9ce66c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mann_40 (h : -(a + b) = -b ∨ -(-(a + -b) + -b) = a) :
    b + 2 • (a + -(a + -b)) = b + 3 • (a + -(a + -b)) := by
  suffices -(b + 2 • (a + -(a + -b))) = -b ∧ -(b + 3 • (a + -(a + -b))) = -b by
    rw [add_comm b, add_comm b] at this
    replace this := mann_39 this.1 this.2
    rwa [add_comm b, add_comm b]
  rcases h with h | h
  · exact ⟨mann_38 (by lia) h, mann_38 (by lia) h⟩
  · exact ⟨mann_37 (by lia) h, mann_37 (by lia) h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b744ae4d8e99bb45d3f5d1a930887aed56b9af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
