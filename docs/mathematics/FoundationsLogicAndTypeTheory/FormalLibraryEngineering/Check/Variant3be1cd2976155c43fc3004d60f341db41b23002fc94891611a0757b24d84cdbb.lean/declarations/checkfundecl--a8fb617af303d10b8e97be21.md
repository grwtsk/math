# checkFunDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6323da3a76995bca74b381ee904dca8bbdd8a803850d61045e645f1600f0efe",
  "kind": "def",
  "lexical_name": "checkFunDecl",
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
  "slug": "checkfundecl--a8fb617af303d10b8e97be21",
  "source": {
    "blob": "cd7d38b80b555b456edbfa5bd0a6a5126e839adf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8fb617af303d10b8e97be21133d9550a022713153b8b44c0a5f44a130af4781",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6323da3a76995bca74b381ee904dca8bbdd8a803850d61045e645f1600f0efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def checkFunDecl (funDecl : FunDecl .pure) : CheckM Unit := do
  checkFunDeclCore funDecl.binderName funDecl.params funDecl.type funDecl.value
  let decl ← getFunDecl (pu := .pure) funDecl.fvarId
  unless decl.binderName == funDecl.binderName do
    throwError "LCNF local function declaration mismatch at `{funDecl.binderName}`, binder name in local context `{decl.binderName}`"
  unless decl.type == funDecl.type do
    throwError "LCNF local function declaration mismatch at `{funDecl.binderName}`, type in local context{indentExpr decl.type}\nexpected{indentExpr funDecl.type}"
  unless (← getFunDecl funDecl.fvarId) == funDecl do
    throwError "LCNF local function declaration mismatch at `{funDecl.binderName}`, declaration in local context does match"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7d38b80b555b456edbfa5bd0a6a5126e839adf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
