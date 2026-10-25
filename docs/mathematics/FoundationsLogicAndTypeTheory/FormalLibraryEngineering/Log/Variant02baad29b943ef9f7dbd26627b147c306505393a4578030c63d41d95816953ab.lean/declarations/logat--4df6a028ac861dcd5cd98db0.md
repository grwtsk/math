# logAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2214aaef7ba9ee53653902e317a0513cee9561fe9a08a4b7746d8b7ed96ec385",
  "kind": "def",
  "lexical_name": "logAt",
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
  "slug": "logat--4df6a028ac861dcd5cd98db0",
  "source": {
    "blob": "3d40ada008ff57e9c82568661f3c4ecf928f9280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant02baad29b943ef9f7dbd26627b147c306505393a4578030c63d41d95816953ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4df6a028ac861dcd5cd98db0b858178dbe452fb99006629c2c0c86f314bdfbdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant02baad29b943ef9f7dbd26627b147c306505393a4578030c63d41d95816953ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2214aaef7ba9ee53653902e317a0513cee9561fe9a08a4b7746d8b7ed96ec385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logAt (ref : Syntax) (msgData : MessageData)
    (severity : MessageSeverity := MessageSeverity.error) (isSilent : Bool := false) : m Unit :=
  unless severity == .error && msgData.hasSyntheticSorry do
    let severity := if severity == .warning && warningAsError.get (← getOptions) then .error else severity
    let ref    := replaceRef ref (← MonadLog.getRef)
    let pos    := ref.getPos?.getD 0
    let endPos := ref.getTailPos?.getD pos
    let fileMap ← getFileMap
    let msgData ← addMessageContext msgData.appendDescriptionWidgetIfNamed
    logMessage {
      fileName := (← getFileName)
      pos := fileMap.toPosition pos
      endPos := fileMap.toPosition endPos
      data := msgData
      severity
      isSilent
    }

/-- Log a new error message using the given message data. The position is provided by `ref`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant02baad29b943ef9f7dbd26627b147c306505393a4578030c63d41d95816953ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant02baad29b943ef9f7dbd26627b147c306505393a4578030c63d41d95816953ab.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d40ada008ff57e9c82568661f3c4ecf928f9280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
