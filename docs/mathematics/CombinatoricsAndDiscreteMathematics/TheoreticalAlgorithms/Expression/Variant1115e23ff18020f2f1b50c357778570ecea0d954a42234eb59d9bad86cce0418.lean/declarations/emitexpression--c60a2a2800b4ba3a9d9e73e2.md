# emitExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a72064f368176c872b313a04ba2eccfebc7340673935dfee079072ed67b8388",
  "kind": "def",
  "lexical_name": "emitExpression",
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
  "slug": "emitexpression--c60a2a2800b4ba3a9d9e73e2",
  "source": {
    "blob": "b3d977096c4b768c3062954026f663ffada3f7fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60a2a2800b4ba3a9d9e73e299cf805f1a476f13484a1cedc2ec4135c103b35e",
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

Occurrence: `declaration:8a72064f368176c872b313a04ba2eccfebc7340673935dfee079072ed67b8388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitExpression
    (emitter : EventEmitter) (parameters : List Name) (expression : Expr) :
    IO ExpressionReference := do
  let semanticRoot ← emitExpressionView emitter parameters .semantic expression
  let presentationRoot ← emitExpressionView emitter parameters .presentation expression
  let payloads := metadataPayloads expression
  let metadataRoot ← emitMetadata emitter payloads
  let handle ← emitter.fresh
  let hasFreeVariables := containsFreeVariable expression
  let hasMetavariables := containsMetavariable expression
  emitter.emit <| Json.mkObj [
    ("event", toJson "expression"),
    ("handle", toJson handle),
    ("hasFreeVariables", toJson hasFreeVariables),
    ("hasMetavariables", toJson hasMetavariables),
    ("legacyPrettyPrinted", toJson false),
    ("metadataPayloadCount", toJson payloads.size),
    ("metadataRootHandle", toJson metadataRoot),
    ("presentationRootHandle", toJson presentationRoot),
    ("semanticRootHandle", toJson semanticRoot)
  ]
  return {
    handle
    semanticRoot
    presentationRoot
    metadataRoot
    metadataPayloadCount := payloads.size
    hasFreeVariables
    hasMetavariables
  }

end MathematicsLeanEnvironmentExtractElements
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d977096c4b768c3062954026f663ffada3f7fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
