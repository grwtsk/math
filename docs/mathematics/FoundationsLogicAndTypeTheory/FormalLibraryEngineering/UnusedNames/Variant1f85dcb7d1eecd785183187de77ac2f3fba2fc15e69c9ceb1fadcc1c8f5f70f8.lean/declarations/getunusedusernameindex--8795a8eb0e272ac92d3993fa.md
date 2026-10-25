# getUnusedUserNameIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dba4f6d76eb13ec40ebc7bbc77369d686b74b9f4344c57a09955c6e75f67610",
  "kind": "def",
  "lexical_name": "getUnusedUserNameIndex",
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
  "slug": "getunusedusernameindex--8795a8eb0e272ac92d3993fa",
  "source": {
    "blob": "a95958f825cd508a447529b59e99d92a2acae23c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8795a8eb0e272ac92d3993fa98cdad48366a215588a4b2a4c984050688c2c9ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dba4f6d76eb13ec40ebc7bbc77369d686b74b9f4344c57a09955c6e75f67610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getUnusedUserNameIndex (lctx : LocalContext) (suggestion : Name) :
    Option Nat := Id.run do
  let mut minSuffix := none
  for ldecl in lctx do
    let hypName := ldecl.userName
    if hypName.hasMacroScopes then
      continue
    match ldecl.userName.matchUpToIndexSuffix suggestion with
    | .exactMatch => minSuffix := updateMinSuffix minSuffix 1
    | .noMatch => continue
    | .suffixMatch i => minSuffix := updateMinSuffix minSuffix (i + 1)
  minSuffix
where
  /-- Auxiliary definition for `getUnusedUserNameIndex`. -/
  @[inline]
  updateMinSuffix : Option Nat → Nat → Option Nat
    | none, j => some j
    | some i, j => some $ i.max j

/--
Obtain a name `n` such that `n` is unused in the given local context and
`suggestion` is a prefix of `n`. This is similar to `getUnusedName` but uses
a different algorithm which may or may not be faster.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant1f85dcb7d1eecd785183187de77ac2f3fba2fc15e69c9ceb1fadcc1c8f5f70f8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95958f825cd508a447529b59e99d92a2acae23c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
