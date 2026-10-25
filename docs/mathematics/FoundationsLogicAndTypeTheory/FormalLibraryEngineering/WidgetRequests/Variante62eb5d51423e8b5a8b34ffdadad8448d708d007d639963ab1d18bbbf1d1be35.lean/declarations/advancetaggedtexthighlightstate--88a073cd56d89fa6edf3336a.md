# advanceTaggedTextHighlightState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:881f869f41afcf8c12b61f5ca56d200edf4ac2c4539fc64ca974d171745ce6b0",
  "kind": "def",
  "lexical_name": "advanceTaggedTextHighlightState",
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
  "slug": "advancetaggedtexthighlightstate--88a073cd56d89fa6edf3336a",
  "source": {
    "blob": "ef080d6400a767136062b5f43ae0047c60397a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88a073cd56d89fa6edf3336ac99de3cf731b20d02c0b6cd6e5851ba1435657bb",
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

Occurrence: `declaration:881f869f41afcf8c12b61f5ca56d200edf4ac2c4539fc64ca974d171745ce6b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def advanceTaggedTextHighlightState (text : String) (highlighted : α) :
    StateM TaggedTextHighlightState (TaggedText α) := do
  let query := (← get).query
  let p := (← get).p
  let ms := (← get).ms
  let highlighted? := highlightStringMatches? query text ms highlighted (offset := p)
    (mapIdx := fun i => ms.size - i - 1)
  updateState text highlighted?.isSome
  return highlighted?.getD (.text text)
where
  updateState (text : String) (isHighlighted : Bool) : StateM TaggedTextHighlightState Unit :=
    modify fun s =>
      let p : String.Pos.Raw := s.p.increaseBy text.utf8ByteSize
      let ms := updateMatches s.query s.ms p
      let anyHighlight := s.anyHighlight || isHighlighted
      { s with p, ms, anyHighlight }
  updateMatches (query : String) (ms : Array String.Pos.Raw) (p : String.Pos.Raw) : Array String.Pos.Raw := Id.run do
    let n := ms.size
    let mut ms := ms
    for i in 0...n do
      if p >= matchEndPos query ms[n - i - 1]! then
        ms := ms.pop
    return ms

@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef080d6400a767136062b5f43ae0047c60397a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
