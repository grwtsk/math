# isPositionInLineComment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ea77601206258410ff4217a145be984010e5f0172719f054e746dce930effd",
  "kind": "def",
  "lexical_name": "isPositionInLineComment",
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
  "slug": "ispositioninlinecomment--c60c53aac5405951b175abfe",
  "source": {
    "blob": "9fac5c6ba9ebc6409b5a481b9f75eb5a71778de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60c53aac5405951b175abfede753a2f1ace2c4bc0390c5bca95d77bef12f46f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ea77601206258410ff4217a145be984010e5f0172719f054e746dce930effd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isPositionInLineComment (text : FileMap) (pos : String.Pos.Raw) : Bool := Id.run do
  let requestedLineNumber := text.toPosition pos |>.line
  let lineStartPos := text.lineStart requestedLineNumber
  let lineEndPos := text.lineStart (requestedLineNumber + 1)
  let line := String.Pos.Raw.extract text.source lineStartPos lineEndPos
  let some lineCommentPos := lineCommentPosition? line
    | return false
  return pos >= lineCommentPos.offset.offsetBy lineStartPos

open CandidateKind in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fac5c6ba9ebc6409b5a481b9f75eb5a71778de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
