# EndpointsPreserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b14f2d46375cc116082c9258644c0986242aa33ce9eebf8c365f8015ba6ab34",
  "kind": "def",
  "lexical_name": "EndpointsPreserved",
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
  "slug": "endpointspreserved--45fb2a47e186662261355bea",
  "source": {
    "blob": "26627c0769424960e0fe17797f6d8e92a4bd0763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF32f0acdcdcbbbb2/Variant66dca47ca07da800f93ba65659607dc31c2bb4c8cf224a283857704a9ab508c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45fb2a47e186662261355bea0d145445559b071acbe46fa3e2dd40146f55e524",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF32f0acdcdcbbbb2/Variant66dca47ca07da800f93ba65659607dc31c2bb4c8cf224a283857704a9ab508c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b14f2d46375cc116082c9258644c0986242aa33ce9eebf8c365f8015ba6ab34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EndpointsPreserved (bridge : Exact State) : Prop :=
  bridge.path 0 = bridge.left ∧ bridge.path 1 = bridge.right

end Mathematics.GammaBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF32f0acdcdcbbbb2/Variant66dca47ca07da800f93ba65659607dc31c2bb4c8cf224a283857704a9ab508c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF32f0acdcdcbbbb2/Variant66dca47ca07da800f93ba65659607dc31c2bb4c8cf224a283857704a9ab508c7.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26627c0769424960e0fe17797f6d8e92a4bd0763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
