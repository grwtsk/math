# leanSearchCommandImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:740434d94d7f27d4382c7db21470df2b0d10c3ed661202edd0838892c52f9b80",
  "kind": "def",
  "lexical_name": "leanSearchCommandImpl",
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
  "slug": "leansearchcommandimpl--25879e8a07de14019d5ee5ae",
  "source": {
    "blob": "d1b9dd19f7c8591141847ff73ecd421ac1941dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0f245e17d5418f2b73f6f378a8a67a6d7ab1a466f24a19ae86be653557ba88b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25879e8a07de14019d5ee5aea23689adf514b474d110ec1249d6e7507ddaf7aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0f245e17d5418f2b73f6f378a8a67a6d7ab1a466f24a19ae86be653557ba88b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:740434d94d7f27d4382c7db21470df2b0d10c3ed661202edd0838892c52f9b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[command_elab leansearch_search_cmd] def leanSearchCommandImpl : CommandElab :=
  fun stx =>
  match stx with
  | `(command| #leansearch $s) => do
    leanSearchServer.searchCommandSuggestions  stx s
  | `(command| #leansearch) => do
    logWarning leanSearchServer.incompleteSearchQuery
  | _ => throwUnsupportedSyntax

/-- Search from within Lean, depending on the option `leansearchclient.backend` (currently only leansearch).
Queries should be a string that ends with a `.` or `?`. This works as a command, as a term
and as a tactic as in the following examples. In tactic mode, only valid tactics are displayed.

```lean
#search "If a natural number n is less than m, then the successor of n is less than the successor of m."

example := #search "If a natural number n is less than m, then the successor of n is less than the successor of m."

example : 3 ≤ 5 := by
  #search "If a natural number n is less than m, then the successor of n is less than the successor of m."
  sorry

In tactic mode, if the query string is not supplied, then [LeanStateSearch](https://premise-search.com) is queried based on the goal state.
```
 -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0f245e17d5418f2b73f6f378a8a67a6d7ab1a466f24a19ae86be653557ba88b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0f245e17d5418f2b73f6f378a8a67a6d7ab1a466f24a19ae86be653557ba88b0.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b9dd19f7c8591141847ff73ecd421ac1941dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
