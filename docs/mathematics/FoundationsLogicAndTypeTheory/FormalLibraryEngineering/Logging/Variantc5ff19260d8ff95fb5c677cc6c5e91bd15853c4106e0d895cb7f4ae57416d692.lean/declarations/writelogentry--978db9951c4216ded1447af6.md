# writeLogEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be638f749399879d48a5c35f13dac693c83a857bd714851bf88220cb4e36dcb8",
  "kind": "def",
  "lexical_name": "writeLogEntry",
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
  "slug": "writelogentry--978db9951c4216ded1447af6",
  "source": {
    "blob": "ba61566439ab5ba045c8fec401bb1f1bd4301c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:978db9951c4216ded1447af62af44d5085807a2bd876b1a161fa5de440ec6eeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be638f749399879d48a5c35f13dac693c83a857bd714851bf88220cb4e36dcb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def writeLogEntry (cfg : LogConfig) (pending : Std.HashMap JsonRpc.RequestID MessageMethod)
    (log : IO.FS.Handle) (direction : JsonRpc.MessageDirection) (msg : JsonRpc.Message) : IO Unit := do
  if ! isMsgAllowed cfg pending msg then
    return
  let entry : LogEntry := {
    time := ← Std.Time.DateTime.now
    direction
    kind := .ofMessage msg
    msg
  }
  let entry := toJson entry |>.compress
  log.putStrLn entry
  log.flush
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba61566439ab5ba045c8fec401bb1f1bd4301c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
