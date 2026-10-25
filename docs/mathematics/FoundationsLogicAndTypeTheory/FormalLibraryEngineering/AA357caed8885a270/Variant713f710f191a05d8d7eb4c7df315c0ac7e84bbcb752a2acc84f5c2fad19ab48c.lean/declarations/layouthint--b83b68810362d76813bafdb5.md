# LayoutHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f87550ee26fd1709fe0f9bc02552a2adb51908af502af65bd14d156ce5b1e26b",
  "kind": "structure",
  "lexical_name": "LayoutHint",
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
  "slug": "layouthint--b83b68810362d76813bafdb5",
  "source": {
    "blob": "6a0da343c34eff261a92cbd8547c9ac32b46c29f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA357caed8885a270/Variant713f710f191a05d8d7eb4c7df315c0ac7e84bbcb752a2acc84f5c2fad19ab48c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b83b68810362d76813bafdb50d1f98da2345d0ba84f147ea27bb359c5480d7b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA357caed8885a270/Variant713f710f191a05d8d7eb4c7df315c0ac7e84bbcb752a2acc84f5c2fad19ab48c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f87550ee26fd1709fe0f9bc02552a2adb51908af502af65bd14d156ce5b1e26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LayoutHint where
  occurrenceId : ProjectionOccurrenceId
  depth : Nat
  preorder : Nat
  leafStart : Nat
  leafEnd : Nat
  deriving DecidableEq

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA357caed8885a270/Variant713f710f191a05d8d7eb4c7df315c0ac7e84bbcb752a2acc84f5c2fad19ab48c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA357caed8885a270/Variant713f710f191a05d8d7eb4c7df315c0ac7e84bbcb752a2acc84f5c2fad19ab48c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0da343c34eff261a92cbd8547c9ac32b46c29f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
