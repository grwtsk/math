# getHtmlComponentProps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f74f5990a46fcbe3319d0118ce54d36cdb1f41ecffe971981967b7cf60eb15af",
  "kind": "def",
  "lexical_name": "getHtmlComponentProps",
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
  "slug": "gethtmlcomponentprops--24fd58b07981e38c831202ba",
  "source": {
    "blob": "ce91e8198bca2593897ed95383a181a7e9684406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestImpl/Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24fd58b07981e38c831202ba56cf9e6bc4f6ca683c925ed41e3b74454964c13d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestImpl/Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f74f5990a46fcbe3319d0118ce54d36cdb1f41ecffe971981967b7cf60eb15af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getHtmlComponentProps {Props} [RpcEncodable Props] (html : Html) (c : Component Props)
    (arr : Array Props) : CoreM (Array Props) := do
  match html with
  | .element _ _ htmls => htmls.foldlM (fun arr html ↦ getHtmlComponentProps html c arr) arr
  | .text _ => return arr
  | .component hash _ lazy htmls =>
    let mut arr := arr
    if hash == c.javascriptHash then
      arr := arr.push <| ← getProps lazy
    if hash == FilterDetails.javascriptHash then
      let props : FilterDetailsProps ← getProps lazy
      arr ← getHtmlComponentProps props.all c arr
    if hash == RefreshComponent.javascriptHash then
      let props : RefreshComponent.Props ← getProps lazy
      arr ← getHtmlComponentProps (← getFinalHtml props.state.val) c arr
    htmls.foldlM (fun arr html ↦ getHtmlComponentProps html c arr) arr
where
  getProps {Props} [RpcEncodable Props] (lazy : LazyEncodable Json) :
      CoreM Props := do
    let (json, state) := lazy.run {}
    match rpcDecode json state with
    | .ok props => return props
    | .error e => throwError "An error occurred when looking at the HTML: {e}"
/- Wait until the state has finished refreshing, and the return the final HTML.
This is useful for inspecting `Html` from within Lean. -/
  getFinalHtml (info : RefreshRef) : BaseIO Html := do
  let { curr, next, .. } ← info.ref.atomically get
  if next.get.isNone then
    return curr.get
  getFinalHtml info

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestImpl/Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestImpl/Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce91e8198bca2593897ed95383a181a7e9684406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
