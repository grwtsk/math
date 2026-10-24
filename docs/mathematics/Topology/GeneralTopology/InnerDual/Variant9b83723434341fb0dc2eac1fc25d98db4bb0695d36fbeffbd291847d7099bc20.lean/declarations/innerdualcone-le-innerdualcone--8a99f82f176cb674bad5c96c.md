# innerDualCone_le_innerDualCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60d6c1cd-ba86-05d0-b38d-7022c159c04c",
  "kind": "theorem",
  "lexical_name": "innerDualCone_le_innerDualCone",
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
  "slug": "innerdualcone-le-innerdualcone--8a99f82f176cb674bad5c96c",
  "source": {
    "blob": "b00e0c7bc1353fa77366e141115051560074f50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a99f82f176cb674bad5c96c7c8a3cd69d509f22e17bfa320637fb7030c9d0aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d6c1cd-ba86-05d0-b38d-7022c159c04c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerDualCone_le_innerDualCone (h : t ⊆ s) : s.innerDualCone ≤ t.innerDualCone :=
  fun _ hy x hx => hy x (h hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00e0c7bc1353fa77366e141115051560074f50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
