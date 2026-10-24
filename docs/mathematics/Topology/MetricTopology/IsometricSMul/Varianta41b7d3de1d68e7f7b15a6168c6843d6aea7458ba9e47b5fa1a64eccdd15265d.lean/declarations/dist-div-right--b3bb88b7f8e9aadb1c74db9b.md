# dist_div_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ef8646f73eac128d7daf6efc435b71615c140b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a41b7d3de1d68e7f7b15a6168c6843d6aea7458ba9e47b5fa1a64eccdd15265d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51cbeee4-d0f8-6eb7-0689-fb1525fb61df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fca09e2-faf9-6d96-3219-15588c88ba9f",
  "kind": "theorem",
  "lexical_name": "dist_div_right",
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
  "slug": "dist-div-right--b3bb88b7f8e9aadb1c74db9b",
  "source": {
    "blob": "5ef8646f73eac128d7daf6efc435b71615c140b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 283,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Varianta41b7d3de1d68e7f7b15a6168c6843d6aea7458ba9e47b5fa1a64eccdd15265d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3bb88b7f8e9aadb1c74db9b4d3d1884abf313910e5516b8da95920e5ee1520f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Varianta41b7d3de1d68e7f7b15a6168c6843d6aea7458ba9e47b5fa1a64eccdd15265d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fca09e2-faf9-6d96-3219-15588c88ba9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_div_right [DivInvMonoid M] [PseudoMetricSpace M] [IsIsometricSMul Mᵐᵒᵖ M]
    (a b c : M) : dist (a / c) (b / c) = dist a b := by simp only [div_eq_mul_inv, dist_mul_right]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Varianta41b7d3de1d68e7f7b15a6168c6843d6aea7458ba9e47b5fa1a64eccdd15265d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Varianta41b7d3de1d68e7f7b15a6168c6843d6aea7458ba9e47b5fa1a64eccdd15265d.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef8646f73eac128d7daf6efc435b71615c140b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
