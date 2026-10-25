# Event

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d4d3dfe966fda0e1d82c4e85ef6f43111dde427deb3ca383a1daba959faf56a",
  "kind": "structure",
  "lexical_name": "Event",
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
  "slug": "event--41ddfc4819ba551effce6d45",
  "source": {
    "blob": "6ed13df2f85d10ded8c0730d3ef933a59efeff73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41ddfc4819ba551effce6d457b9ec722a156d564f40b3b00f2cff52b20833143",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d4d3dfe966fda0e1d82c4e85ef6f43111dde427deb3ca383a1daba959faf56a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Event where
  /-- Decoded actor compared first with the mode-specific authorized actor. -/
  actor : String
  /-- Decoded event domain checked against both host metadata and current state. -/
  domain : String
  /-- Decoded event epoch checked against both host metadata and current state. -/
  epoch : String
  /-- Decoded event sequence checked against host metadata and the next state sequence. -/
  sequence : ℕ
  /-- Decoded event time checked against host metadata and the previous state time. -/
  time : ℕ
  /-- Decoded grant ID or issuer/ID reference selected for revocation. -/
  target : Target
  deriving DecidableEq

/-- Independent host metadata compared with the decoded revoke event at admission. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed13df2f85d10ded8c0730d3ef933a59efeff73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
