# updateLeadingAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b56102206392b4106c067ec5fe1e6e75a1f6d8deb2c4cef576769cedd5afa49",
  "kind": "def",
  "lexical_name": "updateLeadingAux",
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
  "slug": "updateleadingaux--1149c81e7d4092aa19657d15",
  "source": {
    "blob": "7ae2f43f42bcee91140c4db6987b1b19bb78e887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1149c81e7d4092aa19657d15372b64e702a074de96977e39c5c34e26cc7cf7af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b56102206392b4106c067ec5fe1e6e75a1f6d8deb2c4cef576769cedd5afa49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def updateLeadingAux : Syntax → StateM String.Pos.Raw (Option Syntax)
  | atom info@(SourceInfo.original _ _ trail _) val => do
    let trailStop := chooseNiceTrailStop trail
    let newInfo := updateInfo info (← get) trailStop
    set trailStop
    return some (atom newInfo val)
  | ident info@(SourceInfo.original _ _ trail _) rawVal val pre => do
    let trailStop := chooseNiceTrailStop trail
    let newInfo := updateInfo info (← get) trailStop
    set trailStop
    return some (ident newInfo rawVal val pre)
  | _ => pure none

/-- Set `SourceInfo.leading` according to the trailing stop of the preceding token.
    The result is a round-tripping syntax tree IF, in the input syntax tree,
    * all leading stops, atom contents, and trailing starts are correct
    * trailing stops are between the trailing start and the next leading stop.

    Remark: after parsing, all `SourceInfo.leading` fields are empty.
    The `Syntax` argument is the output produced by the parser for `source`.
    This function "fixes" the `source.leading` field.

    Additionally, we try to choose "nicer" splits between leading and trailing stops
    according to some heuristics so that e.g. comments are associated to the (intuitively)
    correct token.

    Note that the `SourceInfo.trailing` fields must be correct.
    The implementation of this Function relies on this property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae2f43f42bcee91140c4db6987b1b19bb78e887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
