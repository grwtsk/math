# PerceptionEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83dbad27c338e43f6eb8b71e6963b898c14fa47eac4fa762f2b818a1125889e2",
  "kind": "inductive",
  "lexical_name": "PerceptionEvent",
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
  "slug": "perceptionevent--a069484b22e17b429fe10542",
  "source": {
    "blob": "5406c2c518a262b079c88c60266d15c78e44270c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerceptionEvent20250705182700/Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a069484b22e17b429fe105425b8178ef364d53c81569da53cf2fd38f02cadf9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerceptionEvent20250705182700/Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83dbad27c338e43f6eb8b71e6963b898c14fa47eac4fa762f2b818a1125889e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PerceptionEvent
  /-- A prompt was submitted: includes text, timestamp, and idle pause. -/
  | prompt (text : String) (timestamp : Nat) (pause : Duration)

  /-- A pause occurred with no prompt (e.g. idle timeout). -/
  | pause (timestamp : Nat) (duration : Duration)

  /-- A user correction or error was detected (e.g. backspace). -/
  | error (timestamp : Nat)

  /-- The user explicitly delegated control to the system. -/
  | delegate (timestamp : Nat)
  deriving Repr, DecidableEq

/-- Extract the timestamp of a `PerceptionEvent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerceptionEvent20250705182700/Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerceptionEvent20250705182700/Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5406c2c518a262b079c88c60266d15c78e44270c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
