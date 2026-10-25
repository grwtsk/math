# InfoTree.goalsAt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a82b0b42751c9c4f9f77c6422a43a7abd08514a1619080ac7b9f1258184b72c",
  "kind": "def",
  "lexical_name": "InfoTree.goalsAt?",
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
  "slug": "infotree-goalsat--d80c051e510bc1cabf9e701c",
  "source": {
    "blob": "fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d80c051e510bc1cabf9e701cc487f48c8bf7ea039bae9fd1e5303d3e3f6870a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a82b0b42751c9c4f9f77c6422a43a7abd08514a1619080ac7b9f1258184b72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def InfoTree.goalsAt? (text : FileMap) (t : InfoTree) (hoverPos : String.Pos.Raw) : List GoalsAtResult :=
  let gs := t.collectNodesBottomUp fun ctx i cs gs => Id.run do
    let Info.ofTacticInfo ti := i
      | return gs
    let (some pos, some tailPos) := (i.pos?, i.tailPos?)
      | return gs
    let trailSize := i.stx.getTrailingSize
    -- show info at EOF even if strictly outside token + trail
    let atEOF := tailPos.byteIdx + trailSize == text.source.rawEndPos.byteIdx
    -- include at least one trailing character (see also `priority` below)
    if pos ≤ hoverPos ∧ (hoverPos.byteIdx < tailPos.byteIdx + max 1 trailSize || atEOF) then
      -- overwrite bottom-up results according to "innermost" heuristics documented above
      if gs.isEmpty || hoverPos ≥ tailPos && gs.all (·.indented) then
        return [{
          ctxInfo := ctx
          tacticInfo := ti
          useAfter := hoverPos > pos && !cs.any (hasNestedTactic pos tailPos)
          indented := (text.toPosition pos).column > (text.toPosition hoverPos).column
          -- use goals just before cursor as fall-back only
          -- thus for `(by foo)`, placing the cursor after `foo` shows its state as long
          -- as there is no state on `)`
          priority := if hoverPos.byteIdx == tailPos.byteIdx + trailSize then 0 else 1
        }]
    return gs
  let maxPrio? := gs.map (·.priority) |>.max?
  gs.filter (some ·.priority == maxPrio?)
where
  hasNestedTactic (pos tailPos) : InfoTree → Bool
    | InfoTree.node i@(Info.ofTacticInfo _) cs => Id.run do
      if let `(by $_) := i.stx then
        return false  -- ignore term-nested proofs such as in `simp [show p by ...]`
      if let (some pos', some tailPos') := (i.pos?, i.tailPos?) then
        -- ignore preceding nested infos
        -- ignore nested infos of the same tactic, e.g. from expansion
        if tailPos' > hoverPos && (pos', tailPos') != (pos, tailPos) then
          return true
      cs.any (hasNestedTactic pos tailPos)
    | InfoTree.node (Info.ofMacroExpansionInfo _) cs =>
      cs.any (hasNestedTactic pos tailPos)
    | _ => false


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
