# findCompletionInfosAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b6e796e33847aa2209b20887a0e8af80dc22b266e1f680c166e8476e84db084",
  "kind": "def",
  "lexical_name": "findCompletionInfosAt",
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
  "slug": "findcompletioninfosat--81fa1772a338b5681d6e4961",
  "source": {
    "blob": "981f61285a2350397af47c4fe7e8d1a0aa68e5ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81fa1772a338b5681d6e4961ed9e62311cfdabf60fca41fa23a4ebc8c631790c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b6e796e33847aa2209b20887a0e8af80dc22b266e1f680c166e8476e84db084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findCompletionInfosAt
    (fileMap  : FileMap)
    (hoverPos : String.Pos.Raw)
    (cmdStx   : Syntax)
    (infoTree : InfoTree)
    : Array ContextualizedCompletionInfo × Bool := Id.run do
  let ⟨hoverLine, _⟩ := fileMap.toPosition hoverPos
  let mut isComplete := true
  let mut completionInfoCandidates := infoTree.foldInfo (init := #[]) (go hoverLine)
  if completionInfoCandidates.isEmpty then
    completionInfoCandidates := findSyntheticCompletions fileMap hoverPos cmdStx infoTree
    isComplete := false
  return (filterDuplicateCompletionInfos completionInfoCandidates, isComplete)
where
  go
      (hoverLine : Nat)
      (ctx       : ContextInfo)
      (info      : Info)
      (best     : Array ContextualizedCompletionInfo)
      : Array ContextualizedCompletionInfo := Id.run do
    let .ofCompletionInfo completionInfo := info
      | return best
    if ! containsHoverPos completionInfo then
      return best
    let headPos := info.pos?.get!
    let tailPos := info.tailPos?.get!
    let hoverInfo :=
      if hoverPos < tailPos then
        HoverInfo.inside (headPos.byteDistance hoverPos)
      else
        HoverInfo.after
    let ⟨headPosLine, _⟩ := fileMap.toPosition headPos
    let ⟨tailPosLine, _⟩ := fileMap.toPosition info.tailPos?.get!
    if headPosLine != hoverLine || headPosLine != tailPosLine then
      return best
    return best.push { hoverInfo, ctx, info := completionInfo }
  containsHoverPos (i : CompletionInfo) : Bool := Id.run do
    if let .option stx := i then
      if stx[1].isMissing then
        let some range := stx.getRangeWithTrailing? (canonicalOnly := true)
          | return false
        return range.contains hoverPos (includeStop := false)
    if let .endSection stx none .. := i then
      let some range := stx.getRangeWithTrailing? (canonicalOnly := true)
        | return false
      return range.contains hoverPos (includeStop := false)
    return Info.ofCompletionInfo i |>.occursInOrOnBoundary hoverPos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981f61285a2350397af47c4fe7e8d1a0aa68e5ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
