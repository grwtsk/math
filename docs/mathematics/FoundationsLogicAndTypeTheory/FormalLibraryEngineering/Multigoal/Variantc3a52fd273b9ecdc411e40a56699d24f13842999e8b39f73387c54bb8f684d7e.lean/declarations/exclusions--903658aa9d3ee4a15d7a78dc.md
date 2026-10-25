# exclusions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4d62a6b7bf103de269b5413c628494af3c0c58f53d4037b64d4827fb588fb4c",
  "kind": "abbrev",
  "lexical_name": "exclusions",
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
  "slug": "exclusions--903658aa9d3ee4a15d7a78dc",
  "source": {
    "blob": "0794f39753e4f2e8731a437289dd9bc1df0314b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:903658aa9d3ee4a15d7a78dc48a1bfa5ab9cccaed63c739bdb8f2a84b5173299",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4d62a6b7bf103de269b5413c628494af3c0c58f53d4037b64d4827fb588fb4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev exclusions : Std.HashSet SyntaxNodeKind := .ofArray #[
    -- structuring a proof
    ``Lean.Parser.Term.cdot,
    ``cdot,
    ``cdotTk,
    ``Lean.Parser.Tactic.tacticSeqBracketed,
    `«;»,
    `«<;>»,
    ``Lean.Parser.Tactic.«tactic_<;>_»,
    `«{»,
    `«]»,
    `null,
    `then,
    `else,
    ``Lean.Parser.Tactic.«tacticNext_=>_»,
    ``Lean.Parser.Tactic.tacticSeq1Indented,
    ``Lean.Parser.Tactic.tacticSeq,
    -- re-ordering goals
    `Batteries.Tactic.tacticSwap,
    ``Lean.Parser.Tactic.rotateLeft,
    ``Lean.Parser.Tactic.rotateRight,
    ``Lean.Parser.Tactic.skip,
    `Batteries.Tactic.«tacticOn_goal-_=>_»,
    `Mathlib.Tactic.«tacticSwap_var__,,»,
    -- tactic combinators
    ``Lean.Parser.Tactic.tacticRepeat_,
    ``Lean.Parser.Tactic.tacticTry_,
    -- creating new goals
    ``Lean.Parser.Tactic.paren,
    ``Lean.Parser.Tactic.case,
    ``Lean.Parser.Tactic.constructor,
    `Mathlib.Tactic.tacticAssumption',
    ``Lean.Parser.Tactic.induction,
    ``Lean.Parser.Tactic.cases,
    ``Lean.Parser.Tactic.intros,
    ``Lean.Parser.Tactic.injections,
    ``Lean.Parser.Tactic.substVars,
    `Batteries.Tactic.«tacticPick_goal-_»,
    ``Lean.Parser.Tactic.case',
    `«tactic#adaptation_note_»,
    `tacticSleep_heartbeats_
  ]

/-- The `SyntaxNodeKind`s in `ignoreBranch` correspond to tactics that disable the linter from
their first application until the corresponding proof branch is closed.
Reasons for ignoring these tactics include
* the linter gets confused by the proof management, e.g. `conv`;
* the tactics are *intended* to act on multiple goals, e.g. `repeat`, `any_goals`, `all_goals`, ...

There is some overlap in scope between `exclusions` and `ignoreBranch`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0794f39753e4f2e8731a437289dd9bc1df0314b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
