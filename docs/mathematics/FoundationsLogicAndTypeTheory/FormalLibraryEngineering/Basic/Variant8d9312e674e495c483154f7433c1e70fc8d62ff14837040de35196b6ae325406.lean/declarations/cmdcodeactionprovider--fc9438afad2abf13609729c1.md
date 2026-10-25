# cmdCodeActionProvider

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d789af2c27b440d4351998cf7d52ffc9da1c082136229ac7dc1056bddaf25ca7",
  "kind": "def",
  "lexical_name": "cmdCodeActionProvider",
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
  "slug": "cmdcodeactionprovider--fc9438afad2abf13609729c1",
  "source": {
    "blob": "eae9e4cc2bc9b9dd478625af21ae75b5d18006c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc9438afad2abf13609729c1a7eca2ed18ffc2accc46512db8ce26a0663f820a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d789af2c27b440d4351998cf7d52ffc9da1c082136229ac7dc1056bddaf25ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[code_action_provider] def cmdCodeActionProvider : CodeActionProvider := fun params snap => do
  let doc ← readDoc
  let startPos := doc.meta.text.lspPosToUtf8Pos params.range.start
  let endPos := doc.meta.text.lspPosToUtf8Pos params.range.end
  have cmds := snap.infoTree.foldInfo' (init := #[]) fun ctx node result => Id.run do
    let .node (.ofCommandInfo info) _ := node | result
    let (some head, some tail) := (info.stx.getPos? true, info.stx.getTailPos? true) | result
    unless head ≤ endPos && startPos ≤ tail do return result
    result.push (ctx, node)
  let actions := (cmdCodeActionExt.getState snap.env).2
  let mut out := #[]
  for (ctx, node) in cmds do
    let .node (.ofCommandInfo info) _ := node | unreachable!
    if let some arr := actions.onCmd.find? info.stx.getKind then
      for act in arr do
        try out := out ++ (← act params snap ctx node) catch _ => pure ()
    for act in actions.onAnyCmd do
      try out := out ++ (← act params snap ctx node) catch _ => pure ()
  pure out
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae9e4cc2bc9b9dd478625af21ae75b5d18006c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
