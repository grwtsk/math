# evalExtractLets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50142244a12419838617fa0eb92b82f663bff666371028be6b2ab655b53e7215",
  "kind": "def",
  "lexical_name": "evalExtractLets",
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
  "slug": "evalextractlets--b16997145dc4b0acb28d3c62",
  "source": {
    "blob": "de4140640793160578fab8eb8311a19e84b3488e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variant91b7295e36538d3b565179dc6ec4e168241288e813a1c753e67a2d2ad145db41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b16997145dc4b0acb28d3c62085d289cdfb8d084948eead38696178c4616744f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variant91b7295e36538d3b565179dc6ec4e168241288e813a1c753e67a2d2ad145db41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50142244a12419838617fa0eb92b82f663bff666371028be6b2ab655b53e7215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.Conv.extractLets] def evalExtractLets : Tactic
  | `(conv| extract_lets $cfg:optConfig $ids*) => do
    let mut config ← elabExtractLetsConfig cfg
    let givenNames := (ids.map getNameOfIdent').toList
    let (lhs, rhs) ← getLhsRhs
    let fvars ← liftMetaTacticAux fun mvarId => do
      mvarId.checkNotAssigned `extract_lets
      Meta.extractLets #[lhs] givenNames (config := config) fun fvarIds es _ => do
        let lhs' := es[0]!
        if fvarIds.isEmpty && lhs == lhs' then
          throwTacticEx `extract_lets mvarId m!"made no progress"
        let (rhs', g) ← mkConvGoalFor lhs' (← mvarId.getTag)
        let fvars := fvarIds.map .fvar
        let assign (mvar : MVarId) (e : Expr) : MetaM Unit := do
          let e ← mkLetFVars (usedLetOnly := false) fvars e
          mvar.withContext do
            unless ← isDefEq (.mvar mvar) e do
              throwTacticEx `extract_lets mvarId m!"(internal error) non-defeq in assignment"
            mvar.assign e
        assign rhs'.mvarId! rhs
        assign mvarId g
        return (fvarIds, [g.mvarId!])
    extractLetsAddVarInfo ids fvars
  | _ => throwUnsupportedSyntax

/-!
### `lift_lets`
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variant91b7295e36538d3b565179dc6ec4e168241288e813a1c753e67a2d2ad145db41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variant91b7295e36538d3b565179dc6ec4e168241288e813a1c753e67a2d2ad145db41.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4140640793160578fab8eb8311a19e84b3488e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
