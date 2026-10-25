# mRefineCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9feb5af1cfda2b48fd3cdf9d613da6f095ac3aa4fdd19fcc3785d89007ef31fe",
  "kind": "def",
  "lexical_name": "mRefineCore",
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
  "slug": "mrefinecore--fc96df5b43e8da8a3f9c9d76",
  "source": {
    "blob": "ae6a420dc028e7b66c4b9ad9efdd8feda244bf75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc96df5b43e8da8a3f9c9d7628fbbfd8f2abc2133f0263409d8140a96af9c26a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9feb5af1cfda2b48fd3cdf9d613da6f095ac3aa4fdd19fcc3785d89007ef31fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mRefineCore (goal : MGoal) (pat : MRefinePat) (k : MGoal → TSyntax ``binderIdent → TacticM Expr) : TacticM Expr := do
  match pat with
  | .stateful name => liftMetaM do
    match name with
    | `(binderIdent| $name:ident) => do
      let some prf ← goal.exact name | throwError "unknown hypothesis `{repr name}`"
      return prf
    | _ => do
      let some prf ← goal.assumption | throwError "could not solve {goal.target} by assumption"
      return prf
  | .pure t => do
    goal.exactPure t
  | .one name =>
      if let `(binderIdent| $_:ident) := name then
        mRefineCore goal (.pure ⟨name.raw⟩) k <|> mRefineCore goal (.stateful name) k
      else
        mRefineCore goal (.stateful name) k
  | .hole name => k goal name
  | .tuple [] => throwUnsupportedSyntax
  | .tuple [p] => mRefineCore goal p k
  | .tuple (p::ps) => do
    let T ← whnfR goal.target
    let f := T.getAppFn'
    let args := T.getAppArgs
    trace[Meta.debug] "f: {f}, args: {args}"
    if f.isConstOf ``SPred.and && args.size >= 3 then
      let T₁ := args[1]!.beta args[3...*]
      let T₂ := args[2]!.beta args[3...*]
      let prf₁ ← mRefineCore { goal with target := T₁ } p k
      let prf₂ ← mRefineCore { goal with target := T₂ } (.tuple ps) k
      return mkApp6 (mkConst ``SPred.and_intro [goal.u]) goal.σs goal.hyps T₁ T₂ prf₁ prf₂
    else if f.isConstOf ``SPred.exists && args.size >= 3 then
      let α := args[0]!
      let ψ := args[2]!
      let some witness ← patAsTerm p (some α) | throwError "pattern does not elaborate to a term to instantiate ψ"
      let prf ← mRefineCore { goal with target := ψ.beta (#[witness] ++ args[3...*]) } (.tuple ps) k
      let u ← getLevel α
      return mkApp6 (mkConst ``SPred.exists_intro' [u, goal.u]) α goal.σs goal.hyps ψ witness prf
    else throwError "Neither a conjunction nor an existential quantifier {T}"

@[builtin_tactic Lean.Parser.Tactic.mrefine]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae6a420dc028e7b66c4b9ad9efdd8feda244bf75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
