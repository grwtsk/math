# filterTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:355e9517c688d56a982de2e307574b4bc1d30a1716f9f57a5e3af03df5323e10",
  "kind": "def",
  "lexical_name": "filterTag",
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
  "slug": "filtertag--56ecbbd83754fcffb9d33910",
  "source": {
    "blob": "d128add4dc520651c5c4e573be1bedc8287e3f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant5614e9268868de3de31fdec355def858d8bcf9bb1da6bc00b5c454562160dbb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56ecbbd83754fcffb9d33910eb1abd48c333c67c958f70d281c44b1cce026678",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant5614e9268868de3de31fdec355def858d8bcf9bb1da6bc00b5c454562160dbb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:355e9517c688d56a982de2e307574b4bc1d30a1716f9f57a5e3af03df5323e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def filterTag (mvarIds : List MVarId) (tag : Name) : TacticM (List MVarId) := do
  let gs ← mvarIds.toArray.filterMapM fun mvarId => do
    let userName := (← mvarId.getDecl).userName
    if tag == userName then
      return some (0, mvarId)
    else if tag.isSuffixOf userName then
      return some (1, mvarId)
    else if tag.isPrefixOf userName then
      return some (2, mvarId)
    else
      return none
  -- Insertion sort is a stable sort:
  let gs := gs.insertionSort (·.1 < ·.1)
  return gs |>.map (·.2) |>.toList

/-- Find the first goal among those matching `tag` whose type unifies with `patt`.
The `renameI` array consists of names to use to rename inaccessibles.
The `patt` term is elaborated in the context where the inaccessibles have been renamed.

Returns the found goal, goals caused by elaborating `patt`, and the remaining goals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant5614e9268868de3de31fdec355def858d8bcf9bb1da6bc00b5c454562160dbb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant5614e9268868de3de31fdec355def858d8bcf9bb1da6bc00b5c454562160dbb3.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d128add4dc520651c5c4e573be1bedc8287e3f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
