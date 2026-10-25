# M

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a4c3f4abbdb448e46734ac73b1bef9b2419685948a59e1cf9f726746c1161d",
  "kind": "abbrev",
  "lexical_name": "M",
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
  "slug": "m--fae6dbc2c83d6c6e6b03ea72",
  "source": {
    "blob": "2f2a7e343989871da3f524721d2bd2855c84ea53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fae6dbc2c83d6c6e6b03ea72c105c1efa53f2faee8d36398d2e8edc607f6bb9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a4c3f4abbdb448e46734ac73b1bef9b2419685948a59e1cf9f726746c1161d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev M := StateRefT (Std.HashMap String.Range Syntax) IO

-- Tactics that are expected to not change the state but should also not be flagged by the
-- unused tactic linter.
#allow_unused_tactic!
  Lean.Parser.Term.byTactic
  Lean.Parser.Tactic.tacticSeq
  Lean.Parser.Tactic.tacticSeq1Indented
  Lean.Parser.Tactic.tacticTry_
  -- the following `SyntaxNodeKind`s play a role in silencing `test`s
  Lean.Parser.Tactic.guardHyp
  Lean.Parser.Tactic.guardTarget
  Lean.Parser.Tactic.failIfSuccess

/--
A list of blacklisted syntax kinds, which are expected to have subterms that contain
unevaluated tactics.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2a7e343989871da3f524721d2bd2855c84ea53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
