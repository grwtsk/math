# infsep_triple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11e07b5a2ed5379356114634001216b62746e6ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79c6e77fcdb8985afecb2428ae0ad7347fb6c1238164f2480d8c59a7db1cc215.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3d455b2-a9ff-6c6d-bdeb-dfbbd20979ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:518567e3-4577-10a9-3a9e-0ebacae6d67b",
  "kind": "theorem",
  "lexical_name": "infsep_triple",
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
  "slug": "infsep-triple--7757d728bc2dd52972a58c84",
  "source": {
    "blob": "11e07b5a2ed5379356114634001216b62746e6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 436,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant79c6e77fcdb8985afecb2428ae0ad7347fb6c1238164f2480d8c59a7db1cc215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7757d728bc2dd52972a58c84250bba2ff2db2c76592aedf6b6c346907e611b6c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant79c6e77fcdb8985afecb2428ae0ad7347fb6c1238164f2480d8c59a7db1cc215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:518567e3-4577-10a9-3a9e-0ebacae6d67b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infsep_triple (hxy : x ≠ y) (hyz : y ≠ z) (hxz : x ≠ z) :
    ({x, y, z} : Set α).infsep = dist x y ⊓ dist x z ⊓ dist y z := by
  simp only [infsep, einfsep_triple hxy hyz hxz, ENNReal.toReal_inf, edist_ne_top x y,
    edist_ne_top x z, edist_ne_top y z, dist_edist, Ne.def, inf_eq_top_iff, and_self_iff,
    not_false_iff]
#align set.infsep_triple Set.infsep_triple

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant79c6e77fcdb8985afecb2428ae0ad7347fb6c1238164f2480d8c59a7db1cc215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant79c6e77fcdb8985afecb2428ae0ad7347fb6c1238164f2480d8c59a7db1cc215.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11e07b5a2ed5379356114634001216b62746e6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
