# DomNode.withRevisionedXYZ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee2a8d4a3d12c8b63a12dc5d4e6f11c74f29d3133ec3438d969f67de98d5905a",
  "kind": "def",
  "lexical_name": "DomNode.withRevisionedXYZ",
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
  "slug": "domnode-withrevisionedxyz--66cce1c5399f8185f434b36d",
  "source": {
    "blob": "c05cfe00e0a8d859f09a73d6c0e4aa6cee26934c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66cce1c5399f8185f434b36dcbfd1e4c594016bed0852d78976084776fbb6625",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee2a8d4a3d12c8b63a12dc5d4e6f11c74f29d3133ec3438d969f67de98d5905a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def DomNode.withRevisionedXYZ
    (node : DomNode) (value : RevisionedXYZ xyzFormatV1) : DomNode where
  stableNodeId := node.stableNodeId
  hostCode := node.hostCode
  revision := value.revision.val
  xRaw := value.value.x.raw
  yRaw := value.value.y.raw
  zRaw := value.value.z.raw

/-- Canonical finite-model node used when a verified empty target register has
not yet been projected.  The contract's injective host code is also the new
stable node identifier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05cfe00e0a8d859f09a73d6c0e4aa6cee26934c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
