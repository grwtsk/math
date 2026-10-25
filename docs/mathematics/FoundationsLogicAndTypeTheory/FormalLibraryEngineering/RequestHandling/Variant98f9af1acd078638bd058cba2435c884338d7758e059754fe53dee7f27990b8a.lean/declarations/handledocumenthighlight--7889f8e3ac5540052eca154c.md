# handleDocumentHighlight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f867396bc7d60d50fe465b3fbea9e5695e04caf17d7ccbe1073fe25937f022e7",
  "kind": "def",
  "lexical_name": "handleDocumentHighlight",
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
  "slug": "handledocumenthighlight--7889f8e3ac5540052eca154c",
  "source": {
    "blob": "d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7889f8e3ac5540052eca154c83202eafeddc7834f30c05cc9e7950120b340cf1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f867396bc7d60d50fe465b3fbea9e5695e04caf17d7ccbe1073fe25937f022e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def handleDocumentHighlight (p : DocumentHighlightParams)
    : RequestM (RequestTask (Array DocumentHighlight)) := do
  let doc ← readDoc
  let text := doc.meta.text
  let pos := text.lspPosToUtf8Pos p.position

  let rec highlightReturn? (doRange? : Option Range) : Syntax → Option DocumentHighlight
    | `(doElem|return%$i $e) => Id.run do
      if let some range := i.getRange? then
        if range.contains pos then
          return some { range := doRange?.getD (range.toLspRange text), kind? := DocumentHighlightKind.text }
      highlightReturn? doRange? e
    | `(do%$i $elems) => highlightReturn? (i.getRange?.get!.toLspRange text) elems
    | stx => stx.getArgs.findSome? (highlightReturn? doRange?)

  let highlightRefs? (snaps : Array Snapshot) : IO (Option (Array DocumentHighlight)) := do
    let trees := snaps.map (·.infoTree)
    let (refs, _) ← findModuleRefs text trees |>.toLspModuleRefs
    let mut ranges := #[]
    for ident in refs.findAt p.position (includeStop := true) do
      if let some info := refs.get? ident then
        if let some loc := info.definition? then
          ranges := ranges.push loc.range
        ranges := ranges.append <| info.usages.map (·.range)
    if ranges.isEmpty then
      return none
    return some <| ranges.map ({ range := ·, kind? := DocumentHighlightKind.text })

  withWaitFindSnap doc (fun s => s.endPos >= pos)
    (notFoundX := pure #[]) fun snap => do
      let (snaps, _) ← doc.cmdSnaps.getFinishedPrefix
      if let some his ← highlightRefs? snaps.toArray then
        return his
      if let some hi := highlightReturn? none snap.stx then
        return #[hi]
      return #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
