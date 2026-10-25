# InlayHintInfo.toLspInlayHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4b32f7d84a2d86dff58d311279ee23d99e42840598f8848c0b0e2f122451e55",
  "kind": "def",
  "lexical_name": "InlayHintInfo.toLspInlayHint",
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
  "slug": "inlayhintinfo-tolspinlayhint--8dfd8e73d2e2250be89df736",
  "source": {
    "blob": "77caa7b18b4cfc29178bf7a5b343f02eaa10da63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dfd8e73d2e2250be89df736882edab57e99ef98f17d50a1dc285b233d78136d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4b32f7d84a2d86dff58d311279ee23d99e42840598f8848c0b0e2f122451e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InlayHintInfo.toLspInlayHint (text : FileMap) (i : InlayHintInfo) : IO Lsp.InlayHint := do
  return {
    position := text.utf8PosToLspPos i.position
    label := ← i.label.toLspInlayHintLabel text
    kind? := i.kind?.map (·.toLspInlayHintKind)
    textEdits? := some <| i.textEdits.map (·.toLspTextEdit text)
    tooltip? := do return .markdown { kind := .markdown, value := ← i.tooltip? }
    paddingLeft? := i.paddingLeft
    paddingRight? := i.paddingRight
  }

end Lean.Elab

namespace Lean.Server.FileWorker
open Lsp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77caa7b18b4cfc29178bf7a5b343f02eaa10da63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
