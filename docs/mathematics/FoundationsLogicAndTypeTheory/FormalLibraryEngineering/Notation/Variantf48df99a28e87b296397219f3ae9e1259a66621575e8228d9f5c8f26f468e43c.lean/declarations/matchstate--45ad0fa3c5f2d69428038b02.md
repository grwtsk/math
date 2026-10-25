# MatchState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91cb386dcd0707c01911f1029a735036445bfd5a54f1389679ce98a4bec4e200",
  "kind": "structure",
  "lexical_name": "MatchState",
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
  "slug": "matchstate--45ad0fa3c5f2d69428038b02",
  "source": {
    "blob": "68feb8442d81f406f4ee0316c451d10daa1b4eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45ad0fa3c5f2d69428038b02d3f6df3ca3af1cb199e33e082135260ef8a6658d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91cb386dcd0707c01911f1029a735036445bfd5a54f1389679ce98a4bec4e200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatchState where
  /-- This stores the assignments of variables to subexpressions (and their contexts)
  that have been found so far during the course of the matching algorithm.
  We store the contexts since we need to delaborate expressions after we leave
  scoping constructs. -/
  vars : HashMap Name (SubExpr × LocalContext × LocalInstances)
  /-- The binders accumulated while matching a `scoped` expression. -/
  scopeState : Option (Array (TSyntax ``extBinderParenthesized))
  /-- The arrays of delaborated `Term`s accumulated while matching
  `foldl` and `foldr` expressions. For `foldl`, the arrays are stored in reverse order. -/
  foldState : HashMap Name (Array Term)

/-- A matcher is a delaboration function that transforms `MatchState`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68feb8442d81f406f4ee0316c451d10daa1b4eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
