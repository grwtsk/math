# highlightStringMatches?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4afc8fa2cb9c9c3333a46f7c4d3ebc16bfd4ea528b0edae0481fb6204926ed3",
  "kind": "def",
  "lexical_name": "highlightStringMatches?",
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
  "slug": "highlightstringmatches--68c45bf2b344ee57f7db4b13",
  "source": {
    "blob": "f9ac1ced8d8a6d0f12e9c5a59f63baa2171e1bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68c45bf2b344ee57f7db4b139d2b0c49219efeb89e00ddd62dbe79f50e81071a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4afc8fa2cb9c9c3333a46f7c4d3ebc16bfd4ea528b0edae0481fb6204926ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def highlightStringMatches? (query text : String) (matchPositions : Array String.Pos.Raw)
    (highlight : α) (offset : String.Pos.Raw := ⟨0⟩) (mapIdx : Nat → Nat := id) :
    Option (TaggedText α) := Id.run do
  if query.isEmpty || text.isEmpty || matchPositions.isEmpty then
    return none
  let mut anyMatch : Bool := false
  let mut r : Array (TaggedText α) := #[]
  let mut p : String.Pos.Raw := ⟨0⟩
  for i in 0...matchPositions.size do
    if p >= text.rawEndPos then
      break
    let i := mapIdx i
    let globalMatchPos := matchPositions[i]!
    let matchPos := globalMatchPos.unoffsetBy offset
    if matchPos >= text.rawEndPos then
      break
    if let some nonMatch := nonMatch? p matchPos then
      r := r.push nonMatch
    let globalMatchEndPos := matchEndPos query globalMatchPos
    let matchEndPos := globalMatchEndPos.unoffsetBy offset
    let «match» := String.Pos.Raw.extract text matchPos matchEndPos
    r := r.push <| .tag highlight (.text «match»)
    p := matchEndPos
    anyMatch := true
  if let some nonMatch := nonMatch? p text.rawEndPos then
    r := r.push nonMatch
  if ! anyMatch then
    return none
  if h : r.size = 1 then
    return some r[0]
  return some (.append r)
where
  nonMatch? (p matchPosition : String.Pos.Raw) : Option (TaggedText α) := do
    guard <| p < matchPosition
    let nonMatch := String.Pos.Raw.extract text p matchPosition
    return .text nonMatch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ac1ced8d8a6d0f12e9c5a59f63baa2171e1bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
