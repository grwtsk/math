# getTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d82bdb578097c950f56c11d92da9d8f36cdab911d3b54bd67ee6dd9328c2710b",
  "kind": "def",
  "lexical_name": "getTheorems",
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
  "slug": "gettheorems--b700541ccd3a2b8c97bda37d",
  "source": {
    "blob": "4ed9e0797f6ee5e716ca7b9c7171b2134cbe8c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b700541ccd3a2b8c97bda37da62de39563c8cf9f69c9c14a67c546fa4fb282ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d82bdb578097c950f56c11d92da9d8f36cdab911d3b54bd67ee6dd9328c2710b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getTheorems (t : InfoTree) (env : Environment) : List ConstantVal :=
  t.getDeclsByBody.filterMap env.findTheoremConstVal?

end InfoTree

namespace Info

/-- Gets the local context, and the expected type of the `Info`.
Handles `TacticInfo`s (looking at the first goal), `TermInfo`s, and `PartialTermInfo`s.
Does not get the metavariable context; assumes that the caller has accumulated an ambient
`ContextInfo` at this point which is sufficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ed9e0797f6ee5e716ca7b9c7171b2134cbe8c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
