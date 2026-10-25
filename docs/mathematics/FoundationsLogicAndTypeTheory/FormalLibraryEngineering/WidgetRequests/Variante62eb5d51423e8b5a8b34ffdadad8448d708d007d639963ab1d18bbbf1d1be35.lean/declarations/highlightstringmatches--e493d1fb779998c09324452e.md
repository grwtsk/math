# highlightStringMatches?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3256ca1535b0ac4a6eafe16e7e4c0fad1636aee4e30a76a9c93e7861551fac7e",
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
  "slug": "highlightstringmatches--e493d1fb779998c09324452e",
  "source": {
    "blob": "ef080d6400a767136062b5f43ae0047c60397a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e493d1fb779998c09324452e5fd5dc682a65ea8332441a814f1e59fdf7c3ba2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3256ca1535b0ac4a6eafe16e7e4c0fad1636aee4e30a76a9c93e7861551fac7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–233.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef080d6400a767136062b5f43ae0047c60397a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
