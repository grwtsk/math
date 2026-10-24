# SphericalBinaryPatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3002c8e487893431f6836e836445b4c3deadabb664cb1411c68e51bbec397201",
  "kind": "structure",
  "lexical_name": "SphericalBinaryPatch",
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
  "slug": "sphericalbinarypatch--e0e7c83883b7246dd0ad0550",
  "source": {
    "blob": "8b339cd4a26c58f27f4419f1e58152dc89083a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 263,
    "path": "GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantff2c14a6bd3d00fa4be0fb22ea40520139d64a96e05300f68bb27375cee03500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0e7c83883b7246dd0ad055020d56377ca2af91a640d65d0db272a43e9bd8cd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FramedCellTopology/Variantff2c14a6bd3d00fa4be0fb22ea40520139d64a96e05300f68bb27375cee03500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3002c8e487893431f6836e836445b4c3deadabb664cb1411c68e51bbec397201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SphericalBinaryPatch where
  boundaryVertices : Nat
  boundaryVertices_eq_four_or_refined : 4 ≤ boundaryVertices
  insideLabel : Bit
  outsideLabel : Bit

namespace SphericalBinaryPatch

/-- The basic central active face with one exterior zero face sharing a 4-cycle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FramedCellTopology/Variantff2c14a6bd3d00fa4be0fb22ea40520139d64a96e05300f68bb27375cee03500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantff2c14a6bd3d00fa4be0fb22ea40520139d64a96e05300f68bb27375cee03500.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b339cd4a26c58f27f4419f1e58152dc89083a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
