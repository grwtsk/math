# offDiag_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0aa1f3deb3b8a4355eed68f1cedb72908e1bce5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c55ee5f6-076c-be7c-c4a8-c190fc6ee15a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9ff2923-8f11-8015-b4a1-cf1e8c8c6b8b",
  "kind": "theorem",
  "lexical_name": "offDiag_card",
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
  "slug": "offdiag-card--1f049ce6cccab639bb88aea7",
  "source": {
    "blob": "f0aa1f3deb3b8a4355eed68f1cedb72908e1bce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 308,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f049ce6cccab639bb88aea791188ee570d93e36c543920ac4c3d752ab40f990",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9ff2923-8f11-8015-b4a1-cf1e8c8c6b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem offDiag_card : (offDiag s).card = s.card * s.card - s.card :=
  suffices (diag s).card + (offDiag s).card = s.card * s.card by rw [s.diag_card] at this; omega
  by rw [← card_product, diag, offDiag]
     conv_rhs => rw [← filter_card_add_filter_neg_card_eq_card (fun a => a.1 = a.2)]

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0aa1f3deb3b8a4355eed68f1cedb72908e1bce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
