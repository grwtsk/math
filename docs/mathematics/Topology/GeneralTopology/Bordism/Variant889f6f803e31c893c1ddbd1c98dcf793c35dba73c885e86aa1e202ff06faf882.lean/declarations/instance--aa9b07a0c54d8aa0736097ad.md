# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b7836b258a656615cc73ff701e2e9637e59e60d0f580ae9ac93e4005dc2260d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--aa9b07a0c54d8aa0736097ad",
  "source": {
    "blob": "bcccd3e9df10b04b59361f3c055a81a8035e2787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa9b07a0c54d8aa0736097adadd6c1d3e0718d4638f0f9c3ce7e92375401ee9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b7836b258a656615cc73ff701e2e9637e59e60d0f580ae9ac93e4005dc2260d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {s : SingularManifold X k I} : BoundarylessManifold I s.M := s.boundaryless

/-- A map of topological spaces induces a corresponding map of singular manifolds. -/
-- This is part of proving functoriality of the bordism groups.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcccd3e9df10b04b59361f3c055a81a8035e2787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
