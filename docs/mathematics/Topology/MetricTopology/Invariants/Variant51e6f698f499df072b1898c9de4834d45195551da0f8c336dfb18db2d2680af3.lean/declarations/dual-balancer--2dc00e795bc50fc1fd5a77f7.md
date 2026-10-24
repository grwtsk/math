# dual_balanceR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9b77f45967cb3091b5f34001bf26a344faaf787",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4223425a-c04a-1282-27de-de7f42a2ad5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81be8d91-5440-94a9-9834-673ca6d3b8cc",
  "kind": "theorem",
  "lexical_name": "dual_balanceR",
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
  "slug": "dual-balancer--2dc00e795bc50fc1fd5a77f7",
  "source": {
    "blob": "f9b77f45967cb3091b5f34001bf26a344faaf787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 301,
    "path": "GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dc00e795bc50fc1fd5a77f7a8e19e0223f55321795bb085684843f45fb11caa",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81be8d91-5440-94a9-9834-673ca6d3b8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_balanceR (l : Ordnode α) (x : α) (r : Ordnode α) :
    dual (balanceR l x r) = balanceL (dual r) x (dual l) := by
  rw [← dual_dual (balanceL _ _ _), dual_balanceL, dual_dual, dual_dual]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9b77f45967cb3091b5f34001bf26a344faaf787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
