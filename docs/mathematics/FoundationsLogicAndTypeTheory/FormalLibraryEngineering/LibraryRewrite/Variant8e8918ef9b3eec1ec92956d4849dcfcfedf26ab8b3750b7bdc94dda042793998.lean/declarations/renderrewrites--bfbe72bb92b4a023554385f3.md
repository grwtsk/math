# renderRewrites

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93d692eb71911b3f0828c1bb7d16051dae51ebf41d960d68ce3169f06690b316",
  "kind": "def",
  "lexical_name": "renderRewrites",
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
  "slug": "renderrewrites--bfbe72bb92b4a023554385f3",
  "source": {
    "blob": "c93fa01e4ac2ff2255298b779d4bc4edbb82ae93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 470,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfbe72bb92b4a023554385f3ef438c0eb10678d9e1e6487db9a2084fe63d55b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93d692eb71911b3f0828c1bb7d16051dae51ebf41d960d68ce3169f06690b316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def renderRewrites (e : Expr) (results : Array (Array RewriteInterface × Kind))
    (range : Lsp.Range) (doc : FileWorker.EditableDocument) (showNames : Bool) :
    MetaM Html := do
  let htmls ← results.filterMapM (renderSection showNames)
  if htmls.isEmpty then
    return <p> No rewrites found for <InteractiveCode fmt={← ppExprTagged e}/> </p>
  else
    return .element "div" #[("style", json% {"marginLeft" : "4px"})] htmls
where
  /-- Render one section of rewrite results. -/
  renderSection (showNames : Bool) (sec : Array RewriteInterface × Kind) : MetaM (Option Html) := do
    let some head := sec.1[0]? | return none
    let suffix := match sec.2 with
      | .hypothesis => " (local hypotheses)"
      | .fromFile => " (lemmas from current file)"
      | .fromCache => ""
    return <details «open»={true}>
      <summary className="mv2 pointer">
        Pattern
        {← pattern head.lemmaType head.symm (return <InteractiveCode fmt={← ppExprTagged ·}/>)}
        {.text suffix}
      </summary>
      {renderSectionCore showNames sec.1}
    </details>

  /-- Render the list of rewrite results in one section. -/
  renderSectionCore (showNames : Bool) (sec : Array RewriteInterface) : Html :=
    .element "ul" #[("style", json% { "padding-left" : "30px"})] <|
    sec.map fun rw =>
      <li> { .element "p" #[] <|
        let button :=
          <span className="font-code"> {
            Html.ofComponent MakeEditLink
              (.ofReplaceRange doc.meta range rw.tactic)
              #[.text rw.replacementString] }
          </span>
        let extraGoals := rw.extraGoals.flatMap fun extraGoal =>
          #[<br/>, <strong className="goal-vdash">⊢ </strong>, <InteractiveCode fmt={extraGoal}/>]
        #[button] ++ extraGoals ++
          if showNames then #[<br/>, <InteractiveCode fmt={rw.prettyLemma}/>] else #[] }
      </li>

/-- The rpc method of the `rw??` widget. -/
@[server_rpc_method]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93fa01e4ac2ff2255298b779d4bc4edbb82ae93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
