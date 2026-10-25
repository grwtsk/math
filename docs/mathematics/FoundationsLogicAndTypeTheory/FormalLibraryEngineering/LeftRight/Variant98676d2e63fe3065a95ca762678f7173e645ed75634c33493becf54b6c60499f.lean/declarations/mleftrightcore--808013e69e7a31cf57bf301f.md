# mLeftRightCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc7270a88985685276b2388c846d597d15a664e51e045a47c59279d0929f0714",
  "kind": "def",
  "lexical_name": "mLeftRightCore",
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
  "slug": "mleftrightcore--808013e69e7a31cf57bf301f",
  "source": {
    "blob": "398711c8c1231d64e998d692d215b0db38874be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:808013e69e7a31cf57bf301ffdd951dce486d9e0d8e7e8f89260b20c0dd14e14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc7270a88985685276b2388c846d597d15a664e51e045a47c59279d0929f0714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mLeftRightCore (right : Bool) (mvar : MVarId) : MetaM MVarId := do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"

  let mkApp3 (.const ``SPred.or _) σs L R := goal.target | throwError "target is not SPred.or"

  let (thm, keep) := if right then (``SPred.or_intro_r', R) else (``SPred.or_intro_l', L)

  let newGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := keep}.toExpr
  mvar.assign (mkApp5 (mkConst thm [goal.u]) σs goal.hyps L R newGoal)
  return newGoal.mvarId!

@[builtin_tactic Lean.Parser.Tactic.mleft]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398711c8c1231d64e998d692d215b0db38874be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
