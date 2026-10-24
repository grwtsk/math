# totallyBounded_subsets_of_totallyBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02ff56e1bbd12b4113503553480f6178b41fae92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:567aa467-243c-34ac-2754-6ad469e5e323",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8245d3c5-2b71-a41c-20ef-563940ac97b6",
  "kind": "theorem",
  "lexical_name": "totallyBounded_subsets_of_totallyBounded",
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
  "slug": "totallybounded-subsets-of-totallybounded--80c81bbf6371a00f9c8e4697",
  "source": {
    "blob": "02ff56e1bbd12b4113503553480f6178b41fae92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 697,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80c81bbf6371a00f9c8e4697ca135ad2c60c10c1e46b484832031d69fc1b74fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8245d3c5-2b71-a41c-20ef-563940ac97b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totallyBounded_subsets_of_totallyBounded {t : Set α} (ht : TotallyBounded t) :
    TotallyBounded {K : NonemptyCompacts α | ↑K ⊆ t} :=
  totallyBounded_preimage isUniformEmbedding_coe.isUniformInducing ht.powerset_hausdorff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02ff56e1bbd12b4113503553480f6178b41fae92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
