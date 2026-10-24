# le_ofWithBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5432c993-dba2-b1c3-9749-24bc12884c5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e44bb305-67a9-3cef-a591-bbe44e5d2c8e",
  "kind": "theorem",
  "lexical_name": "le_ofWithBot",
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
  "slug": "le-ofwithbot--c408c035aa08cd0bd8c5a7d7",
  "source": {
    "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 441,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c408c035aa08cd0bd8c5a7d7bb8016233bd7c60a9276aa2a0a1eae0b3b4fcd2c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e44bb305-67a9-3cef-a591-bbe44e5d2c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_ofWithBot {boxes : Finset (WithBot (Box ι))}
    {le_of_mem : ∀ J ∈ boxes, (J : WithBot (Box ι)) ≤ I}
    {pairwise_disjoint : Set.Pairwise (boxes : Set (WithBot (Box ι))) Disjoint}
    (H : ∀ J ∈ π, ∃ J' ∈ boxes, ↑J ≤ J') : π ≤ ofWithBot boxes le_of_mem pairwise_disjoint := by
  intro J hJ
  rcases H J hJ with ⟨J', J'mem, hle⟩
  lift J' to Box ι using ne_bot_of_le_ne_bot WithBot.coe_ne_bot hle
  exact ⟨J', mem_ofWithBot.2 J'mem, WithBot.coe_le_coe.1 hle⟩
#align box_integral.prepartition.le_of_with_bot BoxIntegral.Prepartition.le_ofWithBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e7e73e5f2b1241bea304697b6c235f34e9b9309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
