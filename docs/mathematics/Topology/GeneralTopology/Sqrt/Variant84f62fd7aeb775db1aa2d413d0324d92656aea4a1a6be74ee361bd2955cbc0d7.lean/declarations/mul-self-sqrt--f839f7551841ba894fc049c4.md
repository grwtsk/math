# mul_self_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9777ef92-1476-14f1-512a-b969ec89b6ef",
  "kind": "theorem",
  "lexical_name": "mul_self_sqrt",
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
  "slug": "mul-self-sqrt--f839f7551841ba894fc049c4",
  "source": {
    "blob": "5e5741fcbeff7a79b7ae15f9a854c5720367a66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f839f7551841ba894fc049c449055b044c183537b5a1d544516be442e5d5e95d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9777ef92-1476-14f1-512a-b969ec89b6ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_self_sqrt (h : 0 ≤ x) : √x * √x = x := by
  rw [Real.sqrt, ← NNReal.coe_mul, NNReal.mul_self_sqrt, Real.coe_toNNReal _ h]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5741fcbeff7a79b7ae15f9a854c5720367a66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
