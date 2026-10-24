# emitExpressionView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5a8095c4233cb2f58a1479bb03a15beb8a8a5415b92e5fc4f124518a557e135",
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
  "slug": "emitexpressionview--7af9b685094b9b483bb27446",
  "source": {
    "blob": "1a46e53a8638a48e5c113f788a23ad4d76f4fb8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant0f68f47d77f7a46947fb2146e6b97f3583626255ddce284dcb6369e6fafa570d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7af9b685094b9b483bb274464ba6821072729fb7743d7bcbc2099fc9010e9dc0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant0f68f47d77f7a46947fb2146e6b97f3583626255ddce284dcb6369e6fafa570d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5a8095c4233cb2f58a1479bb03a15beb8a8a5415b92e5fc4f124518a557e135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–151.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant0f68f47d77f7a46947fb2146e6b97f3583626255ddce284dcb6369e6fafa570d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant0f68f47d77f7a46947fb2146e6b97f3583626255ddce284dcb6369e6fafa570d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a46e53a8638a48e5c113f788a23ad4d76f4fb8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
