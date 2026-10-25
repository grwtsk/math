# suggestUnfold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4c89836fd97a2bebf40c0d9c24124317eff68cec7eda595ada57c3bbaad73ad",
  "kind": "def",
  "lexical_name": "suggestUnfold",
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
  "slug": "suggestunfold--80fd0183f313ceda34022ab1",
  "source": {
    "blob": "e972fdb6b063e8a78f1aa6ba540ae613ba03ff35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant39c6386e45eec2acc1fa4fe1293805b6b4328ed83e00c7721d8dabb1f93b3196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80fd0183f313ceda34022ab12a567c0f03bcc68e3aafcac103d5ec743d5a122f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant39c6386e45eec2acc1fa4fe1293805b6b4328ed83e00c7721d8dabb1f93b3196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4c89836fd97a2bebf40c0d9c24124317eff68cec7eda595ada57c3bbaad73ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def suggestUnfold (e : Expr) (rwKind : RwKind) :
    ClickSuggestionsM (Option Html) := do
  let results ← filteredUnfolds e
  if results.isEmpty then
    return none
  let htmls ← results.mapM fun unfold => do
    let tactic ← tacticSyntax e unfold rwKind
    mkSuggestion tactic (← exprToHtml unfold)
  return <details>
    <summary className="mv2 pointer"> unfold ({← exprToHtml e}) </summary>
    {.element "div" #[] htmls}
  </details>

open Elab in
/-- `#unfold? e` gives all unfolds of `e`.
In tactic mode, use `unfold?` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant39c6386e45eec2acc1fa4fe1293805b6b4328ed83e00c7721d8dabb1f93b3196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant39c6386e45eec2acc1fa4fe1293805b6b4328ed83e00c7721d8dabb1f93b3196.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e972fdb6b063e8a78f1aa6ba540ae613ba03ff35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
