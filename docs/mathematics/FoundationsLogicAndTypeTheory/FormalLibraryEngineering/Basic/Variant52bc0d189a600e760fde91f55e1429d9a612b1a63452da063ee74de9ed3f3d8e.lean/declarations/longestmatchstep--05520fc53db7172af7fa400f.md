# longestMatchStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c155689fb8a02edb988b5589edd6f9a99c5f7514780ec25e79472d1a50ab4817",
  "kind": "def",
  "lexical_name": "longestMatchStep",
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
  "slug": "longestmatchstep--05520fc53db7172af7fa400f",
  "source": {
    "blob": "3825f827390f270667bcd7bdc0b5f9c353867a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1438,
    "line": 1418,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05520fc53db7172af7fa400fc12726c9512ebd0bce3e677b00defab8fdfe424b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c155689fb8a02edb988b5589edd6f9a99c5f7514780ec25e79472d1a50ab4817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1418–1438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def longestMatchStep (left? : Option Syntax) (startSize startLhsPrec : Nat) (startPos : String.Pos.Raw) (prevPrio : Nat) (prio : Nat) (p : ParserFn)
    : ParserContext → ParserState → ParserState × Nat := fun c s =>
  let score (s : ParserState) (prio : Nat) :=
    (s.pos.byteIdx, if s.errorMsg.isSome then (0 : Nat) else 1, prio)
  let previousScore := score s prevPrio
  let prevErrorMsg  := s.errorMsg
  let prevStopPos   := s.pos
  let prevSize      := s.stackSize
  let prevLhsPrec   := s.lhsPrec
  let s             := s.restore prevSize startPos
  let s             := runLongestMatchParser left? startLhsPrec p c s
  match (let _ := @lexOrd; compare previousScore (score s prio)) with
  | .lt => (s.keepNewError startSize, prio)
  | .gt => (s.keepPrevError prevSize prevStopPos prevErrorMsg prevLhsPrec, prevPrio)
  | .eq =>
    match prevErrorMsg with
    | none =>
      -- it is not clear what the precedence of a choice node should be, so we conservatively take the minimum
      ({s with lhsPrec := s.lhsPrec.min prevLhsPrec }, prio)
    | some oldError => (s.mergeErrors prevSize oldError, prio)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean#L1418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3825f827390f270667bcd7bdc0b5f9c353867a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
