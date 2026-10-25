# _root_.Lean.MVarId.clearValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f89a1b48e5781ee61458e7e6459ada739eeb18e087dcae8167e5112effc3485",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.clearValue",
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
  "slug": "root-lean-mvarid-clearvalue--b85cc040ca0873890ae57f6f",
  "source": {
    "blob": "2a118efceedfd55d88e1ae50821bc2d0ba8ff1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b85cc040ca0873890ae57f6f96a730e1c6239f66fbf829b29ea9539c26bd11b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f89a1b48e5781ee61458e7e6459ada739eeb18e087dcae8167e5112effc3485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.clearValue (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId := do
  mvarId.checkNotAssigned `clear_value
  let tag ← mvarId.getTag
  let (_, mvarId) ← mvarId.withRevertedFrom fvarId fun mvarId' fvars => mvarId'.withContext do
    let tgt ← mvarId'.getType
    unless tgt.isLet do
      mvarId.withContext <|
        throwTacticEx `clear_value mvarId m!"hypothesis `{Expr.fvar fvarId}` is not a local definition."
    let tgt' := Expr.forallE tgt.letName! tgt.letType! tgt.letBody! .default
    /-
    Note: `isTypeCorrect` does not instantiate metavariables. Ideally this should not matter,
    however delayed assigned metavariables assume that the arguments applied to them have the correct
    definitional properties (e.g. an argument might be for the value of a `let` binding).
    Instantiating the metavariables before `isTypeCorrect` lets examples like the one reported in
    https://github.com/leanprover-community/mathlib4/issues/25053 go through.
    (See `tests/lean/run/clear_value.lean`, 25053.)
    -/
    let tgt' ← instantiateMVars tgt'
    unless ← isTypeCorrect tgt' do
      mvarId.withContext <|
        throwTacticEx `clear_value mvarId
          m!"cannot clear {Expr.fvar fvarId}, the resulting context is not type correct."
    let mvarId'' ← mkFreshExprSyntheticOpaqueMVar tgt' tag
    mvarId'.assign <| .app mvarId'' tgt.letValue!
    return ((), fvars.map .some, mvarId''.mvarId!)
  return mvarId

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a118efceedfd55d88e1ae50821bc2d0ba8ff1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
