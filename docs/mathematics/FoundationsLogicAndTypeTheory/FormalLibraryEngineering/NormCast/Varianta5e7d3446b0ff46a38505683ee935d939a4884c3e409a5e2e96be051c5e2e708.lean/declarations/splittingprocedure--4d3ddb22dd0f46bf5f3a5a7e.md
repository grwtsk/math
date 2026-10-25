# splittingProcedure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e19affaa044705b1269ad29c7bb72c288d66c38c1433b810606cbc614770fe4a",
  "kind": "def",
  "lexical_name": "splittingProcedure",
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
  "slug": "splittingprocedure--4d3ddb22dd0f46bf5f3a5a7e",
  "source": {
    "blob": "a2dfa2b9cb87567b69705c29c93b23f7b2344644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d3ddb22dd0f46bf5f3a5a7ea85c6f9318cfa2b7b52c17978aea0be4f792f364",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e19affaa044705b1269ad29c7bb72c288d66c38c1433b810606cbc614770fe4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splittingProcedure (expr : Expr) : MetaM Simp.Result := do
  let Expr.app (Expr.app op x ..) y .. := expr | return {expr}

  let Expr.forallE _ γ (Expr.forallE _ γ' ty ..) .. ← inferType op | return {expr}
  if γ'.hasLooseBVars || ty.hasLooseBVars then return {expr}
  unless ← isDefEq γ γ' do return {expr}

  let msg := m!"splitting {expr}"
  let msg
    | .error _ => return msg
    | .ok r => return if r.expr == expr then msg else m!"{msg} to {r.expr}"
  withTraceNode `Tactic.norm_cast msg do

  try
    let some x' ← isCoeOf? x | failure
    let some y' ← isCoeOf? y | failure
    let α ← inferType x'
    let β ← inferType y'

    -- TODO: fast timeout
    (try
      let x2 ← mkCoe (← mkCoe x' β) γ
      let some x_x2 ← proveEqUsingDown x x2 | failure
      Simp.mkCongrFun (← Simp.mkCongr {expr := op} x_x2) y
    catch _ =>
      let y2 ← mkCoe (← mkCoe y' α) γ
      let some y_y2 ← proveEqUsingDown y y2 | failure
      Simp.mkCongr {expr := mkApp op x} y_y2)
  catch _ => try
    let some (_, n) := isNumeral? y | failure
    let some x' ← isCoeOf? x | failure
    let α ← inferType x'
    let y2 ← mkCoe (← mkNumeral α n) γ
    let some y_y2 ← proveEqUsingDown y y2 | failure
    Simp.mkCongr {expr := mkApp op x} y_y2
  catch _ => try
    let some (_, n) := isNumeral? x | failure
    let some y' ← isCoeOf? y | failure
    let β ← inferType y'
    let x2 ← mkCoe (← mkNumeral β n) γ
    let some x_x2 ← proveEqUsingDown x x2 | failure
    Simp.mkCongrFun (← Simp.mkCongr {expr := op} x_x2) y
  catch _ =>
    return {expr}

/--
Discharging function used during simplification in the "squash" step.
-/
-- TODO: normCast takes a list of expressions to use as lemmas for the discharger
-- TODO: a tactic to print the results the discharger fails to prove
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dfa2b9cb87567b69705c29c93b23f7b2344644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
