# emitDeclaration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51507056d0f7070f046ab48c6d0e06a0a9e6ba0bec3de164696f88cd61aac0de",
  "kind": "def",
  "lexical_name": "emitDeclaration",
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
  "slug": "emitdeclaration--71fa19279d9aa4351cd2b410",
  "source": {
    "blob": "f4d1b39226e47fb31b6f09cca9adb82a2a60f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71fa19279d9aa4351cd2b410cad3e4f87fcc46ce3c7bac43f991944e39913078",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51507056d0f7070f046ab48c6d0e06a0a9e6ba0bec3de164696f88cd61aac0de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitDeclaration
    (emitter : EventEmitter) (environment : Environment) (owner : Name)
    (information : ConstantInfo) : IO Unit := do
  let parameters := information.levelParams
  let typeExpression ← emitExpression emitter parameters information.type
  let valueExpression : Option ExpressionReference ←
    match constantValue? information with
    | some value => do
        let reference ← emitExpression emitter parameters value
        pure (some reference)
    | none => pure none
  let (reducibilityName, regularityHeight) := reducibility information
  let origin := match information with
    | .ctorInfo _ | .recInfo _ => "kernelGenerated"
    | _ => "unknown"
  emitter.emit <| Json.mkObj [
    ("authority", toJson "kernel"),
    ("canonicalName", toJson information.name.toString),
    ("constructorData", constructorData information),
    ("diagnostics", toJson (#[] : Array String)),
    ("event", toJson "declaration"),
    ("inductiveData", inductiveData information),
    ("isInternalDetail", toJson information.name.isInternalDetail),
    ("isPartial", toJson information.isPartial),
    ("isPrivateName", toJson (isPrivateName information.name)),
    ("isUnsafe", toJson information.isUnsafe),
    ("kind", toJson (constantKind information)),
    ("mutualBlock", toJson (information.all.toArray.map Name.toString)),
    ("observedAxioms", toJson (← observedAxioms environment information.name)),
    ("origin", toJson origin),
    ("owningModule", toJson owner.toString),
    ("quotientData", quotientData information),
    ("recursorData", ← recursorData emitter parameters information),
    ("reducibility", toJson reducibilityName),
    ("regularityHeight", toJson regularityHeight),
    ("safety", toJson (safety information)),
    ("typeExpressionHandle", toJson typeExpression.handle),
    ("universeParams", toJson (parameters.toArray.map Name.toString)),
    ("valueExpressionHandle", toJson (valueExpression.map (·.handle))),
    ("valueRole", toJson (valueRole information)),
    ("visibility", toJson (if isPrivateName information.name then "privateName" else "public"))
  ]

end MathematicsLeanEnvironmentExtractElements
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4d1b39226e47fb31b6f09cca9adb82a2a60f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
