# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c51024faf962daaf2c242e6c8235956759d5ef36b3c0374e3c5a9b4b53dc378",
  "kind": "example",
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
  "slug": "example--b0e0ab5ab81a45c2e0f911d4",
  "source": {
    "blob": "bf505c8a3f2d6c5ec2c7fc0b21ac9213a9547be7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant2d731d333d03b17fdc5d58a4cddce5bffaeb318b1dc94ed065075f1569464231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0e0ab5ab81a45c2e0f911d40fa996405d02efae279ab99822675a95cf002b8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant2d731d333d03b17fdc5d58a4cddce5bffaeb318b1dc94ed065075f1569464231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c51024faf962daaf2c242e6c8235956759d5ef36b3c0374e3c5a9b4b53dc378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b : Nat) (h : a + 1 ≤ b + 1) : max a b ≤ b := by
  -- The linter does not look inside of dischargers, no matter whether it's actually used or not.
  have : True := by simp (disch := grind)
  simp (disch := grind) [Nat.max_eq_right]

section allowing_more_unused_tactics

/-- info: The `SyntaxNodeKind` is 'Lean.Parser.Tactic.refine'. -/
#guard_msgs in
#show_kind refine _

/-- info: The `SyntaxNodeKind` is 'Lean.Parser.Tactic.skip'. -/
#guard_msgs in
#show_kind skip

/--
error: Unknown constant `skip`
The command `#show_kind skip` may help to find the correct `SyntaxNodeKind`.
-/
#guard_msgs in
#allow_unused_tactic rfl skip

--  test that allowing more unused tactics has the desired effect of silencing the linter
#allow_unused_tactic Lean.Parser.Tactic.done Lean.Parser.Tactic.skip

#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant2d731d333d03b17fdc5d58a4cddce5bffaeb318b1dc94ed065075f1569464231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant2d731d333d03b17fdc5d58a4cddce5bffaeb318b1dc94ed065075f1569464231.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf505c8a3f2d6c5ec2c7fc0b21ac9213a9547be7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
