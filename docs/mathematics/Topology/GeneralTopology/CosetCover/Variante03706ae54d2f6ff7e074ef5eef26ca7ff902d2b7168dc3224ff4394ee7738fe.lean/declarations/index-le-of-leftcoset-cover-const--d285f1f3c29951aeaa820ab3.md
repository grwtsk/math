# index_le_of_leftCoset_cover_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1613579-6969-d4ce-5aed-0ebd9a05dec8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdd94d19-3571-ca7f-3e63-128385e3290b",
  "kind": "theorem",
  "lexical_name": "index_le_of_leftCoset_cover_const",
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
  "slug": "index-le-of-leftcoset-cover-const--d285f1f3c29951aeaa820ab3",
  "source": {
    "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d285f1f3c29951aeaa820ab30e72b290ec0352cbab8a5f7e3242ea9e984c4246",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdd94d19-3571-ca7f-3e63-128385e3290b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_le_of_leftCoset_cover_const : H.index ≤ s.card := by
  cases H.index.eq_zero_or_pos with
  | inl h => exact h ▸ s.card.zero_le
  | inr h =>
    rw [leftCoset_cover_const_iff_surjOn, Set.surjOn_iff_surjective] at hcovers
    exact (Nat.card_le_card_of_surjective _ hcovers).trans_eq (Nat.card_eq_finsetCard _)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b507a6c6f810c77b88bd72a6d78639136ff249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
