# applyFrameOrSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce3db78c5fd7262ce32c7f5c5b21607f4f2b7eb7f95db20d375269ba37821e4a",
  "kind": "def",
  "lexical_name": "applyFrameOrSpec",
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
  "slug": "applyframeorspec--c844e7c21efd52adcc92f961",
  "source": {
    "blob": "5628e82bb9a7a689b3776d46674102654293213e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c844e7c21efd52adcc92f96168a8dd10e210633c10c8194076e693f31674e106",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce3db78c5fd7262ce32c7f5c5b21607f4f2b7eb7f95db20d375269ba37821e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyFrameOrSpec (scope : VCGen.Scope) (goal : MVarId) (pre : Expr) (info : WPApp) :
    VCGenM SolveResult := goal.withContext do
  let (scope, spec) ← findSpec scope info.prog info.M
  let thm ← match spec with
    | .ok thm => pure thm
    | .error res => return res
  if isStructuralCombinator info.prog || isFramedPost info.post then
    return ← applySpec scope goal info thm
  let procs := (← read).frameProcs.byProg
  let fp := info.M.getAppFn.constName?.bind (procs[·]?) |>.getD meetFrameProc
  let resourceTy ← fp.resourceTy info
  if let some F ← matchFrame? resourceTy info then
    return .goals scope (← applyFrameRule goal info fp F)
  let some proc := fp.proc | return ← applySpec scope goal info thm
  -- Apply the spec speculatively, then let the frame procedure inspect its precondition VC. No frame
  -- keeps the application; a frame rolls it back and frames instead.
  let saved ← Meta.saveState
  let .goals _ subgoals ← applySpec scope goal info thm
    | throwError "vcgen: speculative spec application for{indentExpr info.prog} did not produce goals"
  let frame? ← match ← specPreOf? subgoals with
    | some specPre => proc resourceTy pre info specPre
    | none => pure none
  let some F := frame? | return .goals scope subgoals
  -- Capture the frame before rolling back: `saved.restore` un-assigns the speculative metavariables,
  -- so instantiate `F` against them now (and reshare).
  let F ← instantiateMVarsS F
  trace[Elab.Tactic.Do.vcgen] "`@[frameproc]` matched {info.prog}; frame:{indentExpr F}"
  saved.restore
  return .goals scope (← applyFrameRule goal info fp F)

/--
The main VC generation step. Operates on a plain `MVarId` with no knowledge of grind.
Returns `.goals subgoals` when the goal was decomposed, or a classification result
(`.noEntailment`, `.noProgramOrLatticeFoundInTarget`, etc.) when no further decomposition is
possible.

The function performs the following steps in order:

1. **Forall introduction**: If the target is a `∀`, simp it and introduce binders.
2. **Target-let handling**: zeta-substitute duplicable top-level lets, otherwise introduce them.
3. **Triple unfolding**: If the target is `⦃P⦄ x ⦃Q; E⦄`, unfold into `P ⊑ wp x Q E`.
4. **Syntactic rfl**: close `pre ⊑ rhs` by `PartialOrder.rel_refl` when both sides unify.
5. **Embedded pure precondition introduction**: lift a `⌜φ⌝` precondition into the local
   context, before state-argument introduction would apply it to the introduced arguments.
6. **State-argument introduction**: If the lattice carrier is a function type
   `σ₁ → ... → σₙ → Base`, introduce all excess state arguments.
7. **Bare pure precondition introduction**: on the `Prop` lattice, replace a `True`
   precondition by `⊤` and lift any other precondition into the local context.
8. **EPost projection reduction**: reduce an `EPost.Cons.head` RHS to the projected component.
9. **Lattice decomposition**: decompose `⊓`, `⇨`, `⌜p⌝` and `⊤` RHS connectives.
10. **Lifted-hypothesis discharge**: close a residual `pre ⊑ ⌜φ⌝` entailment against the most
    recently lifted precondition `h : φ` in the local context, cached in `Scope.lastLiftedPre?`.
11. **WP decomposition**: when the RHS is `wp e post epost s₁ ... sₙ`, in order:
    hoist/zeta program-head lets, split `ite`/`dite`/match, zeta-unfold fvar program heads,
    reduce projection heads, and finally apply a registered `@[spec]` theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5628e82bb9a7a689b3776d46674102654293213e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
