# nndist_inv_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97e1306044cf1eaea818a0983e0a3c7911b3017e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:073eccf9-03aa-8369-afa4-c4b259957516",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ec0d2e0-bb19-aea0-1bb4-338fe6543f56",
  "kind": "theorem",
  "lexical_name": "nndist_inv_inv",
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
  "slug": "nndist-inv-inv--49559dc43a7f00d380202d0d",
  "source": {
    "blob": "97e1306044cf1eaea818a0983e0a3c7911b3017e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 297,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49559dc43a7f00d380202d0dec49028296c2337018345fadec5b6eea1690d9f6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ec0d2e0-bb19-aea0-1bb4-338fe6543f56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_inv_inv [Group G] [PseudoMetricSpace G] [IsIsometricSMul G G]
    [IsIsometricSMul Gᵐᵒᵖ G] (a b : G) : nndist a⁻¹ b⁻¹ = nndist a b :=
  (IsometryEquiv.inv G).nndist_eq a b

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e1306044cf1eaea818a0983e0a3c7911b3017e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
