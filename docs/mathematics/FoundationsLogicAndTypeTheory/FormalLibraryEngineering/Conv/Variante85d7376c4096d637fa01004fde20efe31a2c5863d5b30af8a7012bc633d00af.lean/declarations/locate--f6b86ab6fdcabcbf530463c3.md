# locate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e79301e725155f26b77128d9edda82bd9778c273c837564523fa0c3bb7ff2fa8",
  "kind": "def",
  "lexical_name": "locate",
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
  "slug": "locate--f6b86ab6fdcabcbf530463c3",
  "source": {
    "blob": "d64c1b31e34f5af1769180b5d5fb79ed0baf5651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variante85d7376c4096d637fa01004fde20efe31a2c5863d5b30af8a7012bc633d00af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6b86ab6fdcabcbf530463c3fce308242b52b1c200a702deccb69589d8974a8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variante85d7376c4096d637fa01004fde20efe31a2c5863d5b30af8a7012bc633d00af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e79301e725155f26b77128d9edda82bd9778c273c837564523fa0c3bb7ff2fa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def locate (stx : Syntax) (pos : String.Pos) : LocateReturn := Id.run do
  let mut t := Syntax.Traverser.fromSyntax stx
  let mut path := []
  let mut rangeList := []

  -- first, we roughly locate `pos` in the syntax
  while !t.cur.getArgs.isEmpty do
    let mut args := t.cur.getArgs
    let mut i := 0
    let mut newT := t
    let mut found := false
    rangeList := []
    for arg in args do
      let mut range := match arg.getRange? with
        | some x => x
        | none => { start := 0, stop := 0 }
      rangeList := range::rangeList
      if range.start < pos && pos <= range.stop then do
        newT := t.down i
        path := i::path
        found := true
      i := i + 1
    if !found then break
    t := newT

  -- go back up from found location to the first `conv` we find
  let mut pathAfterConv := []
  while !(t.cur.getKind == `Lean.Parser.Tactic.Conv.conv
      || t.cur.getKind == `Lean.Parser.Tactic.Conv.convConvSeq
      || t.cur.getKind == `Lean.Widget.conv!)
    && path.length > 0 do
    t := t.up
    pathAfterConv := path.head!::pathAfterConv
    path := path.tail!

  -- the cursor is in front of the first tactic or at the conv atom, we need to do some extra work
  if pathAfterConv == [] || pathAfterConv.length == 1 then
    pathAfterConv := [t.cur.getArgs.size - 2]

  -- the cursor is in front of another tactic, we need to do some extra work
  else if pathAfterConv.length == 3 then
    let mut rangeList' := rangeList.reverse
    let mut ctr := 0
    while rangeList'.head!.stop < pos do
      ctr := ctr + 1
      rangeList' := rangeList'.tail!
    pathAfterConv := List.append pathAfterConv ((ctr-2)::[0])

  return {pathBeforeConv := path.reverse, pathAfterConv := pathAfterConv }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variante85d7376c4096d637fa01004fde20efe31a2c5863d5b30af8a7012bc633d00af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variante85d7376c4096d637fa01004fde20efe31a2c5863d5b30af8a7012bc633d00af.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d64c1b31e34f5af1769180b5d5fb79ed0baf5651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
