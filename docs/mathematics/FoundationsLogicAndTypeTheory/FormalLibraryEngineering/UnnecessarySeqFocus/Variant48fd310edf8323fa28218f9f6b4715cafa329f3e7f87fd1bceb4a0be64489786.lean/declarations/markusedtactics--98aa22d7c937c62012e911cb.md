# markUsedTactics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8432c0a9b72e0484e24871e4510960339aaab8529a539e67bdd80f960569c568",
  "kind": "def",
  "lexical_name": "markUsedTactics",
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
  "slug": "markusedtactics--98aa22d7c937c62012e911cb",
  "source": {
    "blob": "23081c1f66a47ae66ffec8b2949d3ac8e8087ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant48fd310edf8323fa28218f9f6b4715cafa329f3e7f87fd1bceb4a0be64489786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98aa22d7c937c62012e911cb05cf88894bf286851f31e39e0d8a61c06831c708",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant48fd310edf8323fa28218f9f6b4715cafa329f3e7f87fd1bceb4a0be64489786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8432c0a9b72e0484e24871e4510960339aaab8529a539e67bdd80f960569c568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def markUsedTactics : InfoTree → M ω Unit
  | .node i c => do
    if let .ofTacticInfo i := i then
      if let some r := i.stx.getRange? true then
      if let some entry := (← get).find? r then
      if i.stx.getKind == ``Parser.Tactic.«tactic_<;>_» then
        let isBad := do
          unless i.goalsBefore.length == 1 || !multigoalAttr.hasTag env i.stx[0].getKind do
            none
          -- Note: this uses the exact sequence of tactic applications
          -- in the macro expansion of `<;> : tactic`
          let .ofTacticInfo i ← getPath (.ofTacticInfo i) c
            [⟨1, 0⟩, ⟨2, 1⟩, ⟨1, 0⟩, ⟨5, 0⟩] | none
          guard <| i.goalsAfter.length == 1
        modify fun s => if isBad.isSome then s.insert r { entry with used := true } else s.erase r
      else if i.stx.getKind == ``Parser.Tactic.Conv.«conv_<;>_» then
        let isBad := do
          unless i.goalsBefore.length == 1 || !multigoalAttr.hasTag env i.stx[0].getKind do
            none
          -- Note: this uses the exact sequence of tactic applications
          -- in the macro expansion of `<;> : conv`
          let .ofTacticInfo i ← getPath (.ofTacticInfo i) c
            [⟨1, 0⟩, ⟨1, 0⟩, ⟨1, 0⟩, ⟨1, 0⟩, ⟨1, 0⟩, ⟨2, 1⟩, ⟨1, 0⟩, ⟨5, 0⟩] | none
          guard <| i.goalsAfter.length == 1
        modify fun s => if isBad.isSome then s.insert r { entry with used := true } else s.erase r
    markUsedTacticsList c
  | .context _ t => markUsedTactics t
  | .hole _ => pure ()

end

/-- The main entry point to the unused tactic linter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant48fd310edf8323fa28218f9f6b4715cafa329f3e7f87fd1bceb4a0be64489786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant48fd310edf8323fa28218f9f6b4715cafa329f3e7f87fd1bceb4a0be64489786.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23081c1f66a47ae66ffec8b2949d3ac8e8087ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
