# SourceEdgeKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6589a27e5a52e411f706b9e2585e32951f50390db0b5ff5f165a6ecb400591e4",
  "kind": "inductive",
  "lexical_name": "SourceEdgeKind",
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
  "slug": "sourceedgekind--df99ab8a81f59ab7c6315e94",
  "source": {
    "blob": "238c969df747959dc7e46f02d39d7eade749baf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A33c87004a3aa62c7/Variant5b6fb6aaa840dcb7308b3eb5f9e0a6c6114c5791c75e709e4148afac6a257f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df99ab8a81f59ab7c6315e94bde7464f323c93193cc00f72907e07512d426437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A33c87004a3aa62c7/Variant5b6fb6aaa840dcb7308b3eb5f9e0a6c6114c5791c75e709e4148afac6a257f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6589a27e5a52e411f706b9e2585e32951f50390db0b5ff5f165a6ecb400591e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SourceEdgeKind
  | kernelDependency
  | earlierSourceDeclaration
  | syntaxProvider
  | macroProvider
  | notationProvider
  | namespaceContext
  | sectionVariableContext
  | optionProvider
  | attributeProvider
  | localInstanceProvider
  | scopedInstanceProvider
  | commandElaborator
  | privateClusterCoupling
  | sourceGeneration
  | generatedCompanion
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Element
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A33c87004a3aa62c7/Variant5b6fb6aaa840dcb7308b3eb5f9e0a6c6114c5791c75e709e4148afac6a257f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A33c87004a3aa62c7/Variant5b6fb6aaa840dcb7308b3eb5f9e0a6c6114c5791c75e709e4148afac6a257f35.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238c969df747959dc7e46f02d39d7eade749baf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
