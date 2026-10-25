# sortDeclLevelParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b56a2f11cb891304b05119ab4be9265db37f6c3600d404e08c450ab8fa9e9d6",
  "kind": "def",
  "lexical_name": "sortDeclLevelParams",
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
  "slug": "sortdecllevelparams--249bbb84243b1d17b4482ee6",
  "source": {
    "blob": "f926778b1727ed403f4bdf919418a34fe6945ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:249bbb84243b1d17b4482ee6e4b35c35d7be2f5baf9090652f7bf7362d5afec3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b56a2f11cb891304b05119ab4be9265db37f6c3600d404e08c450ab8fa9e9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sortDeclLevelParams (scopeParams : List Name) (allUserParams : List Name) (usedParams : Array Name) : Except String (List Name) :=
  match allUserParams.find? fun u => !usedParams.contains u && !scopeParams.elem u with
  | some u => throw s!"unused universe parameter '{u}'"
  | none   =>
    -- Recall that `allUserParams` (like `scopeParams`) are in reverse order. That is, the last declared universe is the first element of the list.
    -- The following `foldl` will reverse the elements and produce a list of universe levels using the user given order.
    let result := allUserParams.foldl (fun result levelName => if usedParams.elem levelName then levelName :: result else result) []
    let remaining := usedParams.filter (fun levelParam => !allUserParams.elem levelParam)
    let remaining := remaining.qsort Name.lt
    return result ++ remaining.toList

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f926778b1727ed403f4bdf919418a34fe6945ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
