# DomNode.fromRevisionedXYZ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84baa96ca0a7560ac055933afb83897d2e3b60bed570a8bbfb4773913d10262",
  "kind": "def",
  "lexical_name": "DomNode.fromRevisionedXYZ",
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
  "slug": "domnode-fromrevisionedxyz--0502ce6f852546c9ded2428b",
  "source": {
    "blob": "c56f8430c3020f368f5772bfce226c0761d224f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0502ce6f852546c9ded2428b55f581d6fa7525cf1852c6e59f363bd3d36b9fdf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84baa96ca0a7560ac055933afb83897d2e3b60bed570a8bbfb4773913d10262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def DomNode.fromRevisionedXYZ
    (hostCode : Nat) (value : RevisionedXYZ xyzFormatV1) : DomNode where
  stableNodeId := hostCode
  hostCode := hostCode
  revision := value.revision.val
  xRaw := value.value.x.raw
  yRaw := value.value.y.raw
  zRaw := value.value.z.raw

/-- Commit a value that has already crossed the complete proof-bearing
verification boundary.  The source-snapshot hash is preserved: Lean does not
manufacture a new SHA-256 digest after a presentation write.  All existing
projections of the target host are updated.  If verification observed an empty
target register and no projection exists yet, one canonical target node is
appended before publication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56f8430c3020f368f5772bfce226c0761d224f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
