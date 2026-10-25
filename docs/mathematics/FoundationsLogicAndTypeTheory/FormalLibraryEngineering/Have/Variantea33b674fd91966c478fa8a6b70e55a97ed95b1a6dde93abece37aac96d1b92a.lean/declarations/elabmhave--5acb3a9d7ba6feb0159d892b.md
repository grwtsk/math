# elabMHave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5c6df990ad87e5e0113b3a1ec10a17e0b3a6c2da96b5337738b2e3a31e4af0f",
  "kind": "def",
  "lexical_name": "elabMHave",
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
  "slug": "elabmhave--5acb3a9d7ba6feb0159d892b",
  "source": {
    "blob": "24ab3df3b04ec751a5037835e554f26606748fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5acb3a9d7ba6feb0159d892b3fcc12d94b9ef5ab42a4189e77012ee33dbe1da1",
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

Occurrence: `declaration:e5c6df990ad87e5e0113b3a1ec10a17e0b3a6c2da96b5337738b2e3a31e4af0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMHave : Tactic
  | `(tactic| mhave $h $[: $ty?]? := $rhs) => do
    let (mvar, goal) ← ensureMGoal
    mvar.withContext do
    -- build goal `P ⊢ₛ T` from `P ⊢ₛ H` and residual goal `P ∧ H ⊢ₛ T`
    let P := goal.hyps
    let spred := mkApp (mkConst ``SPred [goal.u]) goal.σs
    let H ← match ty? with
      | some ty => elabTerm ty spred
      | _       => mkFreshExprMVar spred
    let uniq ← mkFreshId
    let hyp := Hyp.mk h.raw.getId uniq H
    addHypInfo h goal.σs hyp (isBinder := true)
    let H := hyp.toExpr
    let T := goal.target
    let (PH, hand) := SPred.mkAnd goal.u goal.σs P H
    let haveGoal := { goal with target := hyp.p }
    let hhave ← elabTermEnsuringType rhs haveGoal.toExpr
    let newGoal := { goal with hyps := PH }
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    mvar.assign (mkApp8 (mkConst ``Have.have [goal.u]) goal.σs P H PH T hand hhave m)
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.mreplace]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea33b674fd91966c478fa8a6b70e55a97ed95b1a6dde93abece37aac96d1b92a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24ab3df3b04ec751a5037835e554f26606748fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
