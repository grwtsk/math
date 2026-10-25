# ArrowTyping.reducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c902dc61-f86a-ce6d-c113-52403e552971",
  "kind": "theorem",
  "lexical_name": "ArrowTyping.reducible",
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
  "slug": "arrowtyping-reducible--e4f9e8b783d5946ba644a8cf",
  "source": {
    "blob": "fb94fd0dd3480169ef53bd8bba3ae8ec2131f268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2397,
    "line": 2343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f9e8b783d5946ba644a8cf10823101fa0c6e28d49de672888b3e499f681706",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c902dc61-f86a-ce6d-c113-52403e552971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2343–2397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArrowTyping.reducible {context : List Arrow} {term : Expr Bool} {type : Arrow}
    (typed : ArrowTyping context term type) (substitution : Nat → Expr Bool)
    (environment : ReducibleEnvironment context substitution) :
    Reducible type (term.subst substitution) := by
  induction typed generalizing substitution with
  | var found => exact environment _ _ found
  | app function argument ihFunction ihArgument =>
      have functionReducible := ihFunction substitution environment
      have argumentReducible := ihArgument substitution environment
      simpa only [Expr.subst, Expr.rename_id] using
        functionReducible.2 id _ argumentReducible
  | @lam context domain codomain body typedBody ihBody =>
      have lifted := ihBody (Expr.liftSub substitution)
        (reducible_environment_lift environment domain)
      have annotationNormal := (Arrow.grammar domain).normal
      have annotationSubst := (Arrow.grammar domain).subst_eq substitution
      change Reducible (.function domain codomain)
        (.lam (domain.expression.subst substitution) (body.subst (Expr.liftSub substitution)))
      rw [annotationSubst]
      refine ⟨wn_lam ⟨domain.expression, .refl, annotationNormal⟩ (reducible_wn lifted), ?_⟩
      intro rename argument argumentReducible
      let theta : Nat → Expr Bool := fun index =>
        (Expr.liftSub substitution index).subst (Expr.single argument ∘ Expr.liftRen rename)
      have thetaZero : theta 0 = argument := rfl
      have thetaSucc (index : Nat) : theta (index + 1) = (substitution index).rename rename := by
        dsimp only [theta]
        rw [Expr.liftSub_succ, Expr.subst_rename]
        change (substitution index).subst (Expr.var ∘ rename) =
          (substitution index).rename rename
        exact Expr.subst_var_rename _ _
      have thetaEnvironment : ReducibleEnvironment (domain :: context) theta := by
        intro index type found
        cases index with
        | zero =>
            have equality : domain = type := Option.some.inj found
            subst type
            rw [thetaZero]
            exact argumentReducible
        | succ index =>
            change context[index]? = some type at found
            rw [thetaSucc]
            exact reducible_rename (environment index type found) rename
      have bodyReducible := ihBody theta thetaEnvironment
      have bodyEquality :
          ((body.subst (Expr.liftSub substitution)).rename (Expr.liftRen rename)).instantiate argument =
            body.subst theta := by
        rw [Expr.instantiate, Expr.subst_rename, Expr.subst_subst]
      have renamedAnnotation := (Arrow.grammar domain).rename_eq rename
      change Reducible codomain (.app
        (.lam (domain.expression.rename rename)
          ((body.subst (Expr.liftSub substitution)).rename (Expr.liftRen rename))) argument)
      rw [renamedAnnotation]
      apply reducible_prepend (bodyEquality.symm ▸ bodyReducible)
      exact .single (.head _ _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean#L2343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb94fd0dd3480169ef53bd8bba3ae8ec2131f268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
