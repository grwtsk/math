# RegularityRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fb0eabd54d3a563edf6848412a2daa7d3ffdb220280e2ae013ee8037f19a639",
  "kind": "inductive",
  "lexical_name": "RegularityRequest",
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
  "slug": "regularityrequest--117d47c4185a7d2704dd34ae",
  "source": {
    "blob": "30e6c4dac26eaaf985212106a7ed5eefd7c090c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/Topology/GeneralTopology/ADae025f8a063fdf8/Variantb38397aaf8a7db147c8f1b654274c9fbb8c2f92df20b0938db774308e2aadcef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:117d47c4185a7d2704dd34ae47379c228cc7e101a24b9a25ffffdd3fff2866d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ADae025f8a063fdf8/Variantb38397aaf8a7db147c8f1b654274c9fbb8c2f92df20b0938db774308e2aadcef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fb0eabd54d3a563edf6848412a2daa7d3ffdb220280e2ae013ee8037f19a639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RegularityRequest
  | continuous
  | lipschitz
  | continuouslyDifferentiable
  deriving DecidableEq, Repr

end Mathematics.GammaBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ADae025f8a063fdf8/Variantb38397aaf8a7db147c8f1b654274c9fbb8c2f92df20b0938db774308e2aadcef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ADae025f8a063fdf8/Variantb38397aaf8a7db147c8f1b654274c9fbb8c2f92df20b0938db774308e2aadcef.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e6c4dac26eaaf985212106a7ed5eefd7c090c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
