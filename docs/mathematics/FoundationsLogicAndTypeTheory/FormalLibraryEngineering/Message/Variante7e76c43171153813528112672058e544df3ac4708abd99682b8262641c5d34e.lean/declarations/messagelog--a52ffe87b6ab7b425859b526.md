# MessageLog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:153bcc5d46def6268c5f1e067d35534ecdf97ec8628257b5d4869d3517484614",
  "kind": "structure",
  "lexical_name": "MessageLog",
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
  "slug": "messagelog--a52ffe87b6ab7b425859b526",
  "source": {
    "blob": "54f58ea856f670e5ecf3e6a12e85d85bf379ce83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 666,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a52ffe87b6ab7b425859b5266ab4f0cab7776d178c66b8c50129edeef02547f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:153bcc5d46def6268c5f1e067d35534ecdf97ec8628257b5d4869d3517484614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MessageLog where
  /-- The list of messages already reported (i.e. saved in a `Snapshot`), in insertion order. -/
  reported : PersistentArray Message := {}
  /-- The list of messages not already reported, in insertion order. -/
  unreported : PersistentArray Message := {}
  /--
  Set of message kinds that have been added to the log.
  For example, we have the kind `unsafe.exponentiation.warning` for warning messages associated with
  the configuration option `exponentiation.threshold`.
  We don't produce a warning if the kind is already in the following set.
  -/
  loggedKinds : NameSet := {}
  deriving Inhabited

namespace MessageLog
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f58ea856f670e5ecf3e6a12e85d85bf379ce83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
