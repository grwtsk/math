# ofDual_le_ofDual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de15ef9e9d7f0b373aece021cd5ff3df999cf5e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 981,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:353b8cd2-8eb3-4ff9-deeb-93047da3e888",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff51c4e7-3519-d520-28a0-b06d087d9b65",
  "kind": "lemma",
  "lexical_name": "ofDual_le_ofDual_iff",
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
  "slug": "ofdual-le-ofdual-iff--dd0413828c0a9b46df910422",
  "source": {
    "blob": "de15ef9e9d7f0b373aece021cd5ff3df999cf5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 989,
    "line": 981,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0413828c0a9b46df91042244a6fa15d9f66d3ad553c9e5a5c3d6c5bbae0bb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff51c4e7-3519-d520-28a0-b06d087d9b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 981–989.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofDual_le_ofDual_iff {x y : WithBot αᵒᵈ} :
    WithBot.ofDual x ≤ WithBot.ofDual y ↔ y ≤ x := by cases x <;> cases y <;> simp_all

end LE

section LT
variable [LT α]

@[to_dual lt_toDual_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean#L981).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de15ef9e9d7f0b373aece021cd5ff3df999cf5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
