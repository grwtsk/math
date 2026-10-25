# addTermSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2ca05ab67ff44f5cb42fdd55e547ad84fb63c81073d48b1fee705305d728886",
  "kind": "def",
  "lexical_name": "addTermSuggestion",
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
  "slug": "addtermsuggestion--fa8cb8f82425069de77474a9",
  "source": {
    "blob": "047f4a796962819a09262824ed17a9f77dec38c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa8cb8f82425069de77474a9e5b518599fa13e862ef198bf1d745f085259d7a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2ca05ab67ff44f5cb42fdd55e547ad84fb63c81073d48b1fee705305d728886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addTermSuggestion (ref : Syntax) (e : Expr)
    (origSpan? : Option Syntax := none) (header : String := "Try this:")
    (codeActionPrefix? : Option String := none) : MetaM Unit := do
  addSuggestion ref (← delabToRefinableSuggestion e) (origSpan? := origSpan?) (header := header)
    (codeActionPrefix? := codeActionPrefix?)

/-- Add term suggestions.

The parameters are:
* `ref`: the span of the widget diagnostic
* `es`: an array of the replacement expressions
* `origSpan?`: a syntax object whose span is the actual text to be replaced by `suggestion`.
  If not provided it defaults to `ref`.
* `header`: a string which precedes the list of suggestions. By default, it's `"Try these:"`.
* `codeActionPrefix?`: an optional string to be used as the prefix of the replacement text for all
  suggestions which do not have a custom `toCodeActionTitle?`. If not provided, `"Try this: "` is
  used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047f4a796962819a09262824ed17a9f77dec38c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
