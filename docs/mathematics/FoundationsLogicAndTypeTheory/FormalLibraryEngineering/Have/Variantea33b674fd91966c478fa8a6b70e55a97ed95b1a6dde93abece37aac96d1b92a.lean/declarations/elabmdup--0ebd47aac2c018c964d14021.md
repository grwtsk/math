# elabMDup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:196ded2a1f7cbc974b61b18e8368c811ec66cd45eefe012bde179431da4e8aca",
  "kind": "def",
  "lexical_name": "elabMDup",
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
  "slug": "elabmdup--0ebd47aac2c018c964d14021",
  "source": {
    "blob": "24ab3df3b04ec751a5037835e554f26606748fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ebd47aac2c018c964d14021da9dcad731dc5c72f74f8962e46b337b33bf167e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:196ded2a1f7cbc974b61b18e8368c811ec66cd45eefe012bde179431da4e8aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMDup : Tactic
  | `(tactic| mdup $h:ident => $h₂:ident) => do
    let (mvar, goal) ← ensureMGoal
    mvar.withContext do
    let some res := goal.focusHyp h.raw.getId | throwError m!"Hypothesis {h} not found"
    let P := goal.hyps
    let Q := res.restHyps
    let H := res.focusHyp
    let uniq ← mkFreshId
    let hyp := Hyp.mk h₂.raw.getId uniq H.consumeMData
    addHypInfo h goal.σs hyp (isBinder := true)
    let H' := hyp.toExpr
    let T := goal.target
    let newGoal := { goal with hyps := SPred.mkAnd! goal.u goal.σs P H' }
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    mvar.assign (mkApp7 (mkConst ``Have.dup [goal.u]) goal.σs P Q H T res.proof m)
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.mhave]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24ab3df3b04ec751a5037835e554f26606748fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
