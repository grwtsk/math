# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536fbe9068174f6bb2f091241ff28926c65d2bd25a4b7fe958511701d27eb23b",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--f002e5099ca99e9616bc263c",
  "source": {
    "blob": "f0bfa6cc7e4b10421c2b5fa16dcb903f1460efc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnusedTacticExtension/Variante856c7fc1d147fd78ca0a94685c5a67833739020b7bb3e9cb7244631331bc49c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f002e5099ca99e9616bc263c800a8c9322c287eb27d38f0e34fa42338890db36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnusedTacticExtension/Variante856c7fc1d147fd78ca0a94685c5a67833739020b7bb3e9cb7244631331bc49c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536fbe9068174f6bb2f091241ff28926c65d2bd25a4b7fe958511701d27eb23b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
initialize allowedRef : IO.Ref (Std.HashSet SyntaxNodeKind) ←
  IO.mkRef <| .ofArray #[
    `Mathlib.Tactic.Says.says,
    `Batteries.Tactic.«tacticOn_goal-_=>_»,
    `by,
    `null,
    `«]»,
    -- the following `SyntaxNodeKind`s play a role in silencing `test`s
    `Mathlib.Tactic.successIfFailWithMsg,
    `Mathlib.Tactic.failIfNoProgress,
    `Mathlib.Tactic.ExtractGoal.extractGoal,
    `Mathlib.Tactic.Propose.propose',
    `Lean.Parser.Tactic.traceState,
    `Mathlib.Tactic.tacticMatch_target_,
    `change?,
    `«tactic#adaptation_note_»,
    `tacticSleep_heartbeats_,
    `Mathlib.Tactic.«tacticRename_bvar_→__»
  ]

/--
`#allow_unused_tactic` takes as input a space-separated list of identifiers.
These identifiers are then allowed by the unused tactic linter:
even if these tactics do not modify goals, there will be no warning emitted.

Note: for this to work, these identifiers should be the `SyntaxNodeKind` of each tactic.

For instance, you can allow the `done` and `skip` tactics using
```lean
#allow_unused_tactic Lean.Parser.Tactic.done Lean.Parser.Tactic.skip
```

This change is file-local.  If you want a *persistent* change, then use the `!`-flag:
the command `#allow_unused_tactic! ids` makes the change the linter continues to ignore these
tactics also in files importing a file where this command is issued.

The command `#show_kind tac` may help to find the `SyntaxNodeKind`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnusedTacticExtension/Variante856c7fc1d147fd78ca0a94685c5a67833739020b7bb3e9cb7244631331bc49c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnusedTacticExtension/Variante856c7fc1d147fd78ca0a94685c5a67833739020b7bb3e9cb7244631331bc49c.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0bfa6cc7e4b10421c2b5fa16dcb903f1460efc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
