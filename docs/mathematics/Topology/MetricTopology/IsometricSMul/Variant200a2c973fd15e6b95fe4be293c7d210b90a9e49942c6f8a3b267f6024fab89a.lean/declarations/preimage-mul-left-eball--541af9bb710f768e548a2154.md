# preimage_mul_left_eball

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
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a322095e-23e1-6e08-6a3f-5cd6de5cff1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:836fc579-efe5-be5c-5c7c-69f31d523722",
  "kind": "theorem",
  "lexical_name": "preimage_mul_left_eball",
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
  "slug": "preimage-mul-left-eball--541af9bb710f768e548a2154",
  "source": {
    "blob": "97e1306044cf1eaea818a0983e0a3c7911b3017e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 222,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:541af9bb710f768e548a2154ae648aa03e49ad195409d29022a436707aaaace9",
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

Occurrence: `result:836fc579-efe5-be5c-5c7c-69f31d523722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_mul_left_eball [IsIsometricSMul G G] (a b : G) (r : ℝ≥0∞) :
    (a * ·) ⁻¹' eball b r = eball (a⁻¹ * b) r :=
  preimage_smul_eball a b r

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variant200a2c973fd15e6b95fe4be293c7d210b90a9e49942c6f8a3b267f6024fab89a.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e1306044cf1eaea818a0983e0a3c7911b3017e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
