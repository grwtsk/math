# stoppers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1452d83bb6069cf3de6163c75249a3edd8ec7aef8d2f3f76d752e6251d78bc35",
  "kind": "def",
  "lexical_name": "stoppers",
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
  "slug": "stoppers--c5608df11ced84bc891d23e4",
  "source": {
    "blob": "1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5608df11ced84bc891d23e42175750bf3951ad7db91bae1d04c576ce0fc9e22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1452d83bb6069cf3de6163c75249a3edd8ec7aef8d2f3f76d752e6251d78bc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stoppers : Std.HashSet Name :=
  { -- "properly stopper tactics": the effect of these tactics is to return a normal form
    -- (or possibly be finishing tactics -- the ultimate normal form!
    -- finishing tactics could equally well be considered as `flexible`, but as there is
    -- no possibility of a follower anyway, it does not make a big difference.)
    ``Lean.Parser.Tactic.tacticSorry,
    ``Lean.Parser.Tactic.tacticRepeat_,
    ``Lean.Parser.Tactic.tacticStop_,
    `Mathlib.Tactic.Abel.abelNF,
    `Mathlib.Tactic.RingNF.ringNF,
    -- "continuators": the *effect* of these tactics is similar the "properly stoppers" above,
    -- though they typically wrap other tactics inside them.
    -- The linter ignores the wrapper, but does recurse into the enclosed tactics
    ``Lean.Parser.Tactic.tacticSeq1Indented,
    ``Lean.Parser.Tactic.tacticSeq,
    ``Lean.Parser.Term.byTactic,
    `by,
    ``Lean.Parser.Tactic.tacticTry_,
    `choice,  -- involved in `first`
    ``Lean.Parser.Tactic.allGoals,
    `Std.Tactic.«tacticOn_goal-_=>_»,
    ``Lean.Parser.Tactic.«tactic_<;>_»,
    ``cdotTk,
    ``cdot }

/-- `SyntaxNodeKind`s that are allowed to follow a flexible tactic:
  `simp`, `simp_all`, `simpa`, `dsimp`, `constructor`, `congr`, `done`, `rfl`, `omega`, `abel`,
  `ring`, `linarith`, `nlinarith`, `norm_cast`, `aesop`, `tauto`, `fun_prop`, `split`, `split_ifs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
