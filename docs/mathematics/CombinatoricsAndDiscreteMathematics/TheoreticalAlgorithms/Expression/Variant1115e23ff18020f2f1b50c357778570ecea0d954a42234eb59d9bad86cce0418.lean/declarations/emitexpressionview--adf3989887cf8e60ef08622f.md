# emitExpressionView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6edde8e430a0e69ef0b2e6c3fdd43ff9e895d27f0891cc84c2d499e4bc23307",
  "kind": "def",
  "lexical_name": "emitExpressionView",
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
  "slug": "emitexpressionview--adf3989887cf8e60ef08622f",
  "source": {
    "blob": "b3d977096c4b768c3062954026f663ffada3f7fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adf3989887cf8e60ef08622f7375f0554938b3d3b1242ffb9ff6ed445ed2c9db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6edde8e430a0e69ef0b2e6c3fdd43ff9e895d27f0891cc84c2d499e4bc23307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def emitExpressionView
    (emitter : EventEmitter) (parameters : List Name) (view : ExpressionView) :
    Expr → IO Nat
  | .bvar index => do
      emitter.node "bvar" #[← emitter.scalarField (toString index)]
  | .fvar identifier => do
      emitter.node "invalidFVar" #[← emitter.scalarField (reprStr identifier)]
  | .mvar identifier => do
      emitter.node "invalidMVar" #[← emitter.scalarField (reprStr identifier)]
  | .sort level => do
      let levelHandle ← emitLevel emitter parameters level
      emitter.node "sort" #[childField levelHandle]
  | .const name levels => do
      let levelHandle ← emitLevels emitter parameters levels
      emitter.node "const" #[
        ← emitter.scalarField name.toString,
        childField levelHandle
      ]
  | .app function argument => do
      let functionHandle ← emitExpressionView emitter parameters view function
      let argumentHandle ← emitExpressionView emitter parameters view argument
      emitter.node "app" #[childField functionHandle, childField argumentHandle]
  | .lam name type body binderInfo => do
      let typeHandle ← emitExpressionView emitter parameters view type
      let bodyHandle ← emitExpressionView emitter parameters view body
      let mut fields := #[]
      if view = .presentation then
        fields := fields.push (← emitter.scalarField name.toString)
      fields := fields.push (← emitter.scalarField (binderInfoName binderInfo))
      fields := fields.push (childField typeHandle)
      fields := fields.push (childField bodyHandle)
      emitter.node "lam" fields
  | .forallE name type body binderInfo => do
      let typeHandle ← emitExpressionView emitter parameters view type
      let bodyHandle ← emitExpressionView emitter parameters view body
      let mut fields := #[]
      if view = .presentation then
        fields := fields.push (← emitter.scalarField name.toString)
      fields := fields.push (← emitter.scalarField (binderInfoName binderInfo))
      fields := fields.push (childField typeHandle)
      fields := fields.push (childField bodyHandle)
      emitter.node "forall" fields
  | .letE name type value body nondependent => do
      let typeHandle ← emitExpressionView emitter parameters view type
      let valueHandle ← emitExpressionView emitter parameters view value
      let bodyHandle ← emitExpressionView emitter parameters view body
      let mut fields := #[]
      if view = .presentation then
        fields := fields.push (← emitter.scalarField name.toString)
      fields := fields.push (← emitter.scalarField (toString nondependent))
      fields := fields.push (childField typeHandle)
      fields := fields.push (childField valueHandle)
      fields := fields.push (childField bodyHandle)
      emitter.node "let" fields
  | .lit literal => do
      emitter.node "lit" #[← emitter.scalarField (reprStr literal)]
  | .mdata metadata body => do
      let bodyHandle ← emitExpressionView emitter parameters view body
      match view with
      | .semantic => return bodyHandle
      | .presentation =>
          emitter.node "mdata" #[
            ← emitter.scalarField (reprStr metadata),
            childField bodyHandle
          ]
  | .proj typeName fieldIndex object => do
      let objectHandle ← emitExpressionView emitter parameters view object
      emitter.node "proj" #[
        ← emitter.scalarField typeName.toString,
        ← emitter.scalarField (toString fieldIndex),
        childField objectHandle
      ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d977096c4b768c3062954026f663ffada3f7fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
