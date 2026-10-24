# bounded_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3da29853-e3ea-d908-974a-33b72311d911",
  "kind": "theorem",
  "lexical_name": "bounded_union",
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
  "slug": "bounded-union--b5d4e965d009467d202a80d6",
  "source": {
    "blob": "5ba8c647f38ac8be65be37d8efb559c9d2788fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2450,
    "line": 2446,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5d4e965d009467d202a80d65d10dc055ed09b6df2240f5704d7fc1fdaa92bb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da29853-e3ea-d908-974a-33b72311d911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2446–2450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem bounded_union : Bounded (s ∪ t) ↔ Bounded s ∧ Bounded t := by
  simp only [bounded_iff_isBounded, isBounded_union]
#align metric.bounded_union Metric.bounded_union

/-- The union of two bounded sets is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean#L2446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba8c647f38ac8be65be37d8efb559c9d2788fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
