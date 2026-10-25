# renderUnfolds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3cc5623df3aa66105405484a867f16d986f0ecf9231bf338c21294a5f494238",
  "kind": "def",
  "lexical_name": "renderUnfolds",
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
  "slug": "renderunfolds--398cb881cc35c86b5ea91139",
  "source": {
    "blob": "7d3eae135546ff5d54f25324916ec80ad12a8d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variant0fab8a9a1a3a84892fe43a44c7d350033bdab1955fd1c133b8879105e3a95887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:398cb881cc35c86b5ea91139d18b839678e28a26f69afcbdb9594be447048a67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variant0fab8a9a1a3a84892fe43a44c7d350033bdab1955fd1c133b8879105e3a95887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3cc5623df3aa66105405484a867f16d986f0ecf9231bf338c21294a5f494238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def renderUnfolds (e : Expr) (occ : Option Nat) (loc : Option Name) (range : Lsp.Range)
    (doc : FileWorker.EditableDocument) : MetaM (Option Html) := do
  let results ← filteredUnfolds e
  if results.isEmpty then
    return none
  let core ← results.mapM fun unfold => do
    let tactic ← tacticString e unfold occ loc
    return <li> {
      .element "p" #[] <|
        #[<span className="font-code" style={json% { "white-space" : "pre-wrap" }}> {
          Html.ofComponent MakeEditLink
            (.ofReplaceRange doc.meta range tactic)
            #[.text <| Format.pretty <| (← Meta.ppExpr unfold)] }
        </span>]
      } </li>
  return <details «open»={true}>
    <summary className="mv2 pointer">
      {.text "Definitional rewrites:"}
    </summary>
    {.element "ul" #[("style", json% { "padding-left" : "30px"})] core}
  </details>


@[server_rpc_method_cancellable]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variant0fab8a9a1a3a84892fe43a44c7d350033bdab1955fd1c133b8879105e3a95887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variant0fab8a9a1a3a84892fe43a44c7d350033bdab1955fd1c133b8879105e3a95887.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3eae135546ff5d54f25324916ec80ad12a8d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
