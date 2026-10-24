# AbsoluteGaloisGroupAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db16ea7a51a77ffefa083632834533d18cde2e807f8cd94c4f5b55c71b45a3eb",
  "kind": "structure",
  "lexical_name": "AbsoluteGaloisGroupAdapter",
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
  "slug": "absolutegaloisgroupadapter--4aadc43eee7a2c88ba358119",
  "source": {
    "blob": "3fe0a284c21f37280d729904e0677f2aa75f1539",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4aadc43eee7a2c88ba358119b0875d4e8fa917ab64123b35a4b9623897b16f3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db16ea7a51a77ffefa083632834533d18cde2e807f8cd94c4f5b55c71b45a3eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AbsoluteGaloisGroupAdapter
    (K : ArithmeticFieldLabel) where
  group : ProfiniteGroupLike
  realizesAbsoluteGaloisGroup : Prop
  realizesAbsoluteGaloisGroupCertified :
    realizesAbsoluteGaloisGroup
  boundary : List String

/-- A local Galois group adapter over a named place of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe0a284c21f37280d729904e0677f2aa75f1539` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
