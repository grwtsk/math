# findSyntheticTacticCompletion?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de135f8a8cd78d80c92fcaaa348635ed9f4ddf079bb6e6361aa8f11766204e32",
  "kind": "def",
  "lexical_name": "findSyntheticTacticCompletion?",
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
  "slug": "findsynthetictacticcompletion--84e0c4cf1ee70b0b1e73fedc",
  "source": {
    "blob": "9714c7a7a11cb4df44efc50d0811e40487049aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84e0c4cf1ee70b0b1e73fedcc6cc48c57adc36310cdca8ee1d014b3daa6ab415",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de135f8a8cd78d80c92fcaaa348635ed9f4ddf079bb6e6361aa8f11766204e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findSyntheticTacticCompletion?
    (fileMap  : FileMap)
    (hoverPos : String.Pos.Raw)
    (cmdStx   : Syntax)
    (infoTree : InfoTree)
    : Option ContextualizedCompletionInfo := do
  let ctx ← findOutermostContextInfo? infoTree
  if ! isSyntheticTacticCompletion fileMap hoverPos cmdStx then
    none
  -- Neither `HoverInfo` nor the syntax in `.tactic` are important for tactic completion.
  return { hoverInfo := HoverInfo.after, ctx, info := .tactic .missing }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9714c7a7a11cb4df44efc50d0811e40487049aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
