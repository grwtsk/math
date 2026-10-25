# waitAllUnknownIdentifierMessageRanges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65f3ce5190a43dd8caea4aff167a13f3e5f7dd80ccf3c551c1daabd4270c5f21",
  "kind": "def",
  "lexical_name": "waitAllUnknownIdentifierMessageRanges",
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
  "slug": "waitallunknownidentifiermessageranges--0f9ab2c1d9e8eeef4438afa8",
  "source": {
    "blob": "075ee31be8e98698d12b0c96ccf8b75f8b3df092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f9ab2c1d9e8eeef4438afa88181794356faacd311274ffb7399c207c05060f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65f3ce5190a43dd8caea4aff167a13f3e5f7dd80ccf3c551c1daabd4270c5f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def waitAllUnknownIdentifierMessageRanges (doc : EditableDocument)
    : BaseIO (Array Lean.Syntax.Range) := do
  let text := doc.meta.text
  let snaps := Language.toSnapshotTree doc.initSnap |>.getAll
  let msgLog : MessageLog := snaps.map (·.diagnostics.msgLog) |>.foldl (· ++ ·) {}
  let mut ranges := #[]
  for msg in msgLog.unreported do
    if ! msg.data.hasTag (· == unknownIdentifierMessageTag) then
      continue
    let msgRange : Lean.Syntax.Range := ⟨text.ofPosition msg.pos, text.ofPosition <| msg.endPos.getD msg.pos⟩
    ranges := ranges.push msgRange
  let (cmdSnaps, _) := doc.cmdSnaps.waitAll.get
  for snap in cmdSnaps do
    let autoImplicitUsages : Std.TreeSet Lean.Syntax.Range compareRanges :=
      snap.infoTree.foldInfo (init := ∅) fun ctx i acc => Id.run do
        let .ofTermInfo ti := i
          | return acc
        let some r := ti.stx.getRange? (canonicalOnly := true)
          | return acc
        if ! ti.expr.isFVar then
          return acc
        if ! ctx.autoImplicits.contains ti.expr then
          return acc
        return acc.insert r
    ranges := ranges ++ autoImplicitUsages.toArray
  return ranges

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075ee31be8e98698d12b0c96ccf8b75f8b3df092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
