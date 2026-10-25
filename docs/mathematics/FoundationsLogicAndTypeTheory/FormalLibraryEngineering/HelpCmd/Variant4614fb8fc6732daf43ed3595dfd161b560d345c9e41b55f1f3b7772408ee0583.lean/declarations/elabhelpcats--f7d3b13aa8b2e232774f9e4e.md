# elabHelpCats

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08eb20c122d5690dafece56ae5622af2a71b07f77a27f729927d0186f37c424f",
  "kind": "def",
  "lexical_name": "elabHelpCats",
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
  "slug": "elabhelpcats--f7d3b13aa8b2e232774f9e4e",
  "source": {
    "blob": "f66040841d732c79c5d325c3581e892d8cc2b90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7d3b13aa8b2e232774f9e4edcccc0e84c330965ffd00585a6c698158d4c8d6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08eb20c122d5690dafece56ae5622af2a71b07f77a27f729927d0186f37c424f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabHelpCats (id : Option Ident) : CommandElabM Unit := do
  let id := id.map (·.raw.getId.toString false)
  let mut decls : Std.TreeMap _ _ compare := {}
  for (name, cat) in (Parser.parserExtension.getState (← getEnv)).categories do
    let name := name.toString false
    if let some id := id then
      if !id.isPrefixOf name then
        continue
    decls := decls.insert name cat
  let mut msg := MessageData.nil
  let env ← getEnv
  if decls.isEmpty then
    match id with
    | some id => throwError "no syntax categories start with {id}"
    | none => throwError "no syntax categories found (!)"
  for (name, cat) in decls do
    let mut msg1 := m!"category {name} [{mkConst cat.declName}]"
    if let some doc ← findDocString? env cat.declName then
      msg1 := msg1 ++ Format.line ++ doc.trimAscii.copy
    msg := msg ++ .nest 2 msg1 ++ (.line ++ .line : Format)
  logInfo msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f66040841d732c79c5d325c3581e892d8cc2b90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
