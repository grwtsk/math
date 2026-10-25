# findReferences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f5087eee6a20353d2b8adafa4e9b7a4e84fda46afa0161ef70209e9f65b381f",
  "kind": "def",
  "lexical_name": "findReferences",
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
  "slug": "findreferences--dbcb536e04df47c09b614117",
  "source": {
    "blob": "633baf65e182b269ae7d068ca67b5ef31f1e07ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbcb536e04df47c09b614117ebb62ec6453ce3b9f387e5279b7ce0b49c1ae59c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f5087eee6a20353d2b8adafa4e9b7a4e84fda46afa0161ef70209e9f65b381f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findReferences (text : FileMap) (trees : Array InfoTree) : Array Reference :=
  Id.run <| StateT.run' (s := #[]) do
    for tree in trees do
      tree.visitM' (postNode := fun ci info _ => do
        let some (ident, isBinder) := identOf ci info
          | return
        let some range := info.range?
          | return
        if info.stx.getHeadInfo matches .original .. then  -- we are not interested in canonical syntax here
          modify (·.push { ident, range := range.toLspRange text, stx := info.stx, ci, info, isBinder }))
    get

/--
There are several different identifiers that should be considered equal for the purpose of finding
all references of an identifier:
- `FVarId`s of a function parameter in the function's signature and body
- Chains of helper definitions like those created for do-reassignment `x := e`
- Overlapping definitions like those defined by `where` declarations that define both an FVar
  (for local usage) and a constant (for non-local usage)
- Identifiers connected by `FVarAliasInfo` such as variables before and after `match` generalization

In the first three cases that are not explicitly denoted as aliases with an `FVarAliasInfo`, the
corresponding `Reference`s have the exact same range.
This function finds all definitions that have the exact same range as another definition or usage
and collapses them into a single identifier. It also collapses identifiers connected by
an `FVarAliasInfo`.
When collapsing identifiers, it prefers using a `RefIdent.const name` over a `RefIdent.fvar id` for
all identifiers that are being collapsed into one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633baf65e182b269ae7d068ca67b5ef31f1e07ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
