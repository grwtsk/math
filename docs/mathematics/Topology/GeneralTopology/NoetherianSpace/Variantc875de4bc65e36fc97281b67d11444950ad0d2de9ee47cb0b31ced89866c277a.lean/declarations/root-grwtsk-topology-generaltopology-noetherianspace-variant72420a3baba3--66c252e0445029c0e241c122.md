# _root_.GRWTSK.Topology.GeneralTopology.NoetherianSpace.Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.Topology.IsInducing.noetherianSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ba0be91-66b8-1be7-aa26-b6348137d25a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.NoetherianSpace.Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.Topology.IsInducing.noetherianSpace",
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
  "slug": "root-grwtsk-topology-generaltopology-noetherianspace-variant72420a3baba3--66c252e0445029c0e241c122",
  "source": {
    "blob": "fb4b2f547532ff6a01ed6cf3618f0e8dcc960b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66c252e0445029c0e241c122fa70ad6ac08d6b938b6bd257f8aa2024247e75a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ba0be91-66b8-1be7-aa26-b6348137d25a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.Topology.GeneralTopology.NoetherianSpace.Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.Topology.IsInducing.noetherianSpace [NoetherianSpace α] {i : β → α}
    (hi : IsInducing i) : NoetherianSpace β :=
  (noetherianSpace_iff_opens _).2 fun _ => hi.isCompact_iff.2 (NoetherianSpace.isCompact _)

@[stacks 0052 "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb4b2f547532ff6a01ed6cf3618f0e8dcc960b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
