# UserInputEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0db564314cc4d909710c7530b9ab020e6268173b40bccf9e9b8ec01eda2512f",
  "kind": "inductive",
  "lexical_name": "UserInputEvent",
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
  "slug": "userinputevent--37f5fbc478faa95225a06ca6",
  "source": {
    "blob": "277321c89420b209a916280370e676baed7bc7c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserInputEvent20250705182732/Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37f5fbc478faa95225a06ca6d299a37fa8d473c0e423d82b90652a3db56cfb1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserInputEvent20250705182732/Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0db564314cc4d909710c7530b9ab020e6268173b40bccf9e9b8ec01eda2512f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive UserInputEvent
  /-- A user prompt (free-form text input). -/
  | prompt (text : String)

  /-- A pause was observed (e.g. idle period without input). -/
  | pause (duration : Duration)

  /-- The user made an error (e.g. backspace or correction). -/
  | errorDetected

  /-- The user explicitly asked the system to take over. -/
  | explicitDelegate
  deriving Repr, DecidableEq

end Cognition.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserInputEvent20250705182732/Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserInputEvent20250705182732/Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `277321c89420b209a916280370e676baed7bc7c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
