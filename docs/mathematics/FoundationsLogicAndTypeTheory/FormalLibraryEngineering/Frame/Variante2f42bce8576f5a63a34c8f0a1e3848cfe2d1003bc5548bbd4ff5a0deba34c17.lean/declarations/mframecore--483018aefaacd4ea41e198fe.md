# mFrameCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f3c4ea4fc755d178652c750cc8612c68ff8540e3a0a2dc7179f6e8ed01387f2",
  "kind": "def",
  "lexical_name": "mFrameCore",
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
  "slug": "mframecore--483018aefaacd4ea41e198fe",
  "source": {
    "blob": "e270f04226d14f8bf03989a99814e6276de780be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variante2f42bce8576f5a63a34c8f0a1e3848cfe2d1003bc5548bbd4ff5a0deba34c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:483018aefaacd4ea41e198fe7eb863ef2b5defbe76807dfb608ccbff8f40210a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variante2f42bce8576f5a63a34c8f0a1e3848cfe2d1003bc5548bbd4ff5a0deba34c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f3c4ea4fc755d178652c750cc8612c68ff8540e3a0a2dc7179f6e8ed01387f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mFrameCore [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m]
  (goal : MGoal) (kFail : m Expr) (kSuccess : Expr /-φ:Prop-/ → Expr /-h:φ-/ → MGoal → m Expr) : m Expr := do
  let P := goal.hyps
  let φ ← mkFreshExprMVar (mkSort .zero)
  let P' ← mkFreshExprMVar (mkApp (mkConst ``SPred [goal.u]) goal.σs)
  if let .some inst ← trySynthInstance (mkApp4 (mkConst ``HasFrame [goal.u]) goal.σs P P' φ) then
    if ← isDefEq (mkConst ``True) φ then return (← kFail)
    -- copy the name of P to P' if it is a named hypothesis
    let P' ← transferHypNames P P'
    let goal := { goal with hyps := P' }
    withLocalDeclD (← liftMetaM <| mkFreshUserName `h) φ fun hφ => do
      let prf ← kSuccess φ hφ goal
      let prf ← mkLambdaFVars #[hφ] prf
      let prf := mkApp7 (mkConst ``Frame.frame [goal.u]) goal.σs P P' goal.target φ inst prf
      return prf
  else
    kFail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variante2f42bce8576f5a63a34c8f0a1e3848cfe2d1003bc5548bbd4ff5a0deba34c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variante2f42bce8576f5a63a34c8f0a1e3848cfe2d1003bc5548bbd4ff5a0deba34c17.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e270f04226d14f8bf03989a99814e6276de780be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
